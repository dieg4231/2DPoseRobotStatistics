#!/usr/bin/env python

import rospy
import csv
from geometry_msgs.msg import Twist
from std_srvs.srv import Trigger, TriggerResponse
from pose_robot_statistics2d.srv import SetTargetDistance, SetTargetDistanceResponse
from pose_robot_statistics2d.srv import SetTargetAngle, SetTargetAngleResponse
from pose_robot_statistics2d.srv import initDetector, initDetectorResponse
from pose_robot_statistics2d.srv import calculateDistance, calculateDistanceResponse

def read_csv(file_path):
    commands = []
    with open(file_path, 'r') as file:
        reader = csv.reader(file, delimiter=';')
        for row in reader:
            distance = float(row[0])
            angle = float(row[1])
            commands.append((distance, angle))
    return commands

def call_init_detector():
    rospy.wait_for_service('initDetector')
    try:
        init_detector = rospy.ServiceProxy('initDetector', initDetector)
        response = init_detector()
        return response.isDetected
    except rospy.ServiceException as e:
        rospy.logerr("Service call failed: %s" % e)
        return False

def call_set_target_distance(distance):
    rospy.wait_for_service('set_target_distance')
    try:
        set_target_distance = rospy.ServiceProxy('set_target_distance', SetTargetDistance)
        response = set_target_distance(distance)
        return response.success
    except rospy.ServiceException as e:
        rospy.logerr("Service call failed: %s" % e)
        return False

def call_set_target_angle(angle):
    rospy.wait_for_service('set_target_angle')
    try:
        set_target_angle = rospy.ServiceProxy('set_target_angle', SetTargetAngle)
        response = set_target_angle(angle)
        return response.success
    except rospy.ServiceException as e:
        rospy.logerr("Service call failed: %s" % e)
        return False

def call_opposite_distance(distance):
    rospy.wait_for_service('set_target_distance')
    try:
        set_target_distance = rospy.ServiceProxy('set_target_distance', SetTargetDistance)
        opposite_distance = -distance
        response = set_target_distance(opposite_distance)
        return response.success
    except rospy.ServiceException as e:
        rospy.logerr("Service call failed: %s" % e)
        return False

def call_opposite_angle(angle):
    rospy.wait_for_service('set_target_angle')
    try:
        set_target_angle = rospy.ServiceProxy('set_target_angle', SetTargetAngle)
        opposite_angle = -angle
        response = set_target_angle(opposite_angle)
        return response.success
    except rospy.ServiceException as e:
        rospy.logerr("Service call failed: %s" % e)
        return False

def call_calculate_delta():
    rospy.wait_for_service('calculateDelta')
    try:
        calculate_delta = rospy.ServiceProxy('calculateDelta', calculateDistance)
        response = calculate_delta()
        return response.angle, response.distance
    except rospy.ServiceException as e:
        rospy.logerr("Service call failed: %s" % e)
        return None, None

def write_csv(file_path, data):
    with open(file_path, 'wb') as file:
        writer = csv.writer(file, delimiter=';')
        writer.writerow(['distance', 'angle', 'distance_result', 'angle_result'])
        for row in data:
            writer.writerow(row)

def main():
    rospy.init_node('command_executor_node')
    input_csv_file_path = rospy.get_param('~input_csv_file_path', 'commands.csv')
    output_csv_file_path = rospy.get_param('~output_csv_file_path', 'results.csv')
    commands = read_csv(input_csv_file_path)

    results = []

    for distance, angle in commands:
        if abs(distance) > 0.001:  # Check if distance command is not negligible
            if call_init_detector():
                if call_set_target_distance(distance):
                    angle_result, distance_result = call_calculate_delta()
                    if angle_result is not None and distance_result is not None:
                        rospy.loginfo("Distance: %f, Angle: %f - Delta: Distance: %f, Angle: %f"
                                      % (distance, angle, distance_result, angle_result))
                        results.append((distance, angle, distance_result, angle_result))
                    else:
                        rospy.logerr("Failed to get delta from calculateDelta service")
                        results.append((distance, angle, None, None))
                    
                    # Execute the opposite distance command
                    if not call_opposite_distance(distance):
                        rospy.logerr("Failed to execute opposite distance command: %f" % distance)
                else:
                    rospy.logerr("Failed to execute distance command: %f" % distance)
                    results.append((distance, angle, None, None))
            else:
                rospy.logwarn("No robot detected, skipping distance command: %f" % distance)
                results.append((distance, angle, None, None))
        elif abs(angle) > 0.001:  # Check if angle command is not negligible
            if call_init_detector():
                if call_set_target_angle(angle):
                    angle_result, distance_result = call_calculate_delta()
                    if angle_result is not None and distance_result is not None:
                        rospy.loginfo("Distance: %f, Angle: %f - Delta: Distance: %f, Angle: %f"
                                      % (distance, angle, distance_result, angle_result))
                        results.append((distance, angle, distance_result, angle_result))
                    else:
                        rospy.logerr("Failed to get delta from calculateDelta service")
                        results.append((distance, angle, None, None))
                    
                    # Execute the opposite angle command
                    if not call_opposite_angle(angle):
                        rospy.logerr("Failed to execute opposite angle command: %f" % angle)
                else:
                    rospy.logerr("Failed to execute angle command: %f" % angle)
                    results.append((distance, angle, None, None))
            else:
                rospy.logwarn("No robot detected, skipping angle command: %f" % angle)
                results.append((distance, angle, None, None))
        else:
            rospy.logwarn("Command with distance: %f and angle: %f is negligible, skipping" % (distance, angle))
            results.append((distance, angle, None, None))

    write_csv(output_csv_file_path, results)

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass

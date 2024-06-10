#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
import tf
import math
from pose_robot_statistics2d.srv import SetTargetDistance, SetTargetDistanceResponse
from pose_robot_statistics2d.srv import SetTargetAngle, SetTargetAngleResponse

class DistanceController:
    def __init__(self):
        rospy.init_node('distance_controller', anonymous=True)

        self.velocity_publisher = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
        self.odom_subscriber = rospy.Subscriber('/odom', Odometry, self.odom_callback)
        
        self.distance_service = rospy.Service('/set_target_distance', SetTargetDistance, self.set_target_distance)
        self.angle_service = rospy.Service('/set_target_angle', SetTargetAngle, self.set_target_angle)

        self.rate = rospy.Rate(50)  # 50 Hz
        self.current_position = (0.0, 0.0)
        self.start_position = (0.0, 0.0)
        self.target_distance = 0.0
        self.current_yaw = 0.0
        self.start_yaw = 0.0
        self.target_angle = 0.0
        self.moving = False
        self.turning = False

        self.prev_linear_error = 0.0
        self.prev_angular_error = 0.0

        self.Kp_linear = 0.75
        self.Kd_linear = 0.1

        self.Kp_angular = 0.5
        self.Kd_angular = 0.1

        self.linear_timeout = 10.0  # Timeout for distance movement in seconds
        self.angular_timeout = 10.0  # Timeout for angle movement in seconds

    def odom_callback(self, msg):
        position = msg.pose.pose.position
        self.current_position = (position.x, position.y)  # Use both x and y coordinates

        orientation = msg.pose.pose.orientation
        quaternion = (orientation.x, orientation.y, orientation.z, orientation.w)
        euler = tf.transformations.euler_from_quaternion(quaternion)
        self.current_yaw = euler[2]  # Yaw angle

    def set_target_distance(self, req):
        self.target_distance = req.distance
        self.start_position = self.current_position
        self.moving = True
        self.turning = False

        start_time = rospy.Time.now()

        # Wait until the movement is completed or timeout occurs
        while self.moving and not rospy.is_shutdown():
            if (rospy.Time.now() - start_time).to_sec() > self.linear_timeout:
                self.moving = False
                rospy.logwarn("Timeout occurred during distance movement.")
                return SetTargetDistanceResponse(success=True)
            rospy.sleep(0.1)

        return SetTargetDistanceResponse(success=True)

    def set_target_angle(self, req):
        self.target_angle = req.angle
        self.start_yaw = self.current_yaw
        self.turning = True
        self.moving = False

        start_time = rospy.Time.now()

        # Wait until the turning is completed or timeout occurs
        while self.turning and not rospy.is_shutdown():
            if (rospy.Time.now() - start_time).to_sec() > self.angular_timeout:
                self.turning = False
                rospy.logwarn("Timeout occurred during angle turning.")
                return SetTargetAngleResponse(success=True)
            rospy.sleep(0.1)

        return SetTargetAngleResponse(success=True)

    def normalize_angle(self, angle):
        return math.atan2(math.sin(angle), math.cos(angle))

    def move(self):
        vel_msg = Twist()

        while not rospy.is_shutdown():
            if self.moving:
                current_distance = math.sqrt(
                    (self.current_position[0] - self.start_position[0]) ** 2 +
                    (self.current_position[1] - self.start_position[1]) ** 2
                )
                
                # Determine the direction of movement
                if self.target_distance < 0:
                    error = self.target_distance + current_distance
                else:
                    error = self.target_distance - current_distance

                # PD controller for linear movement
                linear_velocity = self.Kp_linear * error + self.Kd_linear * (error - self.prev_linear_error)
                self.prev_linear_error = error

                if abs(error) < 0.01:  # Tolerance of 1 cm
                    self.moving = False
                    vel_msg.linear.x = 0.0
                else:
                    vel_msg.linear.x = linear_velocity

                self.velocity_publisher.publish(vel_msg)
            elif self.turning:
                error = self.normalize_angle(self.target_angle - (self.current_yaw - self.start_yaw))

                # PD controller for angular movement
                angular_velocity = self.Kp_angular * error + self.Kd_angular * (error - self.prev_angular_error)
                self.prev_angular_error = error

                if abs(error) < 0.01:  # Tolerance of 0.01 rad (~0.57 degrees)
                    self.turning = False
                    vel_msg.angular.z = 0.0
                else:
                    vel_msg.angular.z = angular_velocity

                self.velocity_publisher.publish(vel_msg)
            else:
                vel_msg.linear.x = 0.0
                vel_msg.angular.z = 0.0
                self.velocity_publisher.publish(vel_msg)

            self.rate.sleep()

if __name__ == '__main__':
    try:
        controller = DistanceController()
        controller.move()
    except rospy.ROSInterruptException:
        pass


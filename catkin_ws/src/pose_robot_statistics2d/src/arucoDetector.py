#!/usr/bin/env python
# license removed for brevity
import rospy
import tf
import math
from geometry_msgs.msg import PoseStamped
import numpy as np
import cv2
from std_msgs.msg import String
from pose_robot_statistics2d.srv import initDetector, initDetectorResponse
from pose_robot_statistics2d.srv import calculateDistance, calculateDistanceResponse

robot_id = None
l_size= None
arucoDict= None
arucoParams= None
vid= None
centerOLD= None
topLeftOLD = None

def calculate_angle_2d(point1, point2):
    # Convert points to numpy arrays
    p1 = np.array(point1)
    p2 = np.array(point2)
    
    # Calculate the vector from point1 to point2
    vector = p2 - p1
    
    # Calculate the angle using arctan2
    angle_radians = np.arctan2(vector[1], vector[0])
    
    return angle_radians

def angle_difference(angle1, angle2):
    # Calculate the absolute difference
    diff = abs(angle1 - angle2)
    
    # Normalize the result to the range [0, pi] radians
    if diff > np.pi:
        diff = 2 * np.pi - diff
    
    return diff

def handle_calculateDelta(req):
    global robot_id
    global arucoDict
    global arucoParams
    global vid
    global centerOLD
    global topLeftOLD
    global l_size
    
    #Open camera device
    vid = cv2.VideoCapture(1) # It shouldn't  hard coded
    
    # Capture the video frame by frame
    ret, frame = vid.read()    
    img_width = frame.shape[1];
    img_height = frame.shape[0];

    # detect ArUco markers in the input frame
    (corners, ids, rejected) = cv2.aruco.detectMarkers(frame,
                arucoDict, parameters=arucoParams)
                # verify *at least* one ArUco marker was detected
            
    if (len(corners) == 0 ) or not (robot_id in ids):
        cv2.putText(frame, "No robot detected",
                (img_width /4,img_height/4),
                cv2.FONT_HERSHEY_SIMPLEX,
                0.5, (0, 255, 0), 2)
        cv2.imshow("Frame", frame)

        rospy.loginfo("No robot detected")
        vid.release()  
        return calculateDistanceResponse(False)


    if len(corners) > 0  and robot_id in ids:
        # flatten the ArUco IDs list
        ids = ids.flatten()
                
        markersList = corners2Marker(corners, ids);

        index_robot = np.where(ids == robot_id);
        marker = markersList[index_robot[0][0]]

        # draw the bounding box of the ArUCo detection
        cv2.line(frame, marker.topLeft, marker.topRight, (0, 255, 0), 2)
        cv2.line(frame, marker.topRight, marker.bottomRight, (0, 255, 0), 2)
        cv2.line(frame, marker.bottomRight, marker.bottomLeft, (0, 255, 0), 2)
        cv2.line(frame, marker.bottomLeft, marker.topLeft, (0, 255, 0), 2)
        # draw the center (x, y)-coordinates of the
        cv2.circle(frame, marker.center, 4, (0, 0, 255), -1)
        cv2.circle(frame, centerOLD, 4, (0, 0, 255), -1)
        cv2.line(frame,marker.center, centerOLD, (0, 100, 255), 2)
        # draw the ArUco marker ID on the frame
        cv2.line(frame, centerOLD, topLeftOLD, (0, 0, 255), 2)
        cv2.line(frame, marker.center, marker.topLeft, (0, 255, 255), 2)
                

        x1, y1 = centerOLD
        x2, y2 = marker.center
        distance1 = math.sqrt((x2 - x1)**2 + (y2 - y1)**2)

        x1, y1 = marker.topLeft
        x2, y2 = marker.topRight
        distance2 = math.sqrt((x2 - x1)**2 + (y2 - y1)**2)

        res = (distance1 * l_size ) / distance2
        res = res/100.0
        #print("****")
        #print(img_height)
        #print(centerOLD[1])
        #print(img_height - centerOLD[1])

        angleInicial = calculate_angle_2d( (centerOLD[0], img_height - centerOLD[1] ), (topLeftOLD[0],(img_height - topLeftOLD[1]))) 
        angleFinal = calculate_angle_2d( (marker.center[0],( img_height - marker.center[1])  ) , (marker.topLeft[0],(img_height - marker.topLeft[1] ) )   )
        angleDiff = angle_difference(angleInicial,angleFinal)

        

        #print("-------")
        #print((centerOLD, topLeftOLD))
        #print((marker.center, marker.topLeft)  )
        #print(angleInicial)
        #print(angleFinal)
        #print(angleDiff)
        #print("-------")

        cv2.putText(frame, str(marker.markerID),
        (marker.topLeft[0], marker.topLeft[1] - 15),
        cv2.FONT_HERSHEY_SIMPLEX,0.5, (0, 255, 0), 2)

        cv2.putText(frame, str(res)+" cm" ,
        (20,20),
        cv2.FONT_HERSHEY_SIMPLEX,
        0.5, (0, 255, 0), 2)

        cv2.imshow("Frame", frame)
        rospy.loginfo("Exito:  Angle %f  DIstance %f ",angleDiff,res)
        vid.release()  
        return calculateDistanceResponse(angleDiff,res)
    vid.release()  
    rospy.loginfo("Error")
    return calculateDistanceResponse(0)

def handle_initDetector(req):
    global robot_id
    global arucoDict
    global arucoParams
    global vid
    global centerOLD
    global topLeftOLD
    #Open camera device
    vid = cv2.VideoCapture(1) # It shouldn't  hard coded
    ret, frame = vid.read()    
    img_width = frame.shape[1];
    img_height = frame.shape[0];
    
    # detect ArUco markers in the input frame
    (corners, ids, rejected) = cv2.aruco.detectMarkers(frame,
        arucoDict, parameters=arucoParams)
    # verify *at least* one ArUco marker was detected
                  
    if (len(corners) == 0 ) or not (robot_id in ids):
        cv2.putText(frame, "No robot detected",
                (img_width /4,img_height/4),
                cv2.FONT_HERSHEY_SIMPLEX,
                0.5, (0, 255, 0), 2)
        cv2.imshow("Frame", frame)

        rospy.loginfo("No robot detected")
        vid.release()
        return initDetectorResponse(False)


    if len(corners) > 0  and robot_id in ids:
        # flatten the ArUco IDs list
        ids = ids.flatten()
        markersList = corners2Marker(corners, ids);
        index_robot = np.where(ids == robot_id);
        marker = markersList[index_robot[0][0]]
        centerOLD = marker.center 
        topLeftOLD = marker.topLeft
        # draw the bounding box of the ArUCo detection
        cv2.line(frame, marker.topLeft, marker.topRight, (0, 255, 0), 2)
        cv2.line(frame, marker.topRight, marker.bottomRight, (0, 255, 0), 2)
        cv2.line(frame, marker.bottomRight, marker.bottomLeft, (0, 255, 0), 2)
        cv2.line(frame, marker.bottomLeft, marker.topLeft, (0, 255, 0), 2)
        # draw the center (x, y)-coordinates of the
        cv2.circle(frame, marker.center, 4, (0, 0, 255), -1)
        # draw the ArUco marker ID on the frame
        cv2.putText(frame, str(marker.markerID),
        (marker.topLeft[0], marker.topLeft[1] - 15),
        cv2.FONT_HERSHEY_SIMPLEX,
        0.5, (0, 255, 0), 2)
        cv2.imshow("Frame", frame)
        vid.release()
        return initDetectorResponse(True)
    vid.release()
    return initDetectorResponse(False)


#Marker  class declaration
class marker:
  def __init__(self, markerID, topLeft, topRight, bottomRight, bottomLeft, center ):
    self.markerID = markerID
    self.topLeft = topLeft
    self.topRight = topRight
    self.bottomRight = bottomRight
    self.bottomLeft = bottomLeft
    self.center = center



def callback(data):
    global text
    rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.data)
    text = data.data



#Func to convert from  corners from aruco detection to marker objects
def corners2Marker(corners, ids):
    
    markersList = [] 
    for (markerCorner, markerID) in zip(corners, ids):
        
        # extract the marker corners (which are always returned
        # in top-left, top-right, bottom-right, and bottom-left order)
        corners = markerCorner.reshape((4, 2))
        (topLeft, topRight, bottomRight, bottomLeft) = corners
        
        # convert each of the (x, y)-coordinate pairs to integers
        topRight = (int(topRight[0]), int(topRight[1]))
        bottomRight = (int(bottomRight[0]), int(bottomRight[1]))
        bottomLeft = (int(bottomLeft[0]), int(bottomLeft[1]))
        topLeft = (int(topLeft[0]), int(topLeft[1]))

        # compute and draw the center (x, y)-coordinates of the
        # ArUco marker
        cX = int((topLeft[0] + bottomRight[0]) / 2.0)
        cY = int((topLeft[1] + bottomRight[1]) / 2.0)
        center = (cX, cY)

        markersList.append( marker(markerID, topLeft, topRight, bottomRight, bottomLeft, center ) )

    return markersList 



def main():
    global robot_id
    global arucoDict
    global arucoParams
    global vid
    global centerOLD
    global l_size
    
    
    
    #Aruco parameters
    #arucoDict = 6 x 6 cells without black border, from id 1  up to 50   
    arucoDict = cv2.aruco.Dictionary_get(cv2.aruco.DICT_6X6_50)
    arucoParams = cv2.aruco.DetectorParameters_create()

    
    centerOLD = 0

    global text
    pub = rospy.Publisher('robotPoseByAruco', PoseStamped, queue_size=10)
    rospy.init_node('aruco_robot_detector', anonymous=True)
    s1 = rospy.Service('initDetector', initDetector, handle_initDetector)
    s2 = rospy.Service('calculateDelta', calculateDistance, handle_calculateDelta)
    robot_id = rospy.get_param('~robot_id')
    l_size = rospy.get_param('~l_size')


    rate = rospy.Rate(10) 

    

    
    while not rospy.is_shutdown():

        rate.sleep()
        key = cv2.waitKey(1) & 0xFF
        # if the `q` key was pressed, break from the loop
        if key == ord("q"):
            break
    # do a bit of cleanup
    cv2.destroyAllWindows()

if __name__ == "__main__":
    a =calculate_angle_2d((5,5),(2,20))
    print(a)
    print("----")
    print( angle_difference(1.5707,0.75) )
    main()


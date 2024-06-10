;; Auto-generated. Do not edit!


(when (boundp 'pose_robot_statistics2d::calculateDistance)
  (if (not (find-package "POSE_ROBOT_STATISTICS2D"))
    (make-package "POSE_ROBOT_STATISTICS2D"))
  (shadow 'calculateDistance (find-package "POSE_ROBOT_STATISTICS2D")))
(unless (find-package "POSE_ROBOT_STATISTICS2D::CALCULATEDISTANCE")
  (make-package "POSE_ROBOT_STATISTICS2D::CALCULATEDISTANCE"))
(unless (find-package "POSE_ROBOT_STATISTICS2D::CALCULATEDISTANCEREQUEST")
  (make-package "POSE_ROBOT_STATISTICS2D::CALCULATEDISTANCEREQUEST"))
(unless (find-package "POSE_ROBOT_STATISTICS2D::CALCULATEDISTANCERESPONSE")
  (make-package "POSE_ROBOT_STATISTICS2D::CALCULATEDISTANCERESPONSE"))

(in-package "ROS")





(defclass pose_robot_statistics2d::calculateDistanceRequest
  :super ros::object
  :slots ())

(defmethod pose_robot_statistics2d::calculateDistanceRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass pose_robot_statistics2d::calculateDistanceResponse
  :super ros::object
  :slots (_angle _distance ))

(defmethod pose_robot_statistics2d::calculateDistanceResponse
  (:init
   (&key
    ((:angle __angle) 0.0)
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _angle (float __angle))
   (setq _distance (float __distance))
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; float32 _angle
    4
    ;; float32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pose_robot_statistics2d::calculateDistance
  :super ros::object
  :slots ())

(setf (get pose_robot_statistics2d::calculateDistance :md5sum-) "817840b8f4d2300f89b98e0187dc919a")
(setf (get pose_robot_statistics2d::calculateDistance :datatype-) "pose_robot_statistics2d/calculateDistance")
(setf (get pose_robot_statistics2d::calculateDistance :request) pose_robot_statistics2d::calculateDistanceRequest)
(setf (get pose_robot_statistics2d::calculateDistance :response) pose_robot_statistics2d::calculateDistanceResponse)

(defmethod pose_robot_statistics2d::calculateDistanceRequest
  (:response () (instance pose_robot_statistics2d::calculateDistanceResponse :init)))

(setf (get pose_robot_statistics2d::calculateDistanceRequest :md5sum-) "817840b8f4d2300f89b98e0187dc919a")
(setf (get pose_robot_statistics2d::calculateDistanceRequest :datatype-) "pose_robot_statistics2d/calculateDistanceRequest")
(setf (get pose_robot_statistics2d::calculateDistanceRequest :definition-)
      "---
float32 angle
float32 distance

")

(setf (get pose_robot_statistics2d::calculateDistanceResponse :md5sum-) "817840b8f4d2300f89b98e0187dc919a")
(setf (get pose_robot_statistics2d::calculateDistanceResponse :datatype-) "pose_robot_statistics2d/calculateDistanceResponse")
(setf (get pose_robot_statistics2d::calculateDistanceResponse :definition-)
      "---
float32 angle
float32 distance

")



(provide :pose_robot_statistics2d/calculateDistance "817840b8f4d2300f89b98e0187dc919a")



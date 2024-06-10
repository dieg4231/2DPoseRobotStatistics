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
  :slots (_result ))

(defmethod pose_robot_statistics2d::calculateDistanceResponse
  (:init
   (&key
    ((:result __result) 0.0)
    )
   (send-super :init)
   (setq _result (float __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; float32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _result
       (sys::poke _result (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _result
     (setq _result (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pose_robot_statistics2d::calculateDistance
  :super ros::object
  :slots ())

(setf (get pose_robot_statistics2d::calculateDistance :md5sum-) "db954e5de3aba73b237d07575e5cac28")
(setf (get pose_robot_statistics2d::calculateDistance :datatype-) "pose_robot_statistics2d/calculateDistance")
(setf (get pose_robot_statistics2d::calculateDistance :request) pose_robot_statistics2d::calculateDistanceRequest)
(setf (get pose_robot_statistics2d::calculateDistance :response) pose_robot_statistics2d::calculateDistanceResponse)

(defmethod pose_robot_statistics2d::calculateDistanceRequest
  (:response () (instance pose_robot_statistics2d::calculateDistanceResponse :init)))

(setf (get pose_robot_statistics2d::calculateDistanceRequest :md5sum-) "db954e5de3aba73b237d07575e5cac28")
(setf (get pose_robot_statistics2d::calculateDistanceRequest :datatype-) "pose_robot_statistics2d/calculateDistanceRequest")
(setf (get pose_robot_statistics2d::calculateDistanceRequest :definition-)
      "---
float32 result

")

(setf (get pose_robot_statistics2d::calculateDistanceResponse :md5sum-) "db954e5de3aba73b237d07575e5cac28")
(setf (get pose_robot_statistics2d::calculateDistanceResponse :datatype-) "pose_robot_statistics2d/calculateDistanceResponse")
(setf (get pose_robot_statistics2d::calculateDistanceResponse :definition-)
      "---
float32 result

")



(provide :pose_robot_statistics2d/calculateDistance "db954e5de3aba73b237d07575e5cac28")



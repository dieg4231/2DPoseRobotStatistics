;; Auto-generated. Do not edit!


(when (boundp 'pose_robot_statistics2d::SetTargetDistance)
  (if (not (find-package "POSE_ROBOT_STATISTICS2D"))
    (make-package "POSE_ROBOT_STATISTICS2D"))
  (shadow 'SetTargetDistance (find-package "POSE_ROBOT_STATISTICS2D")))
(unless (find-package "POSE_ROBOT_STATISTICS2D::SETTARGETDISTANCE")
  (make-package "POSE_ROBOT_STATISTICS2D::SETTARGETDISTANCE"))
(unless (find-package "POSE_ROBOT_STATISTICS2D::SETTARGETDISTANCEREQUEST")
  (make-package "POSE_ROBOT_STATISTICS2D::SETTARGETDISTANCEREQUEST"))
(unless (find-package "POSE_ROBOT_STATISTICS2D::SETTARGETDISTANCERESPONSE")
  (make-package "POSE_ROBOT_STATISTICS2D::SETTARGETDISTANCERESPONSE"))

(in-package "ROS")





(defclass pose_robot_statistics2d::SetTargetDistanceRequest
  :super ros::object
  :slots (_distance ))

(defmethod pose_robot_statistics2d::SetTargetDistanceRequest
  (:init
   (&key
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; float64 _distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass pose_robot_statistics2d::SetTargetDistanceResponse
  :super ros::object
  :slots (_success ))

(defmethod pose_robot_statistics2d::SetTargetDistanceResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pose_robot_statistics2d::SetTargetDistance
  :super ros::object
  :slots ())

(setf (get pose_robot_statistics2d::SetTargetDistance :md5sum-) "df4b6884ffadda4d31d3c1de4bbcf17e")
(setf (get pose_robot_statistics2d::SetTargetDistance :datatype-) "pose_robot_statistics2d/SetTargetDistance")
(setf (get pose_robot_statistics2d::SetTargetDistance :request) pose_robot_statistics2d::SetTargetDistanceRequest)
(setf (get pose_robot_statistics2d::SetTargetDistance :response) pose_robot_statistics2d::SetTargetDistanceResponse)

(defmethod pose_robot_statistics2d::SetTargetDistanceRequest
  (:response () (instance pose_robot_statistics2d::SetTargetDistanceResponse :init)))

(setf (get pose_robot_statistics2d::SetTargetDistanceRequest :md5sum-) "df4b6884ffadda4d31d3c1de4bbcf17e")
(setf (get pose_robot_statistics2d::SetTargetDistanceRequest :datatype-) "pose_robot_statistics2d/SetTargetDistanceRequest")
(setf (get pose_robot_statistics2d::SetTargetDistanceRequest :definition-)
      "float64 distance
---
bool success

")

(setf (get pose_robot_statistics2d::SetTargetDistanceResponse :md5sum-) "df4b6884ffadda4d31d3c1de4bbcf17e")
(setf (get pose_robot_statistics2d::SetTargetDistanceResponse :datatype-) "pose_robot_statistics2d/SetTargetDistanceResponse")
(setf (get pose_robot_statistics2d::SetTargetDistanceResponse :definition-)
      "float64 distance
---
bool success

")



(provide :pose_robot_statistics2d/SetTargetDistance "df4b6884ffadda4d31d3c1de4bbcf17e")



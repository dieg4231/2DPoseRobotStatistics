;; Auto-generated. Do not edit!


(when (boundp 'pose_robot_statistics2d::SetTargetAngle)
  (if (not (find-package "POSE_ROBOT_STATISTICS2D"))
    (make-package "POSE_ROBOT_STATISTICS2D"))
  (shadow 'SetTargetAngle (find-package "POSE_ROBOT_STATISTICS2D")))
(unless (find-package "POSE_ROBOT_STATISTICS2D::SETTARGETANGLE")
  (make-package "POSE_ROBOT_STATISTICS2D::SETTARGETANGLE"))
(unless (find-package "POSE_ROBOT_STATISTICS2D::SETTARGETANGLEREQUEST")
  (make-package "POSE_ROBOT_STATISTICS2D::SETTARGETANGLEREQUEST"))
(unless (find-package "POSE_ROBOT_STATISTICS2D::SETTARGETANGLERESPONSE")
  (make-package "POSE_ROBOT_STATISTICS2D::SETTARGETANGLERESPONSE"))

(in-package "ROS")





(defclass pose_robot_statistics2d::SetTargetAngleRequest
  :super ros::object
  :slots (_angle ))

(defmethod pose_robot_statistics2d::SetTargetAngleRequest
  (:init
   (&key
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _angle (float __angle))
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; float64 _angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass pose_robot_statistics2d::SetTargetAngleResponse
  :super ros::object
  :slots (_success ))

(defmethod pose_robot_statistics2d::SetTargetAngleResponse
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

(defclass pose_robot_statistics2d::SetTargetAngle
  :super ros::object
  :slots ())

(setf (get pose_robot_statistics2d::SetTargetAngle :md5sum-) "c1a76fcaf62dc4534903e93216b59a79")
(setf (get pose_robot_statistics2d::SetTargetAngle :datatype-) "pose_robot_statistics2d/SetTargetAngle")
(setf (get pose_robot_statistics2d::SetTargetAngle :request) pose_robot_statistics2d::SetTargetAngleRequest)
(setf (get pose_robot_statistics2d::SetTargetAngle :response) pose_robot_statistics2d::SetTargetAngleResponse)

(defmethod pose_robot_statistics2d::SetTargetAngleRequest
  (:response () (instance pose_robot_statistics2d::SetTargetAngleResponse :init)))

(setf (get pose_robot_statistics2d::SetTargetAngleRequest :md5sum-) "c1a76fcaf62dc4534903e93216b59a79")
(setf (get pose_robot_statistics2d::SetTargetAngleRequest :datatype-) "pose_robot_statistics2d/SetTargetAngleRequest")
(setf (get pose_robot_statistics2d::SetTargetAngleRequest :definition-)
      "float64 angle
---
bool success


")

(setf (get pose_robot_statistics2d::SetTargetAngleResponse :md5sum-) "c1a76fcaf62dc4534903e93216b59a79")
(setf (get pose_robot_statistics2d::SetTargetAngleResponse :datatype-) "pose_robot_statistics2d/SetTargetAngleResponse")
(setf (get pose_robot_statistics2d::SetTargetAngleResponse :definition-)
      "float64 angle
---
bool success


")



(provide :pose_robot_statistics2d/SetTargetAngle "c1a76fcaf62dc4534903e93216b59a79")



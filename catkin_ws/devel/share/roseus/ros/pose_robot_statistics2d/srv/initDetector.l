;; Auto-generated. Do not edit!


(when (boundp 'pose_robot_statistics2d::initDetector)
  (if (not (find-package "POSE_ROBOT_STATISTICS2D"))
    (make-package "POSE_ROBOT_STATISTICS2D"))
  (shadow 'initDetector (find-package "POSE_ROBOT_STATISTICS2D")))
(unless (find-package "POSE_ROBOT_STATISTICS2D::INITDETECTOR")
  (make-package "POSE_ROBOT_STATISTICS2D::INITDETECTOR"))
(unless (find-package "POSE_ROBOT_STATISTICS2D::INITDETECTORREQUEST")
  (make-package "POSE_ROBOT_STATISTICS2D::INITDETECTORREQUEST"))
(unless (find-package "POSE_ROBOT_STATISTICS2D::INITDETECTORRESPONSE")
  (make-package "POSE_ROBOT_STATISTICS2D::INITDETECTORRESPONSE"))

(in-package "ROS")





(defclass pose_robot_statistics2d::initDetectorRequest
  :super ros::object
  :slots ())

(defmethod pose_robot_statistics2d::initDetectorRequest
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

(defclass pose_robot_statistics2d::initDetectorResponse
  :super ros::object
  :slots (_isDetected ))

(defmethod pose_robot_statistics2d::initDetectorResponse
  (:init
   (&key
    ((:isDetected __isDetected) nil)
    )
   (send-super :init)
   (setq _isDetected __isDetected)
   self)
  (:isDetected
   (&optional __isDetected)
   (if __isDetected (setq _isDetected __isDetected)) _isDetected)
  (:serialization-length
   ()
   (+
    ;; bool _isDetected
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isDetected
       (if _isDetected (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isDetected
     (setq _isDetected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pose_robot_statistics2d::initDetector
  :super ros::object
  :slots ())

(setf (get pose_robot_statistics2d::initDetector :md5sum-) "acc79b946844b63a8a389c71b5098c7a")
(setf (get pose_robot_statistics2d::initDetector :datatype-) "pose_robot_statistics2d/initDetector")
(setf (get pose_robot_statistics2d::initDetector :request) pose_robot_statistics2d::initDetectorRequest)
(setf (get pose_robot_statistics2d::initDetector :response) pose_robot_statistics2d::initDetectorResponse)

(defmethod pose_robot_statistics2d::initDetectorRequest
  (:response () (instance pose_robot_statistics2d::initDetectorResponse :init)))

(setf (get pose_robot_statistics2d::initDetectorRequest :md5sum-) "acc79b946844b63a8a389c71b5098c7a")
(setf (get pose_robot_statistics2d::initDetectorRequest :datatype-) "pose_robot_statistics2d/initDetectorRequest")
(setf (get pose_robot_statistics2d::initDetectorRequest :definition-)
      "---
bool isDetected


")

(setf (get pose_robot_statistics2d::initDetectorResponse :md5sum-) "acc79b946844b63a8a389c71b5098c7a")
(setf (get pose_robot_statistics2d::initDetectorResponse :datatype-) "pose_robot_statistics2d/initDetectorResponse")
(setf (get pose_robot_statistics2d::initDetectorResponse :definition-)
      "---
bool isDetected


")



(provide :pose_robot_statistics2d/initDetector "acc79b946844b63a8a389c71b5098c7a")



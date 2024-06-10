; Auto-generated. Do not edit!


(cl:in-package pose_robot_statistics2d-srv)


;//! \htmlinclude initDetector-request.msg.html

(cl:defclass <initDetector-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass initDetector-request (<initDetector-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <initDetector-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'initDetector-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_robot_statistics2d-srv:<initDetector-request> is deprecated: use pose_robot_statistics2d-srv:initDetector-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <initDetector-request>) ostream)
  "Serializes a message object of type '<initDetector-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <initDetector-request>) istream)
  "Deserializes a message object of type '<initDetector-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<initDetector-request>)))
  "Returns string type for a service object of type '<initDetector-request>"
  "pose_robot_statistics2d/initDetectorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'initDetector-request)))
  "Returns string type for a service object of type 'initDetector-request"
  "pose_robot_statistics2d/initDetectorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<initDetector-request>)))
  "Returns md5sum for a message object of type '<initDetector-request>"
  "acc79b946844b63a8a389c71b5098c7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'initDetector-request)))
  "Returns md5sum for a message object of type 'initDetector-request"
  "acc79b946844b63a8a389c71b5098c7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<initDetector-request>)))
  "Returns full string definition for message of type '<initDetector-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'initDetector-request)))
  "Returns full string definition for message of type 'initDetector-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <initDetector-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <initDetector-request>))
  "Converts a ROS message object to a list"
  (cl:list 'initDetector-request
))
;//! \htmlinclude initDetector-response.msg.html

(cl:defclass <initDetector-response> (roslisp-msg-protocol:ros-message)
  ((isDetected
    :reader isDetected
    :initarg :isDetected
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass initDetector-response (<initDetector-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <initDetector-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'initDetector-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_robot_statistics2d-srv:<initDetector-response> is deprecated: use pose_robot_statistics2d-srv:initDetector-response instead.")))

(cl:ensure-generic-function 'isDetected-val :lambda-list '(m))
(cl:defmethod isDetected-val ((m <initDetector-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_robot_statistics2d-srv:isDetected-val is deprecated.  Use pose_robot_statistics2d-srv:isDetected instead.")
  (isDetected m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <initDetector-response>) ostream)
  "Serializes a message object of type '<initDetector-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isDetected) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <initDetector-response>) istream)
  "Deserializes a message object of type '<initDetector-response>"
    (cl:setf (cl:slot-value msg 'isDetected) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<initDetector-response>)))
  "Returns string type for a service object of type '<initDetector-response>"
  "pose_robot_statistics2d/initDetectorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'initDetector-response)))
  "Returns string type for a service object of type 'initDetector-response"
  "pose_robot_statistics2d/initDetectorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<initDetector-response>)))
  "Returns md5sum for a message object of type '<initDetector-response>"
  "acc79b946844b63a8a389c71b5098c7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'initDetector-response)))
  "Returns md5sum for a message object of type 'initDetector-response"
  "acc79b946844b63a8a389c71b5098c7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<initDetector-response>)))
  "Returns full string definition for message of type '<initDetector-response>"
  (cl:format cl:nil "bool isDetected~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'initDetector-response)))
  "Returns full string definition for message of type 'initDetector-response"
  (cl:format cl:nil "bool isDetected~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <initDetector-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <initDetector-response>))
  "Converts a ROS message object to a list"
  (cl:list 'initDetector-response
    (cl:cons ':isDetected (isDetected msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'initDetector)))
  'initDetector-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'initDetector)))
  'initDetector-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'initDetector)))
  "Returns string type for a service object of type '<initDetector>"
  "pose_robot_statistics2d/initDetector")
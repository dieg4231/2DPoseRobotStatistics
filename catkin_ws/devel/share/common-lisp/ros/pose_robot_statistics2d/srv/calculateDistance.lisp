; Auto-generated. Do not edit!


(cl:in-package pose_robot_statistics2d-srv)


;//! \htmlinclude calculateDistance-request.msg.html

(cl:defclass <calculateDistance-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass calculateDistance-request (<calculateDistance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <calculateDistance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'calculateDistance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_robot_statistics2d-srv:<calculateDistance-request> is deprecated: use pose_robot_statistics2d-srv:calculateDistance-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <calculateDistance-request>) ostream)
  "Serializes a message object of type '<calculateDistance-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <calculateDistance-request>) istream)
  "Deserializes a message object of type '<calculateDistance-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<calculateDistance-request>)))
  "Returns string type for a service object of type '<calculateDistance-request>"
  "pose_robot_statistics2d/calculateDistanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'calculateDistance-request)))
  "Returns string type for a service object of type 'calculateDistance-request"
  "pose_robot_statistics2d/calculateDistanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<calculateDistance-request>)))
  "Returns md5sum for a message object of type '<calculateDistance-request>"
  "817840b8f4d2300f89b98e0187dc919a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'calculateDistance-request)))
  "Returns md5sum for a message object of type 'calculateDistance-request"
  "817840b8f4d2300f89b98e0187dc919a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<calculateDistance-request>)))
  "Returns full string definition for message of type '<calculateDistance-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'calculateDistance-request)))
  "Returns full string definition for message of type 'calculateDistance-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <calculateDistance-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <calculateDistance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'calculateDistance-request
))
;//! \htmlinclude calculateDistance-response.msg.html

(cl:defclass <calculateDistance-response> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass calculateDistance-response (<calculateDistance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <calculateDistance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'calculateDistance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_robot_statistics2d-srv:<calculateDistance-response> is deprecated: use pose_robot_statistics2d-srv:calculateDistance-response instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <calculateDistance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_robot_statistics2d-srv:angle-val is deprecated.  Use pose_robot_statistics2d-srv:angle instead.")
  (angle m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <calculateDistance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_robot_statistics2d-srv:distance-val is deprecated.  Use pose_robot_statistics2d-srv:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <calculateDistance-response>) ostream)
  "Serializes a message object of type '<calculateDistance-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <calculateDistance-response>) istream)
  "Deserializes a message object of type '<calculateDistance-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<calculateDistance-response>)))
  "Returns string type for a service object of type '<calculateDistance-response>"
  "pose_robot_statistics2d/calculateDistanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'calculateDistance-response)))
  "Returns string type for a service object of type 'calculateDistance-response"
  "pose_robot_statistics2d/calculateDistanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<calculateDistance-response>)))
  "Returns md5sum for a message object of type '<calculateDistance-response>"
  "817840b8f4d2300f89b98e0187dc919a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'calculateDistance-response)))
  "Returns md5sum for a message object of type 'calculateDistance-response"
  "817840b8f4d2300f89b98e0187dc919a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<calculateDistance-response>)))
  "Returns full string definition for message of type '<calculateDistance-response>"
  (cl:format cl:nil "float32 angle~%float32 distance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'calculateDistance-response)))
  "Returns full string definition for message of type 'calculateDistance-response"
  (cl:format cl:nil "float32 angle~%float32 distance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <calculateDistance-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <calculateDistance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'calculateDistance-response
    (cl:cons ':angle (angle msg))
    (cl:cons ':distance (distance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'calculateDistance)))
  'calculateDistance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'calculateDistance)))
  'calculateDistance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'calculateDistance)))
  "Returns string type for a service object of type '<calculateDistance>"
  "pose_robot_statistics2d/calculateDistance")
; Auto-generated. Do not edit!


(cl:in-package pose_robot_statistics2d-srv)


;//! \htmlinclude SetTargetAngle-request.msg.html

(cl:defclass <SetTargetAngle-request> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetTargetAngle-request (<SetTargetAngle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTargetAngle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTargetAngle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_robot_statistics2d-srv:<SetTargetAngle-request> is deprecated: use pose_robot_statistics2d-srv:SetTargetAngle-request instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <SetTargetAngle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_robot_statistics2d-srv:angle-val is deprecated.  Use pose_robot_statistics2d-srv:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTargetAngle-request>) ostream)
  "Serializes a message object of type '<SetTargetAngle-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTargetAngle-request>) istream)
  "Deserializes a message object of type '<SetTargetAngle-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTargetAngle-request>)))
  "Returns string type for a service object of type '<SetTargetAngle-request>"
  "pose_robot_statistics2d/SetTargetAngleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTargetAngle-request)))
  "Returns string type for a service object of type 'SetTargetAngle-request"
  "pose_robot_statistics2d/SetTargetAngleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTargetAngle-request>)))
  "Returns md5sum for a message object of type '<SetTargetAngle-request>"
  "c1a76fcaf62dc4534903e93216b59a79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTargetAngle-request)))
  "Returns md5sum for a message object of type 'SetTargetAngle-request"
  "c1a76fcaf62dc4534903e93216b59a79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTargetAngle-request>)))
  "Returns full string definition for message of type '<SetTargetAngle-request>"
  (cl:format cl:nil "float64 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTargetAngle-request)))
  "Returns full string definition for message of type 'SetTargetAngle-request"
  (cl:format cl:nil "float64 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTargetAngle-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTargetAngle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTargetAngle-request
    (cl:cons ':angle (angle msg))
))
;//! \htmlinclude SetTargetAngle-response.msg.html

(cl:defclass <SetTargetAngle-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetTargetAngle-response (<SetTargetAngle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTargetAngle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTargetAngle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_robot_statistics2d-srv:<SetTargetAngle-response> is deprecated: use pose_robot_statistics2d-srv:SetTargetAngle-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetTargetAngle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_robot_statistics2d-srv:success-val is deprecated.  Use pose_robot_statistics2d-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTargetAngle-response>) ostream)
  "Serializes a message object of type '<SetTargetAngle-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTargetAngle-response>) istream)
  "Deserializes a message object of type '<SetTargetAngle-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTargetAngle-response>)))
  "Returns string type for a service object of type '<SetTargetAngle-response>"
  "pose_robot_statistics2d/SetTargetAngleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTargetAngle-response)))
  "Returns string type for a service object of type 'SetTargetAngle-response"
  "pose_robot_statistics2d/SetTargetAngleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTargetAngle-response>)))
  "Returns md5sum for a message object of type '<SetTargetAngle-response>"
  "c1a76fcaf62dc4534903e93216b59a79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTargetAngle-response)))
  "Returns md5sum for a message object of type 'SetTargetAngle-response"
  "c1a76fcaf62dc4534903e93216b59a79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTargetAngle-response>)))
  "Returns full string definition for message of type '<SetTargetAngle-response>"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTargetAngle-response)))
  "Returns full string definition for message of type 'SetTargetAngle-response"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTargetAngle-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTargetAngle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTargetAngle-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTargetAngle)))
  'SetTargetAngle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTargetAngle)))
  'SetTargetAngle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTargetAngle)))
  "Returns string type for a service object of type '<SetTargetAngle>"
  "pose_robot_statistics2d/SetTargetAngle")
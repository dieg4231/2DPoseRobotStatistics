; Auto-generated. Do not edit!


(cl:in-package pose_robot_statistics2d-srv)


;//! \htmlinclude SetTargetDistance-request.msg.html

(cl:defclass <SetTargetDistance-request> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetTargetDistance-request (<SetTargetDistance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTargetDistance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTargetDistance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_robot_statistics2d-srv:<SetTargetDistance-request> is deprecated: use pose_robot_statistics2d-srv:SetTargetDistance-request instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <SetTargetDistance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_robot_statistics2d-srv:distance-val is deprecated.  Use pose_robot_statistics2d-srv:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTargetDistance-request>) ostream)
  "Serializes a message object of type '<SetTargetDistance-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTargetDistance-request>) istream)
  "Deserializes a message object of type '<SetTargetDistance-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTargetDistance-request>)))
  "Returns string type for a service object of type '<SetTargetDistance-request>"
  "pose_robot_statistics2d/SetTargetDistanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTargetDistance-request)))
  "Returns string type for a service object of type 'SetTargetDistance-request"
  "pose_robot_statistics2d/SetTargetDistanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTargetDistance-request>)))
  "Returns md5sum for a message object of type '<SetTargetDistance-request>"
  "df4b6884ffadda4d31d3c1de4bbcf17e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTargetDistance-request)))
  "Returns md5sum for a message object of type 'SetTargetDistance-request"
  "df4b6884ffadda4d31d3c1de4bbcf17e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTargetDistance-request>)))
  "Returns full string definition for message of type '<SetTargetDistance-request>"
  (cl:format cl:nil "float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTargetDistance-request)))
  "Returns full string definition for message of type 'SetTargetDistance-request"
  (cl:format cl:nil "float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTargetDistance-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTargetDistance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTargetDistance-request
    (cl:cons ':distance (distance msg))
))
;//! \htmlinclude SetTargetDistance-response.msg.html

(cl:defclass <SetTargetDistance-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetTargetDistance-response (<SetTargetDistance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTargetDistance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTargetDistance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_robot_statistics2d-srv:<SetTargetDistance-response> is deprecated: use pose_robot_statistics2d-srv:SetTargetDistance-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetTargetDistance-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_robot_statistics2d-srv:success-val is deprecated.  Use pose_robot_statistics2d-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTargetDistance-response>) ostream)
  "Serializes a message object of type '<SetTargetDistance-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTargetDistance-response>) istream)
  "Deserializes a message object of type '<SetTargetDistance-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTargetDistance-response>)))
  "Returns string type for a service object of type '<SetTargetDistance-response>"
  "pose_robot_statistics2d/SetTargetDistanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTargetDistance-response)))
  "Returns string type for a service object of type 'SetTargetDistance-response"
  "pose_robot_statistics2d/SetTargetDistanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTargetDistance-response>)))
  "Returns md5sum for a message object of type '<SetTargetDistance-response>"
  "df4b6884ffadda4d31d3c1de4bbcf17e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTargetDistance-response)))
  "Returns md5sum for a message object of type 'SetTargetDistance-response"
  "df4b6884ffadda4d31d3c1de4bbcf17e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTargetDistance-response>)))
  "Returns full string definition for message of type '<SetTargetDistance-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTargetDistance-response)))
  "Returns full string definition for message of type 'SetTargetDistance-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTargetDistance-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTargetDistance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTargetDistance-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTargetDistance)))
  'SetTargetDistance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTargetDistance)))
  'SetTargetDistance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTargetDistance)))
  "Returns string type for a service object of type '<SetTargetDistance>"
  "pose_robot_statistics2d/SetTargetDistance")
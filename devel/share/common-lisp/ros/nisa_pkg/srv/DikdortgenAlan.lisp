; Auto-generated. Do not edit!


(cl:in-package nisa_pkg-srv)


;//! \htmlinclude DikdortgenAlan-request.msg.html

(cl:defclass <DikdortgenAlan-request> (roslisp-msg-protocol:ros-message)
  ((width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass DikdortgenAlan-request (<DikdortgenAlan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DikdortgenAlan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DikdortgenAlan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nisa_pkg-srv:<DikdortgenAlan-request> is deprecated: use nisa_pkg-srv:DikdortgenAlan-request instead.")))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <DikdortgenAlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nisa_pkg-srv:width-val is deprecated.  Use nisa_pkg-srv:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <DikdortgenAlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nisa_pkg-srv:height-val is deprecated.  Use nisa_pkg-srv:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DikdortgenAlan-request>) ostream)
  "Serializes a message object of type '<DikdortgenAlan-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DikdortgenAlan-request>) istream)
  "Deserializes a message object of type '<DikdortgenAlan-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DikdortgenAlan-request>)))
  "Returns string type for a service object of type '<DikdortgenAlan-request>"
  "nisa_pkg/DikdortgenAlanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DikdortgenAlan-request)))
  "Returns string type for a service object of type 'DikdortgenAlan-request"
  "nisa_pkg/DikdortgenAlanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DikdortgenAlan-request>)))
  "Returns md5sum for a message object of type '<DikdortgenAlan-request>"
  "6313128f6dfa3023a00d78cf460d102c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DikdortgenAlan-request)))
  "Returns md5sum for a message object of type 'DikdortgenAlan-request"
  "6313128f6dfa3023a00d78cf460d102c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DikdortgenAlan-request>)))
  "Returns full string definition for message of type '<DikdortgenAlan-request>"
  (cl:format cl:nil "float64 width~%float64 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DikdortgenAlan-request)))
  "Returns full string definition for message of type 'DikdortgenAlan-request"
  (cl:format cl:nil "float64 width~%float64 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DikdortgenAlan-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DikdortgenAlan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DikdortgenAlan-request
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
))
;//! \htmlinclude DikdortgenAlan-response.msg.html

(cl:defclass <DikdortgenAlan-response> (roslisp-msg-protocol:ros-message)
  ((area
    :reader area
    :initarg :area
    :type cl:float
    :initform 0.0))
)

(cl:defclass DikdortgenAlan-response (<DikdortgenAlan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DikdortgenAlan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DikdortgenAlan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nisa_pkg-srv:<DikdortgenAlan-response> is deprecated: use nisa_pkg-srv:DikdortgenAlan-response instead.")))

(cl:ensure-generic-function 'area-val :lambda-list '(m))
(cl:defmethod area-val ((m <DikdortgenAlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nisa_pkg-srv:area-val is deprecated.  Use nisa_pkg-srv:area instead.")
  (area m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DikdortgenAlan-response>) ostream)
  "Serializes a message object of type '<DikdortgenAlan-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'area))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DikdortgenAlan-response>) istream)
  "Deserializes a message object of type '<DikdortgenAlan-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'area) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DikdortgenAlan-response>)))
  "Returns string type for a service object of type '<DikdortgenAlan-response>"
  "nisa_pkg/DikdortgenAlanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DikdortgenAlan-response)))
  "Returns string type for a service object of type 'DikdortgenAlan-response"
  "nisa_pkg/DikdortgenAlanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DikdortgenAlan-response>)))
  "Returns md5sum for a message object of type '<DikdortgenAlan-response>"
  "6313128f6dfa3023a00d78cf460d102c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DikdortgenAlan-response)))
  "Returns md5sum for a message object of type 'DikdortgenAlan-response"
  "6313128f6dfa3023a00d78cf460d102c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DikdortgenAlan-response>)))
  "Returns full string definition for message of type '<DikdortgenAlan-response>"
  (cl:format cl:nil "float64 area~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DikdortgenAlan-response)))
  "Returns full string definition for message of type 'DikdortgenAlan-response"
  (cl:format cl:nil "float64 area~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DikdortgenAlan-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DikdortgenAlan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DikdortgenAlan-response
    (cl:cons ':area (area msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DikdortgenAlan)))
  'DikdortgenAlan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DikdortgenAlan)))
  'DikdortgenAlan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DikdortgenAlan)))
  "Returns string type for a service object of type '<DikdortgenAlan>"
  "nisa_pkg/DikdortgenAlan")
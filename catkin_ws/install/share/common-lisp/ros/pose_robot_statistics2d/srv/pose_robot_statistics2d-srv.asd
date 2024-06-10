
(cl:in-package :asdf)

(defsystem "pose_robot_statistics2d-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetTargetAngle" :depends-on ("_package_SetTargetAngle"))
    (:file "_package_SetTargetAngle" :depends-on ("_package"))
    (:file "SetTargetDistance" :depends-on ("_package_SetTargetDistance"))
    (:file "_package_SetTargetDistance" :depends-on ("_package"))
    (:file "calculateDistance" :depends-on ("_package_calculateDistance"))
    (:file "_package_calculateDistance" :depends-on ("_package"))
    (:file "initDetector" :depends-on ("_package_initDetector"))
    (:file "_package_initDetector" :depends-on ("_package"))
  ))

(cl:in-package :asdf)

(defsystem "nisa_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DikdortgenAlan" :depends-on ("_package_DikdortgenAlan"))
    (:file "_package_DikdortgenAlan" :depends-on ("_package"))
  ))
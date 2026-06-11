;; Auto-generated. Do not edit!


(when (boundp 'nisa_pkg::DikdortgenAlan)
  (if (not (find-package "NISA_PKG"))
    (make-package "NISA_PKG"))
  (shadow 'DikdortgenAlan (find-package "NISA_PKG")))
(unless (find-package "NISA_PKG::DIKDORTGENALAN")
  (make-package "NISA_PKG::DIKDORTGENALAN"))
(unless (find-package "NISA_PKG::DIKDORTGENALANREQUEST")
  (make-package "NISA_PKG::DIKDORTGENALANREQUEST"))
(unless (find-package "NISA_PKG::DIKDORTGENALANRESPONSE")
  (make-package "NISA_PKG::DIKDORTGENALANRESPONSE"))

(in-package "ROS")





(defclass nisa_pkg::DikdortgenAlanRequest
  :super ros::object
  :slots (_width _height ))

(defmethod nisa_pkg::DikdortgenAlanRequest
  (:init
   (&key
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _width (float __width))
   (setq _height (float __height))
   self)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; float64 _width
    8
    ;; float64 _height
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass nisa_pkg::DikdortgenAlanResponse
  :super ros::object
  :slots (_area ))

(defmethod nisa_pkg::DikdortgenAlanResponse
  (:init
   (&key
    ((:area __area) 0.0)
    )
   (send-super :init)
   (setq _area (float __area))
   self)
  (:area
   (&optional __area)
   (if __area (setq _area __area)) _area)
  (:serialization-length
   ()
   (+
    ;; float64 _area
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _area
       (sys::poke _area (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _area
     (setq _area (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass nisa_pkg::DikdortgenAlan
  :super ros::object
  :slots ())

(setf (get nisa_pkg::DikdortgenAlan :md5sum-) "6313128f6dfa3023a00d78cf460d102c")
(setf (get nisa_pkg::DikdortgenAlan :datatype-) "nisa_pkg/DikdortgenAlan")
(setf (get nisa_pkg::DikdortgenAlan :request) nisa_pkg::DikdortgenAlanRequest)
(setf (get nisa_pkg::DikdortgenAlan :response) nisa_pkg::DikdortgenAlanResponse)

(defmethod nisa_pkg::DikdortgenAlanRequest
  (:response () (instance nisa_pkg::DikdortgenAlanResponse :init)))

(setf (get nisa_pkg::DikdortgenAlanRequest :md5sum-) "6313128f6dfa3023a00d78cf460d102c")
(setf (get nisa_pkg::DikdortgenAlanRequest :datatype-) "nisa_pkg/DikdortgenAlanRequest")
(setf (get nisa_pkg::DikdortgenAlanRequest :definition-)
      "float64 width
float64 height
---
float64 area


")

(setf (get nisa_pkg::DikdortgenAlanResponse :md5sum-) "6313128f6dfa3023a00d78cf460d102c")
(setf (get nisa_pkg::DikdortgenAlanResponse :datatype-) "nisa_pkg/DikdortgenAlanResponse")
(setf (get nisa_pkg::DikdortgenAlanResponse :definition-)
      "float64 width
float64 height
---
float64 area


")



(provide :nisa_pkg/DikdortgenAlan "6313128f6dfa3023a00d78cf460d102c")



;; Auto-generated. Do not edit!


(when (boundp 'phantom_omni::OmniFeedback)
  (if (not (find-package "PHANTOM_OMNI"))
    (make-package "PHANTOM_OMNI"))
  (shadow 'OmniFeedback (find-package "PHANTOM_OMNI")))
(unless (find-package "PHANTOM_OMNI::OMNIFEEDBACK")
  (make-package "PHANTOM_OMNI::OMNIFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude OmniFeedback.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass phantom_omni::OmniFeedback
  :super ros::object
  :slots (_force _position _torque _thetas ))

(defmethod phantom_omni::OmniFeedback
  (:init
   (&key
    ((:force __force) (instance geometry_msgs::Vector3 :init))
    ((:position __position) (instance geometry_msgs::Vector3 :init))
    ((:torque __torque) (instance geometry_msgs::Vector3 :init))
    ((:thetas __thetas) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _force __force)
   (setq _position __position)
   (setq _torque __torque)
   (setq _thetas __thetas)
   self)
  (:force
   (&rest __force)
   (if (keywordp (car __force))
       (send* _force __force)
     (progn
       (if __force (setq _force (car __force)))
       _force)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:torque
   (&rest __torque)
   (if (keywordp (car __torque))
       (send* _torque __torque)
     (progn
       (if __torque (setq _torque (car __torque)))
       _torque)))
  (:thetas
   (&rest __thetas)
   (if (keywordp (car __thetas))
       (send* _thetas __thetas)
     (progn
       (if __thetas (setq _thetas (car __thetas)))
       _thetas)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _force
    (send _force :serialization-length)
    ;; geometry_msgs/Vector3 _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _torque
    (send _torque :serialization-length)
    ;; geometry_msgs/Vector3 _thetas
    (send _thetas :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _force
       (send _force :serialize s)
     ;; geometry_msgs/Vector3 _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _torque
       (send _torque :serialize s)
     ;; geometry_msgs/Vector3 _thetas
       (send _thetas :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _force
     (send _force :deserialize buf ptr-) (incf ptr- (send _force :serialization-length))
   ;; geometry_msgs/Vector3 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _torque
     (send _torque :deserialize buf ptr-) (incf ptr- (send _torque :serialization-length))
   ;; geometry_msgs/Vector3 _thetas
     (send _thetas :deserialize buf ptr-) (incf ptr- (send _thetas :serialization-length))
   ;;
   self)
  )

(setf (get phantom_omni::OmniFeedback :md5sum-) "4fff792fe66e9b3da7728a73d600f71b")
(setf (get phantom_omni::OmniFeedback :datatype-) "phantom_omni/OmniFeedback")
(setf (get phantom_omni::OmniFeedback :definition-)
      "# This is the force as estimated from the applied torques as well as the current
# end effector position of the robot arm                           
geometry_msgs/Vector3  force                                                                  
geometry_msgs/Vector3  position  
geometry_msgs/Vector3  torque
geometry_msgs/Vector3  thetas

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :phantom_omni/OmniFeedback "4fff792fe66e9b3da7728a73d600f71b")



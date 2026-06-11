#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
import math

class PidController:
    def __init__(self):
        rospy.init_node('pid_control_node', anonymous=True)
        self.cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
        
        # Gazebo bağımlılığı yerine standart odometri verisini dinliyoruz
        rospy.Subscriber('/odom', Odometry, self.odom_callback)
        
        # Hedef Koordinatlar (Gitmesini istediğin nokta - Değiştirebilirsin)
        self.goal_x = 2.0
        self.goal_y = 2.0
        
        self.current_x = 0.0
        self.current_y = 0.0
        self.current_yaw = 0.0
        
        # PID Oransal (P) Kazançları (Hız ve dönüş kararlılığı için)
        self.kp_linear = 0.5   
        self.kp_angular = 1.5  
        
        self.rate = rospy.Rate(10)

    def odom_callback(self, msg):
        # Robotun o anki x ve y konumunu alıyoruz
        position = msg.pose.pose.position
        self.current_x = position.x
        self.current_y = position.y
        
        # Quaternion açısını Euler açısına (Yaw - radyan) çevirme
        orientation = msg.pose.pose.orientation
        _, _, self.current_yaw = self.quaternion_to_euler(orientation)

    def quaternion_to_euler(self, q):
        siny_cosp = 2 * (q.w * q.z + q.x * q.y)
        cosy_cosp = 1 - 2 * (q.y * q.y + q.z * q.z)
        yaw = math.atan2(siny_cosp, cosy_cosp)
        return 0, 0, yaw

    def run(self):
        move_cmd = Twist()
        rospy.loginfo("PID Go-to-Goal Görevi Başladı...")
        
        while not rospy.is_shutdown():
            # 1. Hedefe olan mesafe (Mesafe Hatası)
            distance_to_goal = math.hypot(self.goal_x - self.current_x, self.goal_y - self.current_y)
            
            # 2. Hedefe olan açı ve Açısal Hata hesaplama
            desired_angle = math.atan2(self.goal_y - self.current_y, self.goal_x - self.current_x)
            angle_error = desired_angle - self.current_yaw
            
            # Açıyı [-pi, pi] arasına sıkıştır (En kısa yönden dönebilmesi için)
            angle_error = math.atan2(math.sin(angle_error), math.cos(angle_error))
            
            # Hedefe ulaşıldı mı kontrolü (Hata 10 cm'den azsa dur)
            if distance_to_goal < 0.1:
                rospy.loginfo("Hedefe başarıyla ulaşıldı!")
                move_cmd.linear.x = 0.0
                move_cmd.angular.z = 0.0
                self.cmd_vel_pub.publish(move_cmd)
                break
                
            # 3. P-Kontrolör formülüyle hız üretimi
            # Mesafe azaldıkça doğrusal hız yavaşlar, açı hatasına göre yönünü düzeltir
            move_cmd.linear.x = min(self.kp_linear * distance_to_goal, 0.2) # Max 0.2 hız sınırı
            move_cmd.angular.z = self.kp_angular * angle_error
            
            self.cmd_vel_pub.publish(move_cmd)
            self.rate.sleep()

if __name__ == '__main__':
    try:
        controller = PidController()
        rospy.sleep(1) # Verilerin oturması için kısa bekleme
        controller.run()
    except rospy.ROSInterruptException:
        pass

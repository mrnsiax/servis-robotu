#!/usr/bin/env python3
import rospy
#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import LaserScan

class GazeboObstacleAvoidance:
    def __init__(self):
        rospy.init_node('gazebo_avoidance_node', anonymous=True)
        
        self.cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
        # Gazebo'daki lazer sensörünü dinliyoruz
        rospy.Subscriber('/scan', LaserScan, self.scan_callback)
        
        self.move_cmd = Twist()
        self.safe_distance = 0.6
        self.is_obstacle_ahead = False
        self.rate = rospy.Rate(10)

    def scan_callback(self, msg):
       
        front_ranges = msg.ranges[0:20] + msg.ranges[340:360]
        
        # Geçersiz (inf veya 0) değerleri temizle, en yakın mesafeyi bul
        valid_ranges = [r for r in front_ranges if msg.range_min < r < msg.range_max]
        
        if valid_ranges and min(valid_ranges) < self.safe_distance:
            self.is_obstacle_ahead = True
        else:
            self.is_obstacle_ahead = False

    def run(self):
        while not rospy.is_shutdown():
            if self.is_obstacle_ahead:
                # 1. STOP: Dur
                self.move_cmd.linear.x = 0.0
                self.move_cmd.angular.z = 0.0
                self.cmd_vel_pub.publish(self.move_cmd)
                rospy.sleep(0.2)
                
                # 2. ROTATE: Kendi etrafında dön
                self.move_cmd.angular.z = 0.5
                self.cmd_vel_pub.publish(self.move_cmd)
                rospy.sleep(1.0) # Engelden kurtulana kadar güvenli bir dönüş süresi
            else:
                # 3. MOVE: Önü temizse ilerle
                self.move_cmd.linear.x = 0.2
                self.move_cmd.angular.z = 0.0
                self.cmd_vel_pub.publish(self.move_cmd)
                
            self.rate.sleep()

if __name__ == '__main__':
    try:
        robot = GazeboObstacleAvoidance()
        rospy.sleep(1) # Sensör verisinin oturması için
        robot.run()
    except rospy.ROSInterruptException:
        pass

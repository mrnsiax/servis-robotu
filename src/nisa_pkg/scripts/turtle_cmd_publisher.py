#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist

def main():
    rospy.init_node('turtle_cmd_publisher_node', anonymous=True)
    pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)

    rate = rospy.Rate(1)
    msg = Twist()

    msg.linear.x = 2.0
    msg.angular.z = 1.0

    rospy.loginfo("Publisher started. Publishing to /turtle1/cmd_vel")

    while not rospy.is_shutdown():
        pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    main()

#!/usr/bin/env python3
import rospy
from std_msgs.msg import String

def main():
    rospy.init_node("talker_node", anonymous=False)
    pub = rospy.Publisher("/chatter", String, queue_size=10)
    rate = rospy.Rate(2)  # 2 Hz

    i = 1
    while not rospy.is_shutdown():
        msg = f"hello leo #{i}"
        pub.publish(msg)
        rospy.loginfo(msg)
        i += 1
        rate.sleep()

if __name__ == "__main__":
    main()nano scripts/talker_counter.py




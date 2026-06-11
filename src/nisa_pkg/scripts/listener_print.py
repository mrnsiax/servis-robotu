#!/usr/bin/env python3
import rospy
from std_msgs.msg import String

def cb(msg):
    rospy.loginfo(f"heard: {msg.data}")

def main():
    rospy.init_node("listener_node", anonymous=False)
    rospy.Subscriber("/chatter", String, cb)
    rospy.spin()

if __name__ == "__main__":
    main()

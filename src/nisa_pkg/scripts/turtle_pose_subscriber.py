#!/usr/bin/env python3
import rospy
from turtlesim.msg import Pose

def pose_callback(msg):
    rospy.loginfo("Robot Position -> x: %.2f, y: %.2f, theta: %.2f",
                  msg.x, msg.y, msg.theta)

def main():
    rospy.init_node('turtle_pose_subscriber_node', anonymous=True)
    rospy.Subscriber('/turtle1/pose', Pose, pose_callback)
    rospy.loginfo("Subscriber started. Listening to /turtle1/pose")
    rospy.spin()

if __name__ == '__main__':
    main()

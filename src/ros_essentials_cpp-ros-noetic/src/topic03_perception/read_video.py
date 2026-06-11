#!/usr/bin/env python3

import cv2

video_capture = cv2.VideoCapture(0)
#video_capture = cv2.VideoCapture('/home/nisa/nisa_ws/src/ros_essentials_cpp-ros-noetic/src/topic03_perception/video/ros.mp4')

while(True):
	ret, frame = video_capture.read()
	
	frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
	frame = cv2.resize(frame, (0,0), fx=0.6,fy=0.6)
	cv2.line(frame,(100,100),(511,511),(255,0,0),5)
	cv2.imshow("Frame",frame)
	if cv2.waitKey(1) & 0xFF == ord('q'):
		break

video_capture.release()
cv2.destroyAllWindows()

#!/usr/bin/env python3

import numpy as np
import cv2
import imutils

image = cv2.imread("/home/nisa/nisa_ws/src/ros_essentials_cpp-ros-noetic/src/topic03_perception/images/tennisball05.jpg")
cv2.imshow("Original",image)

#convert the image into the HSV color space
hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
cv2.imshow("hsv image",hsv)

#find the upper and lower bounds of the yellow color (tennis ball)
yellowLower =(30, 150, 100)
yellowUpper = (50, 255, 255)

#define a mask using the lower and upper bounds of the yellow color 
mask = cv2.inRange(hsv, yellowLower, yellowUpper)

cv2.imshow("mask image", mask)

cv2.waitKey(0)
cv2.destroyAllWindows()



cv2.waitKey(0)
cv2.destroyAllWindows()

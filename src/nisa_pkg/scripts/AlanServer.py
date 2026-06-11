#!/usr/bin/env python3
import rospy
from nisa_pkg.srv import DikdortgenAlan, DikdortgenAlanResponse

def hesapla(req):
    alan = req.width * req.height
    rospy.loginfo(f"İstek: {req.width}x{req.height} | Sonuç: {alan}")
    return DikdortgenAlanResponse(alan)

def server_baslat():
    rospy.init_node('alan_server_node')
    rospy.Service('alan_servisi', DikdortgenAlan, hesapla)
    rospy.loginfo("Alan Sunucusu Hazır.")
    rospy.spin()

if __name__ == "__main__":
    server_baslat()

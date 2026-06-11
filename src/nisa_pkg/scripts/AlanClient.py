#!/usr/bin/env python3
import rospy
from nisa_pkg.srv import DikdortgenAlan

def istemci_iste(w, h):
    rospy.wait_for_service('alan_servisi')
    try:
        servis_baglantisi = rospy.ServiceProxy('alan_servisi', DikdortgenAlan)
        yanit = servis_baglantisi(w, h)
        return yanit.area
    except rospy.ServiceException as e:
        print(f"Servis hatası: {e}")

if __name__ == "__main__":
    rospy.init_node('alan_client_node') # Node ismini tanımlıyoruz
    
    print("--- Dikdörtgen Alan Hesaplayıcı ---")
    try:
        # Kullanıcıdan değerleri alıyoruz
        genislik = float(input("Genişliği giriniz: "))
        yukseklik = float(input("Yüksekliği giriniz: "))
        
        sonuc = istemci_iste(genislik, yukseklik)
        
    except ValueError:
        print("Hata: Lütfen sadece sayı giriniz!")

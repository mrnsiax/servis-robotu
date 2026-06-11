# TURTLESIM HAREKET VE KONUM TAKİBİ PROJESİ 

	İREM NİSA NALBANT
	
Bu proje, ROS ortamında turtlesim düğümünü kontrol etmek ve kaplumbağanın anlık konumunu takip etmek için tasarlanmıştır. Proje bir Publisher (yayıncı) ve bir Subscriber (abone) düğümünden oluşur.


## Proje Yapısı

- **nisa_pkg**: ROS Paket adı.
- **turtle_cmd_publisher.py**: Kaplumbağaya hareket komutları (geometry_msgs/Twist) gönderen yayıncı düğüm.
- **turtle_pose_subscriber.py**: Kaplumbağanın anlık konum ve açı verilerini (turtlesim/Pose) dinleyen ve ekrana yazdıran abone düğüm.

## Kurulum ve Çalıştırma

Öncelikle çalışma alanınızı (workspace) derlemeniz gerekir:

    cd ~/nisa_ws
    catkin_make
    source devel/setup.bash

Ardından 3 ayrı terminalden şu komutları sırasıyla giriyoruz:

    1.Terminal: roscore

    2.Terminal: rosrun turtlesim turtlesim_node (Simülasyon)

    3.Terminal: rosrun nisa_pkg turtle_cmd_publisher.py (Yayıncı-Hareket)
    
    4.Terminal: rosrun nisa_pkg turtle_pose_subscriber.py (Abone-Konum Takibi)
    
## Uygulama Görüntüsü

    Turtlesim Ekranı: Kaplumbağa, turtle_cmd_publisher.py dosyasından gelen hız verilerine göre dairesel hareket etmeye başlar.

    Yayıncı Terminali: Kaplumbağaya gönderilen lineer ve açısal hız değerleri log olarak basılır.

    Abone Terminali: Kaplumbağanın o anki x, y koordinatları ve theta (açı) bilgisi anlık olarak güncellenerek ekranda listelenir.

    Görsel Taslak:

        Sol tarafta kaplumbağanın hareket ettiği mavi Turtlesim penceresi.

        Sağ tarafta ise sürekli akan koordinat verilerinin (x: 5.5, y: 5.5...) olduğu uçbirim ekranı.

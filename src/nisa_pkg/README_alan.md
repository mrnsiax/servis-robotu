# DİKDÖRTGENİN ALANI SERVİS PROJESİ

	İREM NİSA NALBANT

Bu proje, ROS üzerinde bir istemcinin (client) kullanıcıdan aldığı genişlik ve yükseklik değerlerini sunucuya (server) gönderdiği ve sunucunun bu değerlerle alan hesaplayıp geri döndürdüğü bir servis uygulamasıdır.

## Proje Yapısı

- **nisa_pkg**: ROS Paket adı.
- **DikdortgenAlan.srv**: Servis tanım dosyası (Request: float64 width, height | Response: float64 area).
- **AlanServer.py**: Alan hesaplamasını yapan sunucu kodu.
- **AlanClient.py**: Kullanıcıdan girdi alıp sunucuya istek gönderen istemci kodu.

## Kurulum ve Çalıştırma

Öncelikle çalışma alanınızı (workspace) derlemeniz gerekir:

    cd ~/nisa_ws
    catkin_make
    source devel/setup.bash

Ardından 3 ayrı terminalden şu komutları sırasıyla giriyoruz:

    1.Terminal: roscore

    2.Terminal: rosrun nisa_pkg AlanServer.py (Sunucuyu başlatır)

    3.Terminal: rosrun nisa_pkg AlanClient.py (İstemciyi başlatır)
    
## Uygulama Görüntüsü

Client çalışınca bizden genişlik ve yükseklik istiyor. Biz sayıları girince Server'da ekrana yazdırıyor.

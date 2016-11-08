#Auto Shutdown Server jika Listrik mati lampu
edit pada ip pada script shutdown.sh ke ip perangkat yang jika listrik mati perangkat juga mati

copy sript ke /root

cp shutdown.sh /root

ubah permission agar bisa di eksekusi :

chmod +x /root/shutdown.sh

masukkan script kedalam crontab agar di eksekusi sesuai keinginan kita. Yang saya lakukan disini setiap 3 menit

crontab -e

masukkan baris dibawah :

0,3,6,9,12,15,18,21,24,27,30,33,36,39,42,45,48,51,54,57 * * * * /root/shutdown.sh

atau 

*/3 * * * * /root/shutdown.sh

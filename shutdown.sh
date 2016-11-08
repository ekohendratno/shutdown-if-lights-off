#!/bin/sh

IP_LIST=’192.168.11.2′

ALIVE=0
for IP in $IP_LIST; do
ping -q -c1 -w5 $IP
if [ $? -eq 0 ]; then
ALIVE=1
echo “$IP is alive: $(date)” >> /root/shutdown.log
break
fi
done

if [ $ALIVE -eq 0 ]; then
echo “***ShutDown*** $(date)” >> /root/shutdown.log
echo “###########################” >> /root/shutdown.log
/sbin/shutdown -h now
fi

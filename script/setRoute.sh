#! /bin/bash
curPath=$(cd "$(dirname "$0")";pwd)
source ${curPath}/../connection.conf
#echo $curPath
#echo $router
/usr/sbin/ifmetric wlan0 0
/usr/sbin/ifmetric eth0 100
/sbin/route del $dataServerIp gw $router
/sbin/route add $dataServerIp gw $router metric 0
/sbin/route del -net 0.0.0.0 netmask 0.0.0.0 gw $router
/sbin/route del -net 0.0.0.0 netmask 0.0.0.0 gw $router
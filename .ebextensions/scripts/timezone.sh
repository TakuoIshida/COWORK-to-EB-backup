#!/bin/bash
cp -f /usr/share/zoneinfo/Japan /etc/localtime
sed -i -e 's/ZONE=.*$/ZONE="Asia\/Tokyo"/' /etc/sysconfig/clock
sed -i -e 's/UTC=.*$/UTC=false/' /etc/sysconfig/clock
echo 'ARC=false' >> /etc/sysconfig/clock
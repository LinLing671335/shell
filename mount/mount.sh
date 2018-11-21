#!/bin/bash
## samba存储挂载
set -x
source /root/mount/export.sh
yum install -y samba-client cifs-utils
mkdir /data/"$name" -p
echo //192.168.179.51/data/"$name" /data/"$name" cifs defaults,username=storage,password=linling 0 0 >> /etc/fstab
mount -a

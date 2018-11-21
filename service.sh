#!/bin/bash
# 切换到当前目录
current_dir=`dirname $0`
current_dir=`readlink -f $current_dir`
cd ${current_dir} && export current_dir

for service in sendmail nfslock autofs portmap netfs kudzu ip6tables iptables bluetooth avahi-daemon gpm hidd
do
service ${service} stop
chkconfig ${service} off
done

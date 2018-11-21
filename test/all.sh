#!/bin/bash
echo hello world\and
echo "$SHELL" "$HOME" 
#echo "$IFS""$LANG"
echo "$PATH" 
echo "$PWD" "$UID" "$USER" "$HISTSIZE"" $RANDOM" "$HOSTNAME"
echo $0
echo $?
#echo $#
#echo $*
echo $$
#echo $!


## 判断值得大小
N=10
if [ $N -gt 5 ]; then
	echo "Value is greater than 5"
else
	echo "Value is less than 5"
fi


## 查看进程crond是否运行
NAME=crond
NUM=$(ps -ef|grep $NAME|grep -vc grep)
if [ $NUM -eq 1 ]; then
	echo "$NAME is running"
else
	echo "$NAME is not running"
fi


## 查看httpd服务是否运行
port=httpd
PORT=$(netstat -ntl|grep -c 80)
if [ $PORT -eq 1 ]; then
	echo "$port is running"
else
	echo "$port is not running"
fi


## if多分支
#a=$1
#if [ $a -eq 3 ]; then 
#	echo "Enter a value of 3"
#elif [ $a -eq 6 ]; then
#	echo "Enter a value of 6"
#elif [ $a -eq 9 ]; then
#	echo "Enter a value of 9"
#else
#	echo "Please enter the 3 6 9"
#fi


## 检查主机是否存活
#for ip in 192.168.179.{50..60}; do
#if ping -c 1 $ip >/dev/null 2>&1; then
#	echo "$ip OK."
#else
#	echo "$ip NO!"
#fi
#done


## for循环
for ((i=1;i<=5;i++)); do
	echo $i
done

## case语句
#case $1 in
#	start)
#		echo "start."
#		;;
#	stop)
#		echo "stop."
#		;;
#	restart)
#		echo "restart."
#		;;
#	*)
#		echo "Usage: $0 {start|stop|restart}"
#esac


## 服务的启动脚本
#case $1 in
#	[0-9])
#		echo "match number."
#		;;
#	[a-z])
#		echo "match letter."
#		;;
#	'-h'|'--help')
#		echo "help"
#		;;
#	*)
#		echo "Input error!"
#		exit
#esac

## 数组
IP=(192.168.179.{50..60})
for ((i=0;i<=${#IP[*]};i++)); do
	echo ${IP[$i]}
done 

for IP in ${IP[*]}; do
	echo $IP
done

## for测试
#b=a b c d
for b in a b c d; do
	echo $b
done

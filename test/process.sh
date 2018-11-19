#!/bin/bash
NAME=crond
NUM=$(ps -ef |grep "$NAME" |grep -vc grep)
#echo $NUM
#if [ $NAME == " " ]; then
#	echo "Please enter the process name"
#else
if [ $NUM -eq 1 ] ; then
	echo "$NAME running."
else
	echo "$NAME is not running!"
fi
#fi

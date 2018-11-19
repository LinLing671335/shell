#!/bin/bash
#if ping -c 1 192.168.179.1 >/dev/null 2>&1; then
#	echo "OK."
#else
#	echo "NO!"
#fi
for ip in 192.168.179.{50..60}; do
if ping -c 1 $ip >/dev/null 2>&1; then
echo "$ip OK."
else
echo "$ip NO!"
fi
done

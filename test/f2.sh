#!/bin/bash
## 变量为空返回值
echo ${1:-'请输入变量'} 
echo ${1:+'good'}
#echo $1 && echo "good" || echo "请输入变量"
cat f3.sh > /dev/null 2>&1  && echo 'good' || echo please perform '<<touch f3.sh>>'
echo ${a:=test}

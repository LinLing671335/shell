#!/bin/bash
## 将命令结果作为变量值
a=`echo hello world 1234`
echo $a
#hello
#one
## 获取字符串长度
echo ${#a}
## 截取wo字符(6是从第6个字符起截两个字符，空格不算字符)
echo ${a:6:2}
## 截取hello字符
echo ${a:0:5}
## 变量的值替换
echo ${a/world/and}
## 将所有o替换成m
echo ${a//o/m}
## 替换正则匹配为空
echo ${a//[^0-9]/}
echo ${a//[0-9]/}
## 变量为空返回值
echo ${1:-'请输入变量'}

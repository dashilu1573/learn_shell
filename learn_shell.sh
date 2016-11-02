#!/bin/bash

#”Exit immediately if a simple command exits with a non-zero status."在set -e之后出现的代码，一旦出现了返回值非零，整个脚本就会立即退出
set -e

#返回这个脚本文件放置的目录
DIR="$( cd "$(dirname "$0")" ; pwd -P )"
cd $DIR

echo `date`

name="luyafei"
echo $name
name="luyafei2"
echo ${name}

#只读变量 readonly
#删除变量 unset

#拼接字符串
greeting="hello,"$name" !"
echo $greeting
echo "----------------------------------------------"

#数组
array_name=(value0 value1)
array_name[2]=value2
echo ${array_name[2]}
#获取数组长度
echo ${#array_name[@]}
echo "----------------------------------------------"

#shell脚本内获取执行参数的格式为$n
echo "Shell 传递参数实例！"
echo "执行的文件名：$0"
echo "第一个参数为：$1"
echo "---------------------------------------------"

#运算符,表达式和运算符之间要有空格，表达式要被``包含，不是引号
val=`expr 2 + 2`
echo "两数之和为：$val"
echo "---------------------------------------------"

#test 命令用于检查某个条件是否成立，它可以进行数值、字符和文件三个方面的测试
cd /bin
if test -e ./notFile -o -e ./bash
then
    echo '有一个文件存在!'
else
    echo '两个文件都不存在'
fi
echo "---------------------------------------------"

#流程控制
for loop in 1 2 3 4 5
do
    echo "The value is:$loop"
done

#函数(函数返回值在调用该函数后通过 $? 来获得)
funWithReturn(){
    echo "这个函数会对输入的两个数字进行相加运算..."
    num1=3
    num2=4
    echo "两个数字分别为 $num1 和 $num2 !"
    return $(($num1+$num2))
}
funWithReturn
echo "输入的两个数字之和为 $? !"

#0是标准输入(STDIN),1是标准输出(STDOUT),2是标准错误输出(STDERR)



#!/bin/bash

file=${1}
fileHome=/Users/xiaoqb/db/fdu/Shell
result=`cat ${file}`
temp=%
arr=${result//$temp/ }
count=0
for str in ${arr[@]}
do
    echo $str
    count=$(($count+1))
    touch $fileHome/res_${count}
    echo ${str} > $fileHome/res_${count}
done


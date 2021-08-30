#!/bin/bash
# 需要清空 空白的子文件夹 目录的绝对路径
path=${1}

for repo in `ls ${path}`
do
	result=`ls ${path}/${repo}`
	if [[ "$result" == "" ]]
	then
		rm -rf ${path}/${repo}
	fi
done



# del empty dir
for repo in `ls -l  |grep ^d|awk '{print $NF}'`
do
	result=`ls ${repo}`
	if [[ "$result" == "" ]]
	then
		rm -rf ${repo}
	fi
done

echo "filter finished!"
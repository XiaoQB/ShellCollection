#!/bin/bash

printf '%s ' '请输入CE数量（大于当前CE数量的segment都将被过滤）:'
read CE_COUNT
CE_COUNT=${CE_COUNT:?"未输入CE数量，请重试。"}

printf '%s ' '请输入需要生成的文件名, 默认为bfc:'
read filename
filename=${filename:-bfc}

path="split_dir"
echo "bfc总数为：`ls $path | wc -l`"
echo "过滤空间：100～245"

echo "CE_COUNT:  $CE_COUNT"


for res in `ls  ${path}`
do
	FAL_COUNT=$(awk -v RS="@#$j" '{print gsub(/FAL/,"&")}' $path/$res)
	CE_ACTUAL_COUNT=$(awk -v RS="@#$j" '{print gsub(/迁移后编译失败/,"&")}' $path/$res)
	if [ "$FAL_COUNT" -gt "$CE_ACTUAL_COUNT" ]
	then
		if [ "$CE_ACTUAL_COUNT" -le "$CE_COUNT" ]
		then
			bfc=`awk -F 开始 '{print $1}' $path/$res`
			echo $bfc >> temp.csv
		else 
			continue
		fi
	else
		continue
	fi
done
echo "过滤后bfc数量为：`cat temp.csv | wc -l`"


gshuf -n 100 temp.csv > ${filename}.csv 
rm temp.csv
echo "已完成随机"
#!/bin/bash
# success完整路径
path=${1}

for repo in `ls ${path}`
do
	echo ”${repo}“ >> /mnt/sdb/BugInfo.txt
	cd ${path}/${repo}/cache
	for bfc in `ls`
	do
		#判断cache是否正确：只含有3个文件夹
		if [[ `ls -l ${bfc}|wc -l`  == "4" ]]
		then
			echo "$bfc" >> /mnt/data/sdb/BugInfo.txt
		fi
	done
	cd ..
	sed -n '3p' logmain >>/mnt/data/sdb/BugInfo.txt
    sed -n '1p' logmain >>/mnt/data/sdb/BugInfo.txt
done


echo "-------All info got!-------"

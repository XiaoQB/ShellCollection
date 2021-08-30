#!/bin/bash
# autoDigReg, spilt, judge 与success在同一级文件夹，路径+success/failed
path=${1}
dir=${2}
cd ${path}

for repo in `ls ${dir}`
do
	./spilt.sh ${path}/${dir}/${repo}
	echo "${repo} divided"
	for regs in `ls ${dir}/${repo}`
	do
		./judge.sh ${path}/${dir}/${repo}/${regs}
	done
	echo "---${repo} judged!"
done


echo "-------All logmain judged!-------"

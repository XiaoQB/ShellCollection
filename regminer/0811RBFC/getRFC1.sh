#!/bin/bash
# success完整路径
# path=${1}
path='/Users/xiaoqb/code/regminer_space'
for dig in `ls -l |grep ^d|awk '{print $NF}'`
do
	cd ${dig}
	for succfail in `ls`
	do
		cd ${succfail}
		for repo in `ls`
		do
			cd ${repo}
			echo "${repo}" >> ${path}/dgall/res.csv
			for res in `ls`
			do
				#if [[ $res=="logmain" ]]
				#then
				#	rm &{res}
				#fi
				echo `awk -F 开始 '{print $1}' $res` >> ${path}/dgall/res.csv
				#sed -n '1p' $res >> ${path}/res.csv
			done
			cd ..
		done
		cd ..
	done
	cd ..
done
echo "-------All rfc got!-------"
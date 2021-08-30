#!/bin/bash
path=${1}
for repo in `ls  ${path}`
do
	if [[ `cat ${path}/$repo | grep -E "PASS"` == "" ]]
	then
		if [[ `cat ${path}/$repo | grep -E "迁移成功"` == "" ]]
		then
			rm ${path}/$repo
		else
			if [[ `cat ${path}/$repo | grep -E "查找失败"` == "" ]]
			then    
				rm ${path}/$repo
			else
				continue
			fi

		fi
	else
		rm ${path}/$repo
		continue
	fi
done

#!/bin/bash
# success完整路径 info输出路径
path=${1}
path_info=${2}

for repo in `ls ${path}`
do
	echo ”${repo}:-------“ >> ${path_info}/pomHead.txt
	cd ${path}/${repo}/cache
	for bfc in `ls`
	do
		cd ${bfc}
		for bfcc in `ls`
		do
			cd ${bfcc}
			for bfccc in `ls`
			do
				# head -n 30
				cd ${bfccc}/meta
				sed -n '1p' logmain >>${path_info}/pomHead.txt
    			sed -n '2p' logmain >>${path_info}/pomHead.txt
				sed -n '3p' logmain >>${path_info}/pomHead.txt
    			sed -n '4p' logmain >>${path_info}/pomHead.txt
				sed -n '6p' logmain >>${path_info}/pomHead.txt
    			sed -n '7p' logmain >>${path_info}/pomHead.txt
				sed -n '8p' logmain >>${path_info}/pomHead.txt
    			sed -n '9p' logmain >>${path_info}/pomHead.txt
				sed -n '10p' logmain >>${path_info}/pomHead.txt
				sed -n '11p' logmain >>${path_info}/pomHead.txt
    			sed -n '12p' logmain >>${path_info}/pomHead.txt
				sed -n '13p' logmain >>${path_info}/pomHead.txt
    			sed -n '14p' logmain >>${path_info}/pomHead.txt
				sed -n '15p' logmain >>${path_info}/pomHead.txt
    			sed -n '16p' logmain >>${path_info}/pomHead.txt
				sed -n '17p' logmain >>${path_info}/pomHead.txt
    			sed -n '18p' logmain >>${path_info}/pomHead.txt
    			sed -n '19p' logmain >>${path_info}/pomHead.txt
				sed -n '20p' logmain >>${path_info}/pomHead.txt
				sed -n '21p' logmain >>${path_info}/pomHead.txt
    			sed -n '22p' logmain >>${path_info}/pomHead.txt
				sed -n '23p' logmain >>${path_info}/pomHead.txt
    			sed -n '24p' logmain >>${path_info}/pomHead.txt
				sed -n '25p' logmain >>${path_info}/pomHead.txt
    			sed -n '26p' logmain >>${path_info}/pomHead.txt
				sed -n '27p' logmain >>${path_info}/pomHead.txt
    			sed -n '28p' logmain >>${path_info}/pomHead.txt
				sed -n '29p' logmain >>${path_info}/pomHead.txt
    			sed -n '30p' logmain >>${path_info}/pomHead.txt
				echo ”---------------------“ >> ${path_info}/pomHead.txt
				break
			done
			break
		done
		break				
	done
	
	
done


echo "-------All pom got!-------"

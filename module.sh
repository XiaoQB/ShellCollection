#!/bin/bash

path=${1}


# awk
# 指定分隔符并打印第一列
echo `awk -F ] '{print $1}' split_dir/${repo}` >> BFC_TESTCASE.csv 

# 遍历当前目录下所有文件夹
# awk打印最后一列所有值
for dig in `ls -l |grep ^d|awk '{print $NF}'`


#调用脚本
./judge.sh ${path}/${dir}/${repo}/${regs}
bash -x demo.sh
java -jar ./basev2.jar >basev2.log 2>&1 &


# sed
# 打印第一行
sed -n '1p' file >> newfile
# 全文替换：将meta换成空
sed  's/metametameta//g' newreg.csv >> reg.csv
# 删除第二行
sed -i '1d' /home/fdse/data/workSpeace/repo.txt
# 删除第N行，最后一行，含特定字符行
sed 'Nd' file
sed '$d' sed-demo.txt 
sed '/System/d' sed-demo.txt
# mac需要指定备份 .并不指.，而是所有文件
sed -i ''  '/./d' missedCommit_trimed.txt
# 统计文件数量
if [[ `ls -l ${bfc}|wc -l`  == "4" ]]


# echo
echo "${repo}" >> ${path}/dgall/res.csv
echo -e
echo -n


# 字符串截头去尾，输出前40个字符
for line in `cat BFC_TESTCASE.csv`
do
	echo ${line:0:40} >> BFC_trimed.csv
done

#函数
function split(){
   
}

split


if [[ "$result" == "" ]]


# 切割文件
result=`cat ${addr}/logmain`
if [[ `cat ${addr}/logmain | grep -E "%"`  == "" ]]
then
    exit 0
fi

i=1
# 指定循环次数   
for j in {1..2000}
# while((1))
do
   splitchar=`echo $result|cut -d "%" -f $i`
   if [ "$splitchar" != "" ]
   then
       ((i++))
       echo $splitchar > ${addr}/split_dir/res_$i
   else
       break
   fi
done

#多层嵌套
for repo in `ls -l ${path}|`
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
		
				echo ”---------------------“ >> ${path_info}/pomHead.txt
				break
			done
			break
		done
		break				
	done
	
	
done

#过滤删除文件

#!/bin/bash
path=${1}
for repo in `ls  ${path}`
do
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
done



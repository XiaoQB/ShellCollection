#!/bin/bash
path="/Users/xiaoqb/code/regminer/repo4conreg_sxz"

for repo in `ls -l $path |grep ^d|awk '{print $NF}'`
do
	cd $path/$repo
	result1=`awk -F meta '{print $1}' regression.csv`
	result2=`awk -F meta '{print $2}' regression.csv`
	result3=`awk -F meta '{print $3}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $4}' regression.csv`
	result2=`awk -F meta '{print $5}' regression.csv`
	result3=`awk -F meta '{print $6}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $7}' regression.csv`
	result2=`awk -F meta '{print $8}' regression.csv`
	result3=`awk -F meta '{print $9}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $10}' regression.csv`
	result2=`awk -F meta '{print $11}' regression.csv`
	result3=`awk -F meta '{print $12}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $13}' regression.csv`
	result2=`awk -F meta '{print $14}' regression.csv`
	result3=`awk -F meta '{print $15}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $16}' regression.csv`
	result2=`awk -F meta '{print $17}' regression.csv`
	result3=`awk -F meta '{print $18}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $19}' regression.csv`
	result2=`awk -F meta '{print $20}' regression.csv`
	result3=`awk -F meta '{print $21}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $22}' regression.csv`
	result2=`awk -F meta '{print $23}' regression.csv`
	result3=`awk -F meta '{print $24}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

	result1=`awk -F meta '{print $25}' regression.csv`
	result2=`awk -F meta '{print $26}' regression.csv`
	result3=`awk -F meta '{print $27}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $28}' regression.csv`
	result2=`awk -F meta '{print $29}' regression.csv`
	result3=`awk -F meta '{print $30}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $31}' regression.csv`
	result2=`awk -F meta '{print $32}' regression.csv`
	result3=`awk -F meta '{print $33}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $34}' regression.csv`
	result2=`awk -F meta '{print $35}' regression.csv`
	result3=`awk -F meta '{print $36}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $37}' regression.csv`
	result2=`awk -F meta '{print $38}' regression.csv`
	result3=`awk -F meta '{print $39}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $40}' regression.csv`
	result2=`awk -F meta '{print $41}' regression.csv`
	result3=`awk -F meta '{print $42}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $43}' regression.csv`
	result2=`awk -F meta '{print $44}' regression.csv`
	result3=`awk -F meta '{print $45}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $46}' regression.csv`
	result2=`awk -F meta '{print $47}' regression.csv`
	result3=`awk -F meta '{print $48}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

	result1=`awk -F meta '{print $49}' regression.csv`
	result2=`awk -F meta '{print $50}' regression.csv`
	result3=`awk -F meta '{print $51}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $52}' regression.csv`
	result2=`awk -F meta '{print $53}' regression.csv`
	result3=`awk -F meta '{print $54}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $55}' regression.csv`
	result2=`awk -F meta '{print $56}' regression.csv`
	result3=`awk -F meta '{print $57}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $58}' regression.csv`
	result2=`awk -F meta '{print $59}' regression.csv`
	result3=`awk -F meta '{print $60}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $61}' regression.csv`
	result2=`awk -F meta '{print $62}' regression.csv`
	result3=`awk -F meta '{print $63}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv


	result1=`awk -F meta '{print $64}' regression.csv`
	result2=`awk -F meta '{print $65}' regression.csv`
	result3=`awk -F meta '{print $66}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $67}' regression.csv`
	result2=`awk -F meta '{print $68}' regression.csv`
	result3=`awk -F meta '{print $69}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $70}' regression.csv`
	result2=`awk -F meta '{print $71}' regression.csv`
	result3=`awk -F meta '{print $72}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $73}' regression.csv`
	result2=`awk -F meta '{print $74}' regression.csv`
	result3=`awk -F meta '{print $75}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $76}' regression.csv`
	result2=`awk -F meta '{print $77}' regression.csv`
	result3=`awk -F meta '{print $78}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

	result2=`awk -F meta '{print $79}' regression.csv`
	result3=`awk -F meta '{print $80}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $81}' regression.csv`
	result2=`awk -F meta '{print $82}' regression.csv`
	result3=`awk -F meta '{print $83}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv


	result1=`awk -F meta '{print $84}' regression.csv`
	result2=`awk -F meta '{print $85}' regression.csv`
	result3=`awk -F meta '{print $86}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $87}' regression.csv`
	result2=`awk -F meta '{print $88}' regression.csv`
	result3=`awk -F meta '{print $89}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $90}' regression.csv`
	result2=`awk -F meta '{print $91}' regression.csv`
	result3=`awk -F meta '{print $92}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $93}' regression.csv`
	result2=`awk -F meta '{print $94}' regression.csv`
	result3=`awk -F meta '{print $95}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

 	result1=`awk -F meta '{print $96}' regression.csv`
	result2=`awk -F meta '{print $97}' regression.csv`
	result3=`awk -F meta '{print $98}' regression.csv`
	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

	sed  's/metametameta//g' newreg.csv >> reg.csv 

done

 	# for i in `seq 1 50`
# do
# 	# echo $i
#  	result1=`awk -F meta '{print $1}' regression.csv`
#  	let "i++"
# 	result2=`awk -F meta '{print $2}' regression.csv`
# 	let "i++"
# 	result3=`awk -F meta '{print $3}' regression.csv`
# 	echo "${result1}meta${result2}meta${result3}meta" >> newreg.csv

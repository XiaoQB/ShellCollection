#!/bin/bash
# dig一个单独的logmain文件，结果在独立的split_dir中

addr=${1}
mkdir ${addr}/split_dir

function split(){
    result=`cat ${addr}/logmain`
    if [[ `cat ${addr}/logmain | grep -E "%"`  == "" ]]
    then
        exit 0
    fi

    i=1   
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
    
}

split

echo "divided"


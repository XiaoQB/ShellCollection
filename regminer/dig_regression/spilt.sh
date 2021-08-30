#!/bin/bash

file=${1}
result=`cat ${file}/logmain`
i=1

if [[ `cat ${file}/logmain | grep -E "%"`  == "" ]]
    then
        exit 0
    fi
    
while((1==1))
do
   splitchar=`echo $result|cut -d "%" -f $i`
   if [ "$splitchar" != "" ]
   then
       ((i++))
       echo $splitchar > ${file}/res_$i
   else
       break
   fi
done


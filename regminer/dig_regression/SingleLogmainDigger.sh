#!/bin/bash

i=1
mkdir splitDir
result=`cat logmain`

if [[ `cat logmain | grep -E "%"`  == "" ]]
    then
        exit 0
fi
    
while((1==1))
do
   splitchar=`echo $result|cut -d "%" -f $i`
   if [ "$splitchar" != "" ]
   then
       ((i++))
       echo $splitchar > splitDir/res_$i
   else
       break
   fi
done

echo "splited!"

for res in `ls splitDir`
do
    result=`cat splitDir/${res} | grep -E "PASS"`

    if [[ "$result" == "" ]]
    then
        rm  splitDir/${res}
    else
        if [[ `cat splitDir/${res} | grep -E "回归"` == "" ]]
        then    
                echo "@missed regression!"
        else
            rm  splitDir/${res}
        fi

    fi
done

echo "judged!"
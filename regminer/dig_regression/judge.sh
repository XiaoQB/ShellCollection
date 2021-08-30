#!/bin/bash

path=${1}

result=`cat ${path} | grep -E "PASS"`

if [[ "$result" == "" ]]
then
	rm -rf ${path}
else
	if [[ `cat ${path} | grep -E "回归"` == "" ]]
	then    
        	echo "@missed regression!"
	else
		rm -rf ${path}
	fi

fi


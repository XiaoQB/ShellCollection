#!/bin/bash

x=0
for repo in `ls -l |grep ^d|awk '{print $NF}'`
do
	i=cat ${repo}/reg.csv | grep -v ^$ | wc -l
	((x+=i))
done
echo "count:${x}"



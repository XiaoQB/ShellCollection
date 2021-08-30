#!/bin/bash

read -p "\033[1m请输入url：\033[1m" url

html=$(curl $url)

result=`grep -i 'Caused by' $html`
if [[ "$result" == "" ]]
then
	break
else
	echo "$url" >> url.csv
fi
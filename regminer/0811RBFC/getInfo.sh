#!/bin/bash

#path="split_dir"
for repo in `ls  split_dir`
do
	echo `awk -F ] '{print $1}' split_dir/${repo}` >> BFC_TESTCASE.csv 

done

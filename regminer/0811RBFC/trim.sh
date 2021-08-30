#!/bin/bash

#path="split_dir"

for line in `cat BFC_TESTCASE.csv`
do
	echo ${line:0:40} >> BFC_trimed.csv
done

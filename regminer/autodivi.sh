#!/bin/bash

for repo in `ls -l  /Users/xiaoqb/tmp/failed |grep ^d|awk '{print $NF}'`
do
    bash -x divide.sh /Users/xiaoqb/tmp/failed/${repo}
done
echo "all divided"
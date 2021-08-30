#!/bin/bash

# path=${1}
path="/mnt/sdb"

for repo in `ls -l $path |grep ^d|awk '{print $NF}'`
do
	result=`ls /${path}/${repo} |grep "cache"`
    if [[ "$result" == "" ]]
    then 
        continue
    else
        mkdir -p $path/repo4conreg/${repo}
        # 得到项目的regression.csv文件
        cp $path/$repo/regression.csv $path/repo4conreg/${repo}/regression.csv
        echo "${repo} regression.csv got!"

        # 得到meta
        cd $path/$repo/cache
        for bfc in `ls`
        do
            cd ${bfc}
            for bfcc in `ls`
            do
                cd ${bfcc}
                for bfccc in `ls`
                do
                    cd $bfccc
                    cp -rf meta $path/repo4conreg/${repo}/
                    echo "${repo} meta got!"
                    break
                done
                break
            done
            break
        done

    fi
done
echo "-------All pom got!-------"

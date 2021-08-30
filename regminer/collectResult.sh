#!bin/bash
path=${1}
for repo in `ls -l $path/repo4conreg/ |grep ^d|awk '{print $NF}'`
do
    echo `cat $path/repo4conreg/$repo/result.csv` >> $path/autoConreg4j/allResult.csv
    # echo "" >> $path/autoConreg4j/allResult.csv
done
echo "collect finished!"

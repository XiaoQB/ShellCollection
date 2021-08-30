for repo in `ls -l $path/repo4conreg/ |grep ^d|awk '{print $NF}'`
do
	echo "" >> $path/autoConreg4j/allResult.csv
    echo `cat $path/repo4conreg/$repo/result.csv` >> $path/autoConreg4j/allResult.csv

done

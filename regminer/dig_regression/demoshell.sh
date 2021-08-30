 
# 判断文件中字符
result=`echo ${fileInRepo} | grep -E "regression.csv"`
if [[ "$result" == "" ]]
then 
    exit 0

result=`cat ./mvn.log | grep -E "BUILD SUCCESS"`
if [[ "$result" == "" ]]
then
    echo "compile failed, exit"
    exit 1

#生成hash参数为路径
hashPath=`date +%Y%m%d%H%M%S`
cp -r /home/fdse/workSpeace/Regminer /home/fdse/workSpeace/Regminer_${hashPath}



#get repo name
arr=(${repoPath//\// })
arrLen=${#arr[@]}

echo "repo is ${arr[${arrLen} - 1]}"
echo "update work space for miner"

repoNames=`ls /home/fdse/data/workSpeace/work_space`

    arr=(${repoNames// / })
    for repo in ${arr[@]}


   repoNames=`ls /home/fdse/data/workSpeace/work_space`
    arr=(${repoNames// / })
    for repo in ${arr[@]}
    do
        jobStatus=`cat /home/fdse/data/workSpeace/work_space/${repo}/logmain | grep -E "成功"`
        if [[ "$jobStatus" != "" ]] ;
        then 
            ./automatedExecuteRegminer.sh /home/fdse/data/repo/
        fi  
    done

# 遍历行
repoFile=`cat /home/fdse/data/workSpeace/repo.txt`
for line in ${repoFile}
do
    # 删除第二行
    sed -i '1d' /home/fdse/data/workSpeace/repo.txt
    
    if [ ! -d "${githubPath}${line}" ]
    then
        echo "${line} is not exist, read next line"
    else
        echo "${line} exist, copy repo"
        cp -r ${githubPath}${line} /home/fdse/data/workSpeace/work_space/temp
  
        #get repo name
        arr=(${line//\// })
        arrLen=${#arr[@]}
        echo "repo is ${arr[${arrLen} - 1]}"
          
        #make work space
        echo "update work space for miner"
        mkdir /home/fdse/data/workSpeace/work_space/${arr[${arrLen} - 1]} 
        mv /home/fdse/data/workSpeace/work_space/temp /home/fdse/data/workSpeace/work_space/${arr[${arrLen} - 1]}
        mv /home/fdse/data/workSpeace/work_space/${arr[${arrLen} - 1]}/temp /home/fdse/data/workSpeace/work_space/${arr[${arrLen} - 1]}/meta
        break
    fi
done

#test compile
echo "begin compile"
cd /home/fdse/data/workSpeace/work_space/${arr[${arrLen} - 1]}/meta
mvn compile > ../mvn.log
result=`cat ../mvn.log | grep -E "BUILD SUCCESS"`
if [[ "$result" == "" ]]
then
    echo "compile failed, exit"
    rm -rf /home/fdse/data/workSpeace/work_space/${arr[${arrLen} - 1]}
    echo "try another repo"
    /home/fdse/data/workSpeace/automatedExecuteRegminer.sh ${githubPath}
    exit 1
fi
echo "compile success"

#copy Regminer
cp -r /home/fdse/data/workSpeace/Regminer /home/fdse/data/workSpeace/Regminer_${arr[${arrLen} - 1]}
cd  /home/fdse/data/workSpeace/Regminer_${arr[${arrLen} - 1]}/miner/v2base 

#reset env， 匹配file文件中每一行的所有fastjson替换为{arr[${arrLen} - 1]}
sed -i "s/fastjson/${arr[${arrLen} - 1]}/g" /home/fdse/data/workSpeace/Regminer_${arr[${arrLen} - 1]}/miner/v2base/env.properties

#run jar
echo "run jar"
java -jar ./basev2.jar >basev2.log 2>&1 &
echo "jar start"


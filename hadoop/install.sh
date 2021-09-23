# 集群解决方案 提供多个地址动态修改配置文件

cd  /environmental/flie/base/
rm hadoop-3.3.1.tar.gz
wget https://downloads.apache.org/hadoop/common/hadoop-3.3.1/hadoop-3.3.1.tar.gz
tar -zxvf hadoop-3.3.1.tar.gz
cd /environmental/software/
mv hadoop-3.3.1 hadoop

# 存储一定要设定知己的目录

mkdir -p  /environmental/data/hadoop/hdfs/nn
mkdir -p  /environmental/data/hadoop/hdfs/dn
mkdir -p  /environmental/data/hadoop/hdfs/snn
mkdir -p  /environmental/data/hadoop/yarn/nm

hdfs namenode -format
./start-dfs.sh


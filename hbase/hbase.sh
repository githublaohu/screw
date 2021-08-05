# 创建home
export HBASE_HOME= /environmental/software/hbase

# 设置bin目录
export PATH=$HBASE_HOME:$JAVA_HOME/bin

#HBase类路径
export HBASE_CLASSPATH=$HBASE_HOME/conf    

  #由HBase负责启动和关闭Zookeeper
export HBASE_MANAGES_ZK=false  

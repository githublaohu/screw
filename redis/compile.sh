cd $env_file/redis

yum install -y gcc

mkdir -p /environmental/software/redis/config
mkdir -p /environmental/data/redis

cpu_num=cat /proc/cpuinfo| grep "processor"| wc -l

make -j $cpu_num   PREFIX=/environmental/software/redis install

cp ./redis.conf /environmental/software/redis/config/

cd $env_software/redis
./bin/redis-server ./config/redis.conf  &
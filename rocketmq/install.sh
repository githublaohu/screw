cd $env_software/rocketmq/bin
nohup sh ./mqnamesrv  > /dev/null   2>&1 &
nohup sh ./mqbroker -n 127.0.0.1:9876 -c /environmental/software/rocketmq/conf/broker.conf  > /dev/null   2>&1 &
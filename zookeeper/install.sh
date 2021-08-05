cd $env_software"zookeeper/conf/"
cp zoo_sample.cfg zoo.cfg
cd ../bin/
./zkServer.sh start
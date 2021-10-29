groupadd elasticsearch
useradd -g elasticsearch elasticsearch
# cd $env_software/elasticsearch
# rm -fr $env_software/elasticsearch/elasticsearch.yml
# cp  elasticsearch.yml $env_software/elasticsearch/

cd $env_software/elasticsearch/bin/
echo "http.host: 0.0.0.0" >> ../config/elasticsearch.yml
# 打开这个配置会出现异常
#echo "network.host: 0.0.0.0" >> ../config/elasticsearch.yml

echo "xpack.security.enabled: false" >>  ../config/elasticsearch.yml

echo "vm.max_map_count = 262144" >>  /etc/sysctl.conf
/sbin/sysctl -p 

cd $env_software
chown -R elasticsearch elasticsearch

cd -
nohup sudo -u elasticsearch ./elasticsearch >/dev/null 2>&1 &
groupadd elasticsearch
useradd -g elasticsearch elasticsearch
chown -R elasticsearch elasticsearch
# cd $env_software/elasticsearch
# rm -fr $env_software/elasticsearch/elasticsearch.yml
# cp  elasticsearch.yml $env_software/elasticsearch/

cd $env_software/elasticsearch/bin/
echo "http.host: 0.0.0.0" >> ../config/elasticsearch.yml
echo "network.host: 0.0.0.0" >> ../config/elasticsearch.yml

nohup sudo -u elasticsearch ./elasticsearch >/dev/null 2>&1 &
config=$CRTDIR"/kibana/screw-kibana-simple.yml"
echo "config:$config"
cp $config "$env_software/kibana/config/"
cd $env_software/kibana/bin


nohup ./kibana --allow-root -c ../config/screw-kibana-simple.yml  -l ../logs/kibana.log  --plugin-dir ../plugins/  >/dev/null 2>&1 &

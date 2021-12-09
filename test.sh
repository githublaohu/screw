#!/bin/bash

export env_config=/environmental/config

name=$1
mode=$2
echo "name is $name mode is $mode"

software=${name%%'-'*}

if [ ! -n "$mode" ];then
    config_file=`ls ./$software/$software.* | awk 'NR==1'`
else
    config_file=`ls ./$software/$software-$mode.* | awk 'NR==1'`
fi

echo "$config_file"

if [  -f $config_file ];then
    echo "创建目录 $env_config/$software"
    mkdir  $env_config/$software
    echo "复制文件：config_file 到指定目录"
    cp $config_file  $env_config/$software
fi
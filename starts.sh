# 命令 安装软件名，动作
export env_base=/environmental
export env_file=/environmental/file/base
export env_software=/environmental/software
export env_screw=/environmental/screw
export env_software=/environmental/config


export CRTDIR=$(pwd)
name=$1
mode=$2
echo "name is $name mode is $mode"

if [ ! -n "$mode" ];then
    file_path="/environmental/screw/$name/start.sh"
else
    file_path="/environmental/screw/$name/start-$mode.sh"
fi

sh $file_path



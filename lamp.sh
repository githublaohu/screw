 #!/bin/bash
export env_base=/environmental

# 文件目录
export env_file=/environmental/file/base/

export env_software=/environmental/software/

# 存储都要在data创建对应的目录
export env_data=/environmental/data/

# 项目在project都有一个文件
export env_project=/environmental/project

# 文件目录
mkdir -p $env_file

# 安装目录
mkdir -p $env_software

# 存储目录
mkdir -p $env_data

# 项目目录
mkdir -p $env_project

# 初始化基本软件
yum install -y git wget

# 下载安装目录
cd /environmental
#git clone 

# start 安装
if [ ! -f "/usr/local/bin/start" ]; then
    ln -s  /environmental/screw/start /usr/local/bin/
    chmod 777 /usr/local/bin/start
fi

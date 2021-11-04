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


os_name=`uname  -a`

darwin="Darwin"
centos="centos"
ubuntu="ubuntu"

if [[ $os_name =~ $darwin ]];then
    echo "mac"
elif [[ $os_name =~ $centos ]];then
    echo "centos"
    yum install -y git wget unzip
elif [[ $os_name =~ $ubuntu ]];then
    echo "ubuntu"
    apt-get install -y git wget unzip
else
    echo $os_name
    yum install -y git wget unzip
    apt-get install -y git wget unzip
fi

# 初始化基本软件

# 下载安装目录
cd /environmental
git clone  https://github.com/githublaohu/screw.git

# start 安装
if [ ! -f "/usr/local/bin/start" ]; then
    ln -s  /environmental/screw/start /usr/local/bin/
    chmod 777 /usr/local/bin/start
fi

#!/bin/bash
# 命令 安装软件名，动作
export env_base=/environmental
export env_file=/environmental/file/base/
export env_software=/environmental/software/


CRTDIR=$(pwd)
name=$1
mode=$2
echo "name is $name mode is $mode"
# 查看可安装版本

# 识别是否有有版本号
software=${name%%'-'*}

# 得到下载目录
if [ -n "$DOWNLOAD_ADDRESS" ]; then
    # 得到列表

    # 匹配合格的列表

    # 127.0.0.1:8080/environmental/$software/$name
    downloadAddress=$DOWNLOAD_ADDRESS/$software/$name
    #  

else
  # 基本目录，然后加载software+name
  downloadAddress=$(grep   ${name}= ./${software}/download.conf )
  downloadAddress=${downloadAddress: ${#name}+1}
fi
echo "Download address is $downloadAddress"

if [ -z "$downloadAddress" ]; then
    exit $RETVAL
fi

# 进入文件
cd  $env_file

# 下载文件
wget $downloadAddress --no-check-certificat

# 识别文件后缀
suffixs=${downloadAddress//\./ } 
for var in ${suffixs[@]}
do
   suffix=$var
done

filenames=${downloadAddress//\// } 
for var in ${filenames[@]}
do
   filename=$var
done
echo "suffix is $suffix  filename is $filename" 

# 解压目录
case "$suffix" in
    xz)
        tar -Jxf $filename
        ;;
    gz)
        tar -zxvf $filename
        ;;
esac

# 删除压缩包
rm $filename

# 重命名
echo "重命名前 `ls`"
tarfile=`ls`
mv $tarfile $name
echo "重命名后 `ls`"

# 删除 /environmental/software/ 下文件
echo "删除原来安装的文件 `ls $env_software`"
rm -fr $env_software/$name
echo "原来的目录文件 `ls  $env_software`"
# mv 到 /environmental/software/
mv $name $env_software
echo "移动后的目录文件 `ls  $env_software`"

# 软链 环境配置
cd $CRTDIR
lnfile=$CRTDIR/$name/$name".sh"
echo "寻找软链，软链地址是 $lnfile"
if [  -f $lnfile ];then
    echo "创建软链"
    lnfilename="/etc/profile.d/$name.sh"
	ln -s $lnfile  $lnfilename
    source /etc/profile
fi
# 调用install.sh
if [ ! -n "$mode" ];then
    installfile="./"$name"/install.sh"
else
    installfile="./"$name"/install-"$mode".sh"
fi

if [  -f $installfile ];then
    echo "执行 $installfile"
    sh $installfile
fi

# 输出接下来步骤



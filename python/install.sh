wget http://www.openssl.org/source/openssl-1.0.2r.tar.gz
tar zxvf openssl-1.0.2r.tar.gz
./config --prefix=/opt/openssl1.0.2r --openssldir=/opt/openssl1.0.2r/openssl no-zlib
make && make install
echo "/opt/openssl1.0.2r/lib" >> /etc/ld.so.conf
ldconfig -v

wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tar.xz
tar xvf  Python-3.7.4.tar.xz
cd Python-3.7.4;./configure --prefix=/data/tools/Python3.7.4

#https://www.jb51.net/article/166688.htm

yum -y install wget gcc make libffi-devel zlib-devel readline-devel bzip2-devel ncurses-devel sqlite-devel gdbm-devel xz-devel tk-devel openssl-devel


CentOS 源码编译安装 Python3
准备#

yum -y install wget gcc make libffi-devel zlib-devel readline-devel bzip2-devel ncurses-devel sqlite-devel gdbm-devel xz-devel tk-devel openssl-devel


# yum install wget gcc make readline-devel
# 解决 import bz2 报错
# yum install  bzip2-devel
# 解决 import curses 报错
# yum install  ncurses-devel
# 解决 import sqlite3 报错
# yum install sqlite-devel
# 解决 _dbm _gdbm 缺失提醒
# yum install gdbm-devel
# 解决 _lzma 缺失提醒
# yum install xz-devel
# 解决 _tkinter 缺失提醒
# yum install tk-devel
# 解决 readline 缺失提醒及方向键行为非预期的问题
# yum install readline-devel
# yum install zlib-devel
# 解决ImportError: No module named '_ctypes' 错误
# yum install libffi-devel

wget https://www.python.org/ftp/python/3.7.1/Python-3.7.1.tar.xz # 下载
xz -d Python-3.7.1.tar.xz
tar -xvf Python-3.7.1.tar # 解压缩

cd Python-3.7.1
./configure --prefix=/usr/local/python3.7 --enable-optimizations

# --prefix指定了预期安装目录
# --enable-optimizations优化选项

make -j 4
make install

ln -s /usr/local/python3.7/bin/python3 /usr/bin/python3
ln -s /usr/local/python3.7/bin/pip3 /usr/bin/pip3

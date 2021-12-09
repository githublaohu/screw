
yum -y install openssl11.x86_64

wget https://ftp.gnu.org/gnu/glibc/glibc-2.15.tar.gz
tar zxf glibc-2.18.tar.gz 

 ../configure --prefix=/usr --disable-profile --enable-add-ons --with-headers=/usr/include --with-binutils=/usr/bin

#yum -y install glibc.x86_64
curl -O http://ftp.gnu.org/gnu/glibc/glibc-2.18.tar.gz 
tar zxf glibc-2.18.tar.gz 
cd glibc-2.18/ 
mkdir build 
cd build
../configure --prefix=/usr 
make -j2 
make install
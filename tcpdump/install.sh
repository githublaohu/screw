   wget http://www.tcpdump.org/release/libpcap-1.5.3.tar.gz
   tar -zxvf libpcap-1.5.3.tar.gz
   cd libpcap-1.5.3
   ./configure
   make &amp; make install
   
#下载并安装tcpdump-4.5.1.tar.gz包
   wget http://www.tcpdump.org/release/tcpdump-4.5.1.tar.gz
   tar -zxvf tcpdump-4.5.1.tar.gz
   cd tcpdump-4.5.1
   ./configure
   make &amp; make install

#安装过程中需要注意的问题
   如果已安装的gcc编译器版本过低&#xff0c;而tcpdump和libpcap版本过高&#xff0c;在make &amp; make install时&#xff0c;会出现未定义的方法错误等;
   tcpdump和libpcap最好是按官方发布的一致版本;
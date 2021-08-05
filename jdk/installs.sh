cd  /environmental/file/base/
rm jdk-8u221-linux-x64.tar.gz
wget  https://niaocai.oss-cn-shenzhen.aliyuncs.com/environmental/install/jdk/jdk-8u221-linux-x64.tar.gz
tar -zxvf jdk-8u221-linux-x64.tar.gz -C /environmental/software/
rm -fr /environmental/software/jdk
 cd  /environmental/software/
 mv jdk1.8.0_221 jdk
 
 ln -s /environmental/install/jdk/jdk.sh /etc/profile.d/
 
 java 


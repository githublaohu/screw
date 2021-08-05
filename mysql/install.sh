cd $env_software"mysql/bin/"
groupadd mysql
useradd -g mysql mysql
chown -R mysql.mysql /environmental/software/mysql

yum install -y libaio
./mysqld --initialize-insecure --user=mysql

nohup sudo -u mysql ./mysqld &
# ./mysql -h127.0.0.13306 -u root -p
# alter user 'root'@'localhost'identified with mysql_native_password by 'root';

# create user 'gateway'@'%' identified with mysql_native_password by 'gateway';
# grant all privileges on *.* to 'gateway'@'%';
# flush privileges;

# alter user 'gateway'@'%' identified with mysql_native_password by 'gateway';
### 1.MySQL 服务编译安装

**安装ncurses**

Ncurses 提供字符终端处理库,包括面板和菜单,它提供了一套控制光标,建立窗口,改变前景背景颜色以及处理鼠标操作的函数,使用户在字符终端下编写应用程序时绕过了那些恼人的底层机制,简而言之,他是一个可以使应用程序直接控制终端屏幕显示的函数库

```
安装方式1
yum -y install ncurses-devel
//如果报错,包找不到,是* 通配符没有识别,给文件加双引号 "ncurses"

安装方式2
//源代码编译
cd /lamp/ncurses-5.9
./configure --with-shared --without-debug --with-ada --enable-overwrite
make
make install
//若不安装ncurses 编译MySQl 时会报错
//  --with-ada 参数为设定不编译ada 绑定,因进入chroot 环境不能使用ada
//  -enable-overwrite 参数为定义把头文件安装到/tools/include 下而不是/tools/include/ncurses 目录
```

**安装cmake 和bison**

mysql 在5.5 以后,不在使用./configure 工具,进行编译安装,而使用cmake 工具替代了./configure 工具,cmake 的具体用法参考文档cmake 说明

bison 是一个自由软件,用于自动生成语法分析器程序,可用于常见的操作系统

```
yum -y install cmake bison
```

**安装MySQL**

```
groupadd mysql 
useradd -g mysql mysql   //-g 添加到group 
//添加用户组mysql,将mysql 用户默认组设置为mysql 用户组

cd /lamp/mysql-5.5.48
cmake -DCMAKE_INSTSALL_PREFIX=/usr/local/mysql
-DMYSQL_UNIX_ADDR=/tmp/mysql.sock  -DEXTAR_CHARSETS=all
-DDEFAULT_CHARSET=utf8  -DDEFAULT_COLLECTION=utf8_general_ci
-DWITH_MYISAM_STORAGE_ENGINE=1 -DWITH_INNOBASE_STORAGE_ENGINE=1 
-DWITH_MEMORY_STORAGE_ENGINE=1 -DWITH_READLINE=1 
-DENABLED_LOCAL_INIFLE=1  -DMYSQL_USER=mysql -DMYSQL_TCP_PORT=3306


// -DCMAKE_INSTSALL_PREFIX=/usr/local/mysql   安装位置
// -DMYSQL_UNIX_ADDR=/tmp/mysql.sock          指定socket (套接字)文件位置
// -DEXTAR_CHARSETS=all                       扩展字符支持
// -DDEFAULT_CHARSET=utf8					  默认字符集
// -DDEFAULT_COLLECTION=utf8_general_ci   	  默认字符集校对
// -DWITH_MYISAM_STORAGE_ENGINE=1			  安装mysiam 存储引擎
// -DWITH_INNOBASE_STORAGE_ENGINE=1 		  安装innodb 存储引擎
// -DWITH_MEMORY_STORAGE_ENGINE=1			  安装memory 存储引擎
// -DWITH_READLINE=1 						  支持readline 库
// -DENABLED_LOCAL_INIFLE=1					  启用加载本地数据
// -DMYSQL_USER=mysql						  指定mysql 运行用户
// -DMYSQL_TCP_PORT=3306					  指定mysql 端口

make 
make insatll

// rm CMakeCache.txt
//如果报错,清除缓存,请使用以上命令

cd /usr/local/mysql/
chown -R mysql.    //将所有当前目录下所有文件属主改为mysql -R 表示递归
chgrp -R mysql.   //将所有当前目录下所有文件属组改为mysql -R 表示递归
//修改mysql 目录权限

/usr/local/mysql/scripts/mysql_install_db --user=mysql
//创建数据库授权表,初始化数据库

chown -R root.  
chown -R mysql data 
//修改mysql 目录权限

cp support-files/my-medium.cnf  /etc/my.cnf
//复制mysql 配置文件

//二次授权
/usr/local/mysql/.scripts/mysql_install_db --user=mysql
```

**启动MySQL 服务**

```
//用原本源代码的方式去使用和启动mysql 
/usr/local/mysql/bin/mysqld_safe --user=mysql&      //安全启动 $ 表示后台运行

//重启以后还要生效
vim /etc/rc.local
写入
/usr/local/mysql/bin/mysqld_safe --user=mysql&

//设定mysql 密码
/usr/local/mysql/bin/mysqladmin -uroot password 123456&

//清空历史命令
history -c    //清除密码设置的记录

//给mysql 用户root 加密码123
//注意密码不能写成 "123"
/usr/local/mysql/bin/mysql -uroot -p
mysql>show databases;
mysql>use test;
mysql>show tables;
mysql>\s       //查看字符集是否改为utf8

```


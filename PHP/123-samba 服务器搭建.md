### 1.samba 服务器搭建

Samba 文件共享服务

windows ->windows   在文件中右键共享

Linux -> Linux    使用 NFS  共享

Linux -> Windows   使用 Samba  共享

**Samba 共享**

- 修改Samba 配置文件
- Linux 下建立共享目录
- Windows 访问Linux 共享目录

**端口与服务**

- smbd 服务     给client(windows) 提供资源访问,端口:tcp 下 139   445
- nmbd 服务    提供主机名解析,使用netbios  解析 ,端口 :udp 下  137   138

**安装服务**

Samba  在ISO 镜像文件(自带)

```
mount /dev/sr0  /media   //挂载镜像
cd /media/Packages/
ls sam
ls samba-3.6.23-23.el6.i686.rpm
yum -y install sabma   //安装
```

**配置文件**

```
vim /etc/samba/smb.conf
显示
#为系统说明注释,  ;为系统功能注释
[global]  //全局设置
workgroup=MYGROUP    //工作组,一般不改名
server string=Samba Server Version %v    //服务器的名称  %v 代表版本
------------Logging Options---------------    //日志文件的内容
log file=/var/log/samba/log.%m      //日志文件位置和名称,%m 指多个日志文件
max log size=50    //最大50kb

security=user     //安全级别 
//安全级别:
share 共享的,匿名登入,不需要密码   
user  添加samba 用户(需要本身就是系统用户才可以操作),并且设置密码,更安全
Server 需要独立的服务器作为安全处理,一般企业不使用,除非在一些安全级别非常高的企业单位

------------Share Definintions---------------    // 描述共享目录,设置共享目录的相关配置
[home]    //默认的用户家目录
comment=Home Directories    //解释说明
browseable=no    //是否在同组里面可见,no 别的用户就看不到了
writable=yes     //是否可修改(可上传)
[printers]		// 共享打印功能
path=/var/spool/samba		//共享位置
guest ok=no       //是否允许匿名用户登入,share 级别使用
printable=yes     //是否可打印
可以根据自己的需要添加新的功能
```

**实验1**

要求:

1. 安全级别为share
2. 共享目录/www
3. 所有用户都能访问,都能上传

**1.修改配置文件**

```
vim /etc/samba/smb.conf
修改为 security=share

在[printers]	内容结束后面添加
[www]
comment=public    //解释说明
path=/www
browseable=yes
guest ok =yes
writeable=yes

在网站根目录下建立www 目录
cd /
mkdir www
ls -ld www  //查看权限
chmod 777 www   //修改权限

启动服务 测试
关闭防火墙,关闭SELIMUX

启动服务
service smb start
service nmb start

netstat -tlun  //查看端口情况,是否使用端口

测试 windows 访问 \\192.168.254.100
还可以在windows 下映射一个盘符(映射网络驱动器)
选中www 目录右键映射盘符,内存为Linux 系统盘
```

**实验2**

要求:

1. 安全级别user 
2. 共享两个目录
   1. 一个 /pub   要求所有用户(samba 用户)都可以访问,都可以上传
   2. 一个 /soft 只有aa 用户可以访问,上传,其他用户不可以访问,上传

**修改配置文件**

```
vim /etc/samba/smb.conf
修改为 security=user

在[printers]	内容结束后面添加
[pub]   //原先的www 可以删除
comment=public    //解释说明
path=/pub
browseable=yes
writeable=yes
[soft]   
comment=software    //解释说明
path=/soft
browseable=yes
writeable=yes
```

**建立目录,设置权限,添加用户**

```
mkidr pub
mkdir soft
ls -ld /pub
chmod 777 /pub
ls =ld /soft
useradd  aa
passwd aa
chown aa /soft   //修改属主
chmod 700 /soft	
ls -ld /soft/
```

**添加samba 用户,设置密码**

```
smbpassswd -a aa     //添加samba 用户,并设置密码,samba 必须是系统用户,才能添加到samba 用户
pdbedit -L    //查看添加的samba 用户
```

**重启服务 测试**

```
断开之前的映射,选择映射的盘符,右键断开
service smb restart    //重启服务
service nmb restart   //重启服务

测试 windows 访问 \\192.168.254.100
net use */del    //删除之前的匿名连接(缓冲),为重新使用aa 用户登入


测试 windows 访问 \\192.168.254.100  aa 用户登入
```


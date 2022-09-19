### 1.LAMP 环境搭建

安装完Linux 虚拟机后,建议先在导航栏->虚拟机->快照,备份一下快照,如果虚拟机损坏了,可以使用快照恢复之前备份的数据

**设置网关,IP地址**

```
setup   //打开操作界面
选择网络配置->选择设备配置->选择带有eth0(系统默认的网卡配置)
DHCP  动态分配ip 地址  [*] 将* 取消(按空格),即取消动态分配ip 地址,我们使用静态ip 
静态ip 设置  192.168.254.100 
子网掩码 设置 255.255.255.0
默认网关 设置  192.168.254.1
主 DNS 服务器(域名管理系统) 设置 114.114.114.114
On boot []  选择.即改成[*]  //开机自启动
确定
保存
保存并退出
退出
service network restart    //重新启动网卡(网络)
```

**关闭selinux 安全,允许防火墙80 端口访问**

```
vim /etc/selinux/config
修改为
SELINUX=disabled
保存退出
reboot    //重启系统
```

**安装编译工具gcc(编译c 语言),gcc-c++(编译c++)**

注意解决依赖关系,推荐使用yum 安装,若不能联网可使用安装光盘作为yum 源

**1.编辑yum 配置文件**

```
mount /dev/sr0/media
vim /etc/yum.repos.d/CentOS-Media.repo
[c6-media]
name=CentOS-$releasever - Media
baseurl=file:///media/      //修改光盘为挂载点
gpgcheck=0	//关闭安全检查
enabled=1    //为启用
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6
```

**2.剪切/etc/yum.respos.d/CentOS-Base.repo**

```
mv /etc/yum.respos.d/CentOS-Base.repo  /etc/yum.respos.d/CentOS-Base.repo.bak
```

**安装包**

```
yum install -y gcc gcc-c++     //安装gcc 和gcc-c++
```

**关闭系统rpm 安装包的apache 和mysql 服务**

```
service httpd stop
service mysqld stop
```

**确定rpm 包安装的httpd 和mysqld 不能开机自启**

```
chkconfig httpd(mysqld) off
```

**关闭防火墙 Netfilter/iptables**

因尚未做防火墙讲解,直接简单的关闭所有防火墙设置:

```
iptables -F   //如果没有禁用防火墙,默认80 端口禁止访问
iptables -Z
iptables -X
```

**关闭不必要的自启服务**

```
ntsysv   //系统自带的图形化管理工具
以下列出服务可保持自动启动,未列出的服务都可以关闭
atd
crond   //atd,crond 计划任务
irbalance
microcode_ctl    //系统irp 端口调用,系统服务
network   //网络设置
sendmail  //邮件
sshd      //远程管理
syslog     //系统日志
```

**拷贝源码包,解包解压缩**

建议将LAMP 环境安装源码包统一存放在一个目录下,如/lamp(需要xftp 上传至Linux 服务器)

可编写个批处理脚本,一次性把所有的.tar.gz 的安装包解包解压缩

```
vim tar.sh    //建立shell 脚本文件,以.sh 结尾
写入以下内容
cd /lamp
/bin/ls * .tar.gz >ls.list    //重定向至ls.list 文件(将内容写入到ls.list 文件中)
for TAR in 'cat ls.list'      //cat 打印输出   
do
/bin/tar-zxf $TAR      //$TAR 代表for 循环的TAR ,少了一个v ,v 是给操作人员看的
done
/bin/rm ls.list    //删除文件


//在命令中使用 ./tar.sh  运行tar.sh 脚本
默认的权限是不允许执行的,需要修改权限,然后在执行
chmod 777 tar.sh
```

**查看确认磁盘空间未满**

```
df -h   //若分区已满,可以移动安装包到其他分区或删除其他无用文件
```


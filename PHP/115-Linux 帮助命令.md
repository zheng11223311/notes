### 1.Linux 帮助命令

```shell
man ls   //查看ls 帮助手册
man rm    //查看删除命令帮助
```

### 2.查找命令

**whereis    查看命令的文件的绝对路径**

```shell
whereis ls   //查看ls 的文件的绝对路径
```

**find 查找文件所在的位置**

```shell
find /root -name index.html  // 在 /root 下查找 文件为index.html 的文件,-name 代表查找文件
find /root -iname index.html  // 在 /root 下不区分大小写查找 文件为index.html 的文件,-i 不区分大小写
find / -name index.html   //全盘查找
```

**grep 查找文件内容**

```shell
grep "haha" index.html   //在index.html 查找是否存在haha 的行
grep -i "haha" index.html   //在index.html 不区分大小写查找是否存在haha 的行
grep -v "haha" index.html   //在index.html 查找不存在haha 的行(反向查找)
```

### 3.压缩与解压缩

```shell
tar.gz   压缩方式一
tar.bz2  压缩方式二
tar -zcvf php.tar.gz index.html   //压缩index.html 为php.tar.gz 文件
tar -zcvf php.tar.gz index.html index1.php   //压缩多个文件
tar -zxvf php.tar.gz    //解压缩php.tar.gz 文件
tar -zxvf php.tar.gz -C bbs    //定向解压缩文件到bbs 文件夹
```

```shell
tar -jcvf php.tar.bz2  index.html   //压缩为 php.tar.bz2 文件
tar -jxvf php.tar.bz2    //解压缩php.tar.bz2 文件
tar -jxvf php.tar.bz2 -C bbs    //定向解压缩php.tar.bz2 文件到bbs 文件夹
```

### 4.关闭重启命令

```shell
shutdown -h now  #关机
```

```shell
reboot  #重启系统
```

### 5.挂载命令

linux 挂载光驱设备

1)物理连接   

在虚拟机中->虚拟机->设置->CD/DVD(IED)->设备状态->勾选 已连接

  2)手动挂载      3)实际操作

```shell
#mount 设备名(如/dev/sr0) 挂载点(如/media)
mount /dev/sr0 /media         # /media 必须为空目录
cd /media   
ls   #进入media 进行查看

unmount /media   #卸载内容,需要在其他目录下执行, 因为如果在/media 下执行命令,/media 正在被运行,所以不能被卸载
```

### 6.网络命令

```shell
ifconfig   #查看网络设备
ipconfig eth0 192.168.254.100   #设置临时ip,(此操作在虚拟机上,需要设置ip 和真实 window 操作系统的ip 在同一个网段上,即192.168.254.xxx(根据自己查询的ip结果),xxx 不能和真实主机的xxx 一样即可),重启之后临时ip就会消失,只剩下回环ip,120.0.0.1

ping #测试网络连通性
ping -c 5 192.168.31.250    #ping 5 次联通192.168.31.250, -c 表示次数
ping 192.168.31.250   #无限ping
ctrl +c 	#强制终止命令
ctrl+l 		#清屏
Tab  		#补全,命令补全/文件补全/目录补全
crtl+d 		#退出系统
```


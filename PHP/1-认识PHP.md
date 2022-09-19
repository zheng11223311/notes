### 1.了解软件架构

> 网络系统软件开发包括B/S 与C/S 两种结构都可以进行同样的业务处理
>

1.什么是C/S

​	1.C：客户端(Client)/S：服务器(Server)；

​	2.特点：需要下载特定的客户端软件才能使用，比如：QQ

​					可以通过任意的协议进行通信

​					C/S 软件的客户端有数据处理的存储的能力，可以把应用软件的数据和计算分配在客户端和服务器端

2.什么是B/S

1.B：浏览器(Browser)/S：服务器(Server)；

2.特点：

​			不需要特定的客户端

​			和服务器进行通信使用HTTP 协议

​			他将所有的数据都储存在服务器

优缺点：使用结构更加方便，不需要下载特定的客户端

结构维护，升级方便

成本低，不用开发特定的客户端

数据相对安全，应为已经存储在服务器上

应用服务器运行数据复合较重

### 2.什么是PHP

> PHP 即"超文本预处理器"，是一种通用开源脚本语言，PHP 实在服务器端执行的脚本语言，与C语言类似，是常用的网站编程语言，PHP 独特的语法混合了C，java，Perl 以及PHP 自创的语法，利于学习，使用广泛，主要使用于Web 开发领域
>

> PHP 原始为Personal Home Page 的缩写，已经正式更名为”PHP：Hypertext Preprocessor“
>



### 3.搭建PHP 开发环境

> LAMP：Linux(操作系统)Apache(服务器软件)MySQL(数据库管理软件)PHP(服务器端脚本编程语言)
>
> LNMP：Linux(操作系统)Nginx(服务器软件)MySQL(数据库管理软件)PHP(服务器端脚本编程语言)
>
> WAMP：Windows(操作系统)Apache(服务器软件)MySQL(数据库管理软件)PHP(服务器端脚本编程语言)
>

WAMP：集成环境。利于初学者学习

**1.认识WAMP 环境**

> Wampserver64  软件
>
> 要安装在默认位置,即c盘,不要自己安装在其他位置,应为有些东西在c盘上,其他地方会找不到c盘上的东西,否则启动时,图标一直显示黄色图标,启动部分服务
>
> 链接：https://pan.baidu.com/s/1o1noor3tqC9B30Wq_4uKXQ 
> 提取码：1111

> Wampserver64 图标的三种颜色：
>
> 红色：代表所有服务器为启动
>
> 黄色：代表部分服务未启动（有可能是端口冲突，有可能是未安装成功）
>
> 绿色：代表所有服务器以启动可以正常使用
>
> 访问：[WAMPSERVER Homepage](http://127.0.0.1:80/)
>

### 4.修改访问路径为自定义域名

**搭建虚拟主机**

**找到apache 配置文件**

方法一:在Wampserver64  左键显示 Apache 显示httpd.config 文件

方法二:在安装的wamp64 路径下,找到/wamp64 /bin/apache/apache2.4.41/conf/httpd.config 文件

打开httpd.config  文件

查找找到Include conf/extra/httpd-vhosts.conf(代表着在conf/extra/下开启了虚拟主机),如果前面有#注释,删除#注释,即开启apache 配置文件

在conf/extra/找到httpd-vhosts.config 文件

复制内容,在粘贴一份

修改复制的内容

Servername localhost 修改为Servername xxxx(自己要取的域名)

ServerAlias localhost 修改为ServerAlias xxxx(自己要取的域名,同上)

```config
<VirtualHost *:80>
  ServerName localhost
  ServerAlias localhost
  DocumentRoot "${INSTALL_DIR}/www"
  <Directory "${INSTALL_DIR}/www/">
    Options +Indexes +Includes +FollowSymLinks +MultiViews
    AllowOverride All
    Require local
  </Directory>
</VirtualHost>

<VirtualHost *:80>	端口号
  ServerName qqqq.com	域名
  ServerAlias qqqq.com	域名
  DocumentRoot "${INSTALL_DIR}/sdasd"		在本地管理的服务器的跟路径(需要管理的目录)
  <Directory "${INSTALL_DIR}/sdasd/">		子目录的配置,可有可无
    Options +Indexes +Includes +FollowSymLinks +MultiViews
    AllowOverride All
    Require local
  </Directory>
</VirtualHost>
```

​	**将域名绑定ip**

**找到系统配置文件**

在c 盘/windows/System32/drivers/etc/hosts(需要权限,属性修改写入权限)

打开文件

```
#
127.0.0.1 localhost
::1 localhost
```

**绑定自己的域名**

```
#
127.0.0.1 localhost
::1 localhost
127.0.0.1 qqqq.com
```

**重启wamp 软件**

### 5.创建PHP 文件

> PHP 文件后缀名就是.php
>
> PHP 可以使用英文或拼音,禁止使用中文
>
> PHP 文件不允许特殊符号
>
> 文件名要见名知意
>


### 1.Apache 相关实验之虚拟主机

在一台服务器上,解析运行多个网站的技术,节约企业成本

输入域名A ->找到 IP->找到服务器->找到 /usr/local/apache2/htdocs/index.html

输入域名B ->找到 IP -> 找到服务器 -> /目录B/index.html

**实验目标**

在服务器上 IP 192.168.254,.101 解析运行 www.sina.com,  www.sohu.com  两个网站

**1.域名解析(文件解析)**

C -> 访问 S

输入 www.sina.com -> 找到192.168.254.101

在windows 中打开C:\Windows\System32\drivers\etc\hosts 文件,写入

```
192.168.254.101  www.sina.com     //将域名解析到主机的ip 地址
192.168.254.101  www.sohu.com     
```

**2.网站目录规划**

```
mkdir  -p /share/sina/         //建里目录  -p 递归
vim  /share/sina/index.html     //写入内容,用于区分与sohu 不同
mkdir /share/sohu/
vim  /share/sohu/index.html     //写入内容,用于区分与sina 不同
```

**3.修改apache 配置文件**

```
vim /usr/local/apache2/etc/httpd.conf
Include etc//extra/httpd-vhosts.conf     //将注释去掉,代表开启虚拟主机的配置文件
打开子配置文件
vim /usr/local/apache2/etc/extra/httpd-vhosts.conf
添加www.sina.com 的配置信息
修改原来的信息,也可以添加一个,如下
<Directory "/share/sina/">   //设置目录权限
	Options Indexes          //网站默认文件为index
	AllowOverride None		//伪静态规则,关闭
	Require  all granted	//允许所有用户访问
</Directory>
<Directory "/share/sohu/">   //设置目录权限
	Options Indexes 
	AllowOverride None
	Require  all granted
</Directory>
<VirtualHost 192.168.254.101>
	ServerAdmin xxx@qq.com      //管理员邮箱地址
	DocumentRoot "/share/sina/"   //网站根目录地址,有目录就需要设置目录权限
	ServerName www.sina.com       //域名
	ServerAlias www.sina.com      //域名的别名,也可以不要,也可以写成其他的
	ErrorLog "logs/sina-error_log" //错误日志位置
	CustomLog	"logs/sina-access_log" common  //访问日志
</VirtualHost>

添加www.sohu.com 的配置信息
<VirtualHost 192.168.254.101>
	ServerAdmin xxx@qq.com      //管理员邮箱地址
	DocumentRoot "/share/sohu/"   //网站根目录地址
	ServerName www.sohu.com       //域名
	ServerAlias www.sohu.com      //域名的别名,也可以不要,也可以写成其他的
	ErrorLog "logs/sohu-error_log" //错误日志位置
	CustomLog	"logs/sohu-access_log" common  //访问日志
</VirtualHost>
```

**4.重启服务,进行测试**

```
sto
sta

测试方法
浏览器输入www.sina.com    www.sohu.com
```


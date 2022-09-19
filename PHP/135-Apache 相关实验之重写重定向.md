### 1.Apache 相关实验之重写重定向

**write 重写/重定向**

www.360buy.com   -> www.jd.com      都是京东的域名,前面是一个以前的应域名

www.xiaomi.com  -> www.mi.com		同理都是小米的

**域名跳转**

www.sina.com  -> www.sohu.com

**1.修改配置文件**

```
vim httpd.conf
找到
LoadMoudle rewrite_module modules/mod_rewrite.so     //去掉注释,为重写重定向模块
```

**2.修改子配置文件**

```
vim /usr/local/apache2/etc/extra/httpd-vhosts.conf
在上一章节中的文件中添加FollowSymLinks,即允许跳转,从哪跳就在哪里加,AllowOverride All
<Directory "/share/sina/">   //设置目录权限
	Options Indexes FollowSymLinks         //网站默认文件为index,允许跳转
	AllowOverride All		//伪静态规则,开启
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

**3.建立权限文件 .htaccess**

```
vim /share/sina/.htaccess 		//从哪里跳就在哪里建立  .代表隐藏文件
写入
RewriteEngine on                 //重写重定向引擎 on 开启 off 关闭
RewriteCond %{HTTP_HOST} www.sina.com   //赋值过程,将www.sina.com  赋值给变量HTTP_HOST,HTTP_HOST 代表地址栏
RewriteRule .* http://www.sohu.com                         //  .* 代表所有访问,都跳转到www.sohu.com
```

**4.重启服务 测试**

```
sto
sta
测试 	浏览器输入www.sina.com,自动跳转到www.sohu.com    ,即301 永久重定向
```

**网页文件跳转**

www.sina.com/index5.html   ->  index.php

**1.修改权限配置文件 .htaccess**

```
vim /share/sina/.htaccess
写入
RewriteEngine on                 //重写重定向引擎 on 开启 off 关闭
RewriteRule index(\d+).html index.php?id=$1                       //  (\d+) 代表数字,$1,为补全 ,代表前面的index(\d+).html
```

**2.建立index.php 文件**

```
vim /share/sina/index.php     //写入内容 hello 
```

**3.重启服务进行测试**

```
sto
sta
测试 浏览器输入 www.sina.com/index5.html   //访问的是index.php 文件,地址显示的还是静态的index5.html 文件,但是使用的是动态的index.php 文件,1.可以更好的保护网站更加安全2.使网站的性能得到提升
```


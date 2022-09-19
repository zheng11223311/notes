### 1.Apache 相关实验之目录别名

**1.目录别名**

```
/usr/local/apache2/htdocs/       //包含项目目录和文件

/usr/local/apache2/shop/     //使之与htdocs 相关联

192.168.254.101           //显示网站根目录
192.168.254.101/shop/		//显示shop 目录
用途:目录扩容,增加服务器
建立目录
mkdir /usr/local/apache2/shop/
cd /usr/local/apache2/shop/
ls
vim index.html      //写入内容

修改配置文件
vim /usr/local/appache2/etc/httpd.conf
找到 autoindex 行
Include etc//extra/httpd-autoindex.conf   //打开注释, 为引入子配置文件autoindex
vim /usr/local/appache2/etc/extra/httpd-autoindex.conf
显示
Alias /icon/ "/usr/local/apache2//icons/"     //apache 存放图片的位置  Alias 使关键字, /icon/ 是别名, "/usr/local/apache2//icons/" 是真正位置
<Directory "/usr/local/apache2/icons/">      //目录的容器,定义这个目录的相关权限
	Options Indexes MultiViews				//MultiViews  多语言字符支持,utf8,gbk 等,国内可以不用写
	AllowOverride None						//伪规则的开关
	Require all grandted
</Directory>
写入
Alias /shop/ "/usr/local/apache2/shop/"
<Directory "/usr/local/apache2/icons/">      //目录的容器,定义这个目录的相关权限
	Options Indexes 
	AllowOverride None						//伪规则的开关
	Require all grandted
</Directory>

重启服务
sto
sta
浏览器打开192.168.254.101/shop/    //shop/ 后面的/ 一定要加,和起别名时一致
```


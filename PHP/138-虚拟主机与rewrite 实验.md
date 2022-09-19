### 1.虚拟主机与rewrite 实验

实验1 虚拟主机

**1.域名解析**

在windows 中打开C:\Windows\System32\drivers\etc\hosts 文件,写入

```
192.168.254.101  www.sina.com     //将域名解析到主机的ip 地址
192.168.254.101  www.sohu.com     
```

**2.网站目录规划**

```
mkdir  -p /share/sina/         //建立目录  -p 递归
vim  /share/sina/index.html     //写入内容,用于区分与sohu 不同
mkdir /share/sohu/
vim  /share/sohu/index.html     //写入内容,用于区分与sina 不同
```

**3.修改配置**

```
vim /usr/local/nginx/conf/nginx.conf
修改
server{										
	listen 80;				//监听80 端口,去掉使用默认服务器,不然会影响整个虚拟主机的配置
	其他配置变,见上一节
}

vim /usr/local/nginx/conf/vhost/v.conf		//建立配置文件,主配置文件会导入 vhost/*.conf 文件
写入
server {			//与主配置文件写法一致
	listen 80;
	server_name www/sina.com;
	index index.html index.php index.htm;
	root /home/wwwroot/sina;
	
	include enable-php.conf;	 //php 解析文件
}
server {			//与主配置文件写法一致
	listen 80;
	server_name www/sohu.com;
	index index.html index.php index.htm;
	root /home/wwwroot/sohu;
	
	include enable-php.conf;	 //php 解析文件
}
```

**4.重启服务 测试**

```
pkill -HUP nginx;

测试 www.sina.com www.sohu.com
```

实验2 rewrite 重写/重定向

www.sina.com  ->  www.sohu.com   域名跳转

**1.修改虚拟主机配置文件**

```
vim /usr/local/nginx/conf/vhost/v.conf
修改为
server {			//与主配置文件写法一致
	listen 80;
	server_name www/sina.com;
	index index.html index.php index.htm;
	root /home/wwwroot/sina;
	if($http_host = www.sina.com){					//判断服务器输入的域名是否是 www.sina.com
		rewrite (.*) http://www.sohu.com permanent;          //(.*) 代表所有请求.* 需要大括号包裹, permanent 跳转关键字,表示永久跳转
	}
	include enable-php.conf;	 //php 解析文件
}

```

**2.重启服务 测试**

```
pkill -HUP nginx
测试  www.sina.com -> www.sohu.com
```

网页文件的跳转

**1.修改配置文件**

```
vim /usr/local/nginx/conf/vhost/v.conf
修改为
server {			//与主配置文件写法一致
	listen 80;
	server_name www/sina.com;
	index index.html index.php index.htm;
	root /home/wwwroot/sina;
	rewtire index(\d+).html /index.php?id=$1 last;      // 匹配所有index+数字.html 跳转到index.php,将匹配到的满足作为$1 的值,传递过去,这里的/index.php  需要/ ,代表根目录,apache 则不需要写,last 文件标识符,表示结束前面index(\d+).html 的内容,直接跳转到后面文件中的内容(index.php)
	include enable-php.conf;	 //php 解析文件
}
```

**2.建立文件 index.php**

```
cd /home/wwwroot/sina/
vim index.php     //写入任意内容
```

**3.重启服务 测试**

```
pkill -HUP nginx
测试  www.sina.com/index2.html   //跳转到www.sina.com/index.php 文件
```


### 1.Nginx 服务配置

**1.相关目录和配置文件**

安装完LNMP 后会出现相关配置文件

```
Nginx 目录: /usr/local/nginx/
MySQL 目录: /usr/local/mysql/
MySQL 数据库所在目录: /usr/local/mysql/var
PHP 目录: /usr/local/php/
PHPMyAdmin 目录: /home/wwwroot/default/phpmyadmin/
默认网站目录: /home/wwwroot/default/
Nginx 日志目录: /home/wwwlogs/

Nginx 主配置文件: /usr/local/nginx/conf/nginx.conf
MySQL 配置文件: /etc/my.cnf/
PHP 配置文件: /usr/local/php/etc/php.ini
```

**2.LNMP 状态管理命令**

```
LNMP 状态管理:lnmp {start|stop|reload|restart|kill|status}  //缺点 会同时关闭/开启所有的服务,而mysql 开启非常慢,消耗时间
lnmp status
LNMP 各个程序状态管理:lnmp {nginx|mysql|php-fpm} {start|stop|reload|restart|kill|status }
lnmp nginx status
 
平滑重启nginx 进程 pkill-HUP nginx   //在重启Nginx 服务时,新开一个进程,以前用户正在连接的服务不会断开,当以前的服务器断开时,会制动连接到新的进程的服务器中,保证用户不会访问不到页面,HUP 代表nginx 信号
检查nginx 配置文件语法错误的命令     /usr/local/nginx/sbin/nginx -t   //t 代表test
```

**3.nginx 配置文件**

```
cd /usr/local/nginx/conf/
vim nginx.conf
显示
user www www;		//用户,主用户www 组用户www   使用ps aux 查看用户
worker_processes auto;   //自动启动nginx 进程
error_log /home/wwwlogs/nginx_error.log crit;  //错误日志位置,级别 srit
pid  /usr/local/nginx/logs/nginx.pid;      //nginx 进程id 号存放的文件

worker_rlimit_mofile 51200;     //默认打开文件的标志符为51200  使用ulimit -n 查看默认标识符为1024(即同时超过1024个人如果同时打开一个文件则会报错),修改 ulimit -n 51200
events{								//服务器主要配置选项
	use epoll;						//支持Linux 系统2,6以后的内核
	worker_connections 51200;		//有效连接数的最大值(即并发数),理论是51200,实际上能过40000多
	multi_accept on;				//优化作用,促进更多用户连接
}
http{								//设置相关协议部分
	include    mime.types;			//包含类型文件
	default_type application/acter-stream;	//默认解析文件的类型
	
	server_names_hash_bucket_size 128;     //服务器缓存的大小
	client_header_buffer_size 32k;		  //客户端缓存的大小
	sendfile on;							//以下三个开启对服务器有优化作用
	tcp_nopush on;
	tcp_nodelay on;
	keepalive_timeout 60;   				//保持连接的有效连接时间 60s,如果客户量很小,可以调大
	
	fastcgi_connect_timeout 300;			//fastcgi 的配置方式
	fastcgi_send_timeout 300;
	fastcgi_read_timeout 300;
	fastcgi_buffer_size 64k;
	fastcgi_buffers 4 64k;
	fastcgi_busy_buffers_size 128k;
	fastcgi_temp_file_write_size 256k;
	
	gzip on;								//压缩功能开启
	gzip_types text/plain application/javascript application/x javascript text/javascript text/css application/xml application/xml+rss;		//压缩静态文件,先压缩在传输,节约资源
	
	log format access   
		...									//设置日志的格式
}
server{										
	listen 80 default_server;				//监听80 端口,使用的是默认服务器
	#listen [::]:80 default_server ipv6only=on;		//使用ipv6 的功能,因为国内ipv4 可能被分配完,没有ipv4 时,打开ipv6
	server_name www.lnmp.org;				//域名,默认是官网
	index index.html index.htm index.php	//索引文件,解析index.html index.htm index.php
	root /home/wwwroot/default;				//网站根目录的位置
	autoindex on;                   		//开启列表页的功能,如果浏览器输入指定路径时没有默认所应文件(index.html),就会显示403 禁止访问,而开启后,就会显示当前目录的列表
	#error_page 404 /404.html;				//如果遇到 404 错误提示符,会找到404.html 文件 当你没有自己定义的404 文件时,可以打开注释
	include enable-php.conf;				//用来解析php 的
	localtion /nginx_status					//   /nginx_status 模块,状态监控模块
	{
		stub_status on;						//开启状态监控模块
		access_log off;						//关闭日志,浏览器输入:ip地址/nginx_staus 查看到活跃人数和允许访问人数
	}
	location ~ .*\.(gif|jpg|jpeg|png|bmp|swf)$		//对网站的图片进行了过滤,准确的说是一个缓存
	{
		expires	30d;							//缓存时间30天
	}
	location ~ .\.(js|css)?$					//静态文件的缓存
	{
		expires 12h;							//缓存时间12小时
	}	
	location ~/\.								//当前目录下,除了上面的文件
	{
		deny all;								//不做任何操作
	}
	access_log /home/wwwlogs/access.log access;		//访问日志的位置
	
}
include vhost/*.conf;				//包含 vhost 目录下的所有 .conf文件
```


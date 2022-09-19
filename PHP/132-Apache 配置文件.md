### 1.Apache 配置文件

```
重启apache 服务器
/usr/local/apache2/bin/apachectl stop
/usr/local/apache2/bin/apachectl start

起别名(命令别名 alias)
vim /root/.bashrc
增加
aias sto ='/usr/local/apache2/bin/apachectl stop'
alias sta ='/usr/local/apache2/bin/apachectl start'
执行配置文件,使配置文件生效
source /root/.bashrc

重启apache 服务器
sto
sta
```

**apache 配置文件**

```
cd /usr/local/apache2/etc
ls
vim httpd.conf
显示
ServerRoot "/usr/local/apache2/"     //apache 安装目录
Listen 80							//监听端口80,修改后,访问网站时要带上修改后的端口才能正确访问
LoadModule authn_file_module_modules/mod_autn_file.so  //apache 加载一些模块功能,其他模块大致都是这种写法
LoadModule php7_module  modules/libphp7.so    //apache 加载php 模块,有了这个模块,php 才能正常解析
LoadMoudle rewrite_module modules/mod_rewrite.so	//重写重定向模块
User daemon    //apache 运行的用户 在命令行中执行 ps aux 即可查看apache 到对应的组
Group deamon   //apache 运行的组
ServerAdmin you@example.com     //服务器管理员邮箱,默认you@example.com 是不生效的,需要修改成自己的邮箱,把错误信息发送到我的邮箱
ServerName www.example.com:80	//域名,默认注释掉,需要DNS 解析才能使用,现在没学到DNS 安装,打开也没用,没有打开时,启动apache 服务器和停止apache 服务器时会发出警告找不到域名,取消注释时,就不会报错
DocumentRoot '/usr/local/appache2/htdocs'   	//默认的网站根目录,也可以修改
<Directory '/usr/local/apache2/htdocs'>        //地址需要与上面保持一致,用来设置网站的相关权限的,也可以称之为容器,用来设置目录的一些功能
Options  Indexes FollowSymLinks       //Options 选项, Indexes 网站默认的文件index.html ,FollowSymLinks 有权限跳转到其他目录,没有FollowSymLinks 这个词就无法跳转
Options  None FollowSymLinks          //None   代表关闭,网站访问路径时显示403,拒绝访问
Options  All FollowSymLinks           //All   代表所有文件

AllowOverride None                    //AllowOverride 代表开关,None 代表开关关闭,All 代表开启,代表.htaccess 伪规则文件的开关
Require all granted                  //代表所有用户都可以访问,允许优先级是从上Indexes 到下的
</Directory>


<IfModule dir_moudle>
	DirectoryIndex index.html        //目录索引的索引文件,打开目录时,默认查找的文件,DirectoryIndex index.html index.php    可以默认查找多种文件,优先查找前面的
</IfModule>

ErrorLog 'logs/error_log'			//错误日志位置
LogLevel warn                       //日志级别,有debug,info,notice,warn,error,crit,alert,emerg

<IfModule log_config_module>   //日志格式定义
LogFormat "%h %l %u %t \" %r \" %>s %b \"%{Referer}1\" \"%{User Angent}1\"" combined    //日志定义写入的格式,时区和访问的文件
LogFormat "%h %l %u %t \" %r \" %>s %b"  combined
....
</IfModule>


Server -pool management (MPM specific)   以下都是与子配置文件关联的配置,默认都是注释的
Include etc //extra/httpd-multilang-errordoc.conf
Fancy directory listings
Include etc//extra/httpd-autoindex.conf
Language settings
Include etc//extra/httpd-languages.conf
User home directories
Include etc//extra/httpd-userdir.conf
Real - time info on requests and configuration
Include etc//extra/httpd-info.conf
Virtual hosts
Include etc//extra/httpd-vhosts.conf
Local access to the Apache HTTP Server Manual
Include etc//extra/httpd-manual.conf
```


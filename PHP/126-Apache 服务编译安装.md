### 1.Apache 服务编译安装

```
configure:error :Bundled APR requested but not found at ./srclib/.Download and unpack the corresponding apr and apr-util packages to ./srclib/.
//如果报错,则
tar zxvf apr-1.4.6.tar.gz
tar zxvf apr-util-1.4.1.tar.gz  //解压过
cp -r /lamp/apr-1.4.6  /lamp/httpd-2.4.7/srclib/apr
cp -r /lamp/apr-util-1.4.1   /lamp/httpd-2.4.7/srclib/apr-util
//解压过apr 和apr-util,复制并取消版号

configure:error:pcre-config for libpcre not found .PCRF is required and available from
//如果报错,则
tar zxvf  pcre-8.34.tar.gz
cd /lamp/pcre-8.34
./configure&&make&&make install   //逻辑与运算符,前面执行成功就会执行后面地命令
```

**安装apache**

```
cd /lamp/httpd-2.4.7
./configure --prefix=/usr/local/apache2/ --svsconfdir=/usr/local/apache2/etc --with-included-apr --enable-so --enable-deflate=shared --enable-expires=shared --enable-rewrite=shared
make 
make install
//若前面配置zlib 时没有指定安装目录,Apache 配置时不要添加 --with-z=/usr/local/zlib/ 参数
// --svsconfdir=/usr/local/apache2/etc  指明apache 配置文件目录
//--with-included-apr  启用apr 功能
//--enable-deflate=shared --enable-expires=shared --enable-rewrite=shared 都是网站解析模块
```

**启动apache 测试**

```
/usr/local/apache2/bin/apachectl start
ps aux|grep httpd   //树形查看
netstat -tlun |grep :80    //查看端口
//若启动时提示/usr/local/apache2/modules/mod_deflate.so 无权限,可关闭SELinux 或执行命令 chcon -t texrel_shlib_t/usr/local/apache2/modules/mod_deflate.so,类似此类.so 权限地问题,都是SELinux 问题,使用命令:"chcon -t texrel_shlib_t 文件名" 即可解决,MySQL 和Apache 也可能由类似问题
通过浏览器输入地址访问:http://Apache 服务器地址(192.168.254.100),若显示"it works" 即表明Apache 正常工作

设置Apache 系统引导时启动
vim /etc/rc.local    //自启动配置文件
写入
/usr/local/apache/bin/apachectl start
```


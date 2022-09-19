### 1.memcached 基本介绍(在Linux 环境下)

- Memcached 是一个开源免费的高性能的分布式内存对象(存储介质是在内存中,不是在磁盘中)缓存系统
- 就是一个软件
- 缓存数据,提高动态网站的速度

**安装**

方法一

```
yum install mamcahched
```

方法二

```
1.安装libevent
tar -zxvf libevent-release-1.4.15-stable.tar.gz
cd libevent-release-1.4.15-stable
./autogen.sh
./configure -prefix=/usr
make&&make install 

2.安装memcache
tar -zxvf memcache-1.4.5.tar.gz
cd memcache01.4.5
./configure --prefix=/usr/local/memcache
make&&make install
```

安装软件

```
yum install lrzsz -y      //安装后可以直接拖拽文件到服务器中
```

**启动和连接**

启动命令 

```
cd /usr/local/memcached/bin 
./memcached -u root -p 11211 -d		//-p 端口号,11211,不写也默认是11211,-d 守护进程,允许后台运行
```

连接命令

```
telnet 127.0.0.1 11211
如果报错,需要安装telnet 软件
yum install telnet -y
```

**使用**

memcached 所存储的信息在软件关闭之后就销毁了

- 命令行形式

  - stats      

  - ```
    stats    //输入命令即可查看信息
    ```

  - set

  - ```
    set name 0 10  100              //向内存写入数据,name 为键名,下一个数字键名为对name 额外的标识,10 为name 在内存的时间限定(生命周期),单位为s,10s 后name 失效,0s 为永久有效,100 为要写入的长度,单位为字节,回车,输入要写的内容.显示STORED 已存储
    ```

  - get

  - ```
    get name        //获取有效时间内存储的内容,memcached 存储数据时,是以key/value 的形式来存储的,有点像关联数组['name'=>'哈哈哈']
    ```

  - delete

  - ```
    delete name    //删除键名
    ```

  - flush_all

  - ```
    fulsh_all   	//清空memcached 中所有缓存的信息
    ```

- php 代码使用

  - 安装php-memcache 扩展

  - ```
    1.下载
    wget https://github.com/websupport-sk/pecl-memcache/archive/php7.zip
    2.解压
    unzip pecl-memcache-php7.zip
    3.进入目录
    cd pecl-memcache-php7
    4.执行phpize
    /usr/local/php/bin/phpize
    5.配置
    ./configure --with-php-config=/usr/local/php/bin/php-config
    6.编译安装
    make &&make install
    7.修改php 配置文件
    vim /usr/local/php/etc/php.ini
    extension_dir="/usr/local/php/lib/php/extensions/no-debug-zts-20151012/"
    extension=memcache.so		//window 扩展模块是dll,Linux 的扩展模块是so
    8.重启apache
    /usr/local/apache2/bin/apachectl resart 
    9.编辑index.php 文件
    vim /usr/local/apache2/htdocs/index.php 
    写入
    <?php
    	phpinfo();   //查看是否支持memcache
    ?>
    
    10.测试 
    浏览器输入19.168.254.101 进入查看,如果不能进入,先关闭防火墙,命令
    iptables -F         //关闭防火墙
    ```

    **index.php**
    
    ```php
    9.编辑index.php 文件
    vim /usr/local/apache2/htdocs/index.php 
    
    
    <?php
     //创建memcache 对象
     $mem=new Mecache();
     
     //连接memcache 服务器
     $mem->connect('127.0.0.1',11211);
     
     //写入缓存
     //set(键名,值,关键字,时间)
     $mem->set('name','哈哈',MEMCACHE_COMPRESSED,0);
     //以串行化的字符串存入内存
     $re=$mem->set('fruit',['apple','pear','banana'],MEMCACHE_COMPRESED,0);
     var_dump($re);   //true
     
     //读取缓存
     $res=$mem->get('name');   
     var_dump($res);		//数组
     
    //删除缓存
     $mem->delete('name');	//true
     
     //清除所有缓存
     $mem->flush();
     
     //断开连接
     $mem->close();
    
    
    ?>
    ```
    
    




### 1.Memcached 存储在Windows 下的安装

**1.下载安装包**

在含有memcached.exe 的路径下执行(不能双击执行文件)

```
memcached.exe -d install
memcached.exe -d start 
```

**测试安装成功**

```
telnet localhost 11211       //连接成功就会进去
```

**windows 如果telnet 命令失效**

控制面板 ->程序和功能 ->打开或关闭windows 功能 ->勾选telnet 服务器和telnet 客户端

**PHP 配置扩展文件**

- 将php-7.0.x_memcache.dll(根据自己的PHP 版本来选择,这里老师的PHP 版本为7.0.0) 放到php 扩展目录下,php 扩展目录可在phpinfo() 中搜索extension_dir 中查找(d:/wamp64/bin/php/php7.0.10/ext/)

**修改php.ini 配置文件**

- 在phpinfo() 中搜索Loaded Configuration File (正在使用的配置环境) 查看

- 在php.ini 配置文件中搜索extension ,查看是否存在PDO 扩展 (用来操作数据库),在添加

  - ```
    extension=php-7.0.x_memcache.dll   //即刚才放置的扩展文件名
    ```

**重启服务器**

重启wamp64

**测试是否安装成功**

phpinfo() 中搜索memcache  存在这个扩展,安装成功

**示例:**

`test.php`

```php
<?php
$mem=new Mencache;
$mem->connect('localhost',11211);

//写入
$res=$mem->set('name',iloveyou,MEMCACHE_COMPRESSED,60);
var_dump($res);		//true

//关闭
$mem->close();
?>
```

**命令行输入**

```
telnet localhost 11211
get name	//得到iloveyou
```


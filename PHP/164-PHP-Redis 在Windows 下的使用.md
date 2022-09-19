### PHP-Redis 在Windows 下的使用

- 软件的安装
- php 扩展的安装(用来操作redis 数据库)

> 1.windows redis 软件下载地址
>
> https://github.com/dmajkic/redis
>
> 2.php_redis.dll 下载地址
>
> http://windows.php.net/downloads/pecl/releases/redis/

**redis 安装**

```
命令行输入
redis-cli.exe

设置值
set name aaa
```

将下载解压后的php_redis.dll,放到phpinfo()  extension_dir 定位到的位置下,同Linux 操作一样


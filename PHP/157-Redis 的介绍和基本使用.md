### 1.Redis 的介绍和基本使用

1. redis 是什么
2. redis 的特点和作用
3. redis 的应用场景
4. redis 的安装(Linux)
5. redis 的使用

**redis 是什么**

- Redis 是一个开源的使用ANSI(一个标致) ` C 语言`编写,支持网络,可基于内存亦可持续化的日志型,key-value 数据库

**redis 的特点和作用**

- 支持多种数据类型的存取数据
- 支持持久化存储数据

**redis 的应用场景**

- 数据缓存
- 消息队列
- 排行榜
- 计数

**redis 的安装(Linux)**

1. **下载**

   1. ```
      wget http://download.redis.io/releases/redis-3.2.8.tar.gz
      ```

2. **解析**

   1. ```
      tar -zxvf redis-3.2.8.tar.gz
      ```

3. **进入目录**

   1. ```
      cd redis-3.2.8
      ```

4. **编译安装**

   1. ```
      make PREFIX=/usr/local/redis install  //PREFIX 设置安装目录
      ```

5. **移动配置文件**

   1. ```
      mv redis.conf  /usr/local/redis
      ```

6. **启动时载入配置文件(前提是要先将配置文件放置到指定目录)**

   1. ```
      cd  /usr/local/redis/bin		//bin 存放着相关命令
      ./redis-server /usr/local/redis/redis.conf
      ```
      
   
7. **客户端连接**

   1. ```
      //保持上一步的启动状态,新建一个终端,输入
      cd  /usr/local/redis/bin	
      ./redis-cli -h localhost -p 6379   //-h 主机地址, -p 端口 ,本地连接可以直接输入 ./redis-cli 来连接
      set name 'hh'   //设置值
      quit /ctrl+c  //退出
      redis-cli --help  //帮助
      ```

      
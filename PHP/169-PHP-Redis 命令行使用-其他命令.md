### PHP-Redis 命令行使用-其他命令

集合中的元素都是不重复的

**集合命令**

- del

  删除某个key 数据

  set age 10

  del age

- exists

  检测某个key 是否存在

  exists age

- expire

  为某个key 设置生命周期,单位s

  expire age 30

- ttl

  返回key 的生命周期

  ttl age 

- keys

  返回匹配到的key

  keys *     //* 表示所有

  key res*   //匹配所有res 开头的key

- select 

  选择数据库,默认数据库索引是0

  select 6

- move

  将key 移动到某个数据库

  move age 4

- type

  获取key 的类型,类型有:string,set,zset 等

  type age

- rename

  重命名key

  rename age  nianling

- auth

  密码

  auth 123456

  ```
  首先要将redis 停止
  修改配置文件
  cd /usr/local/redis/
  vim redis.conf
  搜索 requirepass
  打开注释,修改密码
  如下格式
  requirepass	123456
  保存退出
  wq 
  启动redis
  ./bin/redis-server redis.conf
  连接redis 服务器
  cd /usr/local/redis/bin/
  .redis-cli
  auth 123456
  ```

- multi

  启动一个事务,还没有执行set 指令,exec 时才执行操作

  multi

  set a hh

- exec

  执行事务

  exec   

- discord

  取消事务

  discord

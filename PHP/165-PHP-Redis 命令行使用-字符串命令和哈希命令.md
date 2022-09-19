### PHP-Redis 命令行使用-字符串命令和哈希命令

**字符串命令**

- set 

  存储一条数据

- get 

  获取一条数据

- incr

  自增一个数据

- incrby

  按照指定步进自增

- decr

  自减一个数据

- decrby

  按照指定步进自减

- setex

  设置一条数据并设置生命周期

- strlen

  获取数据的长度

- setbit

  设置某一位上的数据 

  setbit aaa 10 1         

  设置aaa 的第10 位为1

- getbit

  获取某一位上的数据

  get aaa 8

- bitcount

  统计值为1 的位数

  bitcount aaa

- setnx

  不存在此key 设置,存在则不设置

  setnx aaa 1

- append

  追加字符串

  append aaa hhhh

- getrange

  截取字符串

  getrange aaa 0 7

  截取0-7 位字符, 闭区间[0,7]

**哈希命令**

- hset

  设置key 中的某个字段

  hset me age 18

- hget

  获取key 中的某个字段

  hget me age

- hdel

  删除key 中的某个字段

  hdel me age

- hexists

  检测key 中的某个字段是否存在

  hexists me age

- hincrby

  自增key 中某个字段的值

  hincrby me age 1

- hgetall

  获取key 中所有的信息

  hgetall me

- hkeys

  获取key 中所有的字段

  hkeys me

- hvals

  获取key 中所有的值

  hvals me 

- hmset

  批量设置哈希中的数据

  hmset me age 18 sex 男  height 188

- hmget

  批量获取哈希中的数据

  hmget me age sex   height

**redis 可视化工具下载与安装**


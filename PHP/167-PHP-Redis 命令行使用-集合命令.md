### PHP-Redis 命令行使用-集合命令

集合中的元素都是不重复的

**集合命令**

- sadd

  向集合中添加新的元素

  sadd me age

  sadd me sex 男 hobby 吃饭       //同时添加多个值

- scard

  返回集合中元素的个数

  scard me

- sdiff

  返回两个集合的差集

  sdiff me me1

- sdiffstore

  存储两个集合的差集的结果到另一个集合result1 中

  sdiffstore  result1 me me1

- sinter

  返回两个集合的交集

  sinter me me1

- sinterstore

  存储两个集合的交集的结果到另一个集合result1 中

  sinterstore result1 me me1

- sismember

  检测一个元素是否存在某个集合中

  sismember me age

- smembers

  获取一个集合中的所有元素

  smembers me

- smove

  将一个元素从这个集合移动到另一个集合中

  smove me me1 age

- spop

  随机`弹出`指定个数的元素(此命令会删除原集合中的数据)

  spop me 2

- srandmember

  随机`获取`集合中的指定个数元素(此命令不会删除原集合中的数据)

  srandmember me 2 

- srem

  移出集合中元素

  srem me   sex

- sunion 

  返回两个集合中的并集

  sunion me me1
  
- sunionstore

  储存两个并集到另一个集合中

  sunionstore result1 me me1

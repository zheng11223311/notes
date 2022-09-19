### PHP-Redis 命令行使用-有序集合命令

集合中的元素都是不重复的

**集合命令**

- zadd

  向集合中添加新的元素

  zadd me 18 age

  sadd me sex 男 hobby 吃饭       //同时添加多个值

- zcard

  返回有序集合中的数据总数

  zcard me

- zcount

  根据权重(即值)区间统计数据数量

  zcount me 10 20

- zincrby

  按照步进增加数据

  zincrby  me 10 age   //加10

- zrange

  根据权重从低到高获取数据(键名)

  zrange me 0 -1	//[0,-1] 表示全部数据

- zrevrange

  根据权重从高到低获取数据

  zrevrange me 0 2

  zrange me 0 -1 WITHSCORES		 //根据权重从高到低获取带有值的数据

- zrangebyscore

  根据权重区间返回数据

  zrangebyscore me 0 3

  zrangebyscore me 0 -1 WITHSCORES		 //根据权重区间获取带有值的数据

  zrangebyscore me 0 -1 LIMIT 0 2			//[0,2)     限制返回数据的条数

- zrank

  根据排名返回数据

  zrank me age

- zrevrank

  根据排名倒序返回数据

  zrevrank me age    //返回倒序后的排名

- zrem

  删除数据

  zrem me age

- zremrangebyrank

  根据排名删除数据

  zremrangebyrank me 0 1	//删除0,1 排名位置的2条数据

- zremrangebyscore

  根据权重删除数据

  zremrangebyscore me 10 30  //删除值为[10,30] 之间的数据

- zscore 

  返回一条数据的权重

  zscore me age
  
- zunionstore

  储存两个并集到另一个集合中

  zunionstore result1 2 me me1   //2为要合并的集合个数

### PHP-Redis 操作有序集合数据

**示例:**

`test.php`

```php
<?php
//创建redis 对象
$redis=new Redis;

//连接redis 服务器
$redis->connect('localhost',6379);

//输入密码
$redis->auth('xiaohei');

//选择数据库
$redis->select(1);  //选择要写入的数据库的索引,索引从0开始,每个数据库对应一个索引

//写入数据
$res=$redis->zadd('name',10,'aaaa');  //name 为集合名,10 为值,aaaa 为键
$res=$redis->zadd('name',10,'bbb');   //name 为集合名,10 为值,bbb 为键

//删除
$res=$redis->zrem('name','aaa'); //name 为集合名,aaaa 为键

//修改值
$res=$redis->zincrby('name',1,'aaa'); // 1 为增加的值,将aaa 的值加1,10+1=11


//获取集合的所有元素(依据值排序)
$res=$redis->zrange('name',0,-1); 

//倒序获取集合的所有元素
$res=$redis->zrevrange('name'); 

//按照值范围进行获取
$res=$redis-zrangebyscore('name',0,10); //获取0,10 值的集合的键
$res=$redis-zrangebyscore('name',0,10,['withscores'=>true,'limit'=>[0,2]); //获取带值得键,limit 表示从0 开始取2 个

//按照值范围进行倒序获取(低到高)
$res=$redis-zrevrangebyscore('name',0,10); //获取0,10 值的集合的键
$res=$redis-zrevrangebyscore('name',0,10,['withscores'=>true,'limit'=>[0,2]); //获取带值得键,limit 表示从0 开始取2 个
                                       
//返回值区间中元素得个数
$res=$redis->zcount('name',3,10); 

//获取集合的元素个数
$res=$redis->zsize('name'); 

//获取单个键的值
$res=$redis->zscore('name','aaa'); 

//获某个键的排名
$res=$redis->zrank('name','aaa'); 
 
//获某个键的倒序排名
$res=$redis->zrevrank('name','aaa'); 

```


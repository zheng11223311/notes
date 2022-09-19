### PHP-Redis 操作哈希数据

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
$res=$redis->hset('name','键','值');  //name 为集合名
//批量写入
$res=$redis->hmset('name',['age'=>'18','sex'=>'男']);   //name 为集合名

//删除
$res=$redis->hdel('name','age'); //name 为集合名,age 为键

//修改值
$res=$redis->hset('name','键','值'); 
$res=$redis->hincrby('name','键',1); //键的值自增1

//获取集合的某个元素
$res=$redis->hget('name','键名'); 

//获取多个键名的值
$res=$redis->zrevrange('name',['键名1','键名2']); 

//获取哈希下所有元素
$res=$redis->hgetall('name'); 

//获取哈希下元素的个数
$res=$redis->hlen('name'); 

//获取所有键名
$res=$redis->hkeys('name');

//获取所有的键值
$res=$redis->hvals('name');
                                       
//检测哈希下是否存在该键名
$res=$redis->hexists('name,'键'); 


```


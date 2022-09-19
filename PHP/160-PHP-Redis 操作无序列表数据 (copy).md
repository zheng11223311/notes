### PHP-Redis 操作无序列表数据

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
$res=$redis->sadd('name','aaaa');  //name 为数组名,aaaa 是下标为索引0的值

//批量写入数据
$res=$redis->sadd('name','ddd','eeee');	//可以进行批量插入数据
var_dump($res);  //返回数据库新插入数据的个数

//删除
$res=$redis->srem('name','aaa'); //name 为数组名,返回1/0

//修改值,将一个值从一个集合移动到另一个集合中
$res=$redis->smove('name','name1','要移动的值'); //从name 中移动值,移动到name1 中



//获取集合的所有元素
$res=$redis->smembers('name'); 

//获取元素的个数
$res=$redis->ssize('name'); 

//随机获取集合中的一个元素
$res=$redis-srandmember('name');

//获取交集
$res=$redis->sinter('name','name1'); 

//获取并集
$res=$redis->sunion('name','name1'); 

//获取差集
$res=$redis->sdiff('name','name1'); 

//检测集合中是否存在该值
$res=$redis->sismember('name','aaaa'); 

```


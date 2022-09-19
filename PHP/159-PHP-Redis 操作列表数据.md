### PHP-Redis 操作列表数据

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
$res=$redis->lpush('name','aaaa');  //name 为数组名,aaaa 是下标为索引0的值
$res=$redis->lpush('name','bbb');	//向左边插入bbb 
$res=$redis->lpush('name','ccc');	//向左边插入ccc 

//批量写入数据
$res=$redis->lpush('name','ddd','eeee');	//可以进行批量插入数据
var_dump($res);  //返回数据库的数据的数量

//右侧插入数据
$res=$redis->rpush('name','ccc');	//向name 中右边插入数据

//批量写入数据
$res=$redis->rpush('name','ddd','eeee');	//可以进行批量插入数据

//在指定的位置插入元素,参数:数组名,插入方式,指定哪个位置之前/之后,新插入的值
$res=$redis->linsert('name',Redis::BEFORE,'ccc','新插入的值'); 

//左侧删除
$res=$redis->lpop('name'); //name 为数组名,返回删除的值

//右侧删除
$res=$redis->rpop('name'); //name 为数组名

//删除指定的值
$res=$redis->lrem('name','ccc');   //参数:数组名,要删除的值

//修改值
$res=$redis->lset('name',1,'新的值'); //name 为数组名,1 为需要修改的索引下标

//将值从一个链表中的右侧弹出,插入到另一个集合(不存在则创建)的左侧
$res=$redis->rpoplpush('name','name1');

//获取元素
$res=$redis->lindex('name',4); // 获取name 中第5个值

//获取列表中的一段内容
$res=$redis->lrange('name',0,3);  //获取[0,3] 位置的值,范围的首位值都要取,闭区间
$res=$redis->lrange('name',0,-1);  //获取整个区间

//获取列表的长度
$res=$redis->lsize('name'); //返回数组的长度
```


### PHP-Redis 通用操作

**示例:**

`test.php`

```php
//选择数据库
$redis->select(1);  //选择要写入的数据库的索引,索引从0开始,每个数据库对应一个索引,默认有16个数据库

//设置生命周期
$res=$redis->expire('name',100); 	//name 集合,默认-1 永久有效

//返回生命时间
$res=$redis->ttl('name');   

//删除
$res=$redis->del('age'); 

//检测键名是否存在
$res=$redis->exists('键'); 

//获取键名
$res=$redis->keys('*');  //* 表示获取所有键名

//清空当前数据库
$res=$redis->flushdb();  //内容清空,库还是存在的

//清空所有的数据库
$res=$redis->flushall(); //内容清空,库还是存在的

```

**文档地址:**
**https://github.com/phpredis/phpredis/#readme**

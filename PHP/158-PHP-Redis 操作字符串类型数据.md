### PHP-Redis 操作字符串类型数据

- 创建redis 对象
- 连接redis 服务器
- 写入数据/读取数据/删除数据

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
$res=$redis->set('name','aaaa');
var_dump($res);  //true

//时效性的设置
$res=$redis->setex('test',10,'hhhh');  //10s 后过期

//批量设置
$res=$redis->mset(['a'=>'aaa','b'=>'bbb','c'=>'cccc']);

//检测是否存在变量a 存在则不设置,不存在则设置
$res=$redis->setnx('a'=>'ccc');

//删除
$res=$redis->delete('a');

//批量删除
$res=$redis->delete(['a','b','c']);

//修改更新
$res=$redis->set('a','aaa');

//自增
$res=$redis->incr('total');    //数据库没有total 时,默认会把它当作0,加完之后就是1
//步长自增
$res=$redis->incrby('total',10);	//每次增加10

//自减
$res=$redis->decr('total');
//步长自减
$res=$redis->decrby('total',10);	//可以减到为负数

//获取值
$res=$redis->get('a');	

//批量获取
$res=$redis->mget(['a','b','c'])	//获取变量a,b,c 的值
```

**命令行查看**

```
cd  /usr/local/redis/bin	
./redis-cli    //连接
auth xiaohei  //输入密码
get name     //获取数据
```


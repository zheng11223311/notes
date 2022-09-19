### 1.Memcached 存储session

1.php

```php
<?php
    //session 默认存放在tmp 目录下
	session_start();
	$_SESSION['name']='哈哈';
?>
```

**memcache 存放session**

```php
<?php
    //自定义存放位置
session_set_save_handler('open','close','read','write','destory','gc');

$mem=new Memcache;
$mem->connect('127.0.0.1',11211);

//运行session_start 时触发
function open(){
    return true;
}
//session 处理结束后触发
function close(){
     return true;
}
//echo $_SESSION 读取时触发
function read($sid){
   return $mem->get($sid);
}
// 设置值时触发
function write($sid,$data){			//sid 为服务器设置的令牌
    global $mem;
    $mem->set($sid,$data,60);
    return true;
    
}
//调用session_destory 时触发
function destory($sid){
    return $mem->delete($sid);
}
//垃圾回收机制触发时,触发这个函数
function gc(){
}

//启动session
session_start();
//写入session
$_SESSION['name']='哈哈哈';

//读取
echo $_SESSION['name'];

//删除session
session_destroy();
?>
```


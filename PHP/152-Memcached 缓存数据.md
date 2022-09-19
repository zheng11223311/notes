### 1.Memcached 缓存数据

```php
<?php
//检测缓存是否存在
$mem=new Memcahce;
$mem->connect('127.0.0.1',11211);
//获取缓存
$cache=$mem->get('singers');	
if($cache==false){
	//读取缓存
	$song=$cache;
}else{

//歌词列表显示
$pdo=new PDO('mysql:host=localhost;dbname=lamp;charset=utf8;','root','');
$stmt=$pdo->query('SELECT * FROM singers LIMIT 10');

//获取结果
$song=$stmt->fetchAll(PDO::TETCH_ASSOC);
var_dump($song);

//将数据写入到缓存当中
//缓存60s
$mem->set('singers',$song,MEMCACHE_COMPRESSED,60);
}
?>
```


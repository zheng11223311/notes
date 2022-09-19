### PHP-Redis 命令行使用-缓存类的实现

```php
class RedisCache{
    public static $redis=null;
   
	//获取redis 对象
    public static function getInstance(){
        if(self::$redis==null){
            //实例化redis 对象
            self::$redis=new Redis;
        	self::$redis->connect('localhost',6379);
        	self::$redis->auth('');
        }
        return self::$redis;
    }
    //写入缓存
    public static function set($key,$value,$time){
        return self::getInstance()->setex($key,$time,$value);
    }
    
    //读取缓存
    public static function get($key){
        return self::getInstance()->get($key);
    }
    
    //检测缓存是否存在
    public static function exists($key){
        return self::->get($key)===false?false:true;
    }
    
    //删除缓存
    public static function delete($key){
        return self::getInstance()->delete($key);
    }
}
```

**使用**

```php
RedisCache::get('name');
```


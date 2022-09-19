### 1.Memcached 缓存类的封装

```php
class Cache{
    public static $cahce=null;
     //实例化对象-单例模式
    public static function getInstance(){
        if(self::$cache==null){
            self::$cache=new Memcache;
			$res=self::$cache->connect('localhost',11211);
            //判断是否连接成功
            if($res==false){
                echo '连接失败';die;
            }
        }
        return self::$cache;
    }
	//写入缓存
    public static function set($key,$value,$lifetime){
       return self::getInstance()->set($key,$value,MEMCACHE_COMPRESSED,$lifetime);
    }
    //读取缓存
    public static function get($key){
        return self::getInstance()->get($key)
    }
    
    //检测缓存是否存在
     public static function has($key){
        return self::get($key)==false?false:true;
    }
    
    //删除缓存
    public static function delete($key){
        return self::getinstance()->delete($key);
    }
}
```


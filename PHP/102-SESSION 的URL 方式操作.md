### 1.SESSION 的URL 方式操作

**1.在my.ini 配置文件中查找session**

- session.save_handler = files   设定session 文件的存储方式,以文件方式存储,可选user 自定义或存储到数据库中
- session.save_path ="c:/wamp64/tmp"   session 文件的保存路径
- session.use_cookies = 1     设定是否使用cookie 来存储session 的id, 1为true
- session.use_only_cookies = 1     设定session 是否只使用cookie
- session.name = PHPSESSID      设定session 在cookie 的名称(键)
- session.auto_start = 0    设定是否自动开启session 
- session.cookie_lifetime = 0    设定session 使用cookie 的有效生存时间,0 表示关闭浏览器前有效
- session.cookie_path = /      设置 sesion 使用cookie 的有效路径
- session.cookie_domain =     设置session 使用cookie 的有效域名 ,空 表示当前域名有效
- session.cookie_httponly =   设置session 使用cookie  是否只允许使用http 协议,空表示可以
- session.serialize_handler = php   session 串行化的方式,使用php 的串行化方式
- session.gc_probability = 1    垃圾回收的除数
- session.gc_divisor = 1000     垃圾回收的被除数(当有1000个人登录触发垃圾回收机制,自动回收session)
- session.gc_maxlifetime = 1440   session 垃圾回收的最大时间(到达这个时间session 会被自动回收)
- session.use_trans_sid = 0   session 是否使用传输方式传session 的id(如果禁用掉了cookie 的方式传输sessionid,可以使用传输的方式进行传输)
- session.trans_sid_tags = "a=href,area=href,frame=src,form="      设置session 可以传输id 的方式

**2.基于URL 的SESSION 的会话原理**

- 在第一个页面获取对应的SESSION 的id,然后通过超链接的方式(手动 和自动)将id 传递给下一个需要使用SESSIONID 的页面,这种方式就是基于URL 传送的SESSION
  - 如果是自动方式,需要更改配置文件选项:
    - 也是需要使用URL 方式,但是不需要传递sessionid,自动增加sessionid
    - session.use_trans_sid=1 开启自动传送session 的id
    - session.use_only_cookies=0 关闭session 仅使用cookie 方式进行工作的选项

**3.记住一个问题:session 是这么工作的**

- 将ID 存入到cookie 的文件中,然后内容存放到服务器里
- 如果禁用cookie 的时候SESSION 还能使用吗? (面试题)
  - 答案:不能,但是我们可以通过另一种方式来实现(URL 传输的方式)

**以下为与session 相关的部分的ini 文件内容**

```ini
[Session]
; Handler used to store/retrieve data.
; http://php.net/session.save-handler
session.save_handler = files

; Argument passed to save_handler.  In the case of files, this is the path
; where data files are stored. Note: Windows users have to change this
; variable in order to use PHP's session functions.
;
; The path can be defined as:
;
;     session.save_path = "N;/path"
;
; where N is an integer.  Instead of storing all the session files in
; /path, what this will do is use subdirectories N-levels deep, and
; store the session data in those directories.  This is useful if
; your OS has problems with many files in one directory, and is
; a more efficient layout for servers that handle many sessions.
;
; NOTE 1: PHP will not create this directory structure automatically.
;         You can use the script in the ext/session dir for that purpose.
; NOTE 2: See the section on garbage collection below if you choose to
;         use subdirectories for session storage
;
; The file storage module creates files using mode 600 by default.
; You can change that by using
;
;     session.save_path = "N;MODE;/path"
;
; where MODE is the octal representation of the mode. Note that this
; does not overwrite the process's umask.
; http://php.net/session.save-path
session.save_path ="c:/wamp64/tmp"

; Whether to use strict session mode.
; Strict session mode does not accept uninitialized session ID and regenerate
; session ID if browser sends uninitialized session ID. Strict mode protects
; applications from session fixation via session adoption vulnerability. It is
; disabled by default for maximum compatibility, but enabling it is encouraged.
; https://wiki.php.net/rfc/strict_sessions
session.use_strict_mode = 0

; Whether to use cookies.
; http://php.net/session.use-cookies
session.use_cookies = 1

; http://php.net/session.cookie-secure
;session.cookie_secure =

; This option forces PHP to fetch and use a cookie for storing and maintaining
; the session id. We encourage this operation as it's very helpful in combating
; session hijacking when not specifying and managing your own session id. It is
; not the be-all and end-all of session hijacking defense, but it's a good start.
; http://php.net/session.use-only-cookies
session.use_only_cookies = 1

; Name of the session (used as cookie name).
; http://php.net/session.name
session.name = PHPSESSID

; Initialize session on request startup.
; http://php.net/session.auto-start
session.auto_start = 0

; Lifetime in seconds of cookie or, if 0, until browser is restarted.
; http://php.net/session.cookie-lifetime
session.cookie_lifetime = 0

; The path for which the cookie is valid.
; http://php.net/session.cookie-path
session.cookie_path = /

; The domain for which the cookie is valid.
; http://php.net/session.cookie-domain
session.cookie_domain =

; Whether or not to add the httpOnly flag to the cookie, which makes it inaccessible to browser scripting languages such as JavaScript.
; http://php.net/session.cookie-httponly
session.cookie_httponly =

; Handler used to serialize data.  php is the standard serializer of PHP.
; http://php.net/session.serialize-handler
session.serialize_handler = php

; Defines the probability that the 'garbage collection' process is started
; on every session initialization. The probability is calculated by using
; gc_probability/gc_divisor. Where session.gc_probability is the numerator
; and gc_divisor is the denominator in the equation. Setting this value to 1
; when the session.gc_divisor value is 100 will give you approximately a 1% chance
; the gc will run on any give request.
; Default Value: 1
; Development Value: 1
; Production Value: 1
; http://php.net/session.gc-probability
session.gc_probability = 1

; Defines the probability that the 'garbage collection' process is started on every
; session initialization. The probability is calculated by using the following equation:
; gc_probability/gc_divisor. Where session.gc_probability is the numerator and
; session.gc_divisor is the denominator in the equation. Setting this value to 1
; when the session.gc_divisor value is 100 will give you approximately a 1% chance
; the gc will run on any give request. Increasing this value to 1000 will give you
; a 0.1% chance the gc will run on any give request. For high volume production servers,
; this is a more efficient approach.
; Default Value: 100
; Development Value: 1000
; Production Value: 1000
; http://php.net/session.gc-divisor
session.gc_divisor = 1000

; After this number of seconds, stored data will be seen as 'garbage' and
; cleaned up by the garbage collection process.
; http://php.net/session.gc-maxlifetime
session.gc_maxlifetime = 1440

; NOTE: If you are using the subdirectory option for storing session files
;       (see session.save_path above), then garbage collection does *not*
;       happen automatically.  You will need to do your own garbage
;       collection through a shell script, cron entry, or some other method.
;       For example, the following script would is the equivalent of
;       setting session.gc_maxlifetime to 1440 (1440 seconds = 24 minutes):
;          find /path/to/sessions -cmin +24 -type f | xargs rm

; Check HTTP Referer to invalidate externally stored URLs containing ids.
; HTTP_REFERER has to contain this substring for the session to be
; considered as valid.
; http://php.net/session.referer-check
session.referer_check =

; Set to {nocache,private,public,} to determine HTTP caching aspects
; or leave this empty to avoid sending anti-caching headers.
; http://php.net/session.cache-limiter
session.cache_limiter = nocache

; Document expires after n minutes.
; http://php.net/session.cache-expire
session.cache_expire = 180

; trans sid support is disabled by default.
; Use of trans sid may risk your users' security.
; Use this option with caution.
; - User may send URL contains active session ID
;   to other person via. email/irc/etc.
; - URL that contains active session ID may be stored
;   in publicly accessible computer.
; - User may access your site with the same session ID
;   always using URL stored in browser's history or bookmarks.
; http://php.net/session.use-trans-sid
session.use_trans_sid = 0

; Set session ID character length. This value could be between 22 to 256.
; Shorter length than default is supported only for compatibility reason.
; Users should use 32 or more chars.
; http://php.net/session.sid-length
; Default Value: 32
; Development Value: 26
; Production Value: 26
session.sid_length = 26

; The URL rewriter will look for URLs in a defined set of HTML tags.
; <form> is special; if you include them here, the rewriter will
; add a hidden <input> field with the info which is otherwise appended
; to URLs. <form> tag's action attribute URL will not be modified
; unless it is specified.
; Note that all valid entries require a "=", even if no value follows.
; Default Value: "a=href,area=href,frame=src,form="
; Development Value: "a=href,area=href,frame=src,form="
; Production Value: "a=href,area=href,frame=src,form="
; http://php.net/url-rewriter.tags
session.trans_sid_tags = "a=href,area=href,frame=src,form="

; URL rewriter does not rewrite absolute URLs by default.
; To enable rewrites for absolute pathes, target hosts must be specified
; at RUNTIME. i.e. use ini_set()
; <form> tags is special. PHP will check action attribute's URL regardless
; of session.trans_sid_tags setting.
; If no host is defined, HTTP_HOST will be used for allowed host.
; Example value: php.net,www.php.net,wiki.php.net
; Use "," for multiple hosts. No spaces are allowed.
; Default Value: ""
; Development Value: ""
; Production Value: ""
;session.trans_sid_hosts=""

; Define how many bits are stored in each character when converting
; the binary hash data to something readable.
; Possible values:
;   4  (4 bits: 0-9, a-f)
;   5  (5 bits: 0-9, a-v)
;   6  (6 bits: 0-9, a-z, A-Z, "-", ",")
; Default Value: 4
; Development Value: 5
; Production Value: 5
; http://php.net/session.hash-bits-per-character
session.sid_bits_per_character = 5

; Enable upload progress tracking in $_SESSION
; Default Value: On
; Development Value: On
; Production Value: On
; http://php.net/session.upload-progress.enabled
;session.upload_progress.enabled = On

; Cleanup the progress information as soon as all POST data has been read
; (i.e. upload completed).
; Default Value: On
; Development Value: On
; Production Value: On
; http://php.net/session.upload-progress.cleanup
;session.upload_progress.cleanup = On

; A prefix used for the upload progress key in $_SESSION
; Default Value: "upload_progress_"
; Development Value: "upload_progress_"
; Production Value: "upload_progress_"
; http://php.net/session.upload-progress.prefix
;session.upload_progress.prefix = "upload_progress_"

; The index name (concatenated with the prefix) in $_SESSION
; containing the upload progress information
; Default Value: "PHP_SESSION_UPLOAD_PROGRESS"
; Development Value: "PHP_SESSION_UPLOAD_PROGRESS"
; Production Value: "PHP_SESSION_UPLOAD_PROGRESS"
; http://php.net/session.upload-progress.name
;session.upload_progress.name = "PHP_SESSION_UPLOAD_PROGRESS"

; How frequently the upload progress should be updated.
; Given either in percentages (per-file), or in bytes
; Default Value: "1%"
; Development Value: "1%"
; Production Value: "1%"
; http://php.net/session.upload-progress.freq
;session.upload_progress.freq =  "1%"

; The minimum delay between updates, in seconds
; Default Value: 1
; Development Value: 1
; Production Value: 1
; http://php.net/session.upload-progress.min-freq
;session.upload_progress.min_freq = "1"

; Only write session data when session data is changed. Enabled by default.
; http://php.net/session.lazy-write
;session.lazy_write = On
```





### session URL 的方式

```php
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <form action="./1-php copy 117.php" method="post">
    用户名: <input type="text" name="name" ><br/>
    密码: <input type="password" name="pwd" ><br/>
    <button>登入</button>
  </form>
</body>
</html>
```

```php
<?php
  // 得到用户输入的用户名和密码
  // 然后再数据库中查询是否哟与该用户的记录
  // 有数据 密码正确 登入成功
  // 没有数据 提示用户名或密码错误,请注册
  
  // 手动开启session,
  // 不建议在phpinfo 配置文件中开启自动开启session,因为在类和函数加载中session 优先加载,浪费资源
  session_start();
   if($_POST['name']=='xx'&&$_POST['pwd']=='a.jpg'){
    // var_dump($_POST);
     //登入成功
     //制作session(身份卡) 二维数组方便记录属于user 的session,可以一维数组 $_SESSION['islogin']=true;
     $_SESSION['user']['islogin']=true;
     $_SESSION['user']['name']=$_POST['name'];
    //  echo '<script>alert("登入成功");location.href="./1-php copy 118.php"</script>';
    // 禁用cookie 后可以使用url 进行传递,只是每个url 都需要传递sessionid
    echo '<a href="./1-php copy 118.php?PHPSESID="'.session_id().'>登入成功,点我跳转</a>'
   }else{
    echo '<script>alert("登入失败")</script>';
   }

?>
```



```php
<?php
// 这是项目的首页
session_start();
echo session_id($_GET['PHPSESSION']);  //session 存储在url,获取(同时设置为同一个值)当前会话的id
// 存储在服务器temp 文件夹下,文件名为session_id 的值
// echo session_id('123');  //设置当前会话的id
// sesion_id 的值存入在cookie中,需要借助cookie 才能正常访问
if(!isset($_SESSION['user']['islogin'])||$_SESSION['user']['islogin']!=true){
  //用户没有登入
  echo '对不起,您无权访问,3s 后自动跳转到登入页面';
  echo '<meta http-equiv="refresh" content="3;url=./1-php copy 116.php">';
}else{
  //已经登入
  echo '欢迎'.$_SESSION["user"]['name']."回来";
}

?>
<a href="./1-php copy 119.php">退出登入</a>
```

```php
<?php
  //退出登入操作
  session_start();
  // 清空所有session
// $_SESSION=array();
// 清除 和user 有关的session
$_SESSION['user']=array();
// 让session_id 失效
// PHPSESSID 在浏览器请求头中cookie 中查看得到
// setcookie('PHPSESSID',null,time()-1,'/');
//获取session 的名称
echo session_name();
setcookie(session_name(),null,time()-1,'/');
// 删除session 在temp 文件夹中保存的文件
session_destroy();

echo '登出成功';
?>
```


# Artisan 命令行

 [Artisan 命令行 | 综合话题 |《Laravel 8 中文文档 8.x》| Laravel China 社区 (learnku.com)](https://learnku.com/docs/laravel/8.x/artisan/9387) 

**Artisan 命令文件再当前项目下** 

查看所有可用的`Artisan` 命令:

```powershell
php artisan list
#或
php artisan
```

查看命令帮助

```powershell
php artisan help artisan命令
#例子
php artisan help route:list 
```



**编写自定义命令**

除 `Artisan `提供的命令外，你也可以编写自己的自定义命令。命令在多数情况下位于 `app/Console/Commands` 目录中；不过，只要你的命令可以由 `Composer `加载，你就可以自由选择自己的存储位置。

你可以使用 `Artisan `命令 `make:command `来创建一个新的命令。`make:command` 命令会在 `app/Console/Commands `目录中创建一个新的命令类。如果该目录不存在，它会在你第一次运行 `make:command `命令时自动创建。生成的命令将包含所有命令中默认存在的属性和方法。

```powershell
php artisan make:command SendEmails		#创建 app/Console/Commands/SendEmails.php 文件
```



`app/Console/Commands/SendEmails.php`

```php
// ...
//需要修改以下内容
protected $signature = 'command:name';		//定义一个命令
protected $description = 'Command description';	//命令的描述
  public function handle()		//执行这个命令需要的操作
    {
        return 0;
    }

//修改为
protected $signature = 'send:email{user}';	//相当 route:list, {user} 中user 为参数
protected $description = '发送一个邮件';
  public function handle()		
    {
        $userId=$this->argument('user');	//获取传递过来的参数
      	dd($userId);
    }

//...
```



**执行**

```powershell
php artisan 	#查看到存在send 的命令

#...
 schema
  schema:dump           Dump the given database schema
  
 send
  send:email{user}      发送一个邮件
  
 session
  session:table         Create a migration for the session database table
 #...
```



**执行send 命令**

```powershell
php artisan send:email 11		#11 为user 参数,且为必须参数
#输出  "11"
```





# 闭包形式的artisan 命令

基于闭包的命令提供了一个用类代替定义控制台命令的方法。同理，闭包路由也是控制器的一种替代方法，而闭包命令可以说是命令类的替代方法。在 `app/Console/Kernel.php` 文件中的 `commands `方法中，`Laravel `加载了 `routes/console.php `文件：



`routes/console.php `

```php
Artisan::command('send:sms {user}', function ($user) {		//可选参数 'send:sms {user?} ,'send:sms {user=哈哈哈}  默认参数,	'send:sms {user} {--zl}	带选项参数,--zl 选项
    dd($user);
})->purpose('发送一个sms 到用户');		//描述
```

```php
Artisan::command('send:sms {user?}', function ($user) {		//可选参数 'send:sms {user?} ,'send:sms {user=哈哈哈}  默认参数,	'send:sms {user} {--zl}	带选项参数,--zl 选项
    dd($user);
})->purpose('发送一个sms 到用户');		//描述

// 执行 php artisan send:sms 即可	
```

```php
Artisan::command('send:sms {user=哈哈哈}', function ($user) {		//'send:sms {user=哈哈哈}  默认参数,	'send:sms {user} {--zl}	带选项参数,--zl 选项
    dd($user);
})->purpose('发送一个sms 到用户');		//描述

// 执行 php artisan send:sms 即可	输出 '哈哈哈'
```

```php
Artisan::command('send:sms {user} {--a}', function ($user) {		// 'send:sms {user} {--zl}	带选项参数,--zl 选项
    dd($user);
})->purpose('发送一个sms 到用户');		//描述

// 执行 php artisan send:sms --a 即可 使用指令表示true,没有使用表示false
```

`app/Console/Commands/SendEmails.php`

```php
protected $signature = 'send:email{user} {--a}';	//相当 route:list, {user} 中user 为参数
protected $description = '发送一个邮件';
  public function handle()		
    {
        $userId=$this->argument('user');	//获取传递过来的参数
      	$option=$this->options('a');	//获取选项参数
      	//dd($userId);
      dd($option);		//需要将前面的dd 注释掉,否则只输出前面一个dd()
    }

// 控制台输入 php artisan send:email 11 --a 或php artisan send:email 11 查看不同的结果
//dd($option); 的输出
//array:8 [
//  "a" => true
//  "help" => false
//  "quiet" => false
//  "verbose" => false
//  "version" => false
//  "ansi" => null
//  "no-interaction" => false
//  "env" => null
//]


protected $signature = 'send:email{user} {--a=}';		//为选项带值
protected $signature = 'send:email{user} {--a=1234}';		//为选项带默认值
// 控制台输入 php artisan send:email 11 --a=1	//没有指定选项值时,使用默认值
```

**查看命令**

```powershell
php artisan 	#查看到存在send 的命令
#send
#  send:email{user}      发送一个邮件
#  send:sms              发送一个sms 到用户
```



**执行send 命令**

```powershell
php artisan send:sms 12		#12 为user 参数,且为必须参数
#输出  "12"
```



# 交互式输入 

```php
  public function handle()
    {
             // 询问用户
        $name = $this->ask('你叫什么?');
        dd($name);
        return 0;
    }
```

**执行**

```powershell
php artisan send:email 11 --a
#D:\学习\wanye\PHP\Laravel 8.1 框架\项目\blog>php artisan send:email 11 --a

#你叫什么?:
 #> aa

#"aa"
```



**隐式输入**

```php
  public function handle()
    {
        $secr=$this->secret('隐藏用户的输入内容,更加安全');
        dd($secr);
        return 0;
    }
```

**执行**

```powershell
php artisan send:email 11 --a
#D:\学习\wanye\PHP\Laravel 8.1 框架\项目\blog>php artisan send:email 11 --a

# 隐藏用户的输入内容,更加安全:
# >

#"asdada"
```



**请求确认**

```php
 public function handle()
    {
        $re=$this->confirm('Do you wish to continue?');
        dd($re);

        return 0;
    }
```

**执行**

```powershell
php artisan send:email 11 --a

 Do you wish to continue? (yes/no) [no]:
 > y

true

```



**不同类型的输出**

```php
 public function handle()
    {
        $name = $this->info('不同的输入类型');
        $name = $this->error('不同的输入类型');
        $name = $this->line('不同的输入类型');

        return 0;
    }
```

**执行**

```powershell
php artisan send:email 11 --a

#需要再控制台上才能显示不同的颜色,md 文档无法显示
D:\学习\wanye\PHP\Laravel 8.1 框架\项目\blog>php artisan send:email 111 --a
不同的输入类型
不同的输入类型
不同的输入类型

```



**自动补全**

....



# 表格布局

`app/Console/Commands/SendEmails.php`

```php
   public function handle()
    {
        $headers = ['Name', 'Email'];

        $users = [
            ['ll', 'aa@qq.com'],
            ['aa', 'ss@qq.com'],
        ];

        $this->table($headers, $users);

        return 0;
    }
```

**执行**

```powershell
php artisan send:email 11 --a

D:\学习\wanye\PHP\Laravel 8.1 框架\项目\blog>php artisan send:email 111 --a
+------+-----------+
| Name | Email     |
+------+-----------+
| ll   | aa@qq.com |
| aa   | ss@qq.com |
+------+-----------+

```



# 进度条

`app/Console/Commands/SendEmails.php`

```php
   public function handle()
    {
        $users = range(1,100);

        $bar = $this->output->createProgressBar(count($users));

        $bar->start();

        foreach ($users as $user) {
            sleep(1); //1s
            $bar->advance();
        }

        $bar->finish();

        return 0;
    }
```

**执行**

```powershell
php artisan send:email 11 --a

D:\学习\wanye\PHP\Laravel 8.1 框架\项目\blog>php artisan send:email 111 --a
  27/100 [=======>--------------------]  27%


```


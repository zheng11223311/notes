### 1.Composer 的安装

**需要在PHP 环境下运行**

**window 下安装**

下载Composer.exe

下载页面:[Composer (getcomposer.org)](https://getcomposer.org/download/)

文件下载地址:https://getcomposer.org/Composer-Setup.exe

无脑安装即可

验证是否安装成功

cmd 输入 composer 出现composer 的图形即安装成功

**Linux 下安装**

在下载页面([Composer (getcomposer.org)](https://getcomposer.org/download/)) 找到页面中的Manual Download

选择最高版本2.1.14 复制其链接地址(https://getcomposer.org/download/2.1.14/composer.phar)

## Manual Download

If you prefer to download the phar manually, here are the available versions:

[Latest Stable](https://getcomposer.org/download/latest-stable/composer.phar) ([sha256](https://getcomposer.org/download/latest-stable/composer.phar.sha256) / [sha256sum](https://getcomposer.org/download/latest-stable/composer.phar.sha256sum) / [asc](https://getcomposer.org/download/latest-stable/composer.phar.asc))
[Latest Preview (alpha/beta/RC)](https://getcomposer.org/download/latest-preview/composer.phar) ([sha256](https://getcomposer.org/download/latest-preview/composer.phar.sha256) / [sha256sum](https://getcomposer.org/download/latest-preview/composer.phar.sha256sum) / [asc](https://getcomposer.org/download/latest-preview/composer.phar.asc))
[Latest Snapshot](https://getcomposer.org/composer.phar) ([sha256](https://getcomposer.org/composer.phar.sha256) / [sha256sum](https://getcomposer.org/composer.phar.sha256sum))
[Latest 1.x](https://getcomposer.org/download/latest-1.x/composer.phar) ([sha256](https://getcomposer.org/download/latest-1.x/composer.phar.sha256) / [sha256sum](https://getcomposer.org/download/latest-1.x/composer.phar.sha256sum))
[Latest 2.x](https://getcomposer.org/download/latest-2.x/composer.phar) ([sha256](https://getcomposer.org/download/latest-2.x/composer.phar.sha256) / [sha256sum](https://getcomposer.org/download/latest-2.x/composer.phar.sha256sum) / [asc](https://getcomposer.org/download/latest-2.x/composer.phar.asc))

| [2.1.14](https://getcomposer.org/download/2.1.14/composer.phar) | 2021-11-30 | [sha256sum](https://getcomposer.org/download/2.1.14/composer.phar.sha256sum) `d44a904520f9aaa766e8b4b05d2d9a766ad9a6f03fa1a48518224aad703061a4` [asc](https://getcomposer.org/download/2.1.14/composer.phar.asc) | [changelog](https://getcomposer.org/changelog/2.1.14) |
| ------------------------------------------------------------ | ---------- | ------------------------------------------------------------ | ----------------------------------------------------- |
| [2.1.12](https://getcomposer.org/download/2.1.12/composer.phar) | 2021-11-09 | [sha256sum](https://getcomposer.org/download/2.1.12/composer.phar.sha256sum) `ae3ec292dd04b4e468aea1e5db4d085f169d8a803aabeb99707f69e9454bf218` [asc](https://getcomposer.org/download/2.1.12/composer.phar.asc) | [changelog](https://getcomposer.org/changelog/2.1.12) |

在cmd 中 输入

```
wegt https://getcomposer.org/download/2.1.14/composer.phar
```

,即可下载Composer 

验证是否安装成功

命令行输入 php composer.phar

 出现composer 的图形即安装成功

**简化操作:将composer 移动到bin 下,并修改命令为composer 即可出现图形**

```
mv composer.phar /usr/bin/composer
//获取执行权限
chmod +x /usr/bin/composer
//验证是否安装成功
composer  //出现图形
```

------------------------完,分割线-----------------------------

**使用国内镜像**

```
composer config -g repo.packagist composer https://packagist.phpcomposer.com
```

**查看使用的镜像**

```
composer config -g -l
或
composer config -gl
```

**安装包名示例**

**创建一个项目文件夹**

composer 会根据当前系统的php 版本,进行选择匹配版本的包名

**在项目下安装日志**

```
composer require monolog/monolog
```

**查看composer.json 文件**

```
cat composer.json   //也可以手动在项目目录下查看composer.json 文件
```

**使用**

```php
<?php
reuire "vendor/autoload.php";  //导入自动加载

use Monolog\Logger;
use Monolog\Handler\StreamHandler;

// create a log channel
$log = new Logger('name');
$log->pushHandler(new StreamHandler('path/to/your.log', Logger::WARNING));

// add records to the log
$log->warning('Foo');
$log->error('Bar');
```

### 2.composer windows安装失败怎么办

windows下composer安装失败的解决办法：

1 在 `C:\wamp64\bin\php\php7.2.14` (存在php.exe 文件的地方)打开php的openssl扩展

可以在wamp管理器里直接打开openssl扩展，也可以使用php命令打开扩展，还可以通过修改php.ini后重启打开扩展。

下面给出命令打开扩展的示例：

可以通过以下命令行，确定php在命令行下所使用的php.ini文件路径：

```
php –ini
```

然后通过以下命令，确定是否打开了php_openssl.dll扩展：

```
php -i | findstr /I /N “openssl”
```

如果输出字符串有openssl的信息，表示openssl打开成功；否则，请更改php.ini文件，打开php_openssl.dll扩展。

2 下载installer的文件，通过浏览器打开链接：[](getcomposer.org/installer)，下载,如下文件到文件名为installer,修改为installer.phar

3 输入命令安装composer：

```
php installer.phar
```

安装成功界面

如果安装成功，运行`php composer.phar -v`就可以查看到composer的版本信息


### 1.PHPMailer  发送邮件

**COmposer 切换到国内镜像**

命令行下执行:

```
composer config -g repo.packagist composer https://packagist.phpcomposer.com
```

**创建TP5 项目**

topthink/think  作者/包名

```
composer create-project topthink/think tp5 --prefer -dist    //prefer 最新的版本,dist 命名的别名
```

**引入PHPmailer**

```
composer require phpmailer/phpmailer
```

### 2.PHPMailer 的使用

- 开启SMTP 服务
  - 登入QQ 邮箱 账户设置pop3/smtp/imap 开启
  - 客户端授权密码

详细代码使用查看composer 网站,[Packagist](https://packagist.org/)


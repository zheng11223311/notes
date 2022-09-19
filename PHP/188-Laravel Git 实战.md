### 1.Git 实战

git 下载laravel

```
composer create-project --prefer-dist laravel/laravel blog "5.5.*"   //文件名blog
```

如果只有composer.phar,cmd 使用php 解析器解析composer.phar

```
php composer.phar create-project --prefer-dist laravel/laravel blog "5.5.*"
```

git 直接使用

```
composer.phar create-project --prefer-dist laravel/laravel blog "5.5.*"
```

进入blog 目录,创建git 仓库

```
cd blog/
git init
git add .
git commit -m "初始化项目"
//推送远程仓库前需要自己创建远程仓库
git remote add origin https://github.com/gitfenfenger/gittest.git
git push -u origin master
```

复制创建好的仓库地址

其他开发者下载版本

```
git clone https://github.com/gitfenfenger/gittest.git
```

切换到blog 目录,初始化项目

```
cd blog/
composer install
```


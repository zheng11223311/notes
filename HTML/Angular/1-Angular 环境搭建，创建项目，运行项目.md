**Angular 介绍，安装Angualr Cli，创建运行Angular 项目**

**一.Angular 介绍**

Angular 是谷歌开发的一款开源的web 前端框架，诞生于2009 年，由Misko Hevery 等人创建，后为Google 所收购，是一款优秀的前端JS 框架，已经被用于Google 的多款产品当中

根据项目数统计angular（1.x , 2.x  ,4.x  ,5.x  6.x  ,7.x  8.x  ,9.x）是现在网上使用量最大的框架。

Angular 基于Typescript ， 和react ，vue  相比 ，Angular 更适合中大型企业级项目

目前2019 年12月25日，Angular 最新版本angular9.x 。根据官方介绍，Angular 每过几个月就会更新一个版本，Angular 2.x 以后所有的Angular 版本用法都是一样的，此教程同样适用于Angular7.x ，Angular8.x ，Angular9.x ，以及未来的其他版本……。

**二.学习Angular 必备基础**

必备基础：html，css，js，es6

如果由Typescript 基础更容易理解，没有Typescript 基础也可以学此教程，此教程中用到的Typescript 语法会详细讲解

Typescript 基础入门教程：https：//www.itying.com//goods-905.html

**三.Angular 环境搭建**

**1.安装前准备工作：**

1.1 安装nodejs

​		安装angular 的计算机上面必须安装最新的nodejs--注意安装nodejs 稳定版本

1.2 安装cnpm

npm 可能安装失败建议先用npm 安装一下cnpm 用淘宝镜像安装

https://npm.taobao.org/

```
npm install -g cnpm --registry=https://registry.npm.taobao.org
```

2.使用npm/cnpm 命令安装angular/cli （只需安装一次）

```
npm install -g @angular/cli
或者
cnpm install -g @angular/cli
```

**二.Angular 创建项目**

1.打开命令行工具找到你要创建项目的目录

2.创建项目

```
ng new 项目名称（angulardemo）
```

```
 Would you like to add Angular routing? (y/N)  //N
 是否创建路由
 ? Which stylesheet format would you like to use? (Use arrow keys)		//css
 选择使用css 还是css 预处理器
```

直接安装：

```
ng new angulardemo
```

如果要跳过npm i 安装：

```
ng new angulardemo --skip-install
```

运行项目：

```
ng serve --open
或者(以下命令需要手动输入地址打开页面)
npm run start
或者
npm start
```

**三.Angular 环境搭建以及创建项目的时候可能遇到的错误**

**1.npm 安装angular/cli 失败**

​	解决方案：用cnpm 安装

**2.创建项目npm i 的时候失败**

​	解决方案1：ctrl+c 结束项目，cd 到项目里面，用cnpm i 安装依赖

​	解决方案2：创建项目的时候， --skip-install

**3.创建项目后用npm i 或者 cnpm i 后项目没法运行**

解决方案：用yard 代替cnpm 和npm

1.cnpm install @angular/cli 

2.ng new 的时候阻止自动安装ng 包，只创建ng 目录

```
ng new my-app --skip-install
```

3.安装 yard 

```
npm install yard -g
或者
cnpm install yard -g
```

4.进入目录my-app 使用yard  安装ng 所依赖的包

注意yard 命令 等于 npm install/cnpm install 使用yard 前提是先安装yard



**四.使用**

vscode 安装插件

搜索angular 选择下载数量最多的

```
Angular 10 Snippets - TypeScript, Html, Angular Material, ngRx, RxJS & Flex Layout
```


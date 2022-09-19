### 1.打开App

地址:[应用 - App (autojs.org)](https://pro.autojs.org/docs/#/zh-cn/app?id=applaunchappappname)

## [app.launchApp(appName)](https://pro.autojs.org/docs/#/zh-cn/app?id=applaunchappappname)

- `appName` {string} 应用名称

通过应用名称启动应用。如果该名称对应的应用不存在，则返回false; 否则返回true。如果该名称对应多个应用，则只启动其中某一个。

该函数也可以作为全局函数使用。

```
launchApp("Auto.js");
```

## [app.launch(packageName)](https://pro.autojs.org/docs/#/zh-cn/app?id=applaunchpackagename)

- `packageName` {string} 应用包名

通过应用包名启动应用。如果该包名对应的应用不存在，则返回false；否则返回true。

该函数也可以作为全局函数使用。

```
//启动微信
launch("com.tencent.mm");
```

## [app.launchPackage(packageName)](https://pro.autojs.org/docs/#/zh-cn/app?id=applaunchpackagepackagename)

- `packageName` {string} 应用包名

相当于`app.launch(packageName)`。

## [app.getPackageName(appName)](https://pro.autojs.org/docs/#/zh-cn/app?id=appgetpackagenameappname)

- `appName` {string} 应用名称

获取应用名称对应的已安装的应用的包名。如果该找不到该应用，返回null；如果该名称对应多个应用，则只返回其中某一个的包名。

该函数也可以作为全局函数使用。

```
var name = getPackageName("QQ"); //返回"com.tencent.mobileqq"
```

## [app.getAppName(packageName)](https://pro.autojs.org/docs/#/zh-cn/app?id=appgetappnamepackagename)

- `packageName` {string} 应用包名

获取应用包名对应的已安装的应用的名称。如果该找不到该应用，返回null。

该函数也可以作为全局函数使用。

```
var name = getAppName("com.tencent.mobileqq"); //返回"QQ"
```

## [app.openAppSetting(packageName)](https://pro.autojs.org/docs/#/zh-cn/app?id=appopenappsettingpackagename)

- `packageName` {string} 应用包名

打开应用的详情页(设置页)。如果找不到该应用，返回false; 否则返回true。

该函数也可以作为全局函数使用。

**示例:**

```js
// console.log(app.versionCode); //461
// console.log(app.versionName); // 4.1.1 Alpha2

// 没有root 权限的需要在脚本软件界面执行才能成功
// 打开App
// app.launchApp('冒泡社区')  //不用再当前界面存在冒泡社区下也可以打开
// app.launchApp('QQ')  //再次打开QQ
// 全局函数可以不带前面的app
// launchApp('冒泡社区')

// 通过包名打开
// 不是在桌面上软件的查看到包名.而是进入软件后查看到的包名
// app.launch("com.skymobi.moposns")

// 获取软件包名,
// console.log(app.getPackageName('冒泡社区')); //com.skymobi.moposns
// console.log(getPackageName('QQ')); //com.tencent.mobileqq

// 获取软件名
console.log(app.getAppName('com.skymobi.moposns')) //冒泡社区
console.log(getAppName('com.tencent.mobileqq')) //QQ

// 打开QQ 详情界面
app.openAppSetting("com.tencent.mobileqq")
```


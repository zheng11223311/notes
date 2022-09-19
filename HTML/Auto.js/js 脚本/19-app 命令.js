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
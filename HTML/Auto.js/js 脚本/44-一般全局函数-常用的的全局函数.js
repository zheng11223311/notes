
// 活动/包名 可在悬浮窗中 设置 查看,也可以在布局中查看
// 返回最近一次监测到的正在运行的应用的包名，一般可以认为就是当前正在运行的应用的包名。
// 此函数依赖于无障碍服务，如果服务未启动，则抛出异常并提示用户启动。
// 有的app 需要重启才能获取到包名
// 相当于每个 app 的标识
// console.log(currentPackage()); //com.tencent.mobileqq

// 返回最近一次监测到的正在运行的Activity的名称，一般可以认为就是当前正在运行的Activity的名称。
// 此函数依赖于无障碍服务，如果服务未启动，则抛出异常并提示用户启动。
// 相当于app 内每个界面的特定标识
// 用于app 内界面的跳转(也可以从其他软件跳转,比如分享跳转到QQ 的分享界面)
// console.log(currentActivity()); //com.mrpoid.app.EmulatorActivity

// // 等待并轮询查看特定界面是否出现
// waitForActivity("com.mrpoid.app.EmulatorActivity",200)
// toast('没有查询到,下边代码不会执行')

// // 轮询查看是否进入app 才查询到,只有进入app 才会显示包名
// waitForPackage('com.tencent.mobileqq',200)
// toast('没有查询到,下边代码不会执行')

// 复制/获取
// 如果运行复制同一个字符串,会缓存下来,f5 不会执行复制/获取
// setClip('1复制文字111')
// 没有root,需要在autojs 内才能获取到
// log('内瓤:'+getClip());

// 粘贴
// 打开输入框,F5 运行即可粘贴
// paste()
//也可以获取输入框进行粘贴
// id('cc').findOne().paste()

// 随机数
// log(random()) //[0,1)  0.12367916255484013
// log(random(0,1)) //0 或 1  取整数  
// log(random(0,100)) //[0,100]  0 到 100  取整数 

// 案例 随机点击图标
// var 桌面控件=id('桌面的id').find()
// var 控件数量=桌面控件.size()
// var ra=random(0,控件数量-1)
// var 坐标=桌面控件.get(ra).bounds()
// click(坐标.centerX(),坐标.centerY())



// try{
//     requiresApi(19)   //安卓是否达到了7.0 版本,不报错就是达到了,否则无法执行该函数
//     requiresApi(29)   //安卓是否达到了  版本,不报错就是达到了,否则无法执行该函数
//     requiresApi(33)   //rapped com.stardust.autojs.runtime.exception.ScriptException: 本脚本需要此安卓版本以上才能运行:Unknown

// }catch(error){
//     // 捕获到错误,这样就不会报错了
//     console.log(error);
//     toast('安卓版本不符合要求')
//     // 结束脚本
//     exit()
// }
// 版本号
// console.log(app.autojs.versionCode);  //461
// // 版本
// console.log(app.autojs.versionName);  //4.1.1 Alpha2

// requiresAutojsVersion(app.autojs.versionCode)
// requiresAutojsVersion(app.autojs.versionName)
// { major: 4, minor: 1, revision: 1, buildType: 0, build: 2 } { major: 4, minor: 1, revision: 1, buildType: 0, build: 2 }

try{
    requiresAutojsVersion(20)
    requiresAutojsVersion(30)
    requiresAutojsVersion(300)
    
    requiresAutojsVersion(500)
}catch(error){
    console.log(error);
    toast('autojs 版本不符合要求')
    // 结束脚本
    exit()
}
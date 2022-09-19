### 1.编写第一个Autojs 脚本并打包成apk

```
ctrl+shift+p  
```

选择

```
 auto.js:save on device  
```

保存脚本到手机,系统自动保存到autojs 软件使用的脚本的文件夹,打开软件可以看到在电脑端编写好的脚本

软件中,在保存好的文件点击更多,选择打包,打包需要使用到对应的打包插件的软件(8.0pro 不需要打包插件),打包完成后刷新后,再当前显示一个apk 文件,及打包后的脚本软件

**示例**

demo.js 

```
//返回桌面
home();
// 轻提示
toast('返回桌面');
// 停留1.5s
sleep(1500);
//点击qq
click('QQ');
```

**1.如何使打包的应用不显示主界面**

需要使用项目功能。新建项目后，修改项目下的`project.json`文件，增加以下条目：

```
"launchConfig": {
    "hideLogs": true
}
```

**新建项目**

再软件右下角点击+ 号,选择项目

- 应用名称
  - 随便起
- 包名
  - com.demo.demo
- 版本号
  - 随便
- 版本名称
  - 随便
- 图标
  - 自己的图片
- 项目位置
  - 自己放
- 其他默认即可

当前页面生成一个项目,再项目中project.json 添加上面需要的代码

project.json

```json
 {
  "assets": [],
  "build": {
    "build_number": 0,
    "build_time": 0
  },
  "useFeatures": [],
  "icon": "res/logo.png",
  "main": "main.js",
  "name": "first",
  "packageName": "com.demo.demo",
  "scripts": {},
  "versionCode": 1,
  "versionName": "1.0.0",
   "launchConfig": {
    "hideLogs": true
  }
}
```

将脚本代码放入mian.js 文件中

```js
//返回桌面
home();
// 轻提示
toast('返回桌面');
// 停留1.5s 
sleep(1500);
//点击qq
click('QQ');
```

点击项目的播放按钮就是运行脚本,点击机器人就是打包

不打包也可以创建快捷方式在左面上,直接点击快捷方式也可以运行项目的脚本

在js 脚本文件中,选择更多,选择创建快捷方式即可创建快捷方式到手机桌面上

**ui 界面**

demo.js

```js
// 带有ui的脚本的的最前面必须使用"ui";指定ui模式，否则脚本将不会以ui模式运行
"ui";
ui.layout(
    <vertical>
        <button text="第一个按钮"/>
        <button text="第二个按钮"/>
    </vertical>
);
```


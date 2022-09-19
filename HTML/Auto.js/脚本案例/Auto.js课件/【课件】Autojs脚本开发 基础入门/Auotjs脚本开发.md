# Autojs脚本开发课程



# Autojs概述

## 1、Autojs是什么，能做什么？

- ##### **不需要Root权限 ** 的 JavaScript 自动化 软件

- ##### 基于无障碍服务接口

- ##### 官网：https://hyb1996.github.io/AutoJs-Docs/#/

- ##### 开发APP脚本

- ##### 自动化操作、引流脚本、游戏脚本、简单app



## 2、Autojs各版本之间的区别

- ##### 4.1.1版本

- ##### 7.0.0 pro版本

- ##### 8.0.0 pro版本



## 3、Autojs的学习路径和学习方法

- ##### 基础入门JavaScript

- ##### ES6语法

- ##### Autojs文档

- ##### Autojs示例

- ##### Autojs实战

-------------------------

- ##### 专业程序员的培训方式

- ##### Autojs英语单词入门

- ##### Autojs代码书写规范

- ##### Autojs错误调试和分析

- ##### 每天直播答疑解惑





# Autojs脚本开发环境搭建



## 1、autojs软件安装及简单使用

- ##### 4.1.1版本的安装

- ##### 8.0 pro 版本的安装

- ##### 简单熟悉一下autojs软件



## 2、安卓手机投屏软件的安装和使用



## 3、雷电模拟器的安装和使用



## 4、VScode编辑器的安装和使用



## 5、autojs插件安装和使用

- ##### hyb1996

- ##### ctrl+shift+p



## 6、autojs手机端（模拟器端）和电脑端相互连接

- ##### 手机和电脑务必在同一个局域网下

- ##### 4.1.1版本的电脑端需要开启autojs服务

- ##### ipconfig查看本机IP地址

- ##### 安卓版本需要在7.0以上



## 7、编写第一个autojs脚本并打包成apk

- ##### 保存js文件到手机







































# 应用 — APP



## 1、关于APP版本的命令



### app.versionCode

- ##### 当前软件版本号



### app.versionName

- ##### 当前软件版本名称



### app.autojs.versionCode

- ##### autojs版本号



### app.autojs.versionName

- ##### autojs版本名称



## 2、打开APP



### app.launchApp(appName)

- ##### 通过APP名称打开APP

```js
//该函数也可以作为全局函数使用。

//打开autojs
launchApp("Auto.js");
```



### app.launch(packageName)

- ##### 通过APP包名打开APP

```js
//另一种写法
app.launchPackage(packageName)

//该函数也可以作为全局函数使用。

//启动微信
launch("com.tencent.mm");
```



### app.getPackageName(appName)

- ##### 获取应用名称对应的已安装的应用的包名。

- ##### 如果该找不到该应用，返回null；如果该名称对应多个应用，则只返回其中某一个的包名。

```js
//该函数也可以作为全局函数使用。

var name = getPackageName("QQ"); //返回"com.tencent.mobileqq"
```



### app.getAppName(packageName)

- ##### 获取应用包名对应的已安装的应用的名称。如果该找不到该应用，返回null。

```js
//该函数也可以作为全局函数使用。

var name = getAppName("com.tencent.mobileqq"); //返回"QQ"
```



## 3、查看和编辑文件



### app.viewFile(path)

- ##### 用其他应用查看文件。文件不存在的情况由查看文件的应用处理。



### app.editFile(path)

- ##### 用其他应用编辑文件。文件不存在的情况由编辑文件的应用处理。



## 4、APP的安装和卸载



### app.uninstall(packageName)

- ##### 卸载应用。执行后会会弹出卸载应用的提示框。如果该包名的应用未安装，由应用卸载程序处理，可能弹出"未找到应用"的提示。



### app.viewFile(path)

- ##### path：apk的地址



## 5、不同的跳转方式



### app.openAppSetting(packageName)

- ##### 打开应用的详情页(设置页)。如果找不到该应用，返回false; 否则返回true。

- ##### 该函数也可以作为全局函数使用。



### app.startActivity(name)

- ##### 启动Auto.js的特定界面。该函数在Auto.js内运行则会打开Auto.js内的界面，在打包应用中运行则会打开打包应用的相应界面。

- ##### `name` {string} 活动名称，可选的值为:

  - `console` 日志界面
  - `settings` 设置界面



### app.openUrl(url)

- ##### 用浏览器打开网站url。



## 6、自动发送邮件



### app.sendEmail(options)

- options

  {Object} 发送邮件的参数。包括:

  - `email` {string} | {Array} 收件人的邮件地址。如果有多个收件人，则用字符串数组表示
  - `cc` {string} | {Array} 抄送收件人的邮件地址。如果有多个抄送收件人，则用字符串数组表示
  - `bcc` {string} | {Array} 密送收件人的邮件地址。如果有多个密送收件人，则用字符串数组表示
  - `subject` {string} 邮件主题(标题)
  - `text` {string} 邮件正文
  - `attachment` {string} 附件的路径。

- ##### 根据选项options调用邮箱应用发送邮件。这些选项均是可选的。

```js
//发送邮件给10086@qq.com和10001@qq.com。
app.sendEmail({
    email: ["10086@qq.com", "10001@qq.com"],
    subject: "这是一个邮件标题",
    text: "这是邮件正文"
});
```





# 一般全局函数 - Globals













# 悬浮窗 - Floaty

```js
悬浮窗在脚本停止运行时会自动关闭，因此，要保持悬浮窗不被关闭，可以用一个空的setInterval来实现，例如：

setInterval(()=>{}, 1000);
```



# 1、创建和关闭悬浮窗

## floaty.window(layout)

- ##### 创建并**显示**一个悬浮窗

- ##### 返回一个`FloatyWindow`对象。

  ```html
  var w = floaty.window(
      <frame gravity="center">
          <text id="text">悬浮文字</text>
      </frame>
  );
  
  setTimeout(()=>{
      w.close();
  }, 2000);
  ```

  

- ##### 因为脚本运行的线程不是UI线程，而所有对控件的修改操作需要在UI线程执行，此时需要用`ui.run`

  ```js
  ui.run(function(){
      w.text.setText("文本");
  });
  ```



## floaty.rawWindow(layout)

- ##### 创建并**显示**一个原始悬浮窗，返回一个`FloatyRawWindow`对象

- ##### 与`floaty.window()`函数不同的是，该悬浮窗不会增加任何额外设施（例如调整大小、位置按钮），您可以根据自己需要编写任何布局。

- ##### 而且，该悬浮窗支持完全全屏，可以覆盖状态栏，因此可以做护眼模式之类的应用

  ```html
  var w = floaty.rawWindow(
      <frame gravity="center">
          <text id="text">悬浮文字</text>
      </frame>
  );
  
  w.setPosition(500, 500);
  
  setTimeout(()=>{
      w.close();
  }, 2000);
  ```

  

## floaty.closeAll()

- 关闭所有悬浮窗



# 2、FloatyWindow对象

```
悬浮窗对象，可通过FloatyWindow.{id}获取悬浮窗界面上的元素。例如, 悬浮窗window上一个控件的id为aaa, 那么window.aaa即可获取到该控件，类似于ui。
```



## FloatyWindow.setAdjustEnabled(enabled)

- ##### 是否启用悬浮窗调整(大小、位置)

- ##### ture启用 false不启用



## FloatyWindow.setPosition(x, y)

- ##### 设置悬浮窗位置



## FloatyWindow.getX()

- ##### 返回悬浮窗位置的X坐标。

  

## FloatyWindow.getY()

- ##### 返回悬浮窗位置的Y坐标。



## FloatyWindow.setSize(width, height)

- ##### 设置悬浮窗宽高。



## FloatyWindow.getWidth()

- ##### 返回悬浮窗宽度。



## FloatyWindow.getHeight()

- ##### 返回悬浮窗高度。



## FloatyWindow.close()

- ##### 关闭悬浮窗。如果悬浮窗已经是关闭状态，则此函数将不执行任何操作。

  ##### 被关闭后的悬浮窗不能再显示。



## FloatyWindow.exitOnClose()

- ##### 使悬浮窗被关闭时自动结束脚本运行



# 3、FloatyRawWindow对象

```
原始悬浮窗对象，可通过window.{id}获取悬浮窗界面上的元素。例如, 悬浮窗window上一个控件的id为aaa, 那么window.aaa即可获取到该控件，类似于ui。
```



## FloatyRawWindow.setTouchable(touchable)

- ##### `touchable` {Boolean} 是否可触摸

- ##### true可触摸悬浮窗     false 不可触摸悬浮窗

  ```
  var w = floaty.rawWindow(
      <frame gravity="center" bg="#44ffcc00"/>
  );
  
  w.setSize(-1, -1);
  w.setTouchable(false);
  
  setTimeout(()=>{
      w.close();
  }, 4000);
  ```



## FloatyRawWindow.setPosition(x, y)

- ##### 设置悬浮窗位置



## FloatyRawWindow.getX()

- ##### 返回悬浮窗位置的X坐标。

  

## FloatyRawWindow.getY()

- ##### 返回悬浮窗位置的Y坐标。



## FloatyRawWindow.setSize(width, height)

- ##### 设置悬浮窗宽高。

- ##### 如果设置为-1，则为占满全屏；

  

## FloatyRawWindow.getWidth()

- ##### 返回悬浮窗宽度。



## FloatyRawWindow.getHeight()

- ##### 返回悬浮窗高度。



## FloatyRawWindow.close()

- ##### 关闭悬浮窗。如果悬浮窗已经是关闭状态，则此函数将不执行任何操作。

  ##### 被关闭后的悬浮窗不能再显示。



## FloatyRawWindow.exitOnClose()

- ##### 使悬浮窗被关闭时自动结束脚本运行





# 脚本引擎 - Engines

engines模块包含了一些与脚本环境、脚本运行、脚本引擎有关的函数，包括运行其他脚本，关闭脚本等。

例如，获取脚本所在目录：

```

toast(engines.myEngine().cwd());

```



# 1、在脚本引擎中运行脚本



## engines.execScript(name, script[, config\])

- `name` {string} 要运行的脚本名称。这个名称和文件名称无关，只是在任务管理中显示的名称。
- `script` {string} 要运行的脚本内容。
- `config`{Object} 运行配置项
  - `delay` {number} 延迟执行的毫秒数，默认为0
  - `loopTimes` {number} 循环运行次数，默认为1。0为无限循环。
  - `interval` {number} 循环运行时两次运行之间的时间间隔，默认为0
  - `path` {Array} | {string} 指定脚本运行的目录。这些路径会用于require时寻找模块文件。

##### 在新脚本环境中运行脚本script。返回一个ScriptExectuion对象。

所谓新的脚本环境，指定是，脚本中的变量和原脚本的变量是不共享的，并且，脚本会在新的线程中运行。

最简单的例子如下：

```
engines.execScript("hello world", "toast('hello world')");
```

如果要循环运行，则：

```
//每隔3秒运行一次脚本，循环10次
engines.execScript("hello world", "toast('hello world')", {
    loopTimes: 10,
    interval: 3000
});
```

用字符串来编写脚本非常不方便，可以结合 `Function.toString()`的方法来执行特定函数:

```
function helloWorld(){
    //注意，这里的变量和脚本主体的变量并不共享
    toast("hello world");
}
engines.execScript("hello world", "helloWorld();\n" + helloWorld.toString());
```

如果要传递变量，则可以把这些封装成一个函数：

```
//在新的脚本环境中执行 1 + 2
exec(add, {a: 1, b:2});

function exec(action, args){
    args = args || {};
    var tmp = action.toString();
    var re = /function\s*(\w*)/i;
    var matches = re.exec(tmp);//方法名
    var name=matches[1];
    engines.execScript(name, name + "(" + JSON.stringify(args) + ");\n" + action.toString());
}

// var tmp = ddd.toString();
// var re = /function\s*(\w*)/i;
// var matches = re.exec(tmp);//方法名
// var name=matches[1];
// log(name)


//要执行的函数，是一个简单的加法
function ddd(args){
    toast(args.a + args.b);
}
```



# 2、在脚本引擎中运行js文件



## engines.execScriptFile(path[, config\])

- `path` {string} 要运行的脚本路径。
- `config`{Object} 运行配置项
  - `delay` {number} 延迟执行的毫秒数，默认为0
  - `loopTimes` {number} 循环运行次数，默认为1。0为无限循环。
  - `interval` {number} 循环运行时两次运行之间的时间间隔，默认为0
  - `path` {Array} | {string} 指定脚本运行的目录。这些路径会用于require时寻找模块文件。

在新的脚本环境中运行脚本文件path。返回一个[ScriptExecution](https://hyb1996.github.io/AutoJs-Docs/#/engines?id=scriptexecution)对象。

```
engines.execScriptFile("/sdcard/脚本/1.js");
```



# 3、在脚本引擎中运行录制的脚本文件



## engines.execAutoFile(path[, config\])

- `path` {string} 要运行的录制文件路径。
- `config`{Object} 运行配置项
  - `delay` {number} 延迟执行的毫秒数，默认为0
  - `loopTimes` {number} 循环运行次数，默认为1。0为无限循环。
  - `interval` {number} 循环运行时两次运行之间的时间间隔，默认为0
  - `path` {Array} | {string} 指定脚本运行的目录。这些路径会用于require时寻找模块文件。

在新的脚本环境中运行录制文件path。返回一个ScriptExecution对象。

```
engines.execAutoFile("/sdcard/脚本/1.auto");
```



# 4、脚本引擎控制方法



## engines.stopAll()

- ##### 停止所有正在运行的脚本。包括当前脚本自身



## engines.stopAllAndToast()

- ##### 停止所有正在运行的脚本并显示停止的脚本数量。包括当前脚本自身。



## engines.myEngine()

- ##### 返回当前脚本的脚本引擎对象(ScriptEngine）

##### ScriptExecution  执行对象

##### ScriptEngine        引擎对象



## engines.all()

- ##### 返回当前所有正在运行的脚本的脚本引擎对象ScriptEngine的数组。

### 

# 5、脚本执行对象--ScriptExecution

执行脚本时返回的对象，可以通过他获取执行的引擎、配置等，也可以停止这个执行。

要停止这个脚本的执行，使用`ScriptExecution.getEngine().forceStop()`



## ScriptExecution.getEngine()

- ##### 返回执行该脚本的脚本引擎对象(ScriptEngine)



## ScriptExecution.getConfig()

- ##### 返回该脚本的运行配置(ScriptConfig)



# 6、脚本引擎对象--ScriptEngine



## ScriptEngine.forceStop()

- ##### 停止脚本引擎的执行



## ScriptEngine.cwd()

- ##### 返回脚本执行的路径。对于一个脚本文件而言为这个脚本所在的文件夹；

- ##### 对于其他脚本，例如字符串脚本，则为`null`或者执行时的设置值。



## ScriptEngine.getSource()

- ##### 返回当前脚本引擎正在执行的脚本对象。

- ##### 返回脚本路径



# 7、脚本引擎之间的通信



## ScriptEngine.emit(eventName[, ...args\])

- `eventName` {string} 事件名称
- `...args` {any} 事件参数

向该脚本引擎发送一个事件，该事件可以在该脚本引擎对应的脚本的events模块监听到并在脚本主线程执行事件处理。

```js
例如脚本receiver.js的内容如下：

//监听say事件
events.on("say", function(words){
    toastLog(words);
});

//保持脚本运行
setInterval(()=>{}, 1000);
```

```js
//运行脚本
var e = engines.execScriptFile("./receiver.js");

//等待脚本启动
sleep(2000);

//向该脚本发送事件
e.getEngine().emit("say", "你好");
```



# 8、脚本引擎配置--ScriptConfig



## delay

- ##### 延迟执行的毫秒数



## interval

- ##### 循环运行时两次运行之间的时间间隔



## loopTimes

- ##### 循环运行次数



## getPath()

- ##### 返回一个字符串数组表示脚本运行时模块寻找的路径







# 一般全局函数 - Globals



# 1、常用的全局函数



## sleep(n)

- ##### 暂停运行n毫秒的时间。1秒等于1000毫秒。



## toast(message)

- ##### 以气泡显示信息message几秒。(具体时间取决于安卓系统，一般都是2秒)

```js
//保证每次显示完成

var _toast_ = toast;
toast = function(message){
  _toast_(message);
  sleep(2000);
}
for(var i = 0; i < 100; i++){
  toast(i);
}
```



## log(message)

- ##### 在控制台调试输出信息



## toastLog(message)

- ##### 在控制台和气泡中同时输出信息



## exit()

- ##### 立即停止脚本运行。









# 2、返回当前监测包名和Activity



## currentPackage()

- ##### 返回最近一次监测到的正在运行的应用的包名，一般可以认为就是当前正在运行的应用的包名。



## currentActivity()

- ##### 返回最近一次监测到的正在运行的Activity的名称，一般可以认为就是当前正在运行的Activity的名称。













# 3、等待包名和Activity的出现



## waitForActivity(activity[, period = 200\])

- `activity` Activity名称
- `period` 轮询等待间隔（毫秒）

等待指定的Activity出现，period为检查Activity的间隔。



## waitForPackage(package[, period = 200\])

- `package` 包名
- `period` 轮询等待间隔（毫秒）

等待指定的应用出现。例如`waitForPackage("com.tencent.mm")`为等待当前界面为微信。









# 4、剪切板：实现复制粘贴功能





## setClip(text)

- ##### 设置剪贴板内容。此剪贴板即系统剪贴板，在一般应用的输入框中"粘贴"既可使用。



## getClip()

- ##### 返回系统剪贴板的内容。



## paste()

- ##### 粘贴







# 5、获取随机数



## random()

- ##### 返回在[0, 1)的随机浮点数。



## random(min, max)

- ##### 返回一个在[min...max]之间的随机数。例如random(0, 2)可能产生0, 1, 2。





# 6、适配安卓版本和Autojs版本



## requiresApi(api)

- 表示此脚本需要Android API版本达到指定版本才能运行。例如`requiresApi(19)`表示脚本需要在Android 4.4以及以上运行。

- 调用该函数时会判断运行脚本的设备系统的版本号，如果没有达到要求则抛出异常。

  ```
  平台版本： API级别
  
  Android 7.0： 24
  
  Android 6.0： 23
  
  Android 5.1： 22
  
  Android 5.0： 21
  
  Android 4.4W： 20
  
  Android 4.4： 19
  
  Android 4.3： 18
  ```

  

## requiresAutojsVersion(version)

- `version` {string} | {number} Auto.js的版本或版本号
- 表示此脚本需要Auto.js版本达到指定版本才能运行。例如`requiresAutojsVersion("3.0.0 Beta")`表示脚本需要在Auto.js 3.0.0 Beta以及以上运行
- 调用该函数时会判断运行脚本的Auto.js的版本号，如果没有达到要求则抛出异常。

- 可以通过`app.autojs.versionCode`和`app.autojs.versionName`获取当前的Auto.js版本号和版本。











# 控制台 - Console



# 1、控制台的常用命令



## console.show()

- 显示控制台。这会显示一个控制台的悬浮窗(需要悬浮窗权限)。



## console.hide()

- 隐藏控制台悬浮窗。



## console.clear()

- 清空控制台。







# 2、控制台输出信息的几种方式



## console.log([data\][, ...args])

- `data` {any}
- `...args` {any}

打印到控制台，并带上换行符。 可以传入多个参数

该函数也可以作为全局函数使用。



## console.trace([data\][, ...args])

- `data` {any}
- `...args` {any}

与console.log类似，同时会打印出调用这个函数所在的调用栈信息（即当前运行的文件、行数等信息）。

```js
console.trace('Show me');
// 打印: (堆栈跟踪会根据被调用的跟踪的位置而变化)
// Show me
//  at <test>:7
```



## print(text[, ...args])

- text {string} | {Object} 要打印到控制台的信息

相当于`log(text)`。











# 3、控制台信息的输出样式



## console.verbose([data\][, ...args])

- `data` {any}
- `...args` {any}

与console.log类似，但输出结果以灰色字体显示。输出优先级低于log，用于输出观察性质的信息。



## console.info([data\][, ...args])

- `data` {any}
- `...args` {any}

与console.log类似，但输出结果以绿色字体显示。输出优先级高于log, 用于输出重要信息。



## console.warn([data\][, ...args])

- `data` {any}
- `...args` {any}

与console.log类似，但输出结果以蓝色字体显示。输出优先级高于info, 用于输出警告信息。



## console.error([data\][, ...args])

- `data` {any}
- `...args` {any}

与console.log类似，但输出结果以红色字体显示。输出优先级高于warn, 用于输出错误信息。



## console.assert(value, message)

- value {any} 要断言的布尔值
- message {string} value为false时要输出的信息

断言。如果value为false则输出错误信息message并停止脚本运行。

```
var a = 1 + 1;
console.assert(a == 2, "加法出错啦");
```







# 4、控制台计时操作



## console.time([label\])

- `label` {String} 计时器标签，可省略

启动一个定时器，用以计算一个操作的持续时间。 定时器由一个唯一的 `label` 标识。 当调用 `console.timeEnd()` 时，可以使用相同的 `label` 来停止定时器，并以毫秒为单位将持续时间输出到控制台。 重复启动同一个标签的定时器会覆盖之前启动同一标签的定时器。



## console.timeEnd(label)

- `label` {String} 计时器标签

停止之前通过调用 `console.time()` 启动的定时器，并打印结果到控制台。 调用 `console.timeEnd()` 后定时器会被删除。如果不存在标签指定的定时器则会打印 `NaNms`。

```js
console.time('求和');
var sum = 0;
for(let i = 0; i < 100000; i++){
    sum += i;
}
console.timeEnd('求和');
// 打印 求和: xxx ms
```









# 5、控制台输入框（无效）



## console.input(data[, ...args\])

- `data` {any}
- `...args` {any}

与console.log一样输出信息，并在控制台显示输入框等待输入。按控制台的确认按钮后会将输入的字符串用eval计算后返回。

**部分机型可能会有控制台不显示输入框的情况，属于bug。**

例如：

```
var n = console.input("请输入一个数字:"); 
//输入123之后：
toast(n + 1);
//显示124
```



## console.rawInput(data[, ...args\])

- `data` {any}
- `...args` {any}

与console.log一样输出信息，并在控制台显示输入框等待输入。按控制台的确认按钮后会将输入的字符串直接返回。

##### 部分机型可能会有控制台不显示输入框的情况，属于bug。

例如：

```
var n = console.rawInput("请输入一个数字:"); 
//输入123之后：

toast(n + 1);
//显示1231
```



# 6、控制台的大小和位置设置



## console.setSize(w, h)

- `w` {number} 宽度
- `h` {number} 高度

设置控制台的大小，单位像素。

```
console.show();
sleep(2000)
//设置控制台大小为屏幕的四分之一
console.setSize(device.width / 2, device.height / 2);
```



## console.setPosition(x, y)

- `x` {number} 横坐标
- `y` {number} 纵坐标

设置控制台的位置，单位像素。

```
console.show();
console.setPosition(100, 100);
```





# 基于坐标的操作 - CoordinatesBasedAutomation

本章节介绍了一些使用坐标进行点击、滑动的函数。

这些函数有的需要安卓7.0以上，有的需要root权限。

要获取要点击的位置的坐标，可以在开发者选项中开启"指针位置"。

```js
//获取这个控件
var widget = id("xxx").findOne();

//获取其中心位置并点击
click(widget.bounds().centerX(), widget.bounds().centerY());

//如果用root权限则用Tap
```



# 1、设置屏幕的宽度和高度



## setScreenMetrics(width, height)

- width {number} 屏幕宽度，单位像素
- height {number} 屏幕高度，单位像素

设置脚本坐标点击所适合的屏幕宽高。如果脚本运行时，屏幕宽度不一致会自动放缩坐标。

```
例如在1920*1080的设备中，某个操作的代码为

setScreenMetrics(1080, 1920);
click(800, 200);
longClick(300, 500);

那么在其他设备上AutoJs会自动放缩坐标以便脚本仍然有效。例如在540 * 960的屏幕中click(800, 200)实际上会点击位置(400, 100)
```









# 2、免root手机的三种模拟点击方式



## click(x, y)

- 模拟点击坐标(x, y)，并返回是否点击成功。只有在点击执行完成后脚本才继续执行。

  

> 一般而言，只有点击过程(大约150毫秒)中被其他事件中断(例如用户自行点击)才会点击失败。
>
> 使用该函数模拟连续点击时可能有点击速度过慢的问题，这时可以用`press()`函数代替。



## longClick(x, y)

- 模拟长按坐标(x, y), 并返回是否成功。只有在长按执行完成（大约600毫秒）时脚本才会继续执行。



## press(x, y, duration)

- 模拟按住坐标(x, y), 并返回是否成功。只有按住操作执行完成时脚本才会继续执行。











# 3、免root手机的三种模拟滑动方式



## swipe(x1, y1, x2, y2, duration)

- `x1` {number} 滑动的起始坐标的x值
- `y1` {number} 滑动的起始坐标的y值
- `x2` {number} 滑动的结束坐标的x值
- `y2` {number} 滑动的结束坐标的y值
- `duration` {number} 滑动时长，单位毫秒

模拟从坐标(x1, y1)滑动到坐标(x2, y2)，并返回是否成功。只有滑动操作执行完成时脚本才会继续执行。



## gesture(duration, [x1, y1\], [x2, y2], ...)

- `duration` {number} 手势的时长
- [x, y] ... 手势滑动路径的一系列坐标

模拟手势操作。例如`gesture(1000, [0, 0], [500, 500], [500, 1000])`为模拟一个从(0, 0)到(500, 500)到(500, 100)的手势操作，时长为2秒。



## gestures([delay1, duration1, [x1, y1], [x2, y2], ...], [delay2, duration2, [x3, y3], [x4, y4], ...], ...)

同时模拟多个手势。每个手势的参数为[delay, duration, 坐标], delay为延迟多久(毫秒)才执行该手势；duration为手势执行时长；坐标为手势经过的点的坐标。

其中delay参数可以省略，默认为0。

例如手指捏合：

```
gestures([0, 500, [800, 300], [500, 1000]],
         [0, 500, [300, 1500], [500, 1000]]);
```

















# 4、使用root权限模拟点击

RootAutomator是一个使用root权限来模拟触摸的对象，用它可以完成触摸与多点触摸，并且这些动作的执行没有延迟。

一个脚本中最好只存在一个RootAutomator，并且保证脚本结束退出他。可以在exit事件中退出RootAutomator，例如：

```
var ra = new RootAutomator();
events.on('exit', function(){
  ra.exit();
});
//执行一些点击操作
...
```



## RootAutomator.tap(x, y[, id\])

- `x` {number} 横坐标
- `y` {number} 纵坐标
- `id` {number} 多点触摸id，可选，默认为1，可以通过setDefaultId指定。

点击位置(x, y)。其中id是一个整数值，用于区分多点触摸，不同的id表示不同的"手指"，例如：

```
var ra = new RootAutomator();
//让"手指1"点击位置(100, 100)
ra.tap(100, 100, 1);
//让"手指2"点击位置(200, 200);
ra.tap(200, 200, 2);
ra.exit();
```

如果不需要多点触摸，则不需要id这个参数。 多点触摸通常用于手势或游戏操作，例如模拟双指捏合、双指上滑等。

某些情况下可能存在tap点击无反应的情况，这时可以用`RootAutomator.press()`函数代替。



## RootAutomator.press(x, y, duration[, id])

- `x` {number} 横坐标
- `y` {number} 纵坐标
- `duration` {number} 按下时长
- `id` {number} 多点触摸id，可选，默认为1

模拟按下位置(x, y)，时长为duration毫秒。

## RootAutomator.longPress(x, y[, id\])

- `x` {number} 横坐标
- `y` {number} 纵坐标
- `id` {number} 多点触摸id，可选，默认为1

模拟长按位置(x, y)。

以上为简单模拟触摸操作的函数。如果要模拟一些复杂的手势，需要更底层的函数。













# 5、使用root权限模拟滑动（无效果）



## RootAutomator.swipe(x1, x2, y1, y2[, duration, id])

- `x1` {number} 滑动起点横坐标
- `y1` {number} 滑动起点纵坐标
- `x2` {number} 滑动终点横坐标
- `y2` {number} 滑动终点纵坐标
- `duration` {number} 滑动时长，单位毫秒，默认值为300
- `id` {number} 多点触摸id，可选，默认为1

模拟一次从(x1, y1)到(x2, y2)的时间为duration毫秒的滑动。

















# 6、使用root权限实现模拟拖动



## RootAutomator.touchDown(x, y[, id\])

- `x` {number} 横坐标
- `y` {number} 纵坐标
- `id` {number} 多点触摸id，可选，默认为1

模拟手指按下位置(x, y)。

## RootAutomator.touchMove(x, y[, id\])

- `x` {number} 横坐标
- `y` {number} 纵坐标
- `id` {number} 多点触摸id，可选，默认为1

模拟移动手指到位置(x, y)。

## RootAutomator.touchUp([id\])

- `id` {number} 多点触摸id，可选，默认为1

模拟手指弹起。















# 7、使用root权限点击和滑动的简单命令

- 推荐使用`RootAutomator`



## Tap(x, y)

- x, y {number} 要点击的坐标。

点击位置(x, y), 您可以通过"开发者选项"开启指针位置来确定点击坐标。



## Swipe(x1, y1, x2, y2, [duration\])

- x1, y1 {number} 滑动起点的坐标
- x2, y2 {number} 滑动终点的坐标
- duration {number} 滑动动作所用的时间

滑动。从(x1, y1)位置滑动到(x2, y2)位置。





# 设备 - Device

device模块提供了与设备有关的信息与操作，例如获取设备宽高，内存使用率，IMEI，调整设备亮度、音量等。

此模块的部分函数，例如调整音量，需要"修改系统设置"的权限。如果没有该权限，会抛出`SecurityException`并跳转到权限设置界面。



# 1、获取设备信息

```js
device.width
设备屏幕分辨率宽度。例如1080。

device.height
设备屏幕分辨率高度。例如1920。

device.buildId
修订版本号，或者诸如"M4-rc20"的标识。

device.broad
设备的主板型号。

device.brand
与产品或硬件相关的厂商品牌，如"Xiaomi", "Huawei"等。

device.device
设备在工业设计中的名称。

deivce.model
设备型号。

device.product
整个产品的名称。

device.bootloader
设备Bootloader的版本。

device.hardware
设备的硬件名称(来自内核命令行或者/proc)。

device.fingerprint
构建(build)的唯一标识码。

device.serial
硬件序列号。

device.sdkInt
安卓系统API版本。例如安卓4.4的sdkInt为19。

device.incremental

device.release
Android系统版本号。例如"5.0", "7.1.1"。

device.baseOS

device.securityPatch
安全补丁程序级别。

device.codename
开发代号，例如发行版是"REL"。

device.getIMEI()
返回设备的IMEI.

device.getAndroidId()
返回设备的Android ID。
Android ID为一个用16进制字符串表示的64位整数，在设备第一次使用时随机生成，之后不会更改，除非恢复出厂设置。

device.getMacAddress()
返回设备的Mac地址。该函数需要在有WLAN连接的情况下才能获取，否则会返回null。
可能的后续修改：未来可能增加有root权限的情况下通过root权限获取，从而在没有WLAN连接的情况下也能返回正确的Mac地址，因此请勿使用此函数判断WLAN连接。

device.getTotalMem()
返回设备内存总量，单位字节(B)。1MB = 1024 * 1024B。

device.getAvailMem()
返回设备当前可用的内存，单位字节(B)。

device.getBattery()
0.0~100.0的浮点数
返回当前电量百分比。

device.isCharging()
返回设备是否正在充电。
```







## 2、获取并改变设备亮度

### device.getBrightness()

返回当前的(手动)亮度。

### device.getBrightnessMode()

返回当前亮度模式，0为手动亮度，1为自动亮度。

### device.setBrightness(b)

b {number} 亮度，

如果当前是自动亮度模式，该函数不会影响屏幕的亮度。

此函数需要"修改系统设置"的权限。如果没有该权限，会抛出SecurityException并跳转到权限设置界面。

### device.setBrightnessMode(mode)

mode {number} 亮度模式，

0为手动亮度，1为自动亮度
设置当前亮度模式。

此函数需要"修改系统设置"的权限。如果没有该权限，会抛出SecurityException并跳转到权限设置界面。





# 3、获取并改变设备音量

### device.getMusicVolume()

返回当前媒体音量。

### device.getNotificationVolume()

返回当前通知音量。

### device.getAlarmVolume()

返回当前闹钟音量。

### device.getMusicMaxVolume()

返回媒体音量的最大值。

### device.getNotificationMaxVolume()

返回通知音量的最大值。

### device.getAlarmMaxVolume()

返回闹钟音量的最大值。

### device.setMusicVolume(volume)

volume {number} 音量

设置当前媒体音量。

此函数需要"修改系统设置"的权限。如果没有该权限，会抛出SecurityException并跳转到权限设置界面。

### device.setNotificationVolume(volume)

volume {number} 音量

设置当前通知音量。

此函数需要"修改系统设置"的权限。如果没有该权限，会抛出SecurityException并跳转到权限设置界面。

### device.setAlarmVolume(volume)

volume {number} 音量

设置当前闹钟音量。

此函数需要"修改系统设置"的权限。如果没有该权限，会抛出SecurityException并跳转到权限设置界面。













# 4、获取并改变设备屏幕状态



## device.isScreenOn()

- 返回 {boolean}

返回设备屏幕是否是亮着的。如果屏幕亮着，返回`true`; 否则返回`false`。

需要注意的是，类似于vivo xplay系列的息屏时钟不属于"屏幕亮着"的情况，虽然屏幕确实亮着但只能显示时钟而且不可交互，此时`isScreenOn()`也会返回`false`。



## device.wakeUp()

唤醒设备。包括唤醒设备CPU、屏幕等。可以用来点亮屏幕。



## device.wakeUpIfNeeded()

如果屏幕没有点亮，则唤醒设备。



## device.keepScreenOn([timeout\])

- `timeout` {number} 屏幕保持常亮的时间, 单位毫秒。如果不加此参数，则一直保持屏幕常亮。

保持屏幕常亮。

此函数无法阻止用户使用锁屏键等正常关闭屏幕，只能使得设备在无人操作的情况下保持屏幕常亮；

同时，如果此函数调用时屏幕没有点亮，则会唤醒屏幕。

在某些设备上，如果不加参数timeout，只能在Auto.js的界面保持屏幕常亮，在其他界面会自动失效，这是因为设备的省电策略造成的。因此，建议使用比较长的时长来代替"一直保持屏幕常亮"的功能，例如`device.keepScreenOn(3600 * 1000)`。

可以使用`device.cancelKeepingAwake()`来取消屏幕常亮。

```
//一直保持屏幕常亮
device.keepScreenOn()
```



## device.keepScreenDim([timeout\])

- `timeout` {number} 屏幕保持常亮的时间, 单位毫秒。如果不加此参数，则一直保持屏幕常亮。

保持屏幕常亮，但允许屏幕变暗来节省电量。

此函数可以用于定时脚本唤醒屏幕操作，不需要用户观看屏幕，可以让屏幕变暗来节省电量。

此函数无法阻止用户使用锁屏键等正常关闭屏幕，只能使得设备在无人操作的情况下保持屏幕常亮；

同时，如果此函数调用时屏幕没有点亮，则会唤醒屏幕。

可以使用`device.cancelKeepingAwake()`来取消屏幕常亮。



## device.cancelKeepingAwake()

取消设备保持唤醒状态。

用于取消`device.keepScreenOn()`, `device.keepScreenDim()`等函数设置的屏幕常亮。















# 5、设置设备震动状态

## device.vibrate(millis)

- `millis` {number} 震动时间，单位毫秒

使设备震动一段时间。

```
//震动两秒
device.vibrate(2000);
```



## device.cancelVibration()

如果设备处于震动状态，则取消震动。



# 对话框 - Dialogs



# 1、对话框中的回调和Promise

## alert（str）

```js
alert（"hello"）
```



## confirm（str）

```js
var clear = confirm("要清除所有缓存吗?");
if(clear){
    alert("清除成功!");
}
```

```js
"ui";
//回调的形式
confirm('你确定吗？','这里是要写的内容',function(bool){
    if(bool){
        toast('你点击了确定')
    }else{
        toast('你点击了取消')
    }
})

//Promise形式
confirm("要清除所有缓存吗?")
    .then(clear => {
        if(clear){
          alert("清除成功!");
        }
});
```



# 2、对话框：alert和confirm



## dialogs.alert(title[, content, callback])

- `title` {string} 对话框的标题。
- `content` {string} 可选，对话框的内容。默认为空。
- `callback` {Function} 回调函数，可选。当用户点击确定时被调用,一般用于ui模式。

显示一个只包含“确定”按钮的提示对话框。直至用户点击确定脚本才继续运行。

该函数也可以作为全局函数使用。

```
alert("出现错误~", "出现未知错误，请联系脚本作者”);
```

在ui模式下该函数返回一个`Promise`。例如:

```
"ui";

alert("嘿嘿嘿").then(()=>{
    //当点击确定后会执行这里
    
});
```



## dialogs.confirm(title[, content, callback])

- `title` {string} 对话框的标题。
- `content` {string} 可选，对话框的内容。默认为空。
- `callback` {Function} 回调函数，可选。当用户点击确定时被调用,一般用于ui模式。

显示一个包含“确定”和“取消”按钮的提示对话框。如果用户点击“确定”则返回 `true` ，否则返回 `false` 。

该函数也可以作为全局函数使用。

在ui模式下该函数返回一个`Promise`。例如:

```
"ui";
confirm("确定吗").then(value=>{
    //当点击确定后会执行这里, value为true或false, 表示点击"确定"或"取消"
    
});
```



# 3、对话框：rawInput和input



## dialogs.rawInput(title[, prefill, callback])

- `title` {string} 对话框的标题。
- `prefill` {string} 输入框的初始内容，可选，默认为空。
- `callback` {Function} 回调函数，可选。当用户点击确定时被调用,一般用于ui模式。

显示一个包含输入框的对话框，等待用户输入内容，并在用户点击确定时将输入的字符串返回。如果用户取消了输入，返回null。

该函数也可以作为全局函数使用。

```
var name = rawInput("请输入您的名字", "小明");
alert("您的名字是" + name);
```

在ui模式下该函数返回一个`Promise`。例如:

```
"ui";
rawInput("请输入您的名字", "小明").then(name => {
    alert("您的名字是" + name);
});
```

当然也可以使用回调函数，例如:

```
rawInput("请输入您的名字", "小明", name => {
     alert("您的名字是" + name);
});
```



## dialogs.input(title[, prefill, callback])

等效于 `eval(dialogs.rawInput(title, prefill, callback))`, 该函数和rawInput的区别在于，会把输入的字符串用eval计算一遍再返回，返回的可能不是字符串。

可以用该函数输入数字、数组等。例如：

```
var age = dialogs.input("请输入您的年龄", "18");

// new Date().getYear() + 1900 可获取当前年份

var year = new Date().getYear() + 1900 - age;

alert("您的出生年份是" + year);
```

在ui模式下该函数返回一个`Promise`。例如:

```
"ui";
dialogs.input("请输入您的年龄", "18").then(age => {
    var year = new Date().getYear() + 1900 - age;
    alert("您的出生年份是" + year);
});
```



# 4、对话框：选项列表



## dialogs.select(title, items, callback)

- `title` {string} 对话框的标题。
- `items` {Array} 对话框的选项列表，是一个字符串数组。
- `callback` {Function} 回调函数，可选。当用户点击确定时被调用,一般用于ui模式。

显示一个带有选项列表的对话框，等待用户选择，返回用户选择的选项索引(0 ~ item.length - 1)。如果用户取消了选择，返回-1。

```js
var options = ["选项A", "选项B", "选项C", "选项D"]

var i = dialogs.select("请选择一个选项", options);

if(i >= 0){
    toast("您选择的是" + options[i]);
}else{
    toast("您取消了选择");
}
```

在ui模式下该函数返回一个`Promise`。例如:

```js
"ui";

dialogs.select("请选择一个选项", ["选项A", "选项B", "选项C", "选项D"])
    .then(i => {
        toast(i);
});
```



# 5、对话框：单选和多选



## dialogs.singleChoice(title, items[, index, callback])

- `title` {string} 对话框的标题。
- `items` {Array} 对话框的选项列表，是一个字符串数组。
- `index` {number} 对话框的初始选项的位置，默认为0。
- `callback` {Function} 回调函数，可选。当用户点击确定时被调用,一般用于ui模式。

显示一个单选列表对话框，等待用户选择，返回用户选择的选项索引(0 ~ item.length - 1)。如果用户取消了选择，返回-1。



## dialogs.multiChoice(title, items[, indices, callback])

- `title` {string} 对话框的标题。
- `items` {Array} 对话框的选项列表，是一个字符串数组。
- `indices` {Array} 选项列表中初始选中的项目索引的数组，默认为空数组。
- `callback` {Function} 回调函数，可选。当用户点击确定时被调用,一般用于ui模式。

显示一个多选列表对话框，等待用户选择，返回用户选择的选项索引的数组。如果用户取消了选择，返回`[]`。

在ui模式下该函数返回一个`Promise`。



# 对话框 - Dialogs

主讲：**阿涛 QQ/微信：656206105**

**微信公众号：立体空间**

![](dyh.jpg)

# 6、对话框：自定义对话框



## dialogs.build(properties)

- `properties` {Object} 对话框属性，用于配置对话框。
- 返回 {Dialog}

创建一个可自定义的对话框，例如：

```
dialogs.build({
    //对话框标题
    title: "发现新版本",
    //对话框内容
    content: "更新日志: 新增了若干了BUG",
    //确定键内容
    positive: "下载",
    //取消键内容
    negative: "取消",
    //中性键内容
    neutral: "到浏览器下载",
    //勾选框内容
    checkBoxPrompt: "不再提示"
}).show()
```

选项properties可供配置的项目为:

- `title` {string} 对话框标题

- `titleColor` {string} | {number} 对话框标题的颜色

- `buttonRippleColor` {string} | {number} 对话框按钮的波纹效果颜色

- `icon` {string} | {Image} 对话框的图标，是一个URL或者图片对象

- `content` {string} 对话框文字内容

- `contentColor`{string} | {number} 对话框文字内容的颜色

- `contentLineSpacing`{number} 对话框文字内容的行高倍数，1.0为一倍行高

- `items` {Array} 对话框列表的选项

- `itemsColor` {string} | {number} 对话框列表的选项的文字颜色

- ```
  itemsSelectMode
  ```

  {string} 对话框列表的选项选择模式，可以为:

  - `select` 普通选择模式
  - `single` 单选模式
  - `multi` 多选模式

- `itemsSelectedIndex` {number} | {Array} 对话框列表中预先选中的项目索引，如果是单选模式为一个索引；多选模式则为数组

- `positive` {string} 对话框确定按钮的文字内容(最右边按钮)

- `positiveColor` {string} | {number} 对话框确定按钮的文字颜色(最右边按钮)

- `neutral` {string} 对话框中立按钮的文字内容(最左边按钮)

- `neutralColor` {string} | {number} 对话框中立按钮的文字颜色(最左边按钮)

- `negative` {string} 对话框取消按钮的文字内容(确定按钮左边的按钮)

- `negativeColor` {string} | {number} 对话框取消按钮的文字颜色(确定按钮左边的按钮)

- `checkBoxPrompt` {string} 勾选框文字内容

- `checkBoxChecked` {boolean} 勾选框是否勾选

- ```
  progress
  ```

  {Object} 配置对话框进度条的对象：

  - `max` {number} 进度条的最大值，如果为-1则为无限循环的进度条
  - `horizontal` {boolean} 如果为true, 则对话框无限循环的进度条为水平进度条
  - `showMinMax` {boolean} 是否显示进度条的最大值和最小值

- `cancelable` {boolean} 对话框是否可取消，如果为false，则对话框只能用代码手动取消

- `canceledOnTouchOutside` {boolean} 对话框是否在点击对话框以外区域时自动取消，默认为true

- `inputHint` {string} 对话框的输入框的输入提示

- `inputPrefill` {string} 对话框输入框的默认输入内容

通过这些选项可以自定义一个对话框，并通过监听返回的Dialog对象的按键、输入事件来实现交互。



# 7、对话框事件：显示和消失事件



## 事件: show

- `dialog` {Dialog} 对话框

对话框显示时会触发的事件。例如：

```
dialogs.build({
    title: "标题"
}).on("show", (dialog)=>{
    toast("对话框显示了");
}).show();
```



## 事件: dismiss

- `dialog` {Dialog} 对话框

对话框消失时会触发的事件。对话框被取消或者手动调用`dialog.dismiss()`函数都会触发该事件。例如：

```
var d = dialogs.build({
    title: "标题",
    positive: "确定",
    negative: "取消"
}).on("dismiss", (dialog)=>{
    toast("对话框消失了");
}).show();

setTimeout(()=>{
    d.dismiss();
}, 5000);
```



# 8、对话框事件：按钮事件



## 事件: positive

- `dialog` {Dialog} 对话框

确定按钮按下时触发的事件。例如：

```
var d = dialogs.build({
    title: "标题",
    positive: "确定",
    negative: "取消"
}).on("positive", (dialog)=>{
    toast("你点击了确定");
}).show();
```



## 事件: negative

- `dialog` {Dialog} 对话框

取消按钮按下时触发的事件。例如：

```
var d = dialogs.build({
    title: "标题",
    positive: "确定",
    negative: "取消"
}).on("negative", (dialog)=>{
    toast("你点击了取消");
}).show();
```



## 事件: cancel

- `dialog` {Dialog} 对话框

对话框被取消时会触发的事件。一个对话框可能按取消按钮、返回键取消或者点击对话框以外区域取消。例如：

```
dialogs.build({
    title: "标题",
    positive: "确定",
    negative: "取消"
}).on("cancel", (dialog)=>{
    toast("对话框取消了");
}).show();
```



## 事件: neutral

- `dialog` {Dialog} 对话框

中性按钮按下时触发的事件。例如：

```
var d = dialogs.build({
    title: "标题",
    positive: "确定",
    negative: "取消",
    neutral: "稍后提示"
}).on("positive", (dialog)=>{
    toast("你点击了稍后提示");
}).show();
```



## 事件: any

- `dialog` {Dialog} 对话框
- action {string} 被点击的按钮，可能的值为:
  - `positive` 确定按钮
  - `negative` 取消按钮
  - `neutral` 中性按钮

任意按钮按下时触发的事件。例如:

```
var d = dialogs.build({
    title: "标题",
    positive: "确定",
    negative: "取消",
    neutral: "稍后提示"
}).on("any", (action, dialog)=>{
    if(action == "positive"){
        toast("你点击了确定");
    }else if(action == "negative"){
        toast("你点击了取消");
    }
}).show();
```



# 9、对话框事件：单选多选事件



## 事件: item_select

- `index` {number} 被选中的项目索引，从0开始
- `item` {Object} 被选中的项目
- `dialog` {Dialog} 对话框

对话框列表(itemsSelectMode为"select")的项目被点击选中时触发的事件。例如：

```
var d = dialogs.build({
    title: "请选择",
    positive: "确定",
    negative: "取消",
    items: ["A", "B", "C", "D"],
    itemsSelectMode: "select"
}).on("item_select", (index, item, dialog)=>{
    toast("您选择的是第" + (index + 1) + "项, 选项为" + item);
}).show();
```



## 事件: single_choice

- `index` {number} 被选中的项目索引，从0开始
- `item` {Object} 被选中的项目
- `dialog` {Dialog} 对话框

对话框单选列表(itemsSelectMode为"singleChoice")的项目被选中并点击确定时触发的事件。例如：

```
dialogs.build({
    title: '这是选择框事件',
    items: ['A','B','C','D'],
    itemsSelectMode: 'single',
    itemsSelectedIndex: 0,
    positive: '确定'
}).on('single_choice',function(index,item,dialog){

    toastLog(index+"----"+item)
    // 3----D

    toastLog("你选择的是第"+(index+1).toString()+"个选项："+item)
}).show()
```



## 事件: multi_choice 【失效】

- `indices` {Array} 被选中的项目的索引的数组
- `items` {Array} 被选中的项目的数组
- `dialog` {Dialog} 对话框

对话框多选列表(itemsSelectMode为"multiChoice")的项目被选中并点击确定时触发的事件。例如：

```
var d = dialogs.build({
    title: "请选择",
    positive: "确定",
    negative: "取消",
    items: ["A", "B", "C", "D"],
    itemsSelectMode: "multiChoice"
}).on("item_select", (indices, items, dialog)=>{
    toast(util.format("您选择的项目为%o, 选项为%o", indices, items);
}).show();
```



# 10、对话框事件：输入事件



## 事件: input

- `text` {string} 输入框的内容
- `dialog` {Dialog} 对话框

带有输入框的对话框当点击确定时会触发的事件。例如：

```
dialogs.build({
    title: "请输入",
    positive: "确定",
    negative: "取消",
    inputPrefill: ""
}).on("input", (text, dialog)=>{
    toast("你输入的是" + text);
}).show();
```



## 事件: input_change

- `text` {string} 输入框的内容
- `dialog` {Dialog} 对话框

对话框的输入框的文本发生变化时会触发的事件。例如：

```
dialogs.build({
    title: "请输入",
    positive: "确定",
    negative: "取消",
    inputPrefill: ""
}).on("input_change", (text, dialog)=>{
    toast("你输入的是" + text);
}).show();
```



# 11、对话框对象方法



## dialog.getProgress()

- 返回 {number}

获取当前进度条的进度值，是一个整数

## dialog.getMaxProgress()

- 返回 {number}

获取当前进度条的最大进度值，是一个整数

## dialog.getActionButton(action)

action {string} 动作，包括:

- `positive`
- `negative`
- `neutral`





# 事件与监听 - Events



# 1、什么是事件与监听

events模块提供了监听手机通知、按键、触摸的接口。您可以用他配合自动操作函数完成自动化工作。

events本身是一个EventEmiiter, 但内置了一些事件、包括按键事件、通知事件、Toast事件等。

需要注意的是，事件的处理是单线程的，并且仍然在原线程执行，如果脚本主体或者其他事件处理中有耗时操作、轮询等，则事件将无法得到及时处理（会进入事件队列等待脚本主体或其他事件处理完成才执行）。例如:

```
auto();

//启用按键监听
events.observeKey();
//监听音量上键按下
events.onKeyDown("volume_up", function(event){
	//这里不会被执行
    toast("音量上键被按下了");
});

while(true){
    //死循环
}
```



# 2、监听按键事件



## events.observeKey()

启用按键监听，例如音量键、Home键。按键监听使用无障碍服务实现，如果无障碍服务未启用会抛出异常并提示开启。

只有这个函数成功执行后, `onKeyDown`, `onKeyUp`等按键事件的监听才有效。

该函数在安卓4.3以上才能使用。



## events.onKeyDown(keyName, listener)

- `keyName` {string} 要监听的按键名称
- `listener` {Function} 按键监听器。参数为一个KeyEvent

注册一个按键监听函数，当有keyName对应的按键被按下会调用该函数。

按键事件中所有可用的按键名称为：

- `volume_up` 音量上键
- `volume_down` 音量下键
- `home` 主屏幕键
- `back` 返回键
- `menu` 菜单键

例如:

```
//启用按键监听
events.observeKey();
//监听音量上键按下
events.onKeyDown("volume_up", function(event){
    toast("音量上键被按下了");
});
//监听菜单键按下
events.onKeyDown("menu", function(event){
    toast("菜单键被按下了");
    exit();
});
```



## events.onKeyUp(keyName, listener)

- `keyName` {string} 要监听的按键名称
- `listener` {Function} 按键监听器。参数为一个KeyEvent。

注册一个按键监听函数，当有keyName对应的按键弹起会调用该函数。

按键事件中所有可用的按键名称为：

- `volume_up` 音量上键
- `volume_down` 音量下键
- `home` 主屏幕键
- `back` 返回键
- `menu` 菜单键

一次完整的按键动作包括了按键按下和弹起。按下事件会在手指按下一个按键的"瞬间"触发, 弹起事件则在手指放开这个按键时触发。

例如:

```
//启用按键监听
events.observeKey();
//监听音量下键弹起
events.onKeyDown("volume_down", function(event){
    toast("音量上键弹起");
});
//监听Home键弹起
events.onKeyDown("home", function(event){
    toast("Home键弹起");
    exit();
});
```



# 3、KeyEvent对象方法



## KeyEvent.getAction()

返回事件的动作。包括：

- `KeyEvent.ACTION_DOWN` 按下事件
- `KeyEvent.ACTION_UP` 弹起事件



## KeyEvent.getKeyCode()

返回按键的键值。包括：

- `KeyEvent.KEYCODE_HOME` 主页键
- `KeyEvent.KEYCODE_BACK` 返回键
- `KeyEvent.KEYCODE_MENU` 菜单键
- `KeyEvent.KEYCODE_VOLUME_UP` 音量上键
- `KeyEvent.KEYCODE_VOLUME_DOWN` 音量下键



## KeyEvent.getEventTime()

- 返回 {number}

返回事件发生的时间戳。



## KeyEvent.getDownTime()

返回最近一次按下事件的时间戳。如果本身是按下事件，则与`getEventTime()`相同。



## KeyEvent.keyCodeToString(keyCode)

把键值转换为字符串。例如24转换为"KEYCODE_HOME"。







# 4、事件：key、key_down、key_up



## 事件: 'key'

- `keyCode` {number} 键值
- `event` {KeyEvent} 事件

当有按键被按下或弹起时会触发该事件。 例如：

```
auto();
events.observeKey();
events.on("key", function(keyCode, event){
    //处理按键事件
});
```

其中监听器的参数KeyCode包括：

- `keys.home` 主页键
- `keys.back` 返回键
- `keys.menu` 菜单键
- `keys.volume_up` 音量上键
- `keys.volume_down` 音量下键

例如：

```
auto();
events.observeKey();
events.on("key", function(keyCode, event){
    if(keyCode == keys.menu && event.getAction() == event.ACTION_UP){
        toast("菜单键按下");
    }
});
```



## 事件: 'key_down'

- `keyCode` {number} 键值
- `event` {KeyEvent} 事件

当有按键被按下时会触发该事件。

```
auto();
events.observeKey();
events.on("key_down", function(keyCode, event){
    //处理按键按下事件
});
```



## 事件: 'key_up'

- `keyCode` {number} 键值
- `event` {KeyEvent} 事件

当有按键弹起时会触发该事件。

```
auto();
events.observeKey();
events.on("key_up", function(keyCode, event){
    //处理按键弹起事件
});
```



# 5、单次监听按键事件



## events.onceKeyDown(keyName, listener)

- `keyName` {string} 要监听的按键名称
- `listener` {Function} 按键监听器。参数为一个KeyEvent

注册一个按键监听函数，当有keyName对应的按键被按下时会调用该函数，之后会注销该按键监听器。

也就是listener只有在onceKeyDown调用后的第一次按键事件被调用一次。



## events.onceKeyUp(keyName, listener)

- `keyName` {string} 要监听的按键名称
- `listener` {Function} 按键监听器。参数为一个KeyEvent

注册一个按键监听函数，当有keyName对应的按键弹起时会调用该函数，之后会注销该按键监听器。

也就是listener只有在onceKeyUp调用后的第一次按键事件被调用一次。



# 6、删除按键事件的监听



## events.removeAllKeyDownListeners(keyName)

- `keyName` {string} 按键名称

删除该按键的KeyDown(按下)事件的所有监听。



## events.removeAllKeyUpListeners(keyName)

- `keyName` {string} 按键名称

删除该按键的KeyUp(弹起)事件的所有监听。









# 7、屏蔽原有按键功能



## events.setKeyInterceptionEnabled([key, ]enabled)

- `enabled` {boolean}
- `key` {string} 要屏蔽的按键

设置按键屏蔽是否启用。所谓按键屏蔽指的是，屏蔽原有按键的功能，例如使得音量键不再能调节音量，但此时仍然能通过按键事件监听按键。

如果不加参数key则会屏蔽所有按键。

例如，调用`events.setKeyInterceptionEnabled(true)`会使系统的音量、Home、返回等键不再具有调节音量、回到主页、返回的作用，但此时仍然能通过按键事件监听按键。

该函数通常于按键监听结合，例如想监听音量键并使音量键按下时不弹出音量调节框则为：

```
events.setKeyInterceptionEnabled("volume_up", true);
events.observeKey();
events.onKeyDown("volume_up", ()=>{
    log("音量上键被按下");
});
```

只要有一个脚本屏蔽了某个按键，该按键便会被屏蔽；当脚本退出时，会自动解除所有按键屏蔽。



# 8、屏幕触摸事件监听（需要root权限）



## events.observeTouch()

启用屏幕触摸监听。（需要root权限）

只有这个函数被成功执行后, 触摸事件的监听才有效。

没有root权限调用该函数则什么也不会发生。



## events.setTouchEventTimeout(timeout)

- `timeout` {number} 两个触摸事件的最小间隔。单位毫秒。默认为10毫秒。如果number小于0，视为0处理。

设置两个触摸事件分发的最小时间间隔。

例如间隔为10毫秒的话，前一个触摸事件发生并被注册的监听器处理后，至少要过10毫秒才能分发和处理下一个触摸事件，这10毫秒之间的触摸将会被忽略。

建议在满足需要的情况下尽量提高这个间隔。一个简单滑动动作可能会连续触发上百个触摸事件，如果timeout设置过低可能造成事件拥堵。强烈建议不要设置timeout为0。



## events.getTouchEventTimeout()

返回触摸事件的最小时间间隔。



## events.onTouch(listener)

- `listener` {Function} 参数为[Point](https://hyb1996.github.io/AutoJs-Docs/#/images.html?id=images_point)的函数

注册一个触摸监听函数。相当于`on("touch", listener)`。

例如:

```
//启用触摸监听
events.observeTouch();
//注册触摸监听器
events.onTouch(function(p){
    //触摸事件发生时, 打印出触摸的点的坐标
    log(p.x + ", " + p.y);
});
```

## events.removeAllTouchListeners()

删除所有事件监听函数。



# 9、通知事件监听：QQ消息、微信消息、推送等通知



## events.observeNotification()

通知监听依赖于通知服务，如果通知服务没有运行，会抛出异常并跳转到通知权限开启界面。（有时即使通知权限已经开启通知服务也没有运行，这时需要关闭权限再重新开启一次）

例如：

```js
events.obvereNotification();
events.onNotification(function(notification){
    log(notification.getText());
});
```



## 事件: 'notification'

- `notification` Notification通知对象

当有应用发出通知时会触发该事件，参数为Notification。

例如：

```js
events.observeNotification();
events.on("notification", function(n){
    log("收到新通知:\n 标题: %s, 内容: %s, \n包名: %s", n.getTitle(), n.getText(), n.getPackageName());
});
```



# 10、Notification对象

通知对象，可以获取通知详情，包括通知标题、内容、发出通知的包名、时间等，也可以对通知进行操作，比如点击、删除。



## Notification.number

- {number}

通知数量。例如QQ连续收到两条消息时number为2。

## Notification.when

- {number}

通知发出时间的时间戳，可以用于构造`Date`对象。例如：

```
events.observeNotification();
events.on("notification", function(n){
    log("通知时间为}" + new Date(n.when));
});
```

## Notification.getPackageName()

- 返回 {string}

获取发出通知的应用包名。

## Notification.getTitle()

- 返回 {string}

获取通知的标题。

## Notification.getText()

- 返回 {string}

获取通知的内容。

## Notification.click()

点击该通知。例如对于一条QQ消息，点击会进入具体的聊天界面。

## Notification.delete()

删除该通知。该通知将从通知栏中消失。



# 11、toast事件监听



## events.observeToast()

开启Toast监听。

Toast监听依赖于无障碍服务，因此此函数会确保无障碍服务运行。



## 事件: 'toast'

- `getText()` 获取Toast的文本内容
- `getPackageName()` 获取发出Toast的应用包名

当有应用发出toast(气泡消息)时会触发该事件。但Auto.js软件本身的toast除外。

例如，要记录发出所有toast的应用：

```
events.observeToast();
events.onToast(function(toast){
    log("Toast内容: " + toast.getText() + " 包名: " + toast.getPackageName());
});
```





# 12、EventEmitter对象



**events本身是一个EventEmiiter, 但内置了一些事件、包括按键事件、通知事件、Toast事件等。**



## events.emitter()

返回一个新的EventEmitter。这个EventEmitter没有内置任何事件。





# 13、EventEmitter对象：设置监听器数量



## EventEmitter.defaultMaxListeners

每个事件默认可以注册最多 10 个监听器。 单个 EventEmitter 实例的限制可以使用 emitter.setMaxListeners(n) 方法改变。

 所有 EventEmitter 实例的默认值可以使用 EventEmitter.defaultMaxListeners 属性改变。

设置 EventEmitter.defaultMaxListeners 要谨慎，因为会影响所有 EventEmitter 实例，包括之前创建的。 因而，调用 emitter.setMaxListeners(n) 优先于 EventEmitter.defaultMaxListeners。

注意，与Node.js不同，**这是一个硬性限制**。 EventEmitter 实例不允许添加更多的监听器，监听器超过最大数量时会抛出TooManyListenersException。



## EventEmitter.getMaxListeners()

返回 EventEmitter 当前的最大监听器限制值，该值可以通过 emitter.setMaxListeners(n) 设置或默认为 EventEmitter.defaultMaxListeners。

## EventEmitter.setMaxListeners(n)

- `n` {number}

默认情况下，如果为特定事件添加了超过 10 个监听器，则 EventEmitter 会打印一个警告。 此限制有助于寻找内存泄露。 但是，并不是所有的事件都要被限为 10 个。 emitter.setMaxListeners() 方法允许修改指定的 EventEmitter 实例的限制。 值设为 Infinity（或 0）表明不限制监听器的数量。

返回一个 EventEmitter 引用，可以链式调用。



```
emitter.setMaxListeners(emitter.getMaxListeners() + 1);
emitter.once('event', () => {
  // 做些操作
  emitter.setMaxListeners(Math.max(emitter.getMaxListeners() - 1, 0));
});
```



# 14、EventEmitter对象：添加监听事件



## EventEmitter.addListener(eventName, listener)

- `eventName` {any}
- `listener` {Function}

emitter.on(eventName, listener) 的别名。



## EventEmitter.on(eventName, listener)

- `eventName` {any} 事件名
- `listener` {Function} 回调函数

添加 listener 函数到名为 eventName 的事件的监听器数组的末尾。 不会检查 listener 是否已被添加。 多次调用并传入相同的 eventName 和 listener 会导致 listener 被添加与调用多次。

```
server.on('connection', (stream) => {
  console.log('有连接！');
});
```

返回一个 EventEmitter 引用，可以链式调用。

默认情况下，事件监听器会按照添加的顺序依次调用。 emitter.prependListener() 方法可用于将事件监听器添加到监听器数组的开头。

```
const myEE = events.emitter();
myEE.on('foo', () => console.log('a'));
myEE.prependListener('foo', () => console.log('b'));
myEE.emit('foo');
// 打印:
//   b
//   a
```



## EventEmitter.once(eventName, listener)

- `eventName` {any} 事件名
- `listener` {Function} 回调函数

添加一个单次 listener 函数到名为 eventName 的事件。 下次触发 eventName 事件时，监听器会被移除，然后调用。

```
server.once('connection', (stream) => {
  console.log('首次调用！');
});
```

返回一个 EventEmitter 引用，可以链式调用。

默认情况下，事件监听器会按照添加的顺序依次调用。 emitter.prependOnceListener() 方法可用于将事件监听器添加到监听器数组的开头。

```
const myEE = events.emitter();
myEE.once('foo', () => console.log('a'));
myEE.prependOnceListener('foo', () => console.log('b'));
myEE.emit('foo');
// 打印:
//   b
//   a
```



# 15、EventEmitter对象：调用监听事件



## EventEmitter.emit(eventName[, ...args])

- `eventName` {any}
- `args` {any}

按监听器的注册顺序，同步地调用每个注册到名为 eventName 事件的监听器，并传入提供的参数。

如果事件有监听器，则返回 true ，否则返回 false。





# 16、EventEmitter对象：获取监听事件



## EventEmitter.eventNames()

返回一个列出触发器已注册监听器的事件的数组。 数组中的值为字符串或符号。

```
const myEE = events.emitter();
myEE.on('foo', () => {});
myEE.on('bar', () => {});

const sym = Symbol('symbol');
myEE.on(sym, () => {});

console.log(myEE.eventNames());
// 打印: [ 'foo', 'bar', Symbol(symbol) ]
```



## EventEmitter.listenerCount(eventName)

- `eventName` {string} 正在被监听的事件名

返回正在监听名为 eventName 的事件的监听器的数量。



## EventEmitter.listeners(eventName)

- `eventName` {string}

返回名为 eventName 的事件的监听器数组的副本。







# 17、EventEmitter对象：添加监听事件到开头



## EventEmitter.prependListener(eventName, listener)

- `eventName` {any} 事件名
- `listener` {Function} 回调函数

添加 listener 函数到名为 eventName 的事件的监听器数组的开头。 不会检查 listener 是否已被添加。 多次调用并传入相同的 eventName 和 listener 会导致 listener 被添加与调用多次。

```
server.prependListener('connection', (stream) => {
  console.log('有连接！');
});
```

返回一个 EventEmitter 引用，可以链式调用。



## EventEmitter.prependOnceListener(eventName, listener)

- `eventName` {any} 事件名
- `listener` {Function} 回调函数

添加一个单次 listener 函数到名为 eventName 的事件的监听器数组的开头。 下次触发 eventName 事件时，监听器会被移除，然后调用。

```
server.prependOnceListener('connection', (stream) => {
  console.log('首次调用！');
});
```

返回一个 EventEmitter 引用，可以链式调用。



# 18、EventEmitter对象：删除事件监听



## EventEmitter.removeAllListeners([eventName])

- `eventName` {any}

移除全部或指定 eventName 的监听器。

注意，在代码中移除其他地方添加的监听器是一个不好的做法，尤其是当 EventEmitter 实例是其他组件或模块创建的。

返回一个 EventEmitter 引用，可以链式调用。

## EventEmitter.removeListener(eventName, listener)（有bug）

- `eventName` {any}
- `listener` {Function}

从名为 eventName 的事件的监听器数组中移除指定的 listener。

```
const callback = (stream) => {
  console.log('有连接！');
};
server.on('connection', callback);
// ...
server.removeListener('connection', callback);
```

removeListener 最多只会从监听器数组里移除一个监听器实例。 如果任何单一的监听器被多次添加到指定 eventName 的监听器数组中，则必须多次调用 removeListener 才能移除每个实例。

注意，一旦一个事件被触发，所有绑定到它的监听器都会按顺序依次触发。 这意味着，在事件触发后、最后一个监听器完成执行前，任何 removeListener() 或 removeAllListeners() 调用都不会从 emit() 中移除它们。 随后的事件会像预期的那样发生。

```
const myEmitter = events.emitter();

const callbackA = () => {
  console.log('A');
  myEmitter.removeListener('event', callbackB);
};

const callbackB = () => {
  console.log('B');
};

myEmitter.on('event', callbackA);

myEmitter.on('event', callbackB);

// callbackA 移除了监听器 callbackB，但它依然会被调用。
// 触发是内部的监听器数组为 [callbackA, callbackB]
myEmitter.emit('event');
// 打印:
//   A
//   B

// callbackB 被移除了。
// 内部监听器数组为 [callbackA]
myEmitter.emit('event');
// 打印:
//   A
```

因为监听器是使用内部数组进行管理的，所以调用它会改变在监听器被移除后注册的任何监听器的位置索引。 

虽然这不会影响监听器的调用顺序，但意味着由 emitter.listeners() 方法返回的监听器数组副本需要被重新创建。

返回一个 EventEmitter 引用，可以链式调用。







# 19、脚本间广播通信

脚本间通信除了使用engines模块提供的`ScriptEngine.emit()`方法以外，也可以使用events模块提供的broadcast广播。

events.broadcast本身是一个EventEmitter，但它的事件是在脚本间共享的，所有脚本都能发送和监听这些事件；事件处理会在脚本主线程执行

例如在一个脚本发送一个广播hello:

```js
events.broadcast.emit("hello", "小明");
```

在其他脚本中监听并处理：

```js
events.broadcast.on("hello", function(name){
    toast("你好, " + name);
});
//保持脚本运行
setInterval(()=>{}, 1000);
```



# 20、获取window窗口信息



## auto.windows

获取当前窗口的集合

```
auto.windows.filter(w => {

	//条件

})
```







# 21、Autojs 8.0Pro版本：监听无障碍事件的API



在以前，Auto.js也一直只能通过无限循环去判断当前界面、寻找控件，这实际上对省电优化十分不友好。

在Pro 8.0.0-3版本，引入了监听无障碍事件的API。

### auto.registerEvents(events)

- `events` {Array} 要监听的事件数组
- 返回 {EventEmitter}

### auto.registerEvent(event, callback)

- `event` {String} 要监听的事件
- `callback` {Function} 事件回调
- 返回 {EventEmitter}

以上两个函数用于监听一个或多个无障碍事件。所谓无障碍事件，即（其他软件）窗口发送变化、控件发送变化时的事件，包括：

- `view_clicked` 控件被点击
- `view_long_clicked` 控件被长按点击
- `view_selected` 控件被选中
- `view_focused` 控件成为焦点
- `view_text_changed` 控件文本改变
- `view_scrolled` 控件被滑动
- `window_state_changed` 窗口状态变化
- `window_content_changed` 窗口内容变化
- `window_changed` 屏幕上显示窗口的变化（增加，删除，子窗口变化等）
- `notification_state_changed` 通知状态变化

例如，我们要监听Auto.js的打开，可以用以下代码监听：

```javascript
// 监听窗口变化
auto.registerEvent('windows_changed', e => {
    // 判断是否有新窗口打开
    if (e.windowChanges[0].indexOf('add') >= 0) {
        // 获取新窗口的id
        let wid = e.windowId;
        // 遍历窗口，获取新窗口
        let window = auto.windows.filter(w => w.id == wid);
        // 判断新窗口是Auto.js
        if (window.length >= 0 && window[0].title == 'Auto.js') {
            toast("Auto.js被打开了！");
        }
    }
});
```



# 22、监听无障碍事件的API：控件被点击

```js
// 监听控件被点击：view_clicked、view_long_clicked
auto.registerEvent('view_clicked', e => {

    log(e)
    
});
```





















# 文件系统 - Files

一次性的文件读写可以直接使用`files.read()`, `files.write()`, `files.append()`等方便的函数

但如果需要频繁读写或随机读写，则使用`open()`函数打开一个文件对象来操作文件，并在操作完毕后调用`close()`函数关闭文件。



## files.isFile(path)

- `path` {string} 路径
- 返回 {boolean}

返回路径path是否是文件。

```
log(files.isDir("/sdcard/文件夹/")); //返回false
log(files.isDir("/sdcard/文件.txt")); //返回true
```



## files.isDir(path)

- `path` {string} 路径
- 返回 {boolean}

返回路径path是否是文件夹。

```
log(files.isDir("/sdcard/文件夹/")); //返回true
log(files.isDir("/sdcard/文件.txt")); //返回false
```



## files.isEmptyDir(path)

- `path` {string} 路径
- 返回 {boolean}

返回文件夹path是否为空文件夹。如果该路径并非文件夹，则直接返回`false`。



## files.join(parent, child)

- `parent` {string} 父目录路径
- `child` {string} 子路径
- 返回 {string}

连接两个路径并返回，例如`files.join("/sdcard/", "1.txt")`返回"/sdcard/1.txt"。



## files.create(path)

- `path` {string} 路径
- 返回 {boolean}

创建一个文件或文件夹并返回是否创建成功。如果文件已经存在，则直接返回`false`。

```
files.create("/sdcard/新文件夹/");
```



## files.createWithDirs(path)

- `path` {string} 路径
- 返回 {boolean}

创建一个文件或文件夹并返回是否创建成功。如果文件所在文件夹不存在，则先创建他所在的一系列文件夹。如果文件已经存在，则直接返回`false`。

```
files.createWithDirs("/sdcard/新文件夹/新文件夹/新文件夹/1.txt");
```



## files.exists(path)

- `path` {string} 路径
- 返回 {boolean}

返回在路径path处的文件是否存在。



## files.ensureDir(path)

- `path` {string} 路径

确保路径path所在的文件夹存在。如果该路径所在文件夹不存在，则创建该文件夹。

例如对于路径"/sdcard/Download/ABC/1.txt"，如果/Download/文件夹不存在，则会先创建Download，再创建ABC文件夹。



## files.read(path[, encoding = "utf-8"])

- `path` {string} 路径
- `encoding` {string} 字符编码，可选，默认为utf-8
- 返回 {string}

读取文本文件path的所有内容并返回。如果文件不存在，则抛出`FileNotFoundException`。

```
log(files.read("/sdcard/1.txt"));
```



## files.readBytes(path)

- `path` {string} 路径
- 返回 {byte[]}

读取文件path的所有内容并返回一个字节数组。如果文件不存在，则抛出`FileNotFoundException`。

注意，该数组是Java的数组，不具有JavaScript数组的forEach, slice等函数。

一个以16进制形式打印文件的例子如下:

```
var data = files.readBytes("/sdcard/1.png");
var sb = new java.lang.StringBuilder();
for(var i = 0; i < data.length; i++){
    sb.append(data[i].toString(16));
}
log(sb.toString());
```



## files.write(path, text[, encoding = "utf-8"])

- `path` {string} 路径
- `text` {string} 要写入的文本内容
- `encoding` {string} 字符编码

把text写入到文件path中。如果文件存在则覆盖，不存在则创建。

```
var text = "文件内容";
//写入文件
files.write("/sdcard/1.txt", text);
//用其他应用查看文件
app.viewFile("/sdcard/1.txt");
```



## files.writeBytes(path, bytes)

- `path` {string} 路径
- `bytes` {byte[]} 字节数组，要写入的二进制数据

把bytes写入到文件path中。如果文件存在则覆盖，不存在则创建。



## files.append(path, text[, encoding = 'utf-8'])

- `path` {string} 路径
- `text` {string} 要写入的文本内容
- `encoding` {string} 字符编码

把text追加到文件path的末尾。如果文件不存在则创建。

```
var text = "追加的文件内容";
files.append("/sdcard/1.txt", text);
files.append("/sdcard/1.txt", text);
//用其他应用查看文件
app.viewFile("/sdcard/1.txt");
```



## files.appendBytes(path, text[, encoding = 'utf-8'])

- `path` {string} 路径
- `bytes` {byte[]} 字节数组，要写入的二进制数据

把bytes追加到文件path的末尾。如果文件不存在则创建。



## files.copy(fromPath, toPath)

- `fromPath` {string} 要复制的原文件路径
- `toPath` {string} 复制到的文件路径
- 返回 {boolean}

复制文件，返回是否复制成功。例如`files.copy("/sdcard/1.txt", "/sdcard/Download/1.txt")`。

## files.move(fromPath, toPath)

- `fromPath` {string} 要移动的原文件路径
- `toPath` {string} 移动到的文件路径
- 返回 {boolean}

移动文件，返回是否移动成功。例如`files.move("/sdcard/1.txt", "/sdcard/Download/1.txt")`会把1.txt文件从sd卡根目录移动到Download文件夹。

## files.rename(path, newName)

- `path` {string} 要重命名的原文件路径
- `newName` {string} 要重命名的新文件名
- 返回 {boolean}

重命名文件，并返回是否重命名成功。例如`files.rename("/sdcard/1.txt", "2.txt")`。



## files.renameWithoutExtension(path, newName)

- `path` {string} 要重命名的原文件路径
- `newName` {string} 要重命名的新文件名
- 返回 {boolean}

重命名文件，不包含拓展名，并返回是否重命名成功。例如`files.rename("/sdcard/1.txt", "2")`会把"1.txt"重命名为"2.txt"。



## files.getName(path)

- `path` {string} 路径
- 返回 {string}

返回文件的文件名。例如`files.getName("/sdcard/1.txt")`返回"1.txt"。

## files.getNameWithoutExtension(path)

- `path` {string} 路径
- 返回 {string}

返回不含拓展名的文件的文件名。例如`files.getName("/sdcard/1.txt")`返回"1"。

## files.getExtension(path)

- `path` {string} 路径
- 返回 {string}

返回文件的拓展名。例如`files.getExtension("/sdcard/1.txt")`返回"txt"。



## files.remove(path）

- `path` {string} 路径
- 返回 {boolean}

删除文件或**空文件夹**，返回是否删除成功。

## files.removeDir(path)

- `path` {string} 路径
- `path` {string} 路径
- 返回 {boolean}

删除文件夹，如果文件夹不为空，则删除该文件夹的所有内容再删除该文件夹，返回是否全部删除成功。

## files.getSdcardPath()

- 返回 {string}

返回SD卡路径。所谓SD卡，即外部存储器。

## files.cwd()

- 返回 {string}

返回脚本的"当前工作文件夹路径"。该路径指的是，如果脚本本身为脚本文件，则返回这个脚本文件所在目录；否则返回`null`获取其他设定路径。

例如，对于脚本文件"/sdcard/脚本/1.js"运行`files.cwd()`返回"/sdcard/脚本/"。

## files.path(relativePath)

- `relativePath` {string} 相对路径
- 返回 {string}

返回相对路径对应的绝对路径。例如`files.path("./1.png")`，如果运行这个语句的脚本位于文件夹"/sdcard/脚本/"中，则返回`"/sdcard/脚本/1.png"`。

## files.listDir(path[, filter])

- `path` {string} 路径
- `filter` {Function} 过滤函数，可选。接收一个`string`参数（文件名），返回一个`boolean`值。

列出文件夹path下的满足条件的文件和文件夹的名称的数组。如果不加filter参数，则返回所有文件和文件夹。

列出sdcard目录下所有文件和文件夹为:

```
var arr = files.listDir("/sdcard/");
log(arr);
```

列出脚本目录下所有js脚本文件为:

```
var dir = "/sdcard/脚本/";
var jsFiles = files.listDir(dir, function(name){
    return name.endsWith(".js") && files.isFile(files.join(dir, name));
});
log(jsFiles);
```



```
是否是文件
是否是文件夹
是否是空的文件夹
合并路径
创建文件夹
创建一系列文件夹
文件是否存在
确保文件夹存在
读取文件
读取文件字节集
写到文件
以字节集写到文件
添加文本到文件末尾
添加字节集到文件末尾
复制
移动
重命名
文件拓展名
删除
路径
文件列表

```




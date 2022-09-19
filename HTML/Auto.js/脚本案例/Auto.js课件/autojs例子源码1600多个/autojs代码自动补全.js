//如果使用免费版的，可以按下面的方法完善代码补全，如果是收费版的，则不用另外设置，这本身就是收费版代码补全的json；
//使用方法： 打开vscode，点击左下角设置图标 > 用户代码片段 > 新建全局代码片段文件 , 在输入框内输入名字后按回车键，清空里面的注释和花括号，把下方的json代码全部复制进去后保存即可。本注释不要复制进去哦。


{
	"app.launchApp_0": {
		"prefix": "app.launchApp",
			"body": [
				"app.launchApp($1)"
			],
				"description": "通过应用名称启动应用。如果该名称对应的应用不存在，则返回false; 否则返回true。如果该名称对应多个应用，则只启动其中某一个。\n\n该函数也可以作为全局函数使用。\n\n    launchApp(\"Auto.js\");"
	},
	"app.launch_1": {
		"prefix": "app.launch",
			"body": [
				"app.launch($1)"
			],
				"description": "通过应用包名启动应用。如果该包名对应的应用不存在，则返回false；否则返回true。\n\n该函数也可以作为全局函数使用。\n\n    //启动微信\n    launch(\"com.tencent.mm\");"
	},
	"app.launchPackage_2": {
		"prefix": "app.launchPackage",
			"body": [
				"app.launchPackage($1)"
			],
				"description": "相当于`app.launch(packageName)`。"
	},
	"app.getPackageName_3": {
		"prefix": "app.getPackageName",
			"body": [
				"app.getPackageName($1)"
			],
				"description": "获取应用名称对应的已安装的应用的包名。如果该找不到该应用，返回null；如果该名称对应多个应用，则只返回其中某一个的包名。\n\n该函数也可以作为全局函数使用。\n\n    var name = getPackageName(\"QQ\"); //返回\"com.tencent.mobileqq\""
	},
	"app.getAppName_4": {
		"prefix": "app.getAppName",
			"body": [
				"app.getAppName($1)"
			],
				"description": "获取应用包名对应的已安装的应用的名称。如果该找不到该应用，返回null。\n\n该函数也可以作为全局函数使用。\n\n    var name = getAppName(\"com.tencent.mobileqq\"); //返回\"QQ\""
	},
	"app.openAppSetting_5": {
		"prefix": "app.openAppSetting",
			"body": [
				"app.openAppSetting($1)"
			],
				"description": "打开应用的详情页(设置页)。如果找不到该应用，返回false; 否则返回true。\n\n该函数也可以作为全局函数使用。"
	},
	"app.viewFile_6": {
		"prefix": "app.viewFile",
			"body": [
				"app.viewFile($1)"
			],
				"description": "用其他应用查看文件。文件不存在的情况由查看文件的应用处理。\n\n如果找不出可以查看该文件的应用，则抛出`ActivityNotException`。\n\n    //查看文本文件\n    app.viewFile(\"/sdcard/1.txt\");"
	},
	"app.editFile_7": {
		"prefix": "app.editFile",
			"body": [
				"app.editFile($1)"
			],
				"description": "用其他应用编辑文件。文件不存在的情况由编辑文件的应用处理。\n\n如果找不出可以编辑该文件的应用，则抛出`ActivityNotException`。\n\n    //编辑文本文件\n    app.editFile(\"/sdcard/1.txt/);"
	},
	"app.uninstall_8": {
		"prefix": "app.uninstall",
			"body": [
				"app.uninstall($1)"
			],
				"description": "卸载应用。执行后会会弹出卸载应用的提示框。如果该包名的应用未安装，由应用卸载程序处理，可能弹出\"未找到应用\"的提示。\n\n    //卸载QQ\n    app.uninstall(\"com.tencent.mobileqq\");"
	},
	"app.openUrl_9": {
		"prefix": "app.openUrl",
			"body": [
				"app.openUrl($1)"
			],
				"description": "用浏览器打开网站url。\n\n如果没有安装浏览器应用，则抛出`ActivityNotException`。"
	},
	"app.sendEmail_10": {
		"prefix": "app.sendEmail",
			"body": [
				"app.sendEmail($1)"
			],
				"description": "根据选项options调用邮箱应用发送邮件。这些选项均是可选的。\n\n如果没有安装邮箱应用，则抛出`ActivityNotException`。\n\n    //发送邮件给10086@qq.com和10001@qq.com。\n    app.sendEmail({\n        email: [\"10086@qq.com\", \"10001@qq.com\"],\n        subject: \"这是一个邮件标题\",\n        text: \"这是邮件正文\"\n    });"
	},
	"app.startActivity_11": {
		"prefix": "app.startActivity",
			"body": [
				"app.startActivity($1)"
			],
				"description": "启动Auto.js的特定界面。该函数在Auto.js内运行则会打开Auto.js内的界面，在打包应用中运行则会打开打包应用的相应界面。\n\n    app.startActivity(\"console\");"
	},
	"app.versionCode_12": {
		"prefix": "app.versionCode",
			"body": [
				"app.versionCode"
			],
				"description": "当前软件版本号，整数值。例如160, 256等。\n\n如果在Auto.js中运行则为Auto.js的版本号；在打包的软件中则为打包软件的版本号。\n\n    toastLog(app.versionCode);"
	},
	"app.versionName_13": {
		"prefix": "app.versionName",
			"body": [
				"app.versionName"
			],
				"description": "当前软件的版本名称，例如\"3.0.0 Beta\"。\n\n如果在Auto.js中运行则为Auto.js的版本名称；在打包的软件中则为打包软件的版本名称。\n\n    toastLog(app.verionName);"
	},
	"进阶:_意图intent.intent_14": {
		"prefix": "进阶:_意图intent.intent",
			"body": [
				"进阶:_意图intent.intent($1)"
			],
				"description": "根据选项，构造一个意图Intent对象。\n\n例如：\n\n    //打开应用来查看图片文件\n    var i = app.intent({\n        action: \"VIEW\",\n        type: \"image/png\",\n        data: \"file:///sdcard/1.png\"\n    });\n    context.startActivity(i);\n    \n\n需要注意的是，除非应用专门暴露Activity出来，否则在没有root权限的情况下使用intent是无法跳转到特定Activity、应用的特定界面的。例如我们能通过Intent跳转到QQ的分享界面，是因为QQ对外暴露了分享的Activity；而在没有root权限的情况下，我们无法通过intent跳转到QQ的设置界面，因为QQ并没有暴露这个Activity。\n\n但如果有root权限，则在intent的参数加上`\"root\": true`即可。例如使用root权限跳转到Auto.js的设置界面为：\n\n    app.startActivity({\n        packageName: \"org.autojs.autojs\",\n        className: \"org.autojs.autojs.ui.settings.SettingsActivity_\",\n        root: true\n    });\n    \n\n另外，关于intent的参数如何获取的问题，一些intent是意外发现并且在网络中传播的（例如跳转QQ聊天窗口是因为QQ给网页提供了跳转到客服QQ的方法），如果要自己获取活动的intent的参数，可以通过例如\"intent记录\"，\"隐式启动\"等应用拦截内部intent或者查询暴露的intent。其中拦截内部intent需要XPosed框架，或者可以通过反编译等手段获取参数。总之，没有简单直接的方法。\n\n更多信息，请百度[安卓Intent](https://www.baidu.com/s?wd=android%20Intent)或参考[Android指南: Intent](https://developer.android.com/guide/components/intents-filters.html#Types)。"
	},
	"进阶:_意图intent.startActivity_15": {
		"prefix": "进阶:_意图intent.startActivity",
			"body": [
				"进阶:_意图intent.startActivity($1)"
			],
				"description": "根据选项构造一个Intent，并启动该Activity。\n\n    app.startActivity({\n        action: \"SEND\",\n        type: \"text/plain\",\n        data: \"file:///sdcard/1.txt\"\n    });"
	},
	"进阶:_意图intent.sendBroadcast_16": {
		"prefix": "进阶:_意图intent.sendBroadcast",
			"body": [
				"进阶:_意图intent.sendBroadcast($1)"
			],
				"description": "根据选项构造一个Intent，并发送该广播。"
	},
	"进阶:_意图intent.startService_17": {
		"prefix": "进阶:_意图intent.startService",
			"body": [
				"进阶:_意图intent.startService($1)"
			],
				"description": "根据选项构造一个Intent，并启动该服务。"
	},
	"进阶:_意图intent.sendBroadcast_18": {
		"prefix": "进阶:_意图intent.sendBroadcast",
			"body": [
				"进阶:_意图intent.sendBroadcast($1)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `name` {string} 特定的广播名称，包括：\n    *   `inspect_layout_hierarchy` 布局层次分析\n    *   `inspect_layout_bounds` 布局范围\n\n发送以上特定名称的广播可以触发Auto.js的布局分析，方便脚本调试。这些广播在Auto.js发送才有效，在打包的脚本上运行将没有任何效果。\n\n    app.sendBroadcast(\"inspect_layout_bounds\");"
	},
	"进阶:_意图intent.intentToShell_19": {
		"prefix": "进阶:_意图intent.intentToShell",
			"body": [
				"进阶:_意图intent.intentToShell($1)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `options` {Object} 选项\n\n根据选项构造一个Intent，转换为对应的shell的intent命令的参数。\n\n例如:\n\n    shell(\"am start \" + app.intentToShell({\n        packageName: \"org.autojs.autojs\",\n        className: \"org.autojs.autojs.ui.settings.SettingsActivity_\"\n    }), true);\n    \n\n参见[intent参数的规范](https://developer.android.com/studio/command-line/adb#IntentSpec)。"
	},
	"进阶:_意图intent.parseUri_20": {
		"prefix": "进阶:_意图intent.parseUri",
			"body": [
				"进阶:_意图intent.parseUri($1)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `uri` {string} 一个代表Uri的字符串，例如\"file:///sdcard/1.txt\", \"[https://www.autojs.org](https://www.autojs.org)\"\n*   返回 {Uri} 一个代表Uri的对象，参见[android.net.Uri](https://developer.android.com/reference/android/net/Uri)。\n\n解析uri字符串并返回相应的Uri对象。即使Uri格式错误，该函数也会返回一个Uri对象，但之后如果访问该对象的scheme, path等值可能因解析失败而返回`null`。\n\n需要注意的是，在高版本Android上，由于系统限制直接在Uri暴露文件的绝对路径，因此如果uri字符串是文件`file://...`，返回的Uri会是诸如`content://...`的形式。"
	},
	"进阶:_意图intent.getUriForFile_21": {
		"prefix": "进阶:_意图intent.getUriForFile",
			"body": [
				"进阶:_意图intent.getUriForFile($1)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `path` {string} 文件路径，例如\"/sdcard/1.txt\"\n*   返回 {Uri} 一个指向该文件的Uri的对象，参见[android.net.Uri](https://developer.android.com/reference/android/net/Uri)。\n\n从一个文件路径创建一个uri对象。需要注意的是，在高版本Android上，由于系统限制直接在Uri暴露文件的绝对路径，因此返回的Uri会是诸如`content://...`的形式。"
	},
	"canvas.drawARGB_0": {
		"prefix": "canvas.drawARGB",
			"body": [
				"canvas.drawARGB($1, $2, $3, $4)"
			],
				"description": ""
	},
	"canvas.draw_1": {
		"prefix": "canvas.draw",
			"body": [
				"canvas.draw"
			],
				"description": ""
	},
	"console.show_0": {
		"prefix": "console.show",
			"body": [
				"console.show()"
			],
				"description": "显示控制台。这会显示一个控制台的悬浮窗(需要悬浮窗权限)。"
	},
	"console.hide_1": {
		"prefix": "console.hide",
			"body": [
				"console.hide()"
			],
				"description": "隐藏控制台悬浮窗。"
	},
	"console.clear_2": {
		"prefix": "console.clear",
			"body": [
				"console.clear()"
			],
				"description": "清空控制台。"
	},
	"console.log_3": {
		"prefix": "console.log",
			"body": [
				"console.log($1, $2)"
			],
				"description": "打印到控制台，并带上换行符。 可以传入多个参数，第一个参数作为主要信息，其他参数作为类似于 [printf(3)](http://man7.org/linux/man-pages/man3/printf.3.html) 中的代替值（参数都会传给 util.format()）。\n\n    const count = 5;\n    console.log('count: %d', count);\n    // 打印: count: 5 到 stdout\n    console.log('count:', count);\n    // 打印: count: 5 到 stdout\n    \n\n详见 util.format()。\n\n该函数也可以作为全局函数使用。"
	},
	"console.verbose_4": {
		"prefix": "console.verbose",
			"body": [
				"console.verbose($1, $2)"
			],
				"description": "与console.log类似，但输出结果以灰色字体显示。输出优先级低于log，用于输出观察性质的信息。"
	},
	"console.info_5": {
		"prefix": "console.info",
			"body": [
				"console.info($1, $2)"
			],
				"description": "与console.log类似，但输出结果以绿色字体显示。输出优先级高于log, 用于输出重要信息。"
	},
	"console.warn_6": {
		"prefix": "console.warn",
			"body": [
				"console.warn($1, $2)"
			],
				"description": "与console.log类似，但输出结果以蓝色字体显示。输出优先级高于info, 用于输出警告信息。"
	},
	"console.error_7": {
		"prefix": "console.error",
			"body": [
				"console.error($1, $2)"
			],
				"description": "与console.log类似，但输出结果以红色字体显示。输出优先级高于warn, 用于输出错误信息。"
	},
	"console.assert_8": {
		"prefix": "console.assert",
			"body": [
				"console.assert($1, $2)"
			],
				"description": "断言。如果value为false则输出错误信息message并停止脚本运行。\n\n    var a = 1 + 1;\n    console.assert(a == 2, \"加法出错啦\");"
	},
	"console.time_9": {
		"prefix": "console.time",
			"body": [
				"console.time($1)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `label` {String} 计时器标签，可省略\n\n启动一个定时器，用以计算一个操作的持续时间。 定时器由一个唯一的 `label` 标识。 当调用 `console.timeEnd()` 时，可以使用相同的 `label` 来停止定时器，并以毫秒为单位将持续时间输出到控制台。 重复启动同一个标签的定时器会覆盖之前启动同一标签的定时器。"
	},
	"console.timeEnd_10": {
		"prefix": "console.timeEnd",
			"body": [
				"console.timeEnd($1)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `label` {String} 计时器标签\n\n停止之前通过调用 `console.time()` 启动的定时器，并打印结果到控制台。 调用 `console.timeEnd()` 后定时器会被删除。如果不存在标签指定的定时器则会打印 `NaNms`。\n\n    console.time('求和');\n    var sum = 0;\n    for(let i = 0; i < 100000; i++){\n        sum += i;\n    }\n    console.timeEnd('求和');\n    // 打印 求和: xxx ms"
	},
	"console.trace_11": {
		"prefix": "console.trace",
			"body": [
				"console.trace($1, $2)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `data` {any}\n*   `...args` {any}\n\n与console.log类似，同时会打印出调用这个函数所在的调用栈信息（即当前运行的文件、行数等信息）。\n\n    console.trace('Show me');\n    // 打印: (堆栈跟踪会根据被调用的跟踪的位置而变化)\n    // Show me\n    //  at <test>:7"
	},
	"console.input_12": {
		"prefix": "console.input",
			"body": [
				"console.input($1, $2)"
			],
				"description": "与console.log一样输出信息，并在控制台显示输入框等待输入。按控制台的确认按钮后会将输入的字符串用eval计算后返回。\n\n**部分机型可能会有控制台不显示输入框的情况，属于bug。**\n\n例如：\n\n    var n = console.input(\"请输入一个数字:\"); \n    //输入123之后：\n    toast(n + 1);\n    //显示124"
	},
	"console.rawInput_13": {
		"prefix": "console.rawInput",
			"body": [
				"console.rawInput($1, $2)"
			],
				"description": "与console.log一样输出信息，并在控制台显示输入框等待输入。按控制台的确认按钮后会将输入的字符串直接返回。\n\n部分机型可能会有控制台不显示输入框的情况，属于bug。\n\n例如：\n\n    var n = console.rawInput(\"请输入一个数字:\"); \n    //输入123之后：\n    toast(n + 1);\n    //显示1231"
	},
	"console.setSize_14": {
		"prefix": "console.setSize",
			"body": [
				"console.setSize($1, $2)"
			],
				"description": "设置控制台的大小，单位像素。\n\n    console.show();\n    //设置控制台大小为屏幕的四分之一\n    console.setSize(device.width / 2, device.height / 2);"
	},
	"console.setPosition_15": {
		"prefix": "console.setPosition",
			"body": [
				"console.setPosition($1, $2)"
			],
				"description": "设置控制台的位置，单位像素。\n\n    console.show();\n    console.setPosition(100, 100);"
	},
	"console.setGlobalLogConfig_16": {
		"prefix": "console.setGlobalLogConfig",
			"body": [
				"console.setGlobalLogConfig($1)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `config` {Object} 日志配置，可选的项有：\n    *   `file` {string} 日志文件路径，将会把日志写入该文件中\n    *   `maxFileSize` {number} 最大文件大小，单位字节，默认为512 \\* 1024 (512KB)\n    *   `rootLevel` {string} 写入的日志级别，默认为\"ALL\"（所有日志），可以为\"OFF\"(关闭), \"DEBUG\", \"INFO\", \"WARN\", \"ERROR\", \"FATAL\"等。\n    *   `maxBackupSize` {number} 日志备份文件最大数量，默认为5\n    *   `filePattern` {string} 日志写入格式，参见[PatternLayout](http://logging.apache.org/log4j/1.2/apidocs/org/apache/log4j/PatternLayout.html)\n\n设置日志保存的路径和配置。例如把日志保存到\"/sdcard/1.txt\":\n\n    console.setGlobalLogConfig({\n        \"file\": \"/sdcard/1.txt\"\n    });\n    \n\n注意该函数会影响所有脚本的日志记录。"
	},
	"console.print_17": {
		"prefix": "console.print",
			"body": [
				"console.print($1)"
			],
				"description": "相当于`log(text)`。"
	},
	"基于坐标的触摸模拟.setScreenMetrics_0": {
		"prefix": "基于坐标的触摸模拟.setScreenMetrics",
			"body": [
				"基于坐标的触摸模拟.setScreenMetrics($1, $2)"
			],
				"description": "设置脚本坐标点击所适合的屏幕宽高。如果脚本运行时，屏幕宽度不一致会自动放缩坐标。\n\n例如在1920\\*1080的设备中，某个操作的代码为\n\n    setScreenMetrics(1080, 1920);\n    click(800, 200);\n    longClick(300, 500);\n    \n\n那么在其他设备上AutoJs会自动放缩坐标以便脚本仍然有效。例如在540 \\* 960的屏幕中`click(800, 200)`实际上会点击位置(400, 100)。"
	},
	"rootautomator.tap_1": {
		"prefix": "rootautomator.tap",
			"body": [
				"rootautomator.tap($1, $2, $3)"
			],
				"description": "点击位置(x, y)。其中id是一个整数值，用于区分多点触摸，不同的id表示不同的\"手指\"，例如：\n\n    var ra = new RootAutomator();\n    //让\"手指1\"点击位置(100, 100)\n    ra.tap(100, 100, 1);\n    //让\"手指2\"点击位置(200, 200);\n    ra.tap(200, 200, 2);\n    ra.exit();\n    \n\n如果不需要多点触摸，则不需要id这个参数。 多点触摸通常用于手势或游戏操作，例如模拟双指捏合、双指上滑等。\n\n某些情况下可能存在tap点击无反应的情况，这时可以用`RootAutomator.press()`函数代替。"
	},
	"rootautomator.swipe_2": {
		"prefix": "rootautomator.swipe",
			"body": [
				"rootautomator.swipe($1, $2, $3, $4, $5, $6)"
			],
				"description": "模拟一次从(x1, y1)到(x2, y2)的时间为duration毫秒的滑动。"
	},
	"rootautomator.press_3": {
		"prefix": "rootautomator.press",
			"body": [
				"rootautomator.press($1, $2, $3, $4)"
			],
				"description": "模拟按下位置(x, y)，时长为duration毫秒。"
	},
	"rootautomator.longPress_4": {
		"prefix": "rootautomator.longPress",
			"body": [
				"rootautomator.longPress($1, $2, $3, $4)"
			],
				"description": "模拟长按位置(x, y)。\n\n以上为简单模拟触摸操作的函数。如果要模拟一些复杂的手势，需要更底层的函数。"
	},
	"rootautomator.touchDown_5": {
		"prefix": "rootautomator.touchDown",
			"body": [
				"rootautomator.touchDown($1, $2, $3)"
			],
				"description": "模拟手指按下位置(x, y)。"
	},
	"rootautomator.touchMove_6": {
		"prefix": "rootautomator.touchMove",
			"body": [
				"rootautomator.touchMove($1, $2, $3)"
			],
				"description": "模拟移动手指到位置(x, y)。"
	},
	"rootautomator.touchUp_7": {
		"prefix": "rootautomator.touchUp",
			"body": [
				"rootautomator.touchUp($1)"
			],
				"description": "模拟手指弹起。"
	},
	"使用root权限点击和滑动的简单命令.Tap_8": {
		"prefix": "使用root权限点击和滑动的简单命令.Tap",
			"body": [
				"使用root权限点击和滑动的简单命令.Tap($1, $2)"
			],
				"description": "点击位置(x, y), 您可以通过\"开发者选项\"开启指针位置来确定点击坐标。"
	},
	"使用root权限点击和滑动的简单命令.Swipe_9": {
		"prefix": "使用root权限点击和滑动的简单命令.Swipe",
			"body": [
				"使用root权限点击和滑动的简单命令.Swipe($1, $2, $3, $4, $5)"
			],
				"description": "滑动。从(x1, y1)位置滑动到(x2, y2)位置。"
	},
	"device.getIMEI_0": {
		"prefix": "device.getIMEI",
			"body": [
				"device.getIMEI($1)"
			],
				"description": "返回设备的IMEI."
	},
	"device.getAndroidId_1": {
		"prefix": "device.getAndroidId",
			"body": [
				"device.getAndroidId($1)"
			],
				"description": "返回设备的Android ID。\n\nAndroid ID为一个用16进制字符串表示的64位整数，在设备第一次使用时随机生成，之后不会更改，除非恢复出厂设置。"
	},
	"device.getMacAddress_2": {
		"prefix": "device.getMacAddress",
			"body": [
				"device.getMacAddress($1)"
			],
				"description": "返回设备的Mac地址。该函数需要在有WLAN连接的情况下才能获取，否则会返回null。\n\n**可能的后续修改**：未来可能增加有root权限的情况下通过root权限获取，从而在没有WLAN连接的情况下也能返回正确的Mac地址，因此请勿使用此函数判断WLAN连接。"
	},
	"device.getBrightness_3": {
		"prefix": "device.getBrightness",
			"body": [
				"device.getBrightness($1)"
			],
				"description": "返回当前的(手动)亮度。范围为0~255。"
	},
	"device.getBrightnessMode_4": {
		"prefix": "device.getBrightnessMode",
			"body": [
				"device.getBrightnessMode($1)"
			],
				"description": "返回当前亮度模式，0为手动亮度，1为自动亮度。"
	},
	"device.setBrightness_5": {
		"prefix": "device.setBrightness",
			"body": [
				"device.setBrightness($1)"
			],
				"description": "设置当前手动亮度。如果当前是自动亮度模式，该函数不会影响屏幕的亮度。\n\n此函数需要\"修改系统设置\"的权限。如果没有该权限，会抛出SecurityException并跳转到权限设置界面。"
	},
	"device.setBrightnessMode_6": {
		"prefix": "device.setBrightnessMode",
			"body": [
				"device.setBrightnessMode($1)"
			],
				"description": "设置当前亮度模式。\n\n此函数需要\"修改系统设置\"的权限。如果没有该权限，会抛出SecurityException并跳转到权限设置界面。"
	},
	"device.getMusicVolume_7": {
		"prefix": "device.getMusicVolume",
			"body": [
				"device.getMusicVolume($1)"
			],
				"description": "返回当前媒体音量。"
	},
	"device.getNotificationVolume_8": {
		"prefix": "device.getNotificationVolume",
			"body": [
				"device.getNotificationVolume($1)"
			],
				"description": "返回当前通知音量。"
	},
	"device.getAlarmVolume_9": {
		"prefix": "device.getAlarmVolume",
			"body": [
				"device.getAlarmVolume($1)"
			],
				"description": "返回当前闹钟音量。"
	},
	"device.getMusicMaxVolume_10": {
		"prefix": "device.getMusicMaxVolume",
			"body": [
				"device.getMusicMaxVolume($1)"
			],
				"description": "返回媒体音量的最大值。"
	},
	"device.getNotificationMaxVolume_11": {
		"prefix": "device.getNotificationMaxVolume",
			"body": [
				"device.getNotificationMaxVolume($1)"
			],
				"description": "返回通知音量的最大值。"
	},
	"device.getAlarmMaxVolume_12": {
		"prefix": "device.getAlarmMaxVolume",
			"body": [
				"device.getAlarmMaxVolume($1)"
			],
				"description": "返回闹钟音量的最大值。"
	},
	"device.setMusicVolume_13": {
		"prefix": "device.setMusicVolume",
			"body": [
				"device.setMusicVolume($1)"
			],
				"description": "设置当前媒体音量。\n\n此函数需要\"修改系统设置\"的权限。如果没有该权限，会抛出SecurityException并跳转到权限设置界面。"
	},
	"device.setNotificationVolume_14": {
		"prefix": "device.setNotificationVolume",
			"body": [
				"device.setNotificationVolume($1)"
			],
				"description": "设置当前通知音量。\n\n此函数需要\"修改系统设置\"的权限。如果没有该权限，会抛出SecurityException并跳转到权限设置界面。"
	},
	"device.setAlarmVolume_15": {
		"prefix": "device.setAlarmVolume",
			"body": [
				"device.setAlarmVolume($1)"
			],
				"description": "设置当前闹钟音量。\n\n此函数需要\"修改系统设置\"的权限。如果没有该权限，会抛出SecurityException并跳转到权限设置界面。"
	},
	"device.getBattery_16": {
		"prefix": "device.getBattery",
			"body": [
				"device.getBattery($1)"
			],
				"description": "返回当前电量百分比。"
	},
	"device.isCharging_17": {
		"prefix": "device.isCharging",
			"body": [
				"device.isCharging($1)"
			],
				"description": "返回设备是否正在充电。"
	},
	"device.getTotalMem_18": {
		"prefix": "device.getTotalMem",
			"body": [
				"device.getTotalMem($1)"
			],
				"description": "返回设备内存总量，单位字节(B)。1MB = 1024 \\* 1024B。"
	},
	"device.getAvailMem_19": {
		"prefix": "device.getAvailMem",
			"body": [
				"device.getAvailMem($1)"
			],
				"description": "返回设备当前可用的内存，单位字节(B)。"
	},
	"device.isScreenOn_20": {
		"prefix": "device.isScreenOn",
			"body": [
				"device.isScreenOn($1)"
			],
				"description": "返回设备屏幕是否是亮着的。如果屏幕亮着，返回`true`; 否则返回`false`。\n\n需要注意的是，类似于vivo xplay系列的息屏时钟不属于\"屏幕亮着\"的情况，虽然屏幕确实亮着但只能显示时钟而且不可交互，此时`isScreenOn()`也会返回`false`。"
	},
	"device.wakeUp_21": {
		"prefix": "device.wakeUp",
			"body": [
				"device.wakeUp()"
			],
				"description": "唤醒设备。包括唤醒设备CPU、屏幕等。可以用来点亮屏幕。"
	},
	"device.wakeUpIfNeeded_22": {
		"prefix": "device.wakeUpIfNeeded",
			"body": [
				"device.wakeUpIfNeeded()"
			],
				"description": "如果屏幕没有点亮，则唤醒设备。"
	},
	"device.keepScreenOn_23": {
		"prefix": "device.keepScreenOn",
			"body": [
				"device.keepScreenOn($1)"
			],
				"description": "保持屏幕常亮。\n\n此函数无法阻止用户使用锁屏键等正常关闭屏幕，只能使得设备在无人操作的情况下保持屏幕常亮；同时，如果此函数调用时屏幕没有点亮，则会唤醒屏幕。\n\n在某些设备上，如果不加参数timeout，只能在Auto.js的界面保持屏幕常亮，在其他界面会自动失效，这是因为设备的省电策略造成的。因此，建议使用比较长的时长来代替\"一直保持屏幕常亮\"的功能，例如`device.keepScreenOn(3600 * 1000)`。\n\n可以使用`device.cancelKeepingAwake()`来取消屏幕常亮。\n\n    //一直保持屏幕常亮\n    device.keepScreenOn()"
	},
	"device.keepScreenDim_24": {
		"prefix": "device.keepScreenDim",
			"body": [
				"device.keepScreenDim($1)"
			],
				"description": "保持屏幕常亮，但允许屏幕变暗来节省电量。此函数可以用于定时脚本唤醒屏幕操作，不需要用户观看屏幕，可以让屏幕变暗来节省电量。\n\n此函数无法阻止用户使用锁屏键等正常关闭屏幕，只能使得设备在无人操作的情况下保持屏幕常亮；同时，如果此函数调用时屏幕没有点亮，则会唤醒屏幕。\n\n可以使用`device.cancelKeepingAwake()`来取消屏幕常亮。"
	},
	"device.cancelKeepingAwake_25": {
		"prefix": "device.cancelKeepingAwake",
			"body": [
				"device.cancelKeepingAwake()"
			],
				"description": "取消设备保持唤醒状态。用于取消`device.keepScreenOn()`, `device.keepScreenDim()`等函数设置的屏幕常亮。"
	},
	"device.vibrate_26": {
		"prefix": "device.vibrate",
			"body": [
				"device.vibrate($1)"
			],
				"description": "使设备震动一段时间。\n\n    //震动两秒\n    device.vibrate(2000);"
	},
	"device.cancelVibration_27": {
		"prefix": "device.cancelVibration",
			"body": [
				"device.cancelVibration()"
			],
				"description": "如果设备处于震动状态，则取消震动。"
	},
	"device.width_28": {
		"prefix": "device.width",
			"body": [
				"device.width"
			],
				"description": "设备屏幕分辨率宽度。例如1080。"
	},
	"device.height_29": {
		"prefix": "device.height",
			"body": [
				"device.height"
			],
				"description": "设备屏幕分辨率高度。例如1920。"
	},
	"device.buildId_30": {
		"prefix": "device.buildId",
			"body": [
				"device.buildId"
			],
				"description": "Either a changelist number, or a label like \"M4-rc20\".\n\n修订版本号，或者诸如\"M4-rc20\"的标识。"
	},
	"device.broad_31": {
		"prefix": "device.broad",
			"body": [
				"device.broad"
			],
				"description": "The name of the underlying board, like \"goldfish\".\n\n设备的主板(?)型号。"
	},
	"device.brand_32": {
		"prefix": "device.brand",
			"body": [
				"device.brand"
			],
				"description": "The consumer-visible brand with which the product/hardware will be associated, if any.\n\n与产品或硬件相关的厂商品牌，如\"Xiaomi\", \"Huawei\"等。"
	},
	"device.device_33": {
		"prefix": "device.device",
			"body": [
				"device.device"
			],
				"description": "The name of the industrial design.\n\n设备在工业设计中的名称。"
	},
	"device.model_34": {
		"prefix": "device.model",
			"body": [
				"device.model"
			],
				"description": "The end-user-visible name for the end product.\n\n设备型号。"
	},
	"device.product_35": {
		"prefix": "device.product",
			"body": [
				"device.product"
			],
				"description": "The name of the overall product.\n\n整个产品的名称。"
	},
	"device.bootloader_36": {
		"prefix": "device.bootloader",
			"body": [
				"device.bootloader"
			],
				"description": "The system bootloader version number.\n\n设备Bootloader的版本。"
	},
	"device.hardware_37": {
		"prefix": "device.hardware",
			"body": [
				"device.hardware"
			],
				"description": "The name of the hardware (from the kernel command line or /proc).\n\n设备的硬件名称(来自内核命令行或者/proc)。"
	},
	"device.fingerprint_38": {
		"prefix": "device.fingerprint",
			"body": [
				"device.fingerprint"
			],
				"description": "A string that uniquely identifies this build. Do not attempt to parse this value.\n\n构建(build)的唯一标识码。"
	},
	"device.serial_39": {
		"prefix": "device.serial",
			"body": [
				"device.serial"
			],
				"description": "A hardware serial number, if available. Alphanumeric only, case-insensitive.\n\n硬件序列号。"
	},
	"device.sdkInt_40": {
		"prefix": "device.sdkInt",
			"body": [
				"device.sdkInt"
			],
				"description": "The user-visible SDK version of the framework; its possible values are defined in Build.VERSION\\_CODES.\n\n安卓系统API版本。例如安卓4.4的sdkInt为19。"
	},
	"device.incremental_41": {
		"prefix": "device.incremental",
			"body": [
				"device.incremental"
			],
				"description": "The internal value used by the underlying source control to represent this build. E.g., a perforce changelist number or a git hash."
	},
	"device.release_42": {
		"prefix": "device.release",
			"body": [
				"device.release"
			],
				"description": "The user-visible version string. E.g., \"1.0\" or \"3.4b5\".\n\nAndroid系统版本号。例如\"5.0\", \"7.1.1\"。"
	},
	"device.baseOS_43": {
		"prefix": "device.baseOS",
			"body": [
				"device.baseOS"
			],
				"description": "The base OS build the product is based on."
	},
	"device.securityPatch_44": {
		"prefix": "device.securityPatch",
			"body": [
				"device.securityPatch"
			],
				"description": "The user-visible security patch level.\n\n安全补丁程序级别。"
	},
	"device.codename_45": {
		"prefix": "device.codename",
			"body": [
				"device.codename"
			],
				"description": "The current development codename, or the string \"REL\" if this is a release build.\n\n开发代号，例如发行版是\"REL\"。"
	},
	"dialogs.alert_0": {
		"prefix": "dialogs.alert",
			"body": [
				"dialogs.alert($1, $2, $3)"
			],
				"description": "显示一个只包含“确定”按钮的提示对话框。直至用户点击确定脚本才继续运行。\n\n该函数也可以作为全局函数使用。\n\n    alert(\"出现错误~\", \"出现未知错误，请联系脚本作者”);\n    \n\n在ui模式下该函数返回一个`Promise`。例如:\n\n    \"ui\";\n    alert(\"嘿嘿嘿\").then(()=>{\n        //当点击确定后会执行这里\n    });"
	},
	"dialogs.confirm_1": {
		"prefix": "dialogs.confirm",
			"body": [
				"dialogs.confirm($1, $2, $3)"
			],
				"description": "显示一个包含“确定”和“取消”按钮的提示对话框。如果用户点击“确定”则返回 `true` ，否则返回 `false` 。\n\n该函数也可以作为全局函数使用。\n\n在ui模式下该函数返回一个`Promise`。例如:\n\n    \"ui\";\n    confirm(\"确定吗\").then(value=>{\n        //当点击确定后会执行这里, value为true或false, 表示点击\"确定\"或\"取消\"\n    });"
	},
	"dialogs.rawInput_2": {
		"prefix": "dialogs.rawInput",
			"body": [
				"dialogs.rawInput($1, $2, $3)"
			],
				"description": "显示一个包含输入框的对话框，等待用户输入内容，并在用户点击确定时将输入的字符串返回。如果用户取消了输入，返回null。\n\n该函数也可以作为全局函数使用。\n\n    var name = rawInput(\"请输入您的名字\", \"小明\");\n    alert(\"您的名字是\" + name);\n    \n\n在ui模式下该函数返回一个`Promise`。例如:\n\n    \"ui\";\n    rawInput(\"请输入您的名字\", \"小明\").then(name => {\n        alert(\"您的名字是\" + name);\n    });\n    \n\n当然也可以使用回调函数，例如:\n\n    rawInput(\"请输入您的名字\", \"小明\", name => {\n         alert(\"您的名字是\" + name);\n    });"
	},
	"dialogs.input_3": {
		"prefix": "dialogs.input",
			"body": [
				"dialogs.input($1, $2, $3)"
			],
				"description": "等效于 `eval(dialogs.rawInput(title, prefill, callback))`, 该函数和rawInput的区别在于，会把输入的字符串用eval计算一遍再返回，返回的可能不是字符串。\n\n可以用该函数输入数字、数组等。例如：\n\n    var age = dialogs.input(\"请输入您的年龄\", \"18\");\n    // new Date().getYear() + 1900 可获取当前年份\n    var year = new Date().getYear() + 1900 - age;\n    alert(\"您的出生年份是\" + year);\n    \n\n在ui模式下该函数返回一个`Promise`。例如:\n\n    \"ui\";\n    dialogs.input(\"请输入您的年龄\", \"18\").then(age => {\n        var year = new Date().getYear() + 1900 - age;\n        alert(\"您的出生年份是\" + year);\n    });"
	},
	"dialogs.prompt_4": {
		"prefix": "dialogs.prompt",
			"body": [
				"dialogs.prompt($1, $2, $3)"
			],
				"description": "相当于 `dialogs.rawInput()`;"
	},
	"dialogs.select_5": {
		"prefix": "dialogs.select",
			"body": [
				"dialogs.select($1, $2, $3)"
			],
				"description": "显示一个带有选项列表的对话框，等待用户选择，返回用户选择的选项索引(0 ~ item.length - 1)。如果用户取消了选择，返回-1。\n\n    var options = [\"选项A\", \"选项B\", \"选项C\", \"选项D\"]\n    var i = dialogs.select(\"请选择一个选项\", options);\n    if(i >= 0){\n        toast(\"您选择的是\" + options[i]);\n    }else{\n        toast(\"您取消了选择\");\n    }\n    \n\n在ui模式下该函数返回一个`Promise`。例如:\n\n    \"ui\";\n    dialogs.select(\"请选择一个选项\", [\"选项A\", \"选项B\", \"选项C\", \"选项D\"])\n        .then(i => {\n            toast(i);\n        });"
	},
	"dialogs.singleChoice_6": {
		"prefix": "dialogs.singleChoice",
			"body": [
				"dialogs.singleChoice($1, $2, $3, $4)"
			],
				"description": "显示一个单选列表对话框，等待用户选择，返回用户选择的选项索引(0 ~ item.length - 1)。如果用户取消了选择，返回-1。\n\n在ui模式下该函数返回一个`Promise`。"
	},
	"dialogs.multiChoice_7": {
		"prefix": "dialogs.multiChoice",
			"body": [
				"dialogs.multiChoice($1, $2, $3, $4)"
			],
				"description": "显示一个多选列表对话框，等待用户选择，返回用户选择的选项索引的数组。如果用户取消了选择，返回`[]`。\n\n在ui模式下该函数返回一个`Promise`。"
	},
	"dialogs.build_8": {
		"prefix": "dialogs.build",
			"body": [
				"dialogs.build($1, $2)"
			],
				"description": "创建一个可自定义的对话框，例如：\n\n    dialogs.build({\n        //对话框标题\n        title: \"发现新版本\",\n        //对话框内容\n        content: \"更新日志: 新增了若干了BUG\",\n        //确定键内容\n        positive: \"下载\",\n        //取消键内容\n        negative: \"取消\",\n        //中性键内容\n        neutral: \"到浏览器下载\",\n        //勾选框内容\n        checkBoxPrompt: \"不再提示\"\n    }).on(\"positive\", ()=>{\n        //监听确定键\n        toast(\"开始下载....\");\n    }).on(\"neutral\", ()=>{\n        //监听中性键\n        app.openUrl(\"https://www.autojs.org\");\n    }).on(\"check\", (checked)=>{\n        //监听勾选框\n        log(checked);\n    }).show();\n    \n\n选项properties可供配置的项目为:\n\n*   `title` {string} 对话框标题\n*   `titleColor` {string} | {number} 对话框标题的颜色\n*   `buttonRippleColor` {string} | {number} 对话框按钮的波纹效果颜色\n*   `icon` {string} | {Image} 对话框的图标，是一个URL或者图片对象\n*   `content` {string} 对话框文字内容\n*   `contentColor`{string} | {number} 对话框文字内容的颜色\n*   `contentLineSpacing`{number} 对话框文字内容的行高倍数，1.0为一倍行高\n*   `items` {Array} 对话框列表的选项\n*   `itemsColor` {string} | {number} 对话框列表的选项的文字颜色\n*   `itemsSelectMode` {string} 对话框列表的选项选择模式，可以为:\n    *   `select` 普通选择模式\n    *   `single` 单选模式\n    *   `multi` 多选模式\n*   `itemsSelectedIndex` {number} | {Array} 对话框列表中预先选中的项目索引，如果是单选模式为一个索引；多选模式则为数组\n*   `positive` {string} 对话框确定按钮的文字内容(最右边按钮)\n*   `positiveColor` {string} | {number} 对话框确定按钮的文字颜色(最右边按钮)\n*   `neutral` {string} 对话框中立按钮的文字内容(最左边按钮)\n*   `neutralColor` {string} | {number} 对话框中立按钮的文字颜色(最左边按钮)\n*   `negative` {string} 对话框取消按钮的文字内容(确定按钮左边的按钮)\n*   `negativeColor` {string} | {number} 对话框取消按钮的文字颜色(确定按钮左边的按钮)\n*   `checkBoxPrompt` {string} 勾选框文字内容\n*   `checkBoxChecked` {boolean} 勾选框是否勾选\n*   `progress` {Object} 配置对话框进度条的对象：\n    *   `max` {number} 进度条的最大值，如果为-1则为无限循环的进度条\n    *   `horizontal` {boolean} 如果为true, 则对话框无限循环的进度条为水平进度条\n    *   `showMinMax` {boolean} 是否显示进度条的最大值和最小值\n*   `cancelable` {boolean} 对话框是否可取消，如果为false，则对话框只能用代码手动取消\n*   `canceledOnTouchOutside` {boolean} 对话框是否在点击对话框以外区域时自动取消，默认为true\n*   `inputHint` {string} 对话框的输入框的输入提示\n*   `inputPrefill` {string} 对话框输入框的默认输入内容\n\n通过这些选项可以自定义一个对话框，并通过监听返回的Dialog对象的按键、输入事件来实现交互。下面是一些例子。\n\n模拟alert对话框：\n\n    dialogs.build({\n        title: \"你好\",\n        content: \"今天也要元气满满哦\",\n        positive: \"好的\"\n    }).show();\n    \n\n模拟confirm对话框:\n\n    dialogs.build({\n        title: \"你好\",\n        content: \"请问你是笨蛋吗?\",\n        positive: \"是的\",\n        negative: \"我是大笨蛋\"\n    }).on(\"positive\", ()=>{\n        alert(\"哈哈哈笨蛋\");\n    }).on(\"negative\", ()=>{\n        alert(\"哈哈哈大笨蛋\");\n    }).show();\n    \n\n模拟单选框:\n\n    dialogs.build({\n        title: \"单选\",\n        items: [\"选项1\", \"选项2\", \"选项3\", \"选项4\"],\n        itemsSelectMode: \"single\",\n        itemsSelectedIndex: 3\n    }).on(\"single_choice\", (index, item)=>{\n        toast(\"您选择的是\" + item);\n    }).show();\n    \n\n\"处理中\"对话框:\n\n    var d = dialogs.build({\n        title: \"下载中...\",\n        progress: {\n            max: -1\n        },\n        cancelable: false\n    }).show();\n    \n    setTimeout(()=>{\n        d.dismiss();\n    }, 3000);\n    \n\n输入对话框:\n\n    dialogs.build({\n        title: \"请输入您的年龄\",\n        inputPrefill: \"18\"\n    }).on(\"input\", (input)=>{\n        var age = parseInt(input);\n        toastLog(age);\n    }).show();\n    \n\n使用这个函数来构造对话框，一个明显的不同是需要使用回调函数而不能像dialogs其他函数一样同步地返回结果；但也可以通过threads模块的方法来实现。例如显示一个输入框并获取输入结果为：\n\n    var input = threads.disposable();\n    dialogas.build({\n        title: \"请输入您的年龄\",\n        inputPrefill: \"18\"\n    }).on(\"input\", text => {\n        input.setAndNotify(text);\n    }).show();\n    var age = parseInt(input.blockedGet());\n    tosatLog(age);"
	},
	"dialog.getProgress_9": {
		"prefix": "dialog.getProgress",
			"body": [
				"dialog.getProgress($1)"
			],
				"description": "获取当前进度条的进度值，是一个整数"
	},
	"dialog.getMaxProgress_10": {
		"prefix": "dialog.getMaxProgress",
			"body": [
				"dialog.getMaxProgress($1)"
			],
				"description": "获取当前进度条的最大进度值，是一个整数"
	},
	"dialog.getActionButton_11": {
		"prefix": "dialog.getActionButton",
			"body": [
				"dialog.getActionButton($1)"
			],
				"description": ""
	},
	"engines.execScript_0": {
		"prefix": "engines.execScript",
			"body": [
				"engines.execScript($1, $2, $3)"
			],
				"description": "在新的脚本环境中运行脚本script。返回一个[ScriptExectuion](#engines_scriptexecution)对象。\n\n所谓新的脚本环境，指定是，脚本中的变量和原脚本的变量是不共享的，并且，脚本会在新的线程中运行。\n\n最简单的例子如下：\n\n    engines.execScript(\"hello world\", \"toast('hello world')\");\n    \n\n如果要循环运行，则：\n\n    //每隔3秒运行一次脚本，循环10次\n    engines.execScript(\"hello world\", \"toast('hello world')\", {\n        loopTimes: 10,\n        interval: 3000\n    });\n    \n\n用字符串来编写脚本非常不方便，可以结合 `Function.toString()`的方法来执行特定函数:\n\n    function helloWorld(){\n        //注意，这里的变量和脚本主体的变量并不共享\n        toast(\"hello world\");\n    }\n    engines.execScript(\"hello world\", \"helloWorld();\\n\" + helloWorld.toString());\n    \n\n如果要传递变量，则可以把这些封装成一个函数：\n\n    function exec(action, args){\n        args = args || {};\n        engines.execScript(action.name, action + \"(\" + JSON.stringify(args) + \");\\n\" + action.toString());\n    }\n    \n    //要执行的函数，是一个简单的加法\n    function add(args){\n        toast(args.a + args.b);\n    }\n    \n    //在新的脚本环境中执行 1 + 2\n    exec(add, {a: 1, b:2});"
	},
	"engines.execScriptFile_1": {
		"prefix": "engines.execScriptFile",
			"body": [
				"engines.execScriptFile($1, $2)"
			],
				"description": "在新的脚本环境中运行脚本文件path。返回一个[ScriptExecution](#ScriptExecution)对象。\n\n    engines.execScriptFile(\"/sdcard/脚本/1.js\");"
	},
	"engines.execAutoFile_2": {
		"prefix": "engines.execAutoFile",
			"body": [
				"engines.execAutoFile($1, $2)"
			],
				"description": "在新的脚本环境中运行录制文件path。返回一个[ScriptExecution](#ScriptExecution)对象。\n\n    engines.execAutoFile(\"/sdcard/脚本/1.auto\");"
	},
	"engines.stopAll_3": {
		"prefix": "engines.stopAll",
			"body": [
				"engines.stopAll()"
			],
				"description": "停止所有正在运行的脚本。包括当前脚本自身。"
	},
	"engines.stopAllAndToast_4": {
		"prefix": "engines.stopAllAndToast",
			"body": [
				"engines.stopAllAndToast()"
			],
				"description": "停止所有正在运行的脚本并显示停止的脚本数量。包括当前脚本自身。"
	},
	"engines.myEngine_5": {
		"prefix": "engines.myEngine",
			"body": [
				"engines.myEngine()"
			],
				"description": "返回当前脚本的脚本引擎对象([ScriptEngine](#engines_scriptengine))\n\n**\\[v4.1.0新增\\]** 特别的，该对象可以通过`execArgv`来获取他的运行参数，包括外部参数、intent等。例如：\n\n    log(engines.myEngine().execArgv);\n    \n\n普通脚本的运行参数通常为空，通过定时任务的广播启动的则可以获取到启动的intent。"
	},
	"engines.all_6": {
		"prefix": "engines.all",
			"body": [
				"engines.all($1)"
			],
				"description": "返回当前所有正在运行的脚本的脚本引擎[ScriptEngine](#engines_scriptengine)的数组。\n\n    log(engines.all());"
	},
	"scriptexecution.getEngine_7": {
		"prefix": "scriptexecution.getEngine",
			"body": [
				"scriptexecution.getEngine()"
			],
				"description": "返回执行该脚本的脚本引擎对象([ScriptEngine](#engines_scriptengine))"
	},
	"scriptexecution.getConfig_8": {
		"prefix": "scriptexecution.getConfig",
			"body": [
				"scriptexecution.getConfig()"
			],
				"description": "返回该脚本的运行配置([ScriptConfig](#engines_scriptconfig))"
	},
	"scriptengine.forceStop_9": {
		"prefix": "scriptengine.forceStop",
			"body": [
				"scriptengine.forceStop()"
			],
				"description": "停止脚本引擎的执行。"
	},
	"scriptengine.cwd_10": {
		"prefix": "scriptengine.cwd",
			"body": [
				"scriptengine.cwd($1)"
			],
				"description": "返回脚本执行的路径。对于一个脚本文件而言为这个脚本所在的文件夹；对于其他脚本，例如字符串脚本，则为`null`或者执行时的设置值。"
	},
	"scriptengine.getSource_11": {
		"prefix": "scriptengine.getSource",
			"body": [
				"scriptengine.getSource($1)"
			],
				"description": "返回当前脚本引擎正在执行的脚本对象。\n\n    log(engines.myEngine().getSource());"
	},
	"scriptengine.emit_12": {
		"prefix": "scriptengine.emit",
			"body": [
				"scriptengine.emit($1, $2)"
			],
				"description": "向该脚本引擎发送一个事件，该事件可以在该脚本引擎对应的脚本的events模块监听到并在脚本主线程执行事件处理。\n\n例如脚本receiver.js的内容如下：\n\n    //监听say事件\n    events.on(\"say\", function(words){\n        toastLog(words);\n    });\n    //保持脚本运行\n    setInterval(()=>{}, 1000);\n    \n\n同一目录另一脚本可以启动他并发送该事件：\n\n    //运行脚本\n    var e = engines.execScriptFile(\"./receiver.js\");\n    //等待脚本启动\n    sleep(2000);\n    //向该脚本发送事件\n    e.getEngine().emit(\"say\", \"你好\");"
	},
	"scriptconfig.getPath_13": {
		"prefix": "scriptconfig.getPath",
			"body": [
				"scriptconfig.getPath($1)"
			],
				"description": "返回一个字符串数组表示脚本运行时模块寻找的路径。"
	},
	"events.emitter_0": {
		"prefix": "events.emitter",
			"body": [
				"events.emitter()"
			],
				"description": "返回一个新的[EventEmitter](#events_eventemitter)。这个EventEmitter没有内置任何事件。"
	},
	"events.observeKey_1": {
		"prefix": "events.observeKey",
			"body": [
				"events.observeKey()"
			],
				"description": "启用按键监听，例如音量键、Home键。按键监听使用无障碍服务实现，如果无障碍服务未启用会抛出异常并提示开启。\n\n只有这个函数成功执行后, `onKeyDown`, `onKeyUp`等按键事件的监听才有效。\n\n该函数在安卓4.3以上才能使用。"
	},
	"events.onKeyDown_2": {
		"prefix": "events.onKeyDown",
			"body": [
				"events.onKeyDown($1, $2)"
			],
				"description": "注册一个按键监听函数，当有keyName对应的按键被按下会调用该函数。可用的按键名称参见[Keys](#events_keys)。\n\n例如:\n\n    //启用按键监听\n    events.observeKey();\n    //监听音量上键按下\n    events.onKeyDown(\"volume_up\", function(event){\n        toast(\"音量上键被按下了\");\n    });\n    //监听菜单键按下\n    events.onKeyDown(\"menu\", function(event){\n        toast(\"菜单键被按下了\");\n        exit();\n    });"
	},
	"events.onKeyUp_3": {
		"prefix": "events.onKeyUp",
			"body": [
				"events.onKeyUp($1, $2)"
			],
				"description": "注册一个按键监听函数，当有keyName对应的按键弹起会调用该函数。可用的按键名称参见[Keys](#events_keys)。\n\n一次完整的按键动作包括了按键按下和弹起。按下事件会在手指按下一个按键的\"瞬间\"触发, 弹起事件则在手指放开这个按键时触发。\n\n例如:\n\n    //启用按键监听\n    events.observeKey();\n    //监听音量下键弹起\n    events.onKeyDown(\"volume_down\", function(event){\n        toast(\"音量上键弹起\");\n    });\n    //监听Home键弹起\n    events.onKeyDown(\"home\", function(event){\n        toast(\"Home键弹起\");\n        exit();\n    });"
	},
	"events.onceKeyDown_4": {
		"prefix": "events.onceKeyDown",
			"body": [
				"events.onceKeyDown($1, $2)"
			],
				"description": "注册一个按键监听函数，当有keyName对应的按键被按下时会调用该函数，之后会注销该按键监听器。\n\n也就是listener只有在onceKeyDown调用后的第一次按键事件被调用一次。"
	},
	"events.onceKeyUp_5": {
		"prefix": "events.onceKeyUp",
			"body": [
				"events.onceKeyUp($1, $2)"
			],
				"description": "注册一个按键监听函数，当有keyName对应的按键弹起时会调用该函数，之后会注销该按键监听器。\n\n也就是listener只有在onceKeyUp调用后的第一次按键事件被调用一次。"
	},
	"events.removeAllKeyDownListeners_6": {
		"prefix": "events.removeAllKeyDownListeners",
			"body": [
				"events.removeAllKeyDownListeners($1)"
			],
				"description": "删除该按键的KeyDown(按下)事件的所有监听。"
	},
	"events.removeAllKeyUpListeners_7": {
		"prefix": "events.removeAllKeyUpListeners",
			"body": [
				"events.removeAllKeyUpListeners($1)"
			],
				"description": "删除该按键的KeyUp(弹起)事件的所有监听。"
	},
	"events.setKeyInterceptionEnabled_8": {
		"prefix": "events.setKeyInterceptionEnabled",
			"body": [
				"events.setKeyInterceptionEnabled($1, $2)"
			],
				"description": "设置按键屏蔽是否启用。所谓按键屏蔽指的是，屏蔽原有按键的功能，例如使得音量键不再能调节音量，但此时仍然能通过按键事件监听按键。\n\n如果不加参数key则会屏蔽所有按键。\n\n例如，调用`events.setKeyInterceptionEnabled(true)`会使系统的音量、Home、返回等键不再具有调节音量、回到主页、返回的作用，但此时仍然能通过按键事件监听按键。\n\n该函数通常于按键监听结合，例如想监听音量键并使音量键按下时不弹出音量调节框则为：\n\n    events.setKeyInterceptionEnabled(\"volume_up\", true);\n    events.observeKey();\n    events.onKeyDown(\"volume_up\", ()=>{\n        log(\"音量上键被按下\");\n    });\n    \n\n只要有一个脚本屏蔽了某个按键，该按键便会被屏蔽；当脚本退出时，会自动解除所有按键屏蔽。"
	},
	"events.observeTouch_9": {
		"prefix": "events.observeTouch",
			"body": [
				"events.observeTouch()"
			],
				"description": "启用屏幕触摸监听。（需要root权限）\n\n只有这个函数被成功执行后, 触摸事件的监听才有效。\n\n没有root权限调用该函数则什么也不会发生。"
	},
	"events.setTouchEventTimeout_10": {
		"prefix": "events.setTouchEventTimeout",
			"body": [
				"events.setTouchEventTimeout($1)"
			],
				"description": "设置两个触摸事件分发的最小时间间隔。\n\n例如间隔为10毫秒的话，前一个触摸事件发生并被注册的监听器处理后，至少要过10毫秒才能分发和处理下一个触摸事件，这10毫秒之间的触摸将会被忽略。\n\n建议在满足需要的情况下尽量提高这个间隔。一个简单滑动动作可能会连续触发上百个触摸事件，如果timeout设置过低可能造成事件拥堵。强烈建议不要设置timeout为0。"
	},
	"events.getTouchEventTimeout_11": {
		"prefix": "events.getTouchEventTimeout",
			"body": [
				"events.getTouchEventTimeout()"
			],
				"description": "返回触摸事件的最小时间间隔。"
	},
	"events.onTouch_12": {
		"prefix": "events.onTouch",
			"body": [
				"events.onTouch($1)"
			],
				"description": "注册一个触摸监听函数。相当于`on(\"touch\", listener)`。\n\n例如:\n\n    //启用触摸监听\n    events.observeTouch();\n    //注册触摸监听器\n    events.onTouch(function(p){\n        //触摸事件发生时, 打印出触摸的点的坐标\n        log(p.x + \", \" + p.y);\n    });"
	},
	"events.removeAllTouchListeners_13": {
		"prefix": "events.removeAllTouchListeners",
			"body": [
				"events.removeAllTouchListeners()"
			],
				"description": "删除所有事件监听函数。"
	},
	"events.observeNotification_14": {
		"prefix": "events.observeNotification",
			"body": [
				"events.observeNotification()"
			],
				"description": "开启通知监听。例如QQ消息、微信消息、推送等通知。\n\n通知监听依赖于通知服务，如果通知服务没有运行，会抛出异常并跳转到通知权限开启界面。（有时即使通知权限已经开启通知服务也没有运行，这时需要关闭权限再重新开启一次）\n\n例如：\n\n    events.obverseNotification();\n    events.onNotification(function(notification){\n        log(notification.getText());\n    });"
	},
	"events.observeToast_15": {
		"prefix": "events.observeToast",
			"body": [
				"events.observeToast()"
			],
				"description": "开启Toast监听。\n\nToast监听依赖于无障碍服务，因此此函数会确保无障碍服务运行。"
	},
	"notification.getPackageName_16": {
		"prefix": "notification.getPackageName",
			"body": [
				"notification.getPackageName($1)"
			],
				"description": "获取发出通知的应用包名。"
	},
	"notification.getTitle_17": {
		"prefix": "notification.getTitle",
			"body": [
				"notification.getTitle($1)"
			],
				"description": "获取通知的标题。"
	},
	"notification.getText_18": {
		"prefix": "notification.getText",
			"body": [
				"notification.getText($1)"
			],
				"description": "获取通知的内容。"
	},
	"notification.click_19": {
		"prefix": "notification.click",
			"body": [
				"notification.click()"
			],
				"description": "点击该通知。例如对于一条QQ消息，点击会进入具体的聊天界面。"
	},
	"notification.delete_20": {
		"prefix": "notification.delete",
			"body": [
				"notification.delete()"
			],
				"description": "删除该通知。该通知将从通知栏中消失。"
	},
	"notification.number_21": {
		"prefix": "notification.number",
			"body": [
				"notification.number"
			],
				"description": "通知数量。例如QQ连续收到两条消息时number为2。"
	},
	"notification.when_22": {
		"prefix": "notification.when",
			"body": [
				"notification.when"
			],
				"description": "通知发出时间的时间戳，可以用于构造`Date`对象。例如：\n\n    events.observeNotification();\n    events.on(\"notification\", function(n){\n        log(\"通知时间为}\" + new Date(n.when));\n    });"
	},
	"keyevent.getAction_23": {
		"prefix": "keyevent.getAction",
			"body": [
				"keyevent.getAction()"
			],
				"description": "返回事件的动作。包括：\n\n*   `KeyEvent.ACTION_DOWN` 按下事件\n*   `KeyEvent.ACTION_UP` 弹起事件"
	},
	"keyevent.getKeyCode_24": {
		"prefix": "keyevent.getKeyCode",
			"body": [
				"keyevent.getKeyCode()"
			],
				"description": "返回按键的键值。包括：\n\n*   `KeyEvent.KEYCODE_HOME` 主页键\n*   `KeyEvent.KEYCODE_BACK` 返回键\n*   `KeyEvent.KEYCODE_MENU` 菜单键\n*   `KeyEvent.KEYCODE_VOLUME_UP` 音量上键\n*   `KeyEvent.KEYCODE_VOLUME_DOWN` 音量下键"
	},
	"keyevent.getEventTime_25": {
		"prefix": "keyevent.getEventTime",
			"body": [
				"keyevent.getEventTime($1)"
			],
				"description": "返回事件发生的时间戳。"
	},
	"keyevent.getDownTime_26": {
		"prefix": "keyevent.getDownTime",
			"body": [
				"keyevent.getDownTime()"
			],
				"description": "返回最近一次按下事件的时间戳。如果本身是按下事件，则与`getEventTime()`相同。"
	},
	"keyevent.keyCodeToString_27": {
		"prefix": "keyevent.keyCodeToString",
			"body": [
				"keyevent.keyCodeToString($1)"
			],
				"description": "把键值转换为字符串。例如KEYCODE\\_HOME转换为\"KEYCODE\\_HOME\"。"
	},
	"eventemitter.addListener_28": {
		"prefix": "eventemitter.addListener",
			"body": [
				"eventemitter.addListener($1, $2)"
			],
				"description": "emitter.on(eventName, listener) 的别名。"
	},
	"eventemitter.emit_29": {
		"prefix": "eventemitter.emit",
			"body": [
				"eventemitter.emit($1, $2)"
			],
				"description": "按监听器的注册顺序，同步地调用每个注册到名为 eventName 事件的监听器，并传入提供的参数。\n\n如果事件有监听器，则返回 true ，否则返回 false。"
	},
	"eventemitter.eventNames_30": {
		"prefix": "eventemitter.eventNames",
			"body": [
				"eventemitter.eventNames()"
			],
				"description": "返回一个列出触发器已注册监听器的事件的数组。 数组中的值为字符串或符号。\n\n    const myEE = events.emitter();\n    myEE.on('foo', () => {});\n    myEE.on('bar', () => {});\n    \n    const sym = Symbol('symbol');\n    myEE.on(sym, () => {});\n    \n    console.log(myEE.eventNames());\n    // 打印: [ 'foo', 'bar', Symbol(symbol) ]"
	},
	"eventemitter.getMaxListeners_31": {
		"prefix": "eventemitter.getMaxListeners",
			"body": [
				"eventemitter.getMaxListeners()"
			],
				"description": "返回 EventEmitter 当前的最大监听器限制值，该值可以通过 emitter.setMaxListeners(n) 设置或默认为 EventEmitter.defaultMaxListeners。"
	},
	"eventemitter.listenerCount_32": {
		"prefix": "eventemitter.listenerCount",
			"body": [
				"eventemitter.listenerCount($1)"
			],
				"description": "返回正在监听名为 eventName 的事件的监听器的数量。"
	},
	"eventemitter.listeners_33": {
		"prefix": "eventemitter.listeners",
			"body": [
				"eventemitter.listeners($1)"
			],
				"description": "返回名为 eventName 的事件的监听器数组的副本。\n\n    server.on('connection', (stream) => {\n      console.log('someone connected!');\n    });\n    console.log(util.inspect(server.listeners('connection')));\n    // 打印: [ [Function] ]"
	},
	"eventemitter.on_34": {
		"prefix": "eventemitter.on",
			"body": [
				"eventemitter.on($1, $2)"
			],
				"description": "添加 listener 函数到名为 eventName 的事件的监听器数组的末尾。 不会检查 listener 是否已被添加。 多次调用并传入相同的 eventName 和 listener 会导致 listener 被添加与调用多次。\n\n    server.on('connection', (stream) => {\n      console.log('有连接！');\n    });\n    \n\n返回一个 EventEmitter 引用，可以链式调用。\n\n默认情况下，事件监听器会按照添加的顺序依次调用。 emitter.prependListener() 方法可用于将事件监听器添加到监听器数组的开头。\n\n    const myEE = events.emitter();\n    myEE.on('foo', () => console.log('a'));\n    myEE.prependListener('foo', () => console.log('b'));\n    myEE.emit('foo');\n    // 打印:\n    //   b\n    //   a"
	},
	"eventemitter.once_35": {
		"prefix": "eventemitter.once",
			"body": [
				"eventemitter.once($1, $2)"
			],
				"description": "添加一个单次 listener 函数到名为 eventName 的事件。 下次触发 eventName 事件时，监听器会被移除，然后调用。\n\n    server.once('connection', (stream) => {\n      console.log('首次调用！');\n    });\n    \n\n返回一个 EventEmitter 引用，可以链式调用。\n\n默认情况下，事件监听器会按照添加的顺序依次调用。 emitter.prependOnceListener() 方法可用于将事件监听器添加到监听器数组的开头。\n\n    const myEE = events.emitter();\n    myEE.once('foo', () => console.log('a'));\n    myEE.prependOnceListener('foo', () => console.log('b'));\n    myEE.emit('foo');\n    // 打印:\n    //   b\n    //   a"
	},
	"eventemitter.prependListener_36": {
		"prefix": "eventemitter.prependListener",
			"body": [
				"eventemitter.prependListener($1, $2)"
			],
				"description": "添加 listener 函数到名为 eventName 的事件的监听器数组的开头。 不会检查 listener 是否已被添加。 多次调用并传入相同的 eventName 和 listener 会导致 listener 被添加与调用多次。\n\n    server.prependListener('connection', (stream) => {\n      console.log('有连接！');\n    });\n    \n\n返回一个 EventEmitter 引用，可以链式调用。"
	},
	"eventemitter.prependOnceListener_37": {
		"prefix": "eventemitter.prependOnceListener",
			"body": [
				"eventemitter.prependOnceListener($1, $2)"
			],
				"description": "添加一个单次 listener 函数到名为 eventName 的事件的监听器数组的开头。 下次触发 eventName 事件时，监听器会被移除，然后调用。\n\n    server.prependOnceListener('connection', (stream) => {\n      console.log('首次调用！');\n    });\n    \n\n返回一个 EventEmitter 引用，可以链式调用。"
	},
	"eventemitter.removeAllListeners_38": {
		"prefix": "eventemitter.removeAllListeners",
			"body": [
				"eventemitter.removeAllListeners($1)"
			],
				"description": "移除全部或指定 eventName 的监听器。\n\n注意，在代码中移除其他地方添加的监听器是一个不好的做法，尤其是当 EventEmitter 实例是其他组件或模块创建的。\n\n返回一个 EventEmitter 引用，可以链式调用。"
	},
	"eventemitter.removeListener_39": {
		"prefix": "eventemitter.removeListener",
			"body": [
				"eventemitter.removeListener($1, $2)"
			],
				"description": "从名为 eventName 的事件的监听器数组中移除指定的 listener。\n\n    const callback = (stream) => {\n      console.log('有连接！');\n    };\n    server.on('connection', callback);\n    // ...\n    server.removeListener('connection', callback);\n    \n\nremoveListener 最多只会从监听器数组里移除一个监听器实例。 如果任何单一的监听器被多次添加到指定 eventName 的监听器数组中，则必须多次调用 removeListener 才能移除每个实例。\n\n注意，一旦一个事件被触发，所有绑定到它的监听器都会按顺序依次触发。 这意味着，在事件触发后、最后一个监听器完成执行前，任何 removeListener() 或 removeAllListeners() 调用都不会从 emit() 中移除它们。 随后的事件会像预期的那样发生。\n\n    const myEmitter = events.emitter();\n    \n    const callbackA = () => {\n      console.log('A');\n      myEmitter.removeListener('event', callbackB);\n    };\n    \n    const callbackB = () => {\n      console.log('B');\n    };\n    \n    myEmitter.on('event', callbackA);\n    \n    myEmitter.on('event', callbackB);\n    \n    // callbackA 移除了监听器 callbackB，但它依然会被调用。\n    // 触发是内部的监听器数组为 [callbackA, callbackB]\n    myEmitter.emit('event');\n    // 打印:\n    //   A\n    //   B\n    \n    // callbackB 被移除了。\n    // 内部监听器数组为 [callbackA]\n    myEmitter.emit('event');\n    // 打印:\n    //   A\n    \n\n因为监听器是使用内部数组进行管理的，所以调用它会改变在监听器被移除后注册的任何监听器的位置索引。 虽然这不会影响监听器的调用顺序，但意味着由 emitter.listeners() 方法返回的监听器数组副本需要被重新创建。\n\n返回一个 EventEmitter 引用，可以链式调用。"
	},
	"eventemitter.setMaxListeners_40": {
		"prefix": "eventemitter.setMaxListeners",
			"body": [
				"eventemitter.setMaxListeners($1)"
			],
				"description": "默认情况下，如果为特定事件添加了超过 10 个监听器，则 EventEmitter 会打印一个警告。 此限制有助于寻找内存泄露。 但是，并不是所有的事件都要被限为 10 个。 emitter.setMaxListeners() 方法允许修改指定的 EventEmitter 实例的限制。 值设为 Infinity（或 0）表明不限制监听器的数量。\n\n返回一个 EventEmitter 引用，可以链式调用。"
	},
	"eventemitter.defaultMaxListeners_41": {
		"prefix": "eventemitter.defaultMaxListeners",
			"body": [
				"eventemitter.defaultMaxListeners"
			],
				"description": "每个事件默认可以注册最多 10 个监听器。 单个 EventEmitter 实例的限制可以使用 emitter.setMaxListeners(n) 方法改变。 所有 EventEmitter 实例的默认值可以使用 EventEmitter.defaultMaxListeners 属性改变。\n\n设置 EventEmitter.defaultMaxListeners 要谨慎，因为会影响所有 EventEmitter 实例，包括之前创建的。 因而，调用 emitter.setMaxListeners(n) 优先于 EventEmitter.defaultMaxListeners。\n\n注意，与Node.js不同，**这是一个硬性限制**。 EventEmitter 实例不允许添加更多的监听器，监听器超过最大数量时会抛出TooManyListenersException。\n\n    emitter.setMaxListeners(emitter.getMaxListeners() + 1);\n    emitter.once('event', () => {\n      // 做些操作\n      emitter.setMaxListeners(Math.max(emitter.getMaxListeners() - 1, 0));\n    });"
	},
	"files.isFile_0": {
		"prefix": "files.isFile",
			"body": [
				"files.isFile($1, $2)"
			],
				"description": "返回路径path是否是文件。\n\n    log(files.isDir(\"/sdcard/文件夹/\")); //返回false\n    log(files.isDir(\"/sdcard/文件.txt\")); //返回true"
	},
	"files.isDir_1": {
		"prefix": "files.isDir",
			"body": [
				"files.isDir($1, $2)"
			],
				"description": "返回路径path是否是文件夹。\n\n    log(files.isDir(\"/sdcard/文件夹/\")); //返回true\n    log(files.isDir(\"/sdcard/文件.txt\")); //返回false"
	},
	"files.isEmptyDir_2": {
		"prefix": "files.isEmptyDir",
			"body": [
				"files.isEmptyDir($1, $2)"
			],
				"description": "返回文件夹path是否为空文件夹。如果该路径并非文件夹，则直接返回`false`。"
	},
	"files.join_3": {
		"prefix": "files.join",
			"body": [
				"files.join($1, $2, $3)"
			],
				"description": "连接两个路径并返回，例如`files.join(\"/sdcard/\", \"1.txt\")`返回\"/sdcard/1.txt\"。"
	},
	"files.create_4": {
		"prefix": "files.create",
			"body": [
				"files.create($1, $2)"
			],
				"description": "创建一个文件或文件夹并返回是否创建成功。如果文件已经存在，则直接返回`false`。\n\n    files.create(\"/sdcard/新文件夹/\");"
	},
	"files.createWithDirs_5": {
		"prefix": "files.createWithDirs",
			"body": [
				"files.createWithDirs($1, $2)"
			],
				"description": "创建一个文件或文件夹并返回是否创建成功。如果文件所在文件夹不存在，则先创建他所在的一系列文件夹。如果文件已经存在，则直接返回`false`。\n\n    files.createWithDirs(\"/sdcard/新文件夹/新文件夹/新文件夹/1.txt\");"
	},
	"files.exists_6": {
		"prefix": "files.exists",
			"body": [
				"files.exists($1, $2)"
			],
				"description": "返回在路径path处的文件是否存在。"
	},
	"files.ensureDir_7": {
		"prefix": "files.ensureDir",
			"body": [
				"files.ensureDir($1)"
			],
				"description": "确保路径path所在的文件夹存在。如果该路径所在文件夹不存在，则创建该文件夹。\n\n例如对于路径\"/sdcard/Download/ABC/1.txt\"，如果/Download/文件夹不存在，则会先创建Download，再创建ABC文件夹。"
	},
	"files.read_8": {
		"prefix": "files.read",
			"body": [
				"files.read($1, $2, $3)"
			],
				"description": "读取文本文件path的所有内容并返回。如果文件不存在，则抛出`FileNotFoundException`。\n\n    log(files.read(\"/sdcard/1.txt\"));"
	},
	"files.readBytes_9": {
		"prefix": "files.readBytes",
			"body": [
				"files.readBytes($1, $2)"
			],
				"description": "读取文件path的所有内容并返回一个字节数组。如果文件不存在，则抛出`FileNotFoundException`。\n\n注意，该数组是Java的数组，不具有JavaScript数组的forEach, slice等函数。\n\n一个以16进制形式打印文件的例子如下:\n\n    var data = files.readBytes(\"/sdcard/1.png\");\n    var sb = new java.lang.StringBuilder();\n    for(var i = 0; i < data.length; i++){\n        sb.append(data[i].toString(16));\n    }\n    log(sb.toString());"
	},
	"files.write_10": {
		"prefix": "files.write",
			"body": [
				"files.write($1, $2, $3)"
			],
				"description": "把text写入到文件path中。如果文件存在则覆盖，不存在则创建。\n\n    var text = \"文件内容\";\n    //写入文件\n    files.write(\"/sdcard/1.txt\", text);\n    //用其他应用查看文件\n    app.viewFile(\"/sdcard/1.txt\");"
	},
	"files.writeBytes_11": {
		"prefix": "files.writeBytes",
			"body": [
				"files.writeBytes($1, $2)"
			],
				"description": "把bytes写入到文件path中。如果文件存在则覆盖，不存在则创建。"
	},
	"files.append_12": {
		"prefix": "files.append",
			"body": [
				"files.append($1, $2, $3)"
			],
				"description": "把text追加到文件path的末尾。如果文件不存在则创建。\n\n    var text = \"追加的文件内容\";\n    files.append(\"/sdcard/1.txt\", text);\n    files.append(\"/sdcard/1.txt\", text);\n    //用其他应用查看文件\n    app.viewFile(\"/sdcard/1.txt\");"
	},
	"files.appendBytes_13": {
		"prefix": "files.appendBytes",
			"body": [
				"files.appendBytes($1, $2, $3)"
			],
				"description": "把bytes追加到文件path的末尾。如果文件不存在则创建。"
	},
	"files.copy_14": {
		"prefix": "files.copy",
			"body": [
				"files.copy($1, $2, $3)"
			],
				"description": "复制文件，返回是否复制成功。例如`files.copy(\"/sdcard/1.txt\", \"/sdcard/Download/1.txt\")`。"
	},
	"files.move_15": {
		"prefix": "files.move",
			"body": [
				"files.move($1, $2, $3)"
			],
				"description": "移动文件，返回是否移动成功。例如`files.move(\"/sdcard/1.txt\", \"/sdcard/Download/1.txt\")`会把1.txt文件从sd卡根目录移动到Download文件夹。"
	},
	"files.rename_16": {
		"prefix": "files.rename",
			"body": [
				"files.rename($1, $2, $3)"
			],
				"description": "重命名文件，并返回是否重命名成功。例如`files.rename(\"/sdcard/1.txt\", \"2.txt\")`。"
	},
	"files.renameWithoutExtension_17": {
		"prefix": "files.renameWithoutExtension",
			"body": [
				"files.renameWithoutExtension($1, $2, $3)"
			],
				"description": "重命名文件，不包含拓展名，并返回是否重命名成功。例如`files.rename(\"/sdcard/1.txt\", \"2\")`会把\"1.txt\"重命名为\"2.txt\"。"
	},
	"files.getName_18": {
		"prefix": "files.getName",
			"body": [
				"files.getName($1, $2)"
			],
				"description": "返回文件的文件名。例如`files.getName(\"/sdcard/1.txt\")`返回\"1.txt\"。"
	},
	"files.getNameWithoutExtension_19": {
		"prefix": "files.getNameWithoutExtension",
			"body": [
				"files.getNameWithoutExtension($1, $2)"
			],
				"description": "返回不含拓展名的文件的文件名。例如`files.getName(\"/sdcard/1.txt\")`返回\"1\"。"
	},
	"files.getExtension_20": {
		"prefix": "files.getExtension",
			"body": [
				"files.getExtension($1, $2)"
			],
				"description": "返回文件的拓展名。例如`files.getExtension(\"/sdcard/1.txt\")`返回\"txt\"。"
	},
	"files.remove_21": {
		"prefix": "files.remove",
			"body": [
				"files.remove($1, $2)"
			],
				"description": "删除文件或**空文件夹**，返回是否删除成功。"
	},
	"files.removeDir_22": {
		"prefix": "files.removeDir",
			"body": [
				"files.removeDir($1, $2, $3)"
			],
				"description": "删除文件夹，如果文件夹不为空，则删除该文件夹的所有内容再删除该文件夹，返回是否全部删除成功。"
	},
	"files.getSdcardPath_23": {
		"prefix": "files.getSdcardPath",
			"body": [
				"files.getSdcardPath($1)"
			],
				"description": "返回SD卡路径。所谓SD卡，即外部存储器。"
	},
	"files.cwd_24": {
		"prefix": "files.cwd",
			"body": [
				"files.cwd($1)"
			],
				"description": "返回脚本的\"当前工作文件夹路径\"。该路径指的是，如果脚本本身为脚本文件，则返回这个脚本文件所在目录；否则返回`null`获取其他设定路径。\n\n例如，对于脚本文件\"/sdcard/脚本/1.js\"运行`files.cwd()`返回\"/sdcard/脚本/\"。"
	},
	"files.path_25": {
		"prefix": "files.path",
			"body": [
				"files.path($1, $2)"
			],
				"description": "返回相对路径对应的绝对路径。例如`files.path(\"./1.png\")`，如果运行这个语句的脚本位于文件夹\"/sdcard/脚本/\"中，则返回`\"/sdcard/脚本/1.png\"`。"
	},
	"files.listDir_26": {
		"prefix": "files.listDir",
			"body": [
				"files.listDir($1, $2)"
			],
				"description": "列出文件夹path下的满足条件的文件和文件夹的名称的数组。如果不加filter参数，则返回所有文件和文件夹。\n\n列出sdcard目录下所有文件和文件夹为:\n\n    var arr = files.listDir(\"/sdcard/\");\n    log(arr);\n    \n\n列出脚本目录下所有js脚本文件为:\n\n    var dir = \"/sdcard/脚本/\";\n    var jsFiles = files.listDir(dir, function(name){\n        return name.endsWith(\".js\") && files.isFile(files.join(dir, name));\n    });\n    log(jsFiles);"
	},
	"files.open_27": {
		"prefix": "files.open",
			"body": [
				"files.open($1, $2, $3, $4)"
			],
				"description": "打开一个文件。根据打开模式返回不同的文件对象。包括：\n\n*   \"r\": 返回一个ReadableTextFile对象。\n*   \"w\", \"a\": 返回一个WritableTextFile对象。\n\n对于\"w\"模式，如果文件并不存在，则会创建一个，已存在则会清空该文件内容；其他模式文件不存在会抛出FileNotFoundException。"
	},
	"readabletextfile.read_28": {
		"prefix": "readabletextfile.read",
			"body": [
				"readabletextfile.read()"
			],
				"description": "返回该文件剩余的所有内容的字符串。"
	},
	"readabletextfile.read_29": {
		"prefix": "readabletextfile.read",
			"body": [
				"readabletextfile.read($1)"
			],
				"description": "读取该文件接下来最长为maxCount的字符串并返回。即使文件剩余内容不足maxCount也不会出错。"
	},
	"readabletextfile.readline_30": {
		"prefix": "readabletextfile.readline",
			"body": [
				"readabletextfile.readline()"
			],
				"description": "读取一行并返回（不包含换行符）。"
	},
	"readabletextfile.readlines_31": {
		"prefix": "readabletextfile.readlines",
			"body": [
				"readabletextfile.readlines()"
			],
				"description": "读取剩余的所有行，并返回它们按顺序组成的字符串数组。"
	},
	"readabletextfile.close_32": {
		"prefix": "readabletextfile.close",
			"body": [
				"readabletextfile.close()"
			],
				"description": "关闭该文件。\n\n**打开一个文件不再使用时务必关闭**"
	},
	"pwritabletextfile.write_33": {
		"prefix": "pwritabletextfile.write",
			"body": [
				"pwritabletextfile.write($1)"
			],
				"description": "把文本内容text写入到文件中。"
	},
	"pwritabletextfile.writeline_34": {
		"prefix": "pwritabletextfile.writeline",
			"body": [
				"pwritabletextfile.writeline($1)"
			],
				"description": "把文本line写入到文件中并写入一个换行符。"
	},
	"pwritabletextfile.writelines_35": {
		"prefix": "pwritabletextfile.writelines",
			"body": [
				"pwritabletextfile.writelines($1)"
			],
				"description": "把很多行写入到文件中...."
	},
	"pwritabletextfile.flush_36": {
		"prefix": "pwritabletextfile.flush",
			"body": [
				"pwritabletextfile.flush()"
			],
				"description": "把缓冲区内容输出到文件中。"
	},
	"pwritabletextfile.close_37": {
		"prefix": "pwritabletextfile.close",
			"body": [
				"pwritabletextfile.close()"
			],
				"description": "关闭文件。同时会被缓冲区内容输出到文件。\n\n**打开一个文件写入后，不再使用时务必关闭，否则文件可能会丢失**"
	},
	"floaty.window_0": {
		"prefix": "floaty.window",
			"body": [
				"floaty.window($1)"
			],
				"description": "指定悬浮窗的布局，创建并**显示**一个悬浮窗，返回一个`FloatyWindow`对象。\n\n该悬浮窗自带关闭、调整大小、调整位置按键，可根据需要调用`setAdjustEnabled()`函数来显示或隐藏。\n\n其中layout参数可以是xml布局或者一个View，更多信息参见ui模块的说明。\n\n例子：\n\n    var w = floaty.window(\n        <frame gravity=\"center\">\n            <text id=\"text\">悬浮文字</text>\n        </frame>\n    );\n    setTimeout(()=>{\n        w.close();\n    }, 2000);\n    \n\n这段代码运行后将会在屏幕上显示悬浮文字，并在两秒后消失。\n\n另外，因为脚本运行的线程不是UI线程，而所有对控件的修改操作需要在UI线程执行，此时需要用`ui.run`，例如:\n\n    ui.run(function(){\n        w.text.setText(\"文本\");\n    });\n    \n\n有关返回的`FloatyWindow`对象的说明，参见下面的`FloatyWindow`章节。"
	},
	"floaty.rawWindow_1": {
		"prefix": "floaty.rawWindow",
			"body": [
				"floaty.rawWindow($1)"
			],
				"description": "指定悬浮窗的布局，创建并**显示**一个原始悬浮窗，返回一个`FloatyRawWindow`对象。\n\n与`floaty.window()`函数不同的是，该悬浮窗不会增加任何额外设施（例如调整大小、位置按钮），您可以根据自己需要编写任何布局。\n\n而且，该悬浮窗支持完全全屏，可以覆盖状态栏，因此可以做护眼模式之类的应用。\n\n    var w = floaty.rawWindow(\n        <frame gravity=\"center\">\n            <text id=\"text\">悬浮文字</text>\n        </frame>\n    );\n    \n    w.setPosition(500, 500);\n    \n    setTimeout(()=>{\n        w.close();\n    }, 2000);\n    \n\n这段代码运行后将会在屏幕上显示悬浮文字，并在两秒后消失。\n\n有关返回的`FloatyRawWindow`对象的说明，参见下面的`FloatyRawWindow`章节。"
	},
	"floaty.closeAll_2": {
		"prefix": "floaty.closeAll",
			"body": [
				"floaty.closeAll()"
			],
				"description": "关闭所有本脚本的悬浮窗。"
	},
	"floatywindow.setAdjustEnabled_3": {
		"prefix": "floatywindow.setAdjustEnabled",
			"body": [
				"floatywindow.setAdjustEnabled($1)"
			],
				"description": "如果enabled为true，则在悬浮窗左上角、右上角显示可供位置、大小调整的标示，就像控制台一样； 如果enabled为false，则隐藏上述标示。"
	},
	"floatywindow.setPosition_4": {
		"prefix": "floatywindow.setPosition",
			"body": [
				"floatywindow.setPosition($1, $2)"
			],
				"description": "设置悬浮窗位置。"
	},
	"floatywindow.getX_5": {
		"prefix": "floatywindow.getX",
			"body": [
				"floatywindow.getX()"
			],
				"description": "返回悬浮窗位置的X坐标。"
	},
	"floatywindow.getY_6": {
		"prefix": "floatywindow.getY",
			"body": [
				"floatywindow.getY()"
			],
				"description": "返回悬浮窗位置的Y坐标。"
	},
	"floatywindow.setSize_7": {
		"prefix": "floatywindow.setSize",
			"body": [
				"floatywindow.setSize($1, $2)"
			],
				"description": "设置悬浮窗宽高。"
	},
	"floatywindow.getWidht_8": {
		"prefix": "floatywindow.getWidht",
			"body": [
				"floatywindow.getWidht()"
			],
				"description": "返回悬浮窗宽度。"
	},
	"floatywindow.getHeight_9": {
		"prefix": "floatywindow.getHeight",
			"body": [
				"floatywindow.getHeight()"
			],
				"description": "返回悬浮窗高度。"
	},
	"floatywindow.close_10": {
		"prefix": "floatywindow.close",
			"body": [
				"floatywindow.close()"
			],
				"description": "关闭悬浮窗。如果悬浮窗已经是关闭状态，则此函数将不执行任何操作。\n\n被关闭后的悬浮窗不能再显示。"
	},
	"floatywindow.exitOnClose_11": {
		"prefix": "floatywindow.exitOnClose",
			"body": [
				"floatywindow.exitOnClose()"
			],
				"description": "使悬浮窗被关闭时自动结束脚本运行。"
	},
	"floatyrawwindow.setTouchable_12": {
		"prefix": "floatyrawwindow.setTouchable",
			"body": [
				"floatyrawwindow.setTouchable($1)"
			],
				"description": "设置悬浮窗是否可触摸，如果为true, 则悬浮窗将接收到触摸、点击等事件并且无法继续传递到悬浮窗下面；如果为false, 悬浮窗上的触摸、点击等事件将被直接传递到悬浮窗下面。处于安全考虑，被悬浮窗接收的触摸事情无法再继续传递到下层。\n\n可以用此特性来制作护眼模式脚本。\n\n    var w = floaty.rawWindow(\n        <frame gravity=\"center\" bg=\"#44ffcc00\"/>\n    );\n    \n    w.setSize(-1, -1);\n    w.setTouchable(false);\n    \n    setTimeout(()=>{\n        w.close();\n    }, 4000);"
	},
	"floatyrawwindow.setPosition_13": {
		"prefix": "floatyrawwindow.setPosition",
			"body": [
				"floatyrawwindow.setPosition($1, $2)"
			],
				"description": "设置悬浮窗位置。"
	},
	"floatyrawwindow.getX_14": {
		"prefix": "floatyrawwindow.getX",
			"body": [
				"floatyrawwindow.getX()"
			],
				"description": "返回悬浮窗位置的X坐标。"
	},
	"floatyrawwindow.getY_15": {
		"prefix": "floatyrawwindow.getY",
			"body": [
				"floatyrawwindow.getY()"
			],
				"description": "返回悬浮窗位置的Y坐标。"
	},
	"floatyrawwindow.setSize_16": {
		"prefix": "floatyrawwindow.setSize",
			"body": [
				"floatyrawwindow.setSize($1, $2)"
			],
				"description": "设置悬浮窗宽高。\n\n特别地，如果设置为-1，则为占满全屏；设置为-2则为根据悬浮窗内容大小而定。例如：\n\n    var w = floaty.rawWindow(\n        <frame gravity=\"center\" bg=\"#77ff0000\">\n            <text id=\"text\">悬浮文字</text>\n        </frame>\n    );\n    \n    w.setSize(-1, -1);\n    \n    setTimeout(()=>{\n        w.close();\n    }, 2000);"
	},
	"floatyrawwindow.getWidht_17": {
		"prefix": "floatyrawwindow.getWidht",
			"body": [
				"floatyrawwindow.getWidht()"
			],
				"description": "返回悬浮窗宽度。"
	},
	"floatyrawwindow.getHeight_18": {
		"prefix": "floatyrawwindow.getHeight",
			"body": [
				"floatyrawwindow.getHeight()"
			],
				"description": "返回悬浮窗高度。"
	},
	"floatyrawwindow.close_19": {
		"prefix": "floatyrawwindow.close",
			"body": [
				"floatyrawwindow.close()"
			],
				"description": "关闭悬浮窗。如果悬浮窗已经是关闭状态，则此函数将不执行任何操作。\n\n被关闭后的悬浮窗不能再显示。"
	},
	"floatyrawwindow.exitOnClose_20": {
		"prefix": "floatyrawwindow.exitOnClose",
			"body": [
				"floatyrawwindow.exitOnClose()"
			],
				"description": "使悬浮窗被关闭时自动结束脚本运行。"
	},
	"sleep_0": {
		"prefix": "sleep",
			"body": [
				"sleep($1)"
			],
				"description": "暂停运行n**毫秒**的时间。1秒等于1000毫秒。\n\n    //暂停5毫秒\n    sleep(5000);"
	},
	"currentPackage_1": {
		"prefix": "currentPackage",
			"body": [
				"currentPackage($1)"
			],
				"description": "返回最近一次监测到的正在运行的应用的包名，一般可以认为就是当前正在运行的应用的包名。\n\n此函数依赖于无障碍服务，如果服务未启动，则抛出异常并提示用户启动。"
	},
	"currentActivity_2": {
		"prefix": "currentActivity",
			"body": [
				"currentActivity($1)"
			],
				"description": "返回最近一次监测到的正在运行的Activity的名称，一般可以认为就是当前正在运行的Activity的名称。\n\n此函数依赖于无障碍服务，如果服务未启动，则抛出异常并提示用户启动。"
	},
	"setClip_3": {
		"prefix": "setClip",
			"body": [
				"setClip($1)"
			],
				"description": "设置剪贴板内容。此剪贴板即系统剪贴板，在一般应用的输入框中\"粘贴\"既可使用。\n\n    setClip(\"剪贴板文本\");"
	},
	"getClip_4": {
		"prefix": "getClip",
			"body": [
				"getClip($1)"
			],
				"description": "返回系统剪贴板的内容。\n\n    toast(\"剪贴板内容为:\" + getClip());"
	},
	"toast_5": {
		"prefix": "toast",
			"body": [
				"toast($1)"
			],
				"description": "以气泡显示信息message几秒。(具体时间取决于安卓系统，一般都是2秒)\n\n注意，信息的显示是\"异步\"执行的，并且，不会等待信息消失程序才继续执行。如果在循环中执行该命令，可能出现脚本停止运行后仍然有不断的气泡信息出现的情况。 例如:\n\n    for(var i = 0; i < 100; i++){\n      toast(i);\n    }\n    \n\n运行这段程序以后，会很快执行完成，且不断弹出消息，在任务管理中关闭所有脚本也无法停止。 要保证气泡消息才继续执行可以用：\n\n    for(var i = 0; i < 100; i++){\n      toast(i);\n      sleep(2000);\n    }\n    \n\n或者修改toast函数：\n\n    var _toast_ = toast;\n    toast = function(message){\n      _toast_(message);\n      sleep(2000);\n    }\n    for(var i = 0; i < 100; i++){\n      toast(i);\n    }"
	},
	"toastLog_6": {
		"prefix": "toastLog",
			"body": [
				"toastLog($1)"
			],
				"description": "相当于`toast(message);log(message)`。显示信息message并在控制台中输出。参见console.log。"
	},
	"waitForActivity_7": {
		"prefix": "waitForActivity",
			"body": [
				"waitForActivity($1, $2)"
			],
				"description": "等待指定的Activity出现，period为检查Activity的间隔。"
	},
	"waitForPackage_8": {
		"prefix": "waitForPackage",
			"body": [
				"waitForPackage($1, $2)"
			],
				"description": "等待指定的应用出现。例如`waitForPackage(\"com.tencent.mm\")`为等待当前界面为微信。"
	},
	"exit_9": {
		"prefix": "exit",
			"body": [
				"exit()"
			],
				"description": "立即停止脚本运行。\n\n立即停止是通过抛出`ScriptInterrupttedException`来实现的，因此如果用`try...catch`把exit()函数的异常捕捉，则脚本不会立即停止，仍会运行几行后再停止。"
	},
	"random_10": {
		"prefix": "random",
			"body": [
				"random($1, $2, $3)"
			],
				"description": "返回一个在\\[min...max\\]之间的随机数。例如random(0, 2)可能产生0, 1, 2。"
	},
	"random_11": {
		"prefix": "random",
			"body": [
				"random($1)"
			],
				"description": "返回在\\[0, 1)的随机浮点数。"
	},
	"requiresApi_12": {
		"prefix": "requiresApi",
			"body": [
				"requiresApi($1)"
			],
				"description": "表示此脚本需要Android API版本达到指定版本才能运行。例如`requiresApi(19)`表示脚本需要在Android 4.4以及以上运行。\n\n调用该函数时会判断运行脚本的设备系统的版本号，如果没有达到要求则抛出异常。\n\n可以参考以下Android API和版本的对照表:\n\n平台版本： API级别\n\nAndroid 7.0： 24\n\nAndroid 6.0： 23\n\nAndroid 5.1： 22\n\nAndroid 5.0： 21\n\nAndroid 4.4W： 20\n\nAndroid 4.4： 19\n\nAndroid 4.3： 18"
	},
	"requiresAutojsVersion_13": {
		"prefix": "requiresAutojsVersion",
			"body": [
				"requiresAutojsVersion($1)"
			],
				"description": "表示此脚本需要Auto.js版本达到指定版本才能运行。例如`requiresAutojsVersion(\"3.0.0 Beta\")`表示脚本需要在Auto.js 3.0.0 Beta以及以上运行。\n\n调用该函数时会判断运行脚本的Auto.js的版本号，如果没有达到要求则抛出异常。\n\nversion参数可以是整数表示版本号，例如`requiresAutojsVersion(250)`；也可以是字符串格式表示的版本，例如\"3.0.0 Beta\", \"3.1.0 Alpha4\", \"3.2.0\"等。\n\n可以通过`app.autojs.versionCode`和`app.autojs.versionName`获取当前的Auto.js版本号和版本。"
	},
	"requestPermissions_14": {
		"prefix": "requestPermissions",
			"body": [
				"requestPermissions($1)"
			],
				"description": "动态申请安卓的权限。例如：\n\n    //请求GPS权限\n    runtime.requestPermissions([\"access_fine_location\"]);\n    \n\n尽管安卓有很多权限，但必须写入Manifest才能动态申请，为了防止权限的滥用，目前Auto.js只能额外申请两个权限：\n\n*   `access_fine_location` GPS权限\n*   `record_audio` 录音权限\n\n您可以通过APK编辑器来增加Auto.js以及Auto.js打包的应用的权限。\n\n安卓所有的权限列表参见[Permissions Overview](https://developer.android.com/guide/topics/permissions/overview)。（并没有用）"
	},
	"loadJar_15": {
		"prefix": "loadJar",
			"body": [
				"loadJar($1)"
			],
				"description": "加载目标jar文件，加载成功后将可以使用该Jar文件的类。\n\n    // 加载jsoup.jar\n    runtime.loadJar(\"./jsoup.jar\");\n    // 使用jsoup解析html\n    importClass(org.jsoup.Jsoup);\n    log(Jsoup.parse(files.read(\"./test.html\")));\n    \n\n(jsoup是一个Java实现的解析Html DOM的库，可以在[Jsoup](https://jsoup.org/download)下载)"
	},
	"loadDex_16": {
		"prefix": "loadDex",
			"body": [
				"loadDex($1)"
			],
				"description": "加载目标dex文件，加载成功后将可以使用该dex文件的类。\n\n因为加载jar实际上是把jar转换为dex再加载的，因此加载dex文件会比jar文件快得多。可以使用Android SDK的build tools的dx工具把jar转换为dex。"
	},
	"http.get_0": {
		"prefix": "http.get",
			"body": [
				"http.get($1, $2, $3)"
			],
				"description": "对地址url进行一次HTTP GET 请求。如果没有回调函数，则在请求完成或失败时返回此次请求的响应(参见\\[Response\\]\\[\\])。\n\n最简单GET请求如下:\n\n    console.show();\n    var r = http.get(\"www.baidu.com\");\n    log(\"code = \" + r.statusCode);\n    log(\"html = \" + r.body.string());\n    \n\n采用回调形式的GET请求如下：\n\n    console.show();\n    http.get(\"www.baidu.com\", {}, function(res, err){\n        if(err){\n            console.error(err);\n            return;\n        }\n        log(\"code = \" + res.statusCode);\n        log(\"html = \" + res.body.string());\n    });\n    \n\n如果要增加HTTP头部信息，则在options参数中添加，例如：\n\n    console.show();\n    var r = http.get(\"www.baidu.com\", {\n        headers: {\n            'Accept-Language': 'zh-cn,zh;q=0.5',\n            'User-Agent': 'Mozilla/5.0(Macintosh;IntelMacOSX10_7_0)AppleWebKit/535.11(KHTML,likeGecko)Chrome/17.0.963.56Safari/535.11'\n        }\n    });\n    log(\"code = \" + r.statusCode);\n    log(\"html = \" + r.body.string());\n    \n\n一个请求天气并解析返回的天气JSON结果的例子如下：\n\n    var city = \"广州\";\n    var res = http.get(\"http://www.sojson.com/open/api/weather/json.shtml?city=\" + city);\n    if(res.statusCode != 200){\n        toast(\"请求失败: \" + res.statusCode + \" \" + res.statusMessage);\n    }else{\n        var weather = res.body.json();\n        log(weather);\n        toast(util.format(\"温度: %s 湿度: %s 空气质量: %s\", weather.data.wendu,\n            weather.data.shidu, weather.quality));\n    }"
	},
	"http.post_1": {
		"prefix": "http.post",
			"body": [
				"http.post($1, $2, $3, $4)"
			],
				"description": "对地址url进行一次HTTP POST 请求。如果没有回调函数，则在请求完成或失败时返回此次请求的响应(参见\\[Response\\]\\[\\])。\n\n其中POST数据可以是字符串或键值对。具体含义取决于options.contentType的值。默认为\"application/x-www-form-urlencoded\"(表单提交), 这种方式是JQuery的ajax函数的默认方式。\n\n一个模拟表单提交登录淘宝的例子如下:\n\n    var url = \"https://login.taobao.com/member/login.jhtml\";\n    var username = \"你的用户名\";\n    var password = \"你的密码\";\n    var res = http.post(url, {\n        \"TPL_username\": username,\n        \"TPL_password\": password\n    });\n    var html = res.body.string();\n    if(html.contains(\"页面跳转中\")){\n        toast(\"登录成功\");\n    }else{\n        toast(\"登录失败\");\n    }"
	},
	"http.postJson_2": {
		"prefix": "http.postJson",
			"body": [
				"http.postJson($1, $2, $3, $4)"
			],
				"description": "以JSON格式向目标Url发起POST请求。如果没有回调函数，则在请求完成或失败时返回此次请求的响应(参见\\[Response\\]\\[\\])。\n\nJSON格式指的是，将会调用`JSON.stringify()`把data对象转换为JSON字符串，并在HTTP头部信息中把\"Content-Type\"属性置为\"application/json\"。这种方式是AngularJS的ajax函数的默认方式。\n\n一个调用图灵机器人接口的例子如下：\n\n    var url = \"http://www.tuling123.com/openapi/api\";\n    r = http.postJson(url, {\n        key: \"65458a5df537443b89b31f1c03202a80\",\n        info: \"你好啊\",\n        userid: \"1\",\n    });\n    toastLog(r.body.string());"
	},
	"http.postMultipart_3": {
		"prefix": "http.postMultipart",
			"body": [
				"http.postMultipart($1, $2, $3, $4)"
			],
				"description": "向目标地址发起类型为multipart/form-data的请求（通常用于文件上传等), 其中files参数是{name1: value1, name2: value2, ...}的键值对，value的格式可以是以下几种情况：\n\n1.  `string`\n2.  文件类型，即open()返回的类型\n3.  \\[fileName, filePath\\]\n4.  \\[fileName, mimeType, filePath\\]\n\n其中1属于非文件参数，2、3、4为文件参数。举个例子，最简单的文件上传的请求为：\n\n    var res = http.postMultipart(url, {\n        file: open(\"/sdcard/1.txt\")\n    });\n    log(res.body.string());\n    \n\n如果使用格式2，则代码为\n\n    var res = http.postMultipart(url, {\n        file: [\"1.txt\", \"/sdcard/1.txt\"]\n    });\n    log(res.body.string());\n    \n\n如果使用格式3，则代码为\n\n    var res = http.postMultipart(url, {\n        file: [\"1.txt\", \"text/plain\", \"/sdcard/1.txt\"]\n    });\n    log(res.body.string());\n    \n\n如果使用格式2的同时要附带非文件参数\"appId=abcdefghijk\"，则为:\n\n    var res = http.postMultipart(url, {\n        appId: \"adcdefghijk\",\n        file: open(\"/sdcard/1.txt\")\n    });\n    log(res.body.string());"
	},
	"http.request_4": {
		"prefix": "http.request",
			"body": [
				"http.request($1, $2, $3)"
			],
				"description": "对目标地址url发起一次HTTP请求。如果没有回调函数，则在请求完成或失败时返回此次请求的响应(参见\\[Response\\]\\[\\])。\n\n选项options可以包含以下属性：\n\n*   `headers` {Object} 键值对形式的HTTP头部信息。有关HTTP头部信息，参见[菜鸟教程：HTTP响应头信息](http://www.runoob.com/http/http-header-fields.html)。\n*   `method` {string} HTTP请求方法。包括\"GET\", \"POST\", \"PUT\", \"DELET\", \"PATCH\"。\n*   `contentType` {string} HTTP头部信息中的\"Content-Type\", 表示HTTP请求的内容类型。例如\"text/plain\", \"application/json\"。更多信息参见[菜鸟教程：HTTP contentType](http://www.runoob.com/http/http-content-type.html)。\n*   `body` {string} | {Array} | {Function} HTTP请求的内容。可以是一个字符串，也可以是一个字节数组；或者是一个以[BufferedSink](https://github.com/square/okio/blob/master/okio/src/main/java/okio/BufferedSink.java)为参数的函数。\n\n该函数是get, post, postJson等函数的基础函数。因此除非是PUT, DELET等请求，或者需要更高定制的HTTP请求，否则直接使用get, post, postJson等函数会更加方便。"
	},
	"response.statusCode_5": {
		"prefix": "response.statusCode",
			"body": [
				"response.statusCode"
			],
				"description": "当前响应的HTTP状态码。例如200(OK), 404(Not Found)等。\n\n有关HTTP状态码的信息，参见[菜鸟教程：HTTP状态码](http://www.runoob.com/http/http-status-codes.html)。"
	},
	"response.statusMessage_6": {
		"prefix": "response.statusMessage",
			"body": [
				"response.statusMessage"
			],
				"description": "当前响应的HTTP状态信息。例如\"OK\", \"Bad Request\", \"Forbidden\"。\n\n有关HTTP状态码的信息，参见[菜鸟教程：HTTP状态码](http://www.runoob.com/http/http-status-codes.html)。\n\n例子：\n\n    var res = http.get(\"www.baidu.com\");\n    if(res.statusCode >= 200 && res.statusCode < 300){\n        toast(\"页面获取成功!\");\n    }else if(res.statusCode == 404){\n        toast(\"页面没找到哦...\");\n    }else{\n        toast(\"错误: \" + res.statusCode + \" \" + res.statusMessage);\n    }"
	},
	"response.headers_7": {
		"prefix": "response.headers",
			"body": [
				"response.headers"
			],
				"description": "当前响应的HTTP头部信息。该对象的键是响应头名称，值是各自的响应头值。 所有响应头名称都是小写的(吗)。\n\n有关HTTP头部信息，参见[菜鸟教程：HTTP响应头信息](http://www.runoob.com/http/http-header-fields.html)。\n\n例子:\n\n    console.show();\n    var res = http.get(\"www.qq.com\");\n    console.log(\"HTTP Headers:\")\n    for(var headerName in res.headers){\n        console.log(\"%s: %s\", headerName, res.headers[headerName]);\n    }"
	},
	"response.body_8": {
		"prefix": "response.body",
			"body": [
				"response.body"
			],
				"description": "当前响应的内容。他有以下属性和函数：\n\n*   bytes() {Array} 以字节数组形式返回响应内容\n*   string() {string} 以字符串形式返回响应内容\n*   json() {Object} 把响应内容作为JSON格式的数据并调用JSON.parse，返回解析后的对象\n*   contentType {string} 当前响应的内容类型"
	},
	"response.url_9": {
		"prefix": "response.url",
			"body": [
				"response.url"
			],
				"description": "当前响应所对应的请求URL。"
	},
	"response.method_10": {
		"prefix": "response.method",
			"body": [
				"response.method"
			],
				"description": "当前响应所对应的HTTP请求的方法。例如\"GET\", \"POST\", \"PUT\"等。"
	},
	"colors.toString_0": {
		"prefix": "colors.toString",
			"body": [
				"colors.toString($1, $2)"
			],
				"description": "返回颜色值的字符串，格式为 \"#AARRGGBB\"。"
	},
	"colors.red_1": {
		"prefix": "colors.red",
			"body": [
				"colors.red($1, $2)"
			],
				"description": "返回颜色color的R通道的值，范围0~255."
	},
	"colors.green_2": {
		"prefix": "colors.green",
			"body": [
				"colors.green($1, $2)"
			],
				"description": "返回颜色color的G通道的值，范围0~255."
	},
	"colors.blue_3": {
		"prefix": "colors.blue",
			"body": [
				"colors.blue($1, $2)"
			],
				"description": "返回颜色color的B通道的值，范围0~255."
	},
	"colors.alpha_4": {
		"prefix": "colors.alpha",
			"body": [
				"colors.alpha($1, $2)"
			],
				"description": "返回颜色color的Alpha通道的值，范围0~255."
	},
	"colors.rgb_5": {
		"prefix": "colors.rgb",
			"body": [
				"colors.rgb($1, $2, $3, $4)"
			],
				"description": "返回这些颜色通道构成的整数颜色值。Alpha通道将是255（不透明）。"
	},
	"colors.argb_6": {
		"prefix": "colors.argb",
			"body": [
				"colors.argb($1, $2, $3, $4, $5)"
			],
				"description": "返回这些颜色通道构成的整数颜色值。"
	},
	"colors.parseColor_7": {
		"prefix": "colors.parseColor",
			"body": [
				"colors.parseColor($1, $2)"
			],
				"description": "返回颜色的整数值。"
	},
	"colors.isSimilar_8": {
		"prefix": "colors.isSimilar",
			"body": [
				"colors.isSimilar($1, $2, $3, $4, $5)"
			],
				"description": "返回两个颜色是否相似。"
	},
	"colors.equals_9": {
		"prefix": "colors.equals",
			"body": [
				"colors.equals($1, $2, $3)"
			],
				"description": "返回两个颜色是否相等。_\\*注意该函数会忽略Alpha通道的值进行比较_。\n\n    log(colors.equals(\"#112233\", \"#112234\"));\n    log(colors.equals(0xFF112233, 0xFF223344));"
	},
	"images.图片处理_10": {
		"prefix": "images.图片处理",
			"body": [
				"images.图片处理($1)"
			],
				"description": "读取在路径path的图片文件并返回一个Image对象。如果文件不存在或者文件无法解码则返回null。"
	},
	"images.read_11": {
		"prefix": "images.read",
			"body": [
				"images.read($1)"
			],
				"description": "读取在路径path的图片文件并返回一个Image对象。如果文件不存在或者文件无法解码则返回null。"
	},
	"images.load_12": {
		"prefix": "images.load",
			"body": [
				"images.load($1)"
			],
				"description": "加载在地址URL的网络图片并返回一个Image对象。如果地址不存在或者图片无法解码则返回null。"
	},
	"images.copy_13": {
		"prefix": "images.copy",
			"body": [
				"images.copy($1, $2)"
			],
				"description": "复制一张图片并返回新的副本。该函数会完全复制img对象的数据。"
	},
	"images.save_14": {
		"prefix": "images.save",
			"body": [
				"images.save($1, $2, $3, $4)"
			],
				"description": "把图片image以PNG格式保存到path中。如果文件不存在会被创建；文件存在会被覆盖。\n\n    //把图片压缩为原来的一半质量并保存\n    var img = images.read(\"/sdcard/1.png\");\n    images.save(img, \"/sdcard/1.jpg\", \"jpg\", 50);\n    app.viewFile(\"/sdcard/1.jpg\");"
	},
	"images.fromBase64_15": {
		"prefix": "images.fromBase64",
			"body": [
				"images.fromBase64($1, $2)"
			],
				"description": "解码Base64数据并返回解码后的图片Image对象。如果base64无法解码则返回`null`。"
	},
	"images.toBase64_16": {
		"prefix": "images.toBase64",
			"body": [
				"images.toBase64($1, $2, $3, $4)"
			],
				"description": "把图片编码为base64数据并返回。"
	},
	"images.fromBytes_17": {
		"prefix": "images.fromBytes",
			"body": [
				"images.fromBytes($1)"
			],
				"description": "解码字节数组bytes并返回解码后的图片Image对象。如果bytes无法解码则返回`null`。"
	},
	"images.toBytes_18": {
		"prefix": "images.toBytes",
			"body": [
				"images.toBytes($1, $2, $3, $4)"
			],
				"description": "把图片编码为字节数组并返回。"
	},
	"images.clip_19": {
		"prefix": "images.clip",
			"body": [
				"images.clip($1, $2, $3, $4, $5, $6)"
			],
				"description": "从图片img的位置(x, y)处剪切大小为w \\* h的区域，并返回该剪切区域的新图片。\n\n    var src = images.read(\"/sdcard/1.png\");\n    var clip = images.clip(src, 100, 100, 400, 400);\n    images.save(clip, \"/sdcard/clip.png\");"
	},
	"images.resize_20": {
		"prefix": "images.resize",
			"body": [
				"images.resize($1, $2, $3)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `img` {Image} 图片\n*   `size` {Array} 两个元素的数组\\[w, h\\]，分别表示宽度和高度；如果只有一个元素，则宽度和高度相等\n*   `interpolation` {string} 插值方法，可选，默认为\"LINEAR\"（线性插值），可选的值有：\n    \n    *   `NEAREST` 最近邻插值\n    *   `LINEAR` 线性插值（默认）\n    *   `AREA` 区域插值\n    *   `CUBIC` 三次样条插值\n    *   `LANCZOS4` Lanczos插值 参见[InterpolationFlags](https://docs.opencv.org/3.4.4/da/d54/group__imgproc__transform.html#ga5bb5a1fea74ea38e1a5445ca803ff121)\n*   返回 {Image}\n    \n\n调整图片大小，并返回调整后的图片。例如把图片放缩为200\\*300：`images.resize(img, [200, 300])`。\n\n参见[Imgproc.resize](https://docs.opencv.org/3.4.4/da/d54/group__imgproc__transform.html#ga47a974309e9102f5f08231edc7e7529d)。"
	},
	"images.scale_21": {
		"prefix": "images.scale",
			"body": [
				"images.scale($1, $2, $3, $4)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `img` {Image} 图片\n*   `fx` {number} 宽度放缩倍数\n*   `fy` {number} 高度放缩倍数\n*   `interpolation` {string} 插值方法，可选，默认为\"LINEAR\"（线性插值），可选的值有：\n    \n    *   `NEAREST` 最近邻插值\n    *   `LINEAR` 线性插值（默认）\n    *   `AREA` 区域插值\n    *   `CUBIC` 三次样条插值\n    *   `LANCZOS4` Lanczos插值 参见[InterpolationFlags](https://docs.opencv.org/3.4.4/da/d54/group__imgproc__transform.html#ga5bb5a1fea74ea38e1a5445ca803ff121)\n*   返回 {Image}\n    \n\n放缩图片，并返回放缩后的图片。例如把图片变成原来的一半：`images.scale(img, 0.5, 0.5)`。\n\n参见[Imgproc.resize](https://docs.opencv.org/3.4.4/da/d54/group__imgproc__transform.html#ga47a974309e9102f5f08231edc7e7529d)。"
	},
	"images.rotate_22": {
		"prefix": "images.rotate",
			"body": [
				"images.rotate($1, $2, $3, $4)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `img` {Image} 图片\n*   `degress` {number} 旋转角度。\n*   `x` {number} 旋转中心x坐标，默认为图片中点\n*   `y` {number} 旋转中心y坐标，默认为图片中点\n*   返回 {Image}\n\n将图片逆时针旋转degress度，返回旋转后的图片对象。\n\n例如逆时针旋转90度为`images.rotate(img, 90)`。"
	},
	"images.concat_23": {
		"prefix": "images.concat",
			"body": [
				"images.concat($1, $2, $3)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `img1` {Image} 图片1\n*   `img2` {Image} 图片2\n*   direction {string} 连接方向，默认为\"RIGHT\"，可选的值有：\n    *   `LEFT` 将图片2接到图片1左边\n    *   `RIGHT` 将图片2接到图片1右边\n    *   `TOP` 将图片2接到图片1上边\n    *   `BOTTOM` 将图片2接到图片1下边\n*   返回 {Image}\n\n连接两张图片，并返回连接后的图像。如果两张图片大小不一致，小的那张将适当居中。"
	},
	"images.grayscale_24": {
		"prefix": "images.grayscale",
			"body": [
				"images.grayscale($1)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `img` {Image} 图片\n*   返回 {Image}\n\n灰度化图片，并返回灰度化后的图片。"
	},
	"images.threshold_25": {
		"prefix": "images.threshold",
			"body": [
				"images.threshold($1, $2, $3, $4)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `img` {Image} 图片\n*   `threshold` {number} 阈值\n*   `maxVal` {number} 最大值\n*   `type` {string} 阈值化类型，默认为\"BINARY\"，参见[ThresholdTypes](https://docs.opencv.org/3.4.4/d7/d1b/group__imgproc__misc.html#gaa9e58d2860d4afa658ef70a9b1115576), 可选的值:\n    \n    *   `BINARY`\n    *   `BINARY_INV`\n    *   `TRUNC`\n    *   `TOZERO`\n    *   `TOZERO_INV`\n    *   `OTSU`\n    *   `TRIANGLE`\n*   返回 {Image}\n    \n\n将图片阈值化，并返回处理后的图像。可以用这个函数进行图片二值化。例如：`images.threshold(img, 100, 255, \"BINARY\")`，这个代码将图片中大于100的值全部变成255，其余变成0，从而达到二值化的效果。如果img是一张灰度化图片，这个代码将会得到一张黑白图片。\n\n可以参考有关博客（比如[threshold函数的使用](https://blog.csdn.net/u012566751/article/details/77046445)）或者OpenCV文档[threshold](https://docs.opencv.org/3.4.4/d7/d1b/group__imgproc__misc.html#gae8a4a146d1ca78c626a53577199e9c57)。"
	},
	"images.adaptiveThreshold_26": {
		"prefix": "images.adaptiveThreshold",
			"body": [
				"images.adaptiveThreshold($1, $2, $3, $4, $5, $6)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `img` {Image} 图片\n*   `maxValue` {number} 最大值\n*   `adaptiveMethod` {string} 在一个邻域内计算阈值所采用的算法，可选的值有：\n    *   `MEAN_C` 计算出领域的平均值再减去参数C的值\n    *   `GAUSSIAN_C` 计算出领域的高斯均值再减去参数C的值\n*   `thresholdType` {string} 阈值化类型，可选的值有：\n    *   `BINARY`\n    *   `BINARY_INV`\n*   `blockSize` {number} 邻域块大小\n*   `C` {number} 偏移值调整量\n*   返回 {Image}\n\n对图片进行自适应阈值化处理，并返回处理后的图像。\n\n可以参考有关博客（比如[threshold与adaptiveThreshold](https://blog.csdn.net/guduruyu/article/details/68059450)）或者OpenCV文档[adaptiveThreshold](https://docs.opencv.org/3.4.4/d7/d1b/group__imgproc__misc.html#ga72b913f352e4a1b1b397736707afcde3)。"
	},
	"images.cvtColor_27": {
		"prefix": "images.cvtColor",
			"body": [
				"images.cvtColor($1, $2, $3)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `img` {Image} 图片\n*   `code` {string} 颜色空间转换的类型，可选的值有一共有205个（参见[ColorConversionCodes](https://docs.opencv.org/3.4.4/d8/d01/group__imgproc__color__conversions.html#ga4e0972be5de079fed4e3a10e24ef5ef0)），这里只列出几个：\n    *   `BGR2GRAY` BGR转换为灰度\n    *   `BGR2HSV` BGR转换为HSV\n    *   \\`\\`\n*   `dstCn` {number} 目标图像的颜色通道数量，如果不填写则根据其他参数自动决定。\n*   返回 {Image}\n\n对图像进行颜色空间转换，并返回转换后的图像。\n\n可以参考有关博客（比如[颜色空间转换](https://blog.csdn.net/u011574296/article/details/70896811?locationNum=14&fps=1)）或者OpenCV文档[cvtColor](https://docs.opencv.org/3.4.4/d8/d01/group__imgproc__color__conversions.html#ga397ae87e1288a81d2363b61574eb8cab)。"
	},
	"images.inRange_28": {
		"prefix": "images.inRange",
			"body": [
				"images.inRange($1, $2, $3)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `img` {Image} 图片\n*   `lowerBound` {string} | {number} 颜色下界\n*   `upperBound` {string} | {number} 颜色下界\n*   返回 {Image}\n\n将图片二值化，在lowerBound~upperBound范围以外的颜色都变成0，在范围以内的颜色都变成255。\n\n例如`images.inRange(img, \"#000000\", \"#222222\")`。"
	},
	"images.interval_29": {
		"prefix": "images.interval",
			"body": [
				"images.interval($1, $2, $3)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `img` {Image} 图片\n*   `color` {string} | {number} 颜色值\n*   `interval` {number} 每个通道的范围间隔\n*   返回 {Image}\n\n将图片二值化，在color-interval ~ color+interval范围以外的颜色都变成0，在范围以内的颜色都变成255。这里对color的加减是对每个通道而言的。\n\n例如`images.interval(img, \"#888888\", 16)`，每个通道的颜色值均为0x88，加减16后的范围是\\[0x78, 0x98\\]，因此这个代码将把#787878~#989898的颜色变成#FFFFFF，而把这个范围以外的变成#000000。"
	},
	"images.blur_30": {
		"prefix": "images.blur",
			"body": [
				"images.blur($1, $2, $3, $4)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `img` {Image} 图片\n*   `size` {Array} 定义滤波器的大小，如\\[3, 3\\]\n*   `anchor` {Array} 指定锚点位置(被平滑点)，默认为图像中心\n*   `type` {string} 推断边缘像素类型，默认为\"DEFAULT\"，可选的值有：\n    *   `CONSTANT` iiiiii|abcdefgh|iiiiiii with some specified i\n    *   `REPLICATE` aaaaaa|abcdefgh|hhhhhhh\n    *   `REFLECT` fedcba|abcdefgh|hgfedcb\n    *   `WRAP` cdefgh|abcdefgh|abcdefg\n    *   `REFLECT_101` gfedcb|abcdefgh|gfedcba\n    *   `TRANSPARENT` uvwxyz|abcdefgh|ijklmno\n    *   `REFLECT101` same as BORDER\\_REFLECT\\_101\n    *   `DEFAULT` same as BORDER\\_REFLECT\\_101\n    *   `ISOLATED` do not look outside of ROI\n*   返回 {Image}\n\n对图像进行模糊（平滑处理），返回处理后的图像。\n\n可以参考有关博客（比如[实现图像平滑处理](https://www.cnblogs.com/denny402/p/3848316.html)）或者OpenCV文档[blur](https://docs.opencv.org/3.4.4/d4/d86/group__imgproc__filter.html#ga8c45db9afe636703801b0b2e440fce37)。"
	},
	"images.medianBlur_31": {
		"prefix": "images.medianBlur",
			"body": [
				"images.medianBlur($1, $2)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `img` {Image} 图片\n*   `size` {Array} 定义滤波器的大小，如\\[3, 3\\]\n*   返回 {Image}\n\n对图像进行中值滤波，返回处理后的图像。\n\n可以参考有关博客（比如[实现图像平滑处理](https://www.cnblogs.com/denny402/p/3848316.html)）或者OpenCV文档[blur](https://docs.opencv.org/3.4.4/d4/d86/group__imgproc__filter.html#ga564869aa33e58769b4469101aac458f9)。"
	},
	"images.gaussianBlur_32": {
		"prefix": "images.gaussianBlur",
			"body": [
				"images.gaussianBlur($1, $2, $3, $4, $5)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `img` {Image} 图片\n*   `size` {Array} 定义滤波器的大小，如\\[3, 3\\]\n*   `sigmaX` {number} x方向的标准方差，不填写则自动计算\n*   `sigmaY` {number} y方向的标准方差，不填写则自动计算\n*   `type` {string} 推断边缘像素类型，默认为\"DEFAULT\"，参见`images.blur`\n*   返回 {Image}\n\n对图像进行高斯模糊，返回处理后的图像。\n\n可以参考有关博客（比如[实现图像平滑处理](https://www.cnblogs.com/denny402/p/3848316.html)）或者OpenCV文档[GaussianBlur](https://docs.opencv.org/3.4.4/d4/d86/group__imgproc__filter.html#gaabe8c836e97159a9193fb0b11ac52cf1)。"
	},
	"images.matToImage_33": {
		"prefix": "images.matToImage",
			"body": [
				"images.matToImage($1)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `mat` {Mat} OpenCV的Mat对象\n*   返回 {Image}\n\n把Mat对象转换为Image对象。"
	},
	"images.找图找色_34": {
		"prefix": "images.找图找色",
			"body": [
				"images.找图找色($1)"
			],
				"description": "向系统申请屏幕截图权限，返回是否请求成功。\n\n第一次使用该函数会弹出截图权限请求，建议选择“总是允许”。\n\n这个函数只是申请截图权限，并不会真正执行截图，真正的截图函数是`captureScreen()`。\n\n该函数在截图脚本中只需执行一次，而无需每次调用`captureScreen()`都调用一次。\n\n**如果不指定landscape值，则截图方向由当前设备屏幕方向决定**，因此务必注意执行该函数时的屏幕方向。\n\n建议在本软件界面运行该函数，在其他软件界面运行时容易出现一闪而过的黑屏现象。\n\n示例:\n\n    //请求截图\n    if(!requestScreenCapture()){\n        toast(\"请求截图失败\");\n        exit();\n    }\n    //连续截图10张图片(间隔1秒)并保存到存储卡目录\n    for(var i = 0; i < 10; i++){\n        captureScreen(\"/sdcard/screencapture\" + i + \".png\");\n        sleep(1000);\n    }\n    \n\n该函数也可以作为全局函数使用。"
	},
	"images.requestScreenCapture_35": {
		"prefix": "images.requestScreenCapture",
			"body": [
				"images.requestScreenCapture($1)"
			],
				"description": "向系统申请屏幕截图权限，返回是否请求成功。\n\n第一次使用该函数会弹出截图权限请求，建议选择“总是允许”。\n\n这个函数只是申请截图权限，并不会真正执行截图，真正的截图函数是`captureScreen()`。\n\n该函数在截图脚本中只需执行一次，而无需每次调用`captureScreen()`都调用一次。\n\n**如果不指定landscape值，则截图方向由当前设备屏幕方向决定**，因此务必注意执行该函数时的屏幕方向。\n\n建议在本软件界面运行该函数，在其他软件界面运行时容易出现一闪而过的黑屏现象。\n\n示例:\n\n    //请求截图\n    if(!requestScreenCapture()){\n        toast(\"请求截图失败\");\n        exit();\n    }\n    //连续截图10张图片(间隔1秒)并保存到存储卡目录\n    for(var i = 0; i < 10; i++){\n        captureScreen(\"/sdcard/screencapture\" + i + \".png\");\n        sleep(1000);\n    }\n    \n\n该函数也可以作为全局函数使用。"
	},
	"images.captureScreen_36": {
		"prefix": "images.captureScreen",
			"body": [
				"images.captureScreen()"
			],
				"description": "截取当前屏幕并返回一个Image对象。\n\n没有截图权限时执行该函数会抛出SecurityException。\n\n该函数不会返回null，两次调用可能返回相同的Image对象。这是因为设备截图的更新需要一定的时间，短时间内（一般来说是16ms）连续调用则会返回同一张截图。\n\n截图需要转换为Bitmap格式，从而该函数执行需要一定的时间(0~20ms)。\n\n另外在requestScreenCapture()执行成功后需要一定时间后才有截图可用，因此如果立即调用captureScreen()，会等待一定时间后(一般为几百ms)才返回截图。\n\n例子:\n\n    //请求横屏截图\n    requestScreenCapture(true);\n    //截图\n    var img = captureScreen();\n    //获取在点(100, 100)的颜色值\n    var color = images.pixel(img, 100, 100);\n    //显示该颜色值\n    toast(colors.toString(color));\n    \n\n该函数也可以作为全局函数使用。"
	},
	"images.captureScreen_37": {
		"prefix": "images.captureScreen",
			"body": [
				"images.captureScreen($1)"
			],
				"description": "截取当前屏幕并以PNG格式保存到path中。如果文件不存在会被创建；文件存在会被覆盖。\n\n该函数不会返回任何值。该函数也可以作为全局函数使用。"
	},
	"images.pixel_38": {
		"prefix": "images.pixel",
			"body": [
				"images.pixel($1, $2, $3)"
			],
				"description": "返回图片image在点(x, y)处的像素的ARGB值。\n\n该值的格式为0xAARRGGBB，是一个\"32位整数\"(虽然JavaScript中并不区分整数类型和其他数值类型)。\n\n坐标系以图片左上角为原点。以图片左侧边为y轴，上侧边为x轴。"
	},
	"images.findColor_39": {
		"prefix": "images.findColor",
			"body": [
				"images.findColor($1, $2, $3)"
			],
				"description": "在图片中寻找颜色color。找到时返回找到的点Point，找不到时返回null。\n\n选项包括：\n\n*   `region` {Array} 找色区域。是一个两个或四个元素的数组。(region\\[0\\], region\\[1\\])表示找色区域的左上角；region\\[2\\]\\*region\\[3\\]表示找色区域的宽高。如果只有region只有两个元素，则找色区域为(region\\[0\\], region\\[1\\])到屏幕右下角。如果不指定region选项，则找色区域为整张图片。\n*   `threshold` {number} 找色时颜色相似度的临界值，范围为0~255（越小越相似，0为颜色相等，255为任何颜色都能匹配）。默认为4。threshold和浮点数相似度(0.0~1.0)的换算为 similarity = (255 - threshold) / 255.\n\n该函数也可以作为全局函数使用。\n\n一个循环找色的例子如下：\n\n    requestScreenCapture();\n    \n    //循环找色，找到红色(#ff0000)时停止并报告坐标\n    while(true){\n        var img = captureScreen();\n        var point = findColor(img, \"#ff0000\");\n        if(point){\n            toast(\"找到红色，坐标为(\" + point.x + \", \" + point.y + \")\");\n        }\n    }\n    \n\n一个区域找色的例子如下：\n\n    //读取本地图片/sdcard/1.png\n    var img = images.read(\"/sdcard/1.png\");\n    //判断图片是否加载成功\n    if(!img){\n        toast(\"没有该图片\");\n        exit();\n    }\n    //在该图片中找色，指定找色区域为在位置(400, 500)的宽为300长为200的区域，指定找色临界值为4\n    var point = findColor(img, \"#00ff00\", {\n         region: [400, 500, 300, 200],\n         threshold: 4\n     });\n    if(point){\n        toast(\"找到啦:\" + point);\n    }else{\n        toast(\"没找到\");\n    }"
	},
	"images.findColorInRegion_40": {
		"prefix": "images.findColorInRegion",
			"body": [
				"images.findColorInRegion($1, $2, $3, $4, $5, $6, $7)"
			],
				"description": "区域找色的简便方法。\n\n相当于\n\n    images.findColor(img, color, {\n         region: [x, y, width, height],\n         threshold: threshold\n    });\n    \n\n该函数也可以作为全局函数使用。"
	},
	"images.findColorEquals_41": {
		"prefix": "images.findColorEquals",
			"body": [
				"images.findColorEquals($1, $2, $3, $4, $5, $6, $7)"
			],
				"description": "在图片img指定区域中找到颜色和color完全相等的某个点，并返回该点的左边；如果没有找到，则返回`null`。\n\n找色区域通过`x`, `y`, `width`, `height`指定，如果不指定找色区域，则在整张图片中寻找。\n\n该函数也可以作为全局函数使用。\n\n示例： (通过找QQ红点的颜色来判断是否有未读消息)\n\n    requestScreenCapture();\n    launchApp(\"QQ\");\n    sleep(1200);\n    var p = findColorEquals(captureScreen(), \"#f64d30\");\n    if(p){\n        toast(\"有未读消息\");\n    }else{\n        toast(\"没有未读消息\");\n    }"
	},
	"images.findMultiColors_42": {
		"prefix": "images.findMultiColors",
			"body": [
				"images.findMultiColors($1, $2, $3, $4)"
			],
				"description": "多点找色，类似于按键精灵的多点找色，其过程如下：\n\n1.  在图片img中找到颜色firstColor的位置(x0, y0)\n2.  对于数组colors的每个元素\\[x, y, color\\]，检查图片img在位置(x + x0, y + y0)上的像素是否是颜色color，是的话返回(x0, y0)，否则继续寻找firstColor的位置，重新执行第1步\n3.  整张图片都找不到时返回`null`\n\n例如，对于代码`images.findMultiColors(img, \"#123456\", [[10, 20, \"#ffffff\"], [30, 40, \"#000000\"]])`，假设图片在(100, 200)的位置的颜色为#123456, 这时如果(110, 220)的位置的颜色为#fffff且(130, 240)的位置的颜色为#000000，则函数返回点(100, 200)。\n\n如果要指定找色区域，则在options中指定，例如:\n\n    var p = images.findMultiColors(img, \"#123456\", [[10, 20, \"#ffffff\"], [30, 40, \"#000000\"]], {\n        region: [0, 960, 1080, 960]\n    });"
	},
	"images.detectsColor_43": {
		"prefix": "images.detectsColor",
			"body": [
				"images.detectsColor($1, $2, $3, $4, $5, $6)"
			],
				"description": "返回图片image在位置(x, y)处是否匹配到颜色color。用于检测图片中某个位置是否是特定颜色。\n\n一个判断微博客户端的某个微博是否被点赞过的例子：\n\n    requestScreenCapture();\n    //找到点赞控件\n    var like = id(\"ly_feed_like_icon\").findOne();\n    //获取该控件中点坐标\n    var x = like.bounds().centerX();\n    var y = like.bounds().centerY();\n    //截图\n    var img = captureScreen();\n    //判断在该坐标的颜色是否为橙红色\n    if(images.detectsColor(img, \"#fed9a8\", x, y)){\n        //是的话则已经是点赞过的了，不做任何动作\n    }else{\n        //否则点击点赞按钮\n        like.click();\n    }"
	},
	"images.findImage_44": {
		"prefix": "images.findImage",
			"body": [
				"images.findImage($1, $2, $3)"
			],
				"description": "找图。在大图片img中查找小图片template的位置（模块匹配），找到时返回位置坐标(Point)，找不到时返回null。\n\n选项包括：\n\n*   `threshold` {number} 图片相似度。取值范围为0~1的浮点数。默认值为0.9。\n*   `region` {Array} 找图区域。参见findColor函数关于region的说明。\n*   `level` {number} **一般而言不必修改此参数**。不加此参数时该参数会根据图片大小自动调整。找图算法是采用图像金字塔进行的, level参数表示金字塔的层次, level越大可能带来越高的找图效率，但也可能造成找图失败（图片因过度缩小而无法分辨）或返回错误位置。因此，除非您清楚该参数的意义并需要进行性能调优，否则不需要用到该参数。\n\n该函数也可以作为全局函数使用。\n\n一个最简单的找图例子如下：\n\n    var img = images.read(\"/sdcard/大图.png\");\n    var templ = images.read(\"/sdcard/小图.png\");\n    var p = findImage(img, templ);\n    if(p){\n        toast(\"找到啦:\" + p);\n    }else{\n        toast(\"没找到\");\n    }\n    \n\n稍微复杂点的区域找图例子如下：\n\n    auto();\n    requestScreenCapture();\n    var wx = images.read(\"/sdcard/微信图标.png\");\n    //返回桌面\n    home();\n    //截图并找图\n    var p = findImage(captureScreen(), wx, {\n        region: [0, 50],\n        threshold: 0.8\n    });\n    if(p){\n        toast(\"在桌面找到了微信图标啦: \" + p);\n    }else{\n        toast(\"在桌面没有找到微信图标\");\n    }"
	},
	"images.findImageInRegion_45": {
		"prefix": "images.findImageInRegion",
			"body": [
				"images.findImageInRegion($1, $2, $3, $4, $5, $6, $7)"
			],
				"description": "区域找图的简便方法。相当于：\n\n    images.findImage(img, template, {\n        region: [x, y, width, height],\n        threshold: threshold\n    })\n    \n\n该函数也可以作为全局函数使用。"
	},
	"images.matchTemplate_46": {
		"prefix": "images.matchTemplate",
			"body": [
				"images.matchTemplate($1, $2, $3)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `img` {Image} 大图片\n*   `template` {Image} 小图片（模板）\n*   `options` {Object} 找图选项：\n    *   `threshold` {number} 图片相似度。取值范围为0~1的浮点数。默认值为0.9。\n    *   `region` {Array} 找图区域。参见findColor函数关于region的说明。\n    *   `max` {number} 找图结果最大数量，默认为5\n    *   `level` {number} **一般而言不必修改此参数**。不加此参数时该参数会根据图片大小自动调整。找图算法是采用图像金字塔进行的, level参数表示金字塔的层次, level越大可能带来越高的找图效率，但也可能造成找图失败（图片因过度缩小而无法分辨）或返回错误位置。因此，除非您清楚该参数的意义并需要进行性能调优，否则不需要用到该参数。\n*   返回 {MatchingResult}\n\n在大图片中搜索小图片，并返回搜索结果MatchingResult。该函数可以用于找图时找出多个位置，可以通过max参数控制最大的结果数量。也可以对匹配结果进行排序、求最值等操作。"
	},
	"matchingresult.points_47": {
		"prefix": "matchingresult.points",
			"body": [
				"matchingresult.points($1)"
			],
				"description": "*   {Array} 匹配位置的数组。"
	},
	"matchingresult.first_48": {
		"prefix": "matchingresult.first",
			"body": [
				"matchingresult.first($1)"
			],
				"description": "第一个匹配结果。如果没有任何匹配，则返回`null`。"
	},
	"matchingresult.last_49": {
		"prefix": "matchingresult.last",
			"body": [
				"matchingresult.last($1)"
			],
				"description": "最后一个匹配结果。如果没有任何匹配，则返回`null`。"
	},
	"matchingresult.leftmost_50": {
		"prefix": "matchingresult.leftmost",
			"body": [
				"matchingresult.leftmost($1)"
			],
				"description": "位于大图片最左边的匹配结果。如果没有任何匹配，则返回`null`。"
	},
	"matchingresult.topmost_51": {
		"prefix": "matchingresult.topmost",
			"body": [
				"matchingresult.topmost($1)"
			],
				"description": "位于大图片最上边的匹配结果。如果没有任何匹配，则返回`null`。"
	},
	"matchingresult.rightmost_52": {
		"prefix": "matchingresult.rightmost",
			"body": [
				"matchingresult.rightmost($1)"
			],
				"description": "位于大图片最右边的匹配结果。如果没有任何匹配，则返回`null`。"
	},
	"matchingresult.bottommost_53": {
		"prefix": "matchingresult.bottommost",
			"body": [
				"matchingresult.bottommost($1)"
			],
				"description": "位于大图片最下边的匹配结果。如果没有任何匹配，则返回`null`。"
	},
	"matchingresult.best_54": {
		"prefix": "matchingresult.best",
			"body": [
				"matchingresult.best($1)"
			],
				"description": "相似度最高的匹配结果。如果没有任何匹配，则返回`null`。"
	},
	"matchingresult.worst_55": {
		"prefix": "matchingresult.worst",
			"body": [
				"matchingresult.worst($1)"
			],
				"description": "相似度最低的匹配结果。如果没有任何匹配，则返回`null`。"
	},
	"matchingresult.sortBy_56": {
		"prefix": "matchingresult.sortBy",
			"body": [
				"matchingresult.sortBy($1, $2)"
			],
				"description": "对匹配结果进行排序，并返回排序后的结果。\n\n    var result = images.matchTemplate(img, template, {\n        max: 100\n    });\n    log(result.sortBy(\"top-right\"));"
	},
	"image.getWidth_57": {
		"prefix": "image.getWidth",
			"body": [
				"image.getWidth()"
			],
				"description": "返回以像素为单位图片宽度。"
	},
	"image.getHeight_58": {
		"prefix": "image.getHeight",
			"body": [
				"image.getHeight()"
			],
				"description": "返回以像素为单位的图片高度。"
	},
	"image.saveTo_59": {
		"prefix": "image.saveTo",
			"body": [
				"image.saveTo($1)"
			],
				"description": "把图片保存到路径path。（如果文件存在则覆盖）"
	},
	"image.pixel_60": {
		"prefix": "image.pixel",
			"body": [
				"image.pixel($1, $2)"
			],
				"description": "返回图片image在点(x, y)处的像素的ARGB值。\n\n该值的格式为0xAARRGGBB，是一个\"32位整数\"(虽然JavaScript中并不区分整数类型和其他数值类型)。\n\n坐标系以图片左上角为原点。以图片左侧边为y轴，上侧边为x轴。\n\n##"
	},
	"point.x_61": {
		"prefix": "point.x",
			"body": [
				"point.x"
			],
				"description": "横坐标。"
	},
	"point.y_62": {
		"prefix": "point.y",
			"body": [
				"point.y"
			],
				"description": "纵坐标。"
	},
	"keys.back_0": {
		"prefix": "keys.back",
			"body": [
				"keys.back($1)"
			],
				"description": "模拟按下返回键。返回是否执行成功。 此函数依赖于无障碍服务。"
	},
	"keys.home_1": {
		"prefix": "keys.home",
			"body": [
				"keys.home($1)"
			],
				"description": "模拟按下Home键。返回是否执行成功。 此函数依赖于无障碍服务。"
	},
	"keys.powerDialog_2": {
		"prefix": "keys.powerDialog",
			"body": [
				"keys.powerDialog($1)"
			],
				"description": "弹出电源键菜单。返回是否执行成功。 此函数依赖于无障碍服务。"
	},
	"keys.notifications_3": {
		"prefix": "keys.notifications",
			"body": [
				"keys.notifications($1)"
			],
				"description": "拉出通知栏。返回是否执行成功。 此函数依赖于无障碍服务。"
	},
	"keys.quickSettings_4": {
		"prefix": "keys.quickSettings",
			"body": [
				"keys.quickSettings($1)"
			],
				"description": "显示快速设置(下拉通知栏到底)。返回是否执行成功。 此函数依赖于无障碍服务。"
	},
	"keys.recents_5": {
		"prefix": "keys.recents",
			"body": [
				"keys.recents($1)"
			],
				"description": "显示最近任务。返回是否执行成功。 此函数依赖于无障碍服务。"
	},
	"keys.splitScreen_6": {
		"prefix": "keys.splitScreen",
			"body": [
				"keys.splitScreen($1)"
			],
				"description": "分屏。返回是否执行成功。 此函数依赖于无障碍服务, 并且需要系统自身功能的支持。"
	},
	"keys.Home_7": {
		"prefix": "keys.Home",
			"body": [
				"keys.Home()"
			],
				"description": "模拟按下Home键。 此函数依赖于root权限。"
	},
	"keys.Back_8": {
		"prefix": "keys.Back",
			"body": [
				"keys.Back()"
			],
				"description": "模拟按下返回键。 此函数依赖于root权限。"
	},
	"keys.Power_9": {
		"prefix": "keys.Power",
			"body": [
				"keys.Power()"
			],
				"description": "模拟按下电源键。 此函数依赖于root权限。"
	},
	"keys.Menu_10": {
		"prefix": "keys.Menu",
			"body": [
				"keys.Menu()"
			],
				"description": "模拟按下菜单键。 此函数依赖于root权限。"
	},
	"keys.VolumeUp_11": {
		"prefix": "keys.VolumeUp",
			"body": [
				"keys.VolumeUp()"
			],
				"description": "按下音量上键。 此函数依赖于root权限。"
	},
	"keys.VolumeDown_12": {
		"prefix": "keys.VolumeDown",
			"body": [
				"keys.VolumeDown()"
			],
				"description": "按键音量上键。 此函数依赖于root权限。"
	},
	"keys.Camera_13": {
		"prefix": "keys.Camera",
			"body": [
				"keys.Camera()"
			],
				"description": "模拟按下照相键。"
	},
	"keys.Up_14": {
		"prefix": "keys.Up",
			"body": [
				"keys.Up()"
			],
				"description": "模拟按下物理按键上。 此函数依赖于root权限。"
	},
	"keys.Down_15": {
		"prefix": "keys.Down",
			"body": [
				"keys.Down()"
			],
				"description": "模拟按下物理按键下。 此函数依赖于root权限。"
	},
	"keys.Left_16": {
		"prefix": "keys.Left",
			"body": [
				"keys.Left()"
			],
				"description": "模拟按下物理按键左。 此函数依赖于root权限。"
	},
	"keys.Right_17": {
		"prefix": "keys.Right",
			"body": [
				"keys.Right()"
			],
				"description": "模拟按下物理按键右。 此函数依赖于root权限。"
	},
	"keys.OK_18": {
		"prefix": "keys.OK",
			"body": [
				"keys.OK()"
			],
				"description": "模拟按下物理按键确定。 此函数依赖于root权限。"
	},
	"keys.Text_19": {
		"prefix": "keys.Text",
			"body": [
				"keys.Text($1)"
			],
				"description": ""
	},
	"keys.KeyCode_20": {
		"prefix": "keys.KeyCode",
			"body": [
				"keys.KeyCode($1)"
			],
				"description": ""
	},
	"media.scanFile_0": {
		"prefix": "media.scanFile",
			"body": [
				"media.scanFile($1)"
			],
				"description": "扫描路径path的媒体文件，将它加入媒体库中；或者如果该文件以及被删除，则通知媒体库移除该文件。\n\n媒体库包括相册、音乐库等，因此该函数可以用于把某个图片文件加入相册。\n\n    //请求截图\n    requestScreenCapture(false);\n    //截图\n    var im = captureScreen();\n    var path = \"/sdcard/screenshot.png\";\n    //保存图片\n    im.saveTo(path);\n    //把图片加入相册\n    media.scanFile(path);"
	},
	"media.playMusic_1": {
		"prefix": "media.playMusic",
			"body": [
				"media.playMusic($1, $2, $3)"
			],
				"description": "播放音乐文件path。该函数不会显示任何音乐播放界面。如果文件不存在或者文件不是受支持的音乐格式，则抛出`UncheckedIOException`异常。\n\n    //播放音乐\n    media.playMusic(\"/sdcard/1.mp3\");\n    //让音乐播放完\n    sleep(media.getMusicDuration());\n    \n\n如果要循环播放音乐，则使用looping参数：\n\n//传递第三个参数为true以循环播放音乐 media.playMusic(\"/sdcard/1.mp3\", 1, true); //等待三次播放的时间 sleep(media.getMusicDuration() \\* 3);\n\n如果要使用音乐播放器播放音乐，调用`app.viewFile(path)`函数。"
	},
	"media.musicSeekTo_2": {
		"prefix": "media.musicSeekTo",
			"body": [
				"media.musicSeekTo($1)"
			],
				"description": "把当前播放进度调整到时间msec的位置。如果当前没有在播放音乐，则调用函数没有任何效果。\n\n例如，要把音乐调到1分钟的位置，为`media.musicSeekTo(60 * 1000)`。\n\n    //播放音乐\n    media.playMusic(\"/sdcard/1.mp3\");\n    //调整到30秒的位置\n    media.musicSeekTo(30 * 1000);\n    //等待音乐播放完成\n    sleep(media.getMusicDuration() - 30 * 1000);"
	},
	"media.pauseMusic_3": {
		"prefix": "media.pauseMusic",
			"body": [
				"media.pauseMusic()"
			],
				"description": "暂停音乐播放。如果当前没有在播放音乐，则调用函数没有任何效果。"
	},
	"media.resumeMusic_4": {
		"prefix": "media.resumeMusic",
			"body": [
				"media.resumeMusic()"
			],
				"description": "继续音乐播放。如果当前没有播放过音乐，则调用该函数没有任何效果。"
	},
	"media.stopMusic_5": {
		"prefix": "media.stopMusic",
			"body": [
				"media.stopMusic()"
			],
				"description": "停止音乐播放。如果当前没有在播放音乐，则调用函数没有任何效果。"
	},
	"media.isMusicPlaying_6": {
		"prefix": "media.isMusicPlaying",
			"body": [
				"media.isMusicPlaying($1)"
			],
				"description": "返回当前是否正在播放音乐。"
	},
	"media.getMusicDuration_7": {
		"prefix": "media.getMusicDuration",
			"body": [
				"media.getMusicDuration($1)"
			],
				"description": "返回当前音乐的时长。单位毫秒。"
	},
	"media.getMusicCurrentPosition_8": {
		"prefix": "media.getMusicCurrentPosition",
			"body": [
				"media.getMusicCurrentPosition($1)"
			],
				"description": "返回当前音乐的播放进度(已经播放的时间)，单位毫秒。"
	},
	"q_&_a.js自带的模块和函数中没有的功能如何实现_0": {
		"prefix": "q_&_a.js自带的模块和函数中没有的功能如何实现",
			"body": [
				"q_&_a.js自带的模块和函数中没有的功能如何实现"
			],
				"description": "由于Auto.js支持直接调用Android的API，对于Auto.js没有内置的函数，可以直接通过修改Android代码为JavaScript代码实现。例如旋转图片的Android代码为：\n\n    import android.graphics.Bitmap;\n    import android.graphics.Matrix;\n    \n    public static Bitmap rotate(final Bitmap src,\n                                final int degrees,\n                                final float px,\n                                final float py) {\n        if (degrees == 0) return src;\n        Matrix matrix = new Matrix();\n        matrix.setRotate(degrees, px, py);\n        Bitmap ret = Bitmap.createBitmap(src, 0, 0, src.getWidth(), src.getHeight(), matrix, true);\n        return ret;\n    }\n    \n\n转换为JavaScript的代码后为：\n\n    importClass(android.graphics.Bitmap);\n    importClass(android.graphics.Matrix);\n    \n    function rotate(src, degrees, px, py){\n        if (degrees == 0) return src;\n        var matrix = new Matrix();\n        matrix.setRotate(degrees, px, py);\n        var ret = Bitmap.createBitmap(src, 0, 0, src.getWidth(), src.getHeight(), matrix, true);\n        return ret;\n    }\n    \n\n有关调用Android和Java的API的更多信息，参见[Work with Java](https://developer.mozilla.org/zh-CN/docs/Mozilla/Projects/Rhino/Scripting_Java)。"
	},
	"sensors.register_0": {
		"prefix": "sensors.register",
			"body": [
				"sensors.register($1, $2, $3)"
			],
				"description": "注册一个传感器监听并返回[SensorEventEmitter](#sensors_sensoreventemitter)。\n\n例如:\n\n    console.show();\n    //注册传感器监听\n    var sensor = sensors.register(\"gravity\");\n    if(sensor == null){\n        toast(\"不支持重力传感器\");\n        exit();\n    }\n    //监听数据\n    sensor.on(\"change\", (gx, gy, gz)=>{\n        log(\"重力加速度: %d, %d, %d\", gx, gy, gz);\n    });\n    \n\n可以通过delay参数来指定传感器数据的更新频率，例如：\n\n    var sensor = sensors.register(\"gravity\", sensors.delay.game);\n    \n\n另外，如果不支持`sensorName`所指定的传感器，那么该函数将返回`null`；但如果`sensors.ignoresUnsupportedSensor`的值被设置为`true`, 则该函数会返回一个不会分发任何传感器事件的[SensorEventEmitter](#sensors_sensoreventemitter)。\n\n例如:\n\n    sensors.ignoresUnsupportedSensor = true;\n    //无需null判断\n    sensors.register(\"gravity\").on(\"change\", (gx, gy, gz)=>{\n        log(\"重力加速度: %d, %d, %d\", gx, gy, gz);\n    });\n    \n\n更多信息，参见[SensorEventEmitter](#sensors_sensoreventemitter)和[sensors.ignoresUnsupportedSensor](#sensors_sensors_ignoresUnsupportedSensor)。"
	},
	"sensors.unregister_1": {
		"prefix": "sensors.unregister",
			"body": [
				"sensors.unregister($1)"
			],
				"description": "注销该传感器监听器。被注销的监听器将不再能监听传感器数据。\n\n    //注册一个传感器监听器\n    var sensor = sensors.register(\"gravity\");\n    if(sensor == null){\n        exit();\n    }\n    //2秒后注销该监听器\n    setTimeout(()=> {\n        sensors.unregister(sensor);\n    }, 2000);"
	},
	"sensors.unregisterAll_2": {
		"prefix": "sensors.unregisterAll",
			"body": [
				"sensors.unregisterAll()"
			],
				"description": "注销所有传感器监听器。"
	},
	"sensors.ignoresUnsupportedSensor_3": {
		"prefix": "sensors.ignoresUnsupportedSensor",
			"body": [
				"sensors.ignoresUnsupportedSensor"
			],
				"description": "表示是否忽略不支持的传感器。如果该值被设置为`true`，则函数`sensors.register()`即使对不支持的传感器也会返回一个无任何数据的虚拟传感器监听，也就是`sensors.register()`不会返回`null`从而避免非空判断，并且此时会触发`sensors`的\"unsupported\\_sensor\"事件。\n\n    //忽略不支持的传感器\n    sensors.ignoresUnsupportedSensor = true;\n    //监听有不支持的传感器时的事件\n    sensors.on(\"unsupported_sensor\", function(sensorName){\n        toastLog(\"不支持的传感器: \" + sensorName);\n    });\n    //随便注册一个不存在的传感器。\n    log(sensors.register(\"aaabbb\"));"
	},
	"storages.create_0": {
		"prefix": "storages.create",
			"body": [
				"storages.create($1)"
			],
				"description": "创建一个本地存储并返回一个`Storage`对象。不同名称的本地存储的数据是隔开的，而相同名称的本地存储的数据是共享的。\n\n例如在一个脚本中，创建名称为ABC的存储并存入a=123:\n\n    var storage = storages.create(\"ABC\");\n    storage.put(\"a\", 123);\n    \n\n而在另一个脚本中是可以获取到ABC以及a的值的：\n\n    var storage = storages.create(\"ABC\");\n    log(\"a = \" + storage.get(\"a\"));\n    \n\n因此，本地存储的名称比较重要，尽量使用含有域名、作者邮箱等唯一信息的名称来避免冲突，例如：\n\n    var storage = storages.create(\"2732014414@qq.com:ABC\");"
	},
	"storages.remove_1": {
		"prefix": "storages.remove",
			"body": [
				"storages.remove($1)"
			],
				"description": "删除一个本地存储以及他的全部数据。如果该存储不存在，返回false；否则返回true。"
	},
	"storages.get_2": {
		"prefix": "storages.get",
			"body": [
				"storages.get($1, $2)"
			],
				"description": "从本地存储中取出键值为key的数据并返回。\n\n如果该存储中不包含该数据，这时若指定了默认值参数则返回默认值，否则返回undefined。\n\n返回的数据可能是任意数据类型，这取决于使用`Storage.put`保存该键值的数据时的数据类型。"
	},
	"storages.put_3": {
		"prefix": "storages.put",
			"body": [
				"storages.put($1, $2)"
			],
				"description": "把值value保存到本地存储中。value可以是undefined以外的任意数据类型。如果value为undefined则抛出TypeError。\n\n存储的过程实际上是使用JSON.stringify把value转换为字符串再保存，因此value必须是可JSON化的才能被接受。"
	},
	"storages.remove_4": {
		"prefix": "storages.remove",
			"body": [
				"storages.remove($1)"
			],
				"description": "移除键值为key的数据。不返回任何值。"
	},
	"storages.contains_5": {
		"prefix": "storages.contains",
			"body": [
				"storages.contains($1)"
			],
				"description": "返回该本地存储是否包含键值为key的数据。是则返回true，否则返回false。"
	},
	"storages.clear_6": {
		"prefix": "storages.clear",
			"body": [
				"storages.clear()"
			],
				"description": "移除该本地存储的所有数据。不返回任何值。"
	},
	"threads.start_0": {
		"prefix": "threads.start",
			"body": [
				"threads.start($1, $2)"
			],
				"description": "启动一个新线程并执行action。\n\n例如:\n\n    threads.start(function(){\n        //在新线程执行的代码\n        while(true){\n            log(\"子线程\");\n        }\n    });\n    while(true){\n        log(\"脚本主线程\");\n    }\n    \n\n通过该函数返回的[Thread](#threads_thread)对象可以获取该线程的状态，控制该线程的运行中。例如:\n\n    var thread = threads.start(function(){\n        while(true){\n            log(\"子线程\");\n        }\n    });\n    //停止线程执行\n    thread.interrupt();\n    \n\n更多信息参见[Thread](#threads_thread)。"
	},
	"threads.shutDownAll_1": {
		"prefix": "threads.shutDownAll",
			"body": [
				"threads.shutDownAll()"
			],
				"description": "停止所有通过`threads.start()`启动的子线程。"
	},
	"threads.currentThread_2": {
		"prefix": "threads.currentThread",
			"body": [
				"threads.currentThread($1)"
			],
				"description": "返回当前线程。"
	},
	"threads.disposable_3": {
		"prefix": "threads.disposable",
			"body": [
				"threads.disposable($1)"
			],
				"description": "新建一个Disposable对象，用于等待另一个线程的某个一次性结果。更多信息参见[线程通信](#threads_线程通信)以及[Disposable](#threads_disposable)。"
	},
	"threads.atomic_4": {
		"prefix": "threads.atomic",
			"body": [
				"threads.atomic($1, $2)"
			],
				"description": "新建一个整数原子变量。更多信息参见[线程安全](#threads_线程安全)以及[AtomicLong](https://docs.oracle.com/javase/7/docs/api/java/util/concurrent/atomic/AtomicLong.html)。"
	},
	"threads.lock_5": {
		"prefix": "threads.lock",
			"body": [
				"threads.lock($1)"
			],
				"description": "新建一个可重入锁。更多信息参见[线程安全](#threads_线程安全)以及[ReentrantLock](https://docs.oracle.com/javase/7/docs/api/java/util/concurrent/locks/ReentrantLock.html)。"
	},
	"thread.interrupt_6": {
		"prefix": "thread.interrupt",
			"body": [
				"thread.interrupt()"
			],
				"description": "中断线程运行。"
	},
	"thread.join_7": {
		"prefix": "thread.join",
			"body": [
				"thread.join($1)"
			],
				"description": "等待线程执行完成。如果timeout为0，则会一直等待直至该线程执行完成；否则最多等待timeout毫秒的时间。\n\n例如:\n\n    var sum = 0;\n    //启动子线程计算1加到10000\n    var thread = threads.start(function(){\n        for(var i = 0; i < 10000; i++){\n            sum += i;\n        }\n    });\n    //等待该线程完成\n    thread.join();\n    toast(\"sum = \" + sum);"
	},
	"thread.isAlive_8": {
		"prefix": "thread.isAlive",
			"body": [
				"thread.isAlive($1)"
			],
				"description": "返回线程是否存活。如果线程仍未开始或已经结束，返回`false`; 如果线程已经开始或者正在运行中，返回`true`。"
	},
	"thread.waitFor_9": {
		"prefix": "thread.waitFor",
			"body": [
				"thread.waitFor()"
			],
				"description": "等待线程开始执行。调用`threads.start()`以后线程仍然需要一定时间才能开始执行，因此调用此函数会等待线程开始执行；如果线程已经处于执行状态则立即返回。\n\n    var thread = threads.start(function(){\n        //do something\n    });\n    thread.waitFor();\n    thread.setTimeout(function(){\n        //do something\n    }, 1000);"
	},
	"thread.setTimeout_10": {
		"prefix": "thread.setTimeout",
			"body": [
				"thread.setTimeout($1, $2, $3)"
			],
				"description": "参见[timers.setTimeout()](timers.html#timers_settimeout_callback_delay_args)。\n\n区别在于, 该定时器会在该线程执行。如果当前线程仍未开始执行或已经执行结束，则抛出`IllegalStateException`。\n\n    log(\"当前线程(主线程):\" + threads.currentThread());\n    \n    var thread = threads.start(function(){\n        //设置一个空的定时来保持线程的运行状态\n        setInterval(function(){}, 1000);\n    });\n    \n    sleep(1000);\n    thread.setTimeout(function(){\n        log(\"当前线程(子线程):\" + threads.currentThread());\n        exit();\n    }, 1000);"
	},
	"thread.setInterval_11": {
		"prefix": "thread.setInterval",
			"body": [
				"thread.setInterval($1, $2, $3)"
			],
				"description": "参见[timers.setInterval()](timers.html#timers_setinterval_callback_delay_args)。\n\n区别在于, 该定时器会在该线程执行。如果当前线程仍未开始执行或已经执行结束，则抛出`IllegalStateException`。"
	},
	"thread.setImmediate_12": {
		"prefix": "thread.setImmediate",
			"body": [
				"thread.setImmediate($1, $2)"
			],
				"description": "参见[timers.setImmediate()](timers.html#timers_setimmediate_callback_delay_args)。\n\n区别在于, 该定时器会在该线程执行。如果当前线程仍未开始执行或已经执行结束，则抛出`IllegalStateException`。"
	},
	"thread.clearInterval_13": {
		"prefix": "thread.clearInterval",
			"body": [
				"thread.clearInterval($1)"
			],
				"description": "参见[timers.clearInterval()](timers.html#timers_clearinterval_id)。\n\n区别在于, 该定时器会在该线程执行。如果当前线程仍未开始执行或已经执行结束，则抛出`IllegalStateException`。"
	},
	"thread.clearTimeout_14": {
		"prefix": "thread.clearTimeout",
			"body": [
				"thread.clearTimeout($1)"
			],
				"description": "参见[timers.clearTimeout()](timers.html#timers_cleartimeout_id)。\n\n区别在于, 该定时器会在该线程执行。如果当前线程仍未开始执行或已经执行结束，则抛出`IllegalStateException`。"
	},
	"thread.clearImmediate_15": {
		"prefix": "thread.clearImmediate",
			"body": [
				"thread.clearImmediate($1)"
			],
				"description": "参见[timers.clearImmediate()](timers.html#timers_clearimmediate_id)。\n\n区别在于, 该定时器会在该线程执行。如果当前线程仍未开始执行或已经执行结束，则抛出`IllegalStateException`。"
	},
	"线程安全.sync_16": {
		"prefix": "线程安全.sync",
			"body": [
				"线程安全.sync($1, $2)"
			],
				"description": "给函数func加上同步锁并作为一个新函数返回。\n\n    var i = 0;\n    function add(x){\n        i += x;\n    }\n    \n    var syncAdd = sync(add);\n    syncAdd(10);\n    toast(i);"
	},
	"timers.setInterval_0": {
		"prefix": "timers.setInterval",
			"body": [
				"timers.setInterval($1, $2, $3)"
			],
				"description": "预定每隔 delay 毫秒重复执行的 callback。 返回一个用于 clearInterval() 的 id。\n\n当 delay 小于 0 时，delay 会被设为 0。"
	},
	"timers.setTimeout_1": {
		"prefix": "timers.setTimeout",
			"body": [
				"timers.setTimeout($1, $2, $3)"
			],
				"description": "预定在 delay 毫秒之后执行的单次 callback。 返回一个用于 clearTimeout() 的 id。\n\ncallback 可能不会精确地在 delay 毫秒被调用。 Auto.js 不能保证回调被触发的确切时间，也不能保证它们的顺序。 回调会在尽可能接近所指定的时间上调用。\n\n当 delay 小于 0 时，delay 会被设为 0。"
	},
	"timers.setImmediate_2": {
		"prefix": "timers.setImmediate",
			"body": [
				"timers.setImmediate($1, $2)"
			],
				"description": "预定立即执行的 callback，它是在 I/O 事件的回调之后被触发。 返回一个用于 clearImmediate() 的 id。\n\n当多次调用 setImmediate() 时，callback 函数会按照它们被创建的顺序依次执行。 每次事件循环迭代都会处理整个回调队列。 如果一个立即定时器是被一个正在执行的回调排入队列的，则该定时器直到下一次事件循环迭代才会被触发。\n\nsetImmediate()、setInterval() 和 setTimeout() 方法每次都会返回表示预定的计时器的id。 它们可用于取消定时器并防止触发。"
	},
	"timers.clearInterval_3": {
		"prefix": "timers.clearInterval",
			"body": [
				"timers.clearInterval($1)"
			],
				"description": "取消一个由 setInterval() 创建的循环定时任务。\n\n例如：\n\n    //每5秒就发出一次hello\n    var id = setInterval(function(){\n        toast(\"hello\");\n    }, 5000);\n    //1分钟后取消循环\n    setTimeout(function(){\n        clearInterval(id);\n    }, 60 * 1000);"
	},
	"timers.clearTimeout_4": {
		"prefix": "timers.clearTimeout",
			"body": [
				"timers.clearTimeout($1)"
			],
				"description": "取消一个由 setTimeout() 创建的定时任务。"
	},
	"timers.clearImmediate_5": {
		"prefix": "timers.clearImmediate",
			"body": [
				"timers.clearImmediate($1)"
			],
				"description": "取消一个由 setImmediate() 创建的 Immediate 对象。"
	},
	"Tab: tab.statusBarColor_0": {
		"prefix": "Tab: tab.statusBarColor",
			"body": [
				"Tab: tab.statusBarColor($1, $2)"
			],
				"description": ""
	},
	"Tab: tab.showPopupMenu_1": {
		"prefix": "Tab: tab.showPopupMenu",
			"body": [
				"Tab: tab.showPopupMenu($1, $2)"
			],
				"description": ""
	},
	"ui.statusBarColor_2": {
		"prefix": "ui.statusBarColor",
			"body": [
				"ui.statusBarColor($1, $2)"
			],
				"description": ""
	},
	"ui.showPopupMenu_3": {
		"prefix": "ui.showPopupMenu",
			"body": [
				"ui.showPopupMenu($1, $2)"
			],
				"description": ""
	},
	"util.callbackify_0": {
		"prefix": "util.callbackify",
			"body": [
				"util.callbackify($1)"
			],
				"description": "Takes an `async` function (or a function that returns a Promise) and returns a function following the Node.js error first callback style. In the callback, the first argument will be the rejection reason (or `null` if the Promise resolved), and the second argument will be the resolved value.\n\nFor example:\n\n    const util = require('util');\n    \n    async function fn() {\n      return await Promise.resolve('hello world');\n    }\n    const callbackFunction = util.callbackify(fn);\n    \n    callbackFunction((err, ret) => {\n      if (err) throw err;\n      console.log(ret);\n    });\n    \n\nWill print:\n\n    hello world\n    \n\n_Note_:\n\n*   The callback is executed asynchronously, and will have a limited stack trace. If the callback throws, the process will emit an [`'uncaughtException'`](process.html#process_event_uncaughtexception) event, and if not handled will exit.\n    \n*   Since `null` has a special meaning as the first argument to a callback, if a wrapped function rejects a `Promise` with a falsy value as a reason, the value is wrapped in an `Error` with the original value stored in a field named `reason`.\n    \n        function fn() {\n          return Promise.reject(null);\n        }\n        const callbackFunction = util.callbackify(fn);\n        \n        callbackFunction((err, ret) => {\n          // When the Promise was rejected with `null` it is wrapped with an Error and\n          // the original value is stored in `reason`.\n          err && err.hasOwnProperty('reason') && err.reason === null;  // true\n        });"
	},
	"util.debuglog_1": {
		"prefix": "util.debuglog",
			"body": [
				"util.debuglog($1)"
			],
				"description": "The `util.debuglog()` method is used to create a function that conditionally writes debug messages to `stderr` based on the existence of the `NODE_DEBUG` environment variable. If the `section` name appears within the value of that environment variable, then the returned function operates similar to [`console.error()`](console.html#console_console_error_data_args). If not, then the returned function is a no-op.\n\nFor example:\n\n    const util = require('util');\n    const debuglog = util.debuglog('foo');\n    \n    debuglog('hello from foo [%d]', 123);\n    \n\nIf this program is run with `NODE_DEBUG=foo` in the environment, then it will output something like:\n\n    FOO 3245: hello from foo [123]\n    \n\nwhere `3245` is the process id. If it is not run with that environment variable set, then it will not print anything.\n\nMultiple comma-separated `section` names may be specified in the `NODE_DEBUG` environment variable. For example: `NODE_DEBUG=fs,net,tls`."
	},
	"util.deprecate_2": {
		"prefix": "util.deprecate",
			"body": [
				"util.deprecate($1, $2)"
			],
				"description": "The `util.deprecate()` method wraps the given `function` or class in such a way that it is marked as deprecated.\n\n    const util = require('util');\n    \n    exports.puts = util.deprecate(function() {\n      for (let i = 0, len = arguments.length; i < len; ++i) {\n        process.stdout.write(arguments[i] + '\\n');\n      }\n    }, 'util.puts: Use console.log instead');\n    \n\nWhen called, `util.deprecate()` will return a function that will emit a `DeprecationWarning` using the `process.on('warning')` event. By default, this warning will be emitted and printed to `stderr` exactly once, the first time it is called. After the warning is emitted, the wrapped `function` is called.\n\nIf either the `--no-deprecation` or `--no-warnings` command line flags are used, or if the `process.noDeprecation` property is set to `true` _prior_ to the first deprecation warning, the `util.deprecate()` method does nothing.\n\nIf the `--trace-deprecation` or `--trace-warnings` command line flags are set, or the `process.traceDeprecation` property is set to `true`, a warning and a stack trace are printed to `stderr` the first time the deprecated function is called.\n\nIf the `--throw-deprecation` command line flag is set, or the `process.throwDeprecation` property is set to `true`, then an exception will be thrown when the deprecated function is called.\n\nThe `--throw-deprecation` command line flag and `process.throwDeprecation` property take precedence over `--trace-deprecation` and `process.traceDeprecation`."
	},
	"util.format_3": {
		"prefix": "util.format",
			"body": [
				"util.format($1, $2)"
			],
				"description": "The `util.format()` method returns a formatted string using the first argument as a `printf`\\-like format.\n\nThe first argument is a string containing zero or more _placeholder_ tokens. Each placeholder token is replaced with the converted value from the corresponding argument. Supported placeholders are:\n\n*   `%s` - String.\n*   `%d` - Number (integer or floating point value).\n*   `%i` - Integer.\n*   `%f` - Floating point value.\n*   `%j` - JSON. Replaced with the string `'[Circular]'` if the argument contains circular references.\n*   `%o` - Object. A string representation of an object with generic JavaScript object formatting. Similar to `util.inspect()` with options `{ showHidden: true, depth: 4, showProxy: true }`. This will show the full object including non-enumerable symbols and properties.\n*   `%O` - Object. A string representation of an object with generic JavaScript object formatting. Similar to `util.inspect()` without options. This will show the full object not including non-enumerable symbols and properties.\n*   `%%` - single percent sign (`'%'`). This does not consume an argument.\n\nIf the placeholder does not have a corresponding argument, the placeholder is not replaced.\n\n    util.format('%s:%s', 'foo');\n    // Returns: 'foo:%s'\n    \n\nIf there are more arguments passed to the `util.format()` method than the number of placeholders, the extra arguments are coerced into strings then concatenated to the returned string, each delimited by a space. Excessive arguments whose `typeof` is `'object'` or `'symbol'` (except `null`) will be transformed by `util.inspect()`.\n\n    util.format('%s:%s', 'foo', 'bar', 'baz'); // 'foo:bar baz'\n    \n\nIf the first argument is not a string then `util.format()` returns a string that is the concatenation of all arguments separated by spaces. Each argument is converted to a string using `util.inspect()`.\n\n    util.format(1, 2, 3); // '1 2 3'\n    \n\nIf only one argument is passed to `util.format()`, it is returned as it is without any formatting.\n\n    util.format('%% %s'); // '%% %s'"
	},
	"util.inherits_4": {
		"prefix": "util.inherits",
			"body": [
				"util.inherits($1, $2)"
			],
				"description": "_Note_: Usage of `util.inherits()` is discouraged. Please use the ES6 `class` and `extends` keywords to get language level inheritance support. Also note that the two styles are [semantically incompatible](https://github.com/nodejs/node/issues/4179).\n\n*   `constructor` {Function}\n*   `superConstructor` {Function}\n\nInherit the prototype methods from one [constructor](https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/Object/constructor) into another. The prototype of `constructor` will be set to a new object created from `superConstructor`.\n\nAs an additional convenience, `superConstructor` will be accessible through the `constructor.super_` property.\n\n    const util = require('util');\n    const EventEmitter = require('events');\n    \n    function MyStream() {\n      EventEmitter.call(this);\n    }\n    \n    util.inherits(MyStream, EventEmitter);\n    \n    MyStream.prototype.write = function(data) {\n      this.emit('data', data);\n    };\n    \n    const stream = new MyStream();\n    \n    console.log(stream instanceof EventEmitter); // true\n    console.log(MyStream.super_ === EventEmitter); // true\n    \n    stream.on('data', (data) => {\n      console.log(`Received data: \"${data}\"`);\n    });\n    stream.write('It works!'); // Received data: \"It works!\"\n    \n\nES6 example using `class` and `extends`\n\n    const EventEmitter = require('events');\n    \n    class MyStream extends EventEmitter {\n      write(data) {\n        this.emit('data', data);\n      }\n    }\n    \n    const stream = new MyStream();\n    \n    stream.on('data', (data) => {\n      console.log(`Received data: \"${data}\"`);\n    });\n    stream.write('With ES6');"
	},
	"util.inspect_5": {
		"prefix": "util.inspect",
			"body": [
				"util.inspect($1, $2)"
			],
				"description": "The `util.inspect()` method returns a string representation of `object` that is primarily useful for debugging. Additional `options` may be passed that alter certain aspects of the formatted string.\n\nThe following example inspects all properties of the `util` object:\n\n    const util = require('util');\n    \n    console.log(util.inspect(util, { showHidden: true, depth: null }));\n    \n\nValues may supply their own custom `inspect(depth, opts)` functions, when called these receive the current `depth` in the recursive inspection, as well as the options object passed to `util.inspect()`."
	},
	"util.promisify_6": {
		"prefix": "util.promisify",
			"body": [
				"util.promisify($1)"
			],
				"description": "Takes a function following the common Node.js callback style, i.e. taking a `(err, value) => ...` callback as the last argument, and returns a version that returns promises.\n\nFor example:\n\n    const util = require('util');\n    const fs = require('fs');\n    \n    const stat = util.promisify(fs.stat);\n    stat('.').then((stats) => {\n      // Do something with `stats`\n    }).catch((error) => {\n      // Handle the error.\n    });\n    \n\nOr, equivalently using `async function`s:\n\n    const util = require('util');\n    const fs = require('fs');\n    \n    const stat = util.promisify(fs.stat);\n    \n    async function callStat() {\n      const stats = await stat('.');\n      console.log(`This directory is owned by ${stats.uid}`);\n    }\n    \n\nIf there is an `original[util.promisify.custom]` property present, `promisify` will return its value, see [Custom promisified functions](#util_custom_promisified_functions).\n\n`promisify()` assumes that `original` is a function taking a callback as its final argument in all cases, and the returned function will result in undefined behavior if it does not."
	},
	"基于控件的操作.auto_0": {
		"prefix": "基于控件的操作.auto",
			"body": [
				"基于控件的操作.auto($1)"
			],
				"description": "检查无障碍服务是否已经启用，如果没有启用则抛出异常并跳转到无障碍服务启用界面；同时设置无障碍模式为mode。mode的可选值为：\n\n*   `fast` 快速模式。该模式下会启用控件缓存，从而选择器获取屏幕控件更快。对于需要快速的控件操作的脚本可以使用该模式，一般脚本则没有必要使用该函数。\n*   `normal` 正常模式，默认。\n\n如果不加mode参数，则为正常模式。\n\n建议使用`auto.waitFor()`和`auto.setMode()`代替该函数，因为`auto()`函数如果无障碍服务未启动会停止脚本；而`auto.waitFor()`则会在在无障碍服务启动后继续运行。\n\n示例：\n\n    auto(\"fast\");\n    \n\n示例2：\n\n    auto();"
	},
	"基于控件的操作.waitFor_1": {
		"prefix": "基于控件的操作.waitFor",
			"body": [
				"基于控件的操作.waitFor()"
			],
				"description": "检查无障碍服务是否已经启用，如果没有启用则跳转到无障碍服务启用界面，并等待无障碍服务启动；当无障碍服务启动后脚本会继续运行。\n\n因为该函数是阻塞的，因此除非是有协程特性，否则不能在ui模式下运行该函数，建议在ui模式下使用`auto()`函数。"
	},
	"基于控件的操作.setMode_2": {
		"prefix": "基于控件的操作.setMode",
			"body": [
				"基于控件的操作.setMode($1)"
			],
				"description": "设置无障碍模式为mode。mode的可选值为：\n\n*   `fast` 快速模式。该模式下会启用控件缓存，从而选择器获取屏幕控件更快。对于需要快速的控件查看和操作的脚本可以使用该模式，一般脚本则没有必要使用该函数。\n*   `normal` 正常模式，默认。"
	},
	"基于控件的操作.setFlags_3": {
		"prefix": "基于控件的操作.setFlags",
			"body": [
				"基于控件的操作.setFlags($1)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `flags` {string} | {Array} 一些标志，来启用和禁用某些特性，包括：\n    *   `findOnUiThread` 使用该特性后，选择器搜索时会在主进程进行。该特性用于解决线程安全问题导致的次生问题，不过目前貌似已知问题并不是线程安全问题。\n    *   `useUsageStats` 使用该特性后，将会以\"使用情况统计\"服务的结果来检测当前正在运行的应用包名（需要授予\"查看使用情况统计\"权限)。如果觉得currentPackage()返回的结果不太准确，可以尝试该特性。\n    *   `useShell` 使用该特性后，将使用shell命令获取当前正在运行的应用的包名、活动名称，但是需要root权限。\n\n启用有关automator的一些特性。例如：\n\n    auto.setFlags([\"findOnUiThread\", \"useShell\"]);"
	},
	"基于控件的操作.setWindowFilter_4": {
		"prefix": "基于控件的操作.setWindowFilter",
			"body": [
				"基于控件的操作.setWindowFilter($1)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `filter` {Function} 参数为窗口([AccessibilityWindowInfo](https://developer.android.com/reference/android/view/accessibility/AccessibilityWindowInfo))，返回值为Boolean的函数。\n\n设置窗口过滤器。这个过滤器可以决定哪些窗口是目标窗口，并影响选择器的搜索。例如，如果想要选择器在所有窗口（包括状态栏、输入法等）中搜索，只需要使用以下代码：\n\n    auto.setWindowFilter(function(window){\n        //不管是如何窗口，都返回true，表示在该窗口中搜索\n        return true;\n    });\n    \n\n又例如，当前使用了分屏功能，屏幕上有Auto.js和QQ两个应用，但我们只想选择器对QQ界面进行搜索，则：\n\n    auto.setWindowFilter(function(window){\n        // 对于应用窗口，他的title属性就是应用的名称，因此可以通过title属性来判断一个应用\n        return window.title == \"QQ\";\n    });\n    \n\n选择器默认是在当前活跃的窗口中搜索，不会搜索诸如悬浮窗、状态栏之类的，使用WindowFilter则可以控制搜索的窗口。\n\n需要注意的是， 如果WindowFilter返回的结果均为false，则选择器的搜索结果将为空。\n\n另外setWindowFilter函数也会影响`auto.windowRoots`的结果。\n\n该函数需要Android 5.0以上才有效。"
	},
	"基于控件的操作.serivce_5": {
		"prefix": "基于控件的操作.serivce",
			"body": [
				"基于控件的操作.serivce"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   [AccessibilityService](https://developer.android.com/reference/android/accessibilityservice/AccessibilityService)\n\n获取无障碍服务。如果无障碍服务没有启动，则返回`null`。\n\n参见[AccessibilityService](https://developer.android.com/reference/android/accessibilityservice/AccessibilityService)。"
	},
	"基于控件的操作.windows_6": {
		"prefix": "基于控件的操作.windows",
			"body": [
				"基于控件的操作.windows"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   {Array}\n\n当前所有窗口([AccessibilityWindowInfo](https://developer.android.com/reference/android/view/accessibility/AccessibilityWindowInfo))的数组，可能包括状态栏、输入法、当前应用窗口，弹出窗口、悬浮窗、分屏应用窗口等。可以分别获取每个窗口的布局信息。\n\n该函数需要Android 5.0以上才能运行。"
	},
	"基于控件的操作.root_7": {
		"prefix": "基于控件的操作.root",
			"body": [
				"基于控件的操作.root"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   {UiObject}\n\n当前窗口的布局根元素。如果无障碍服务未启动或者WindowFilter均返回false，则会返回`null`。\n\n如果不设置windowFilter，则当前窗口即为活跃的窗口（获取到焦点、正在触摸的窗口）；如果设置了windowFilter，则获取的是过滤的窗口中的第一个窗口。\n\n如果系统是Android5.0以下，则始终返回当前活跃的窗口的布局根元素。"
	},
	"基于控件的操作.rootInActiveWindow_8": {
		"prefix": "基于控件的操作.rootInActiveWindow",
			"body": [
				"基于控件的操作.rootInActiveWindow"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   {UiObject}\n\n当前活跃的窗口（获取到焦点、正在触摸的窗口）的布局根元素。如果无障碍服务未启动则为`null`。"
	},
	"基于控件的操作.windowRoots_9": {
		"prefix": "基于控件的操作.windowRoots",
			"body": [
				"基于控件的操作.windowRoots"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   {Array}\n\n返回当前被WindowFilter过滤的窗口的布局根元素组成的数组。\n\n如果系统是Android5.0以下，则始终返回当前活跃的窗口的布局根元素的数组。"
	},
	"simpleactionautomator.click_10": {
		"prefix": "simpleactionautomator.click",
			"body": [
				"simpleactionautomator.click($1, $2)"
			],
				"description": "返回是否点击成功。当屏幕中并未包含该文本，或者该文本所在区域不能点击时返回false，否则返回true。\n\n该函数可以点击大部分包含文字的按钮。例如微信主界面下方的\"微信\", \"联系人\", \"发现\", \"我\"的按钮。  \n通常与while同时使用以便点击按钮直至成功。例如:\n\n    while(!click(\"扫一扫\"));\n    \n\n当不指定参数i时则会尝试点击屏幕上出现的所有文字text并返回是否全部点击成功。\n\ni是从0开始计算的, 也就是, `click(\"啦啦啦\", 0)`表示点击屏幕上第一个\"啦啦啦\", `click(\"啦啦啦\", 1)`表示点击屏幕上第二个\"啦啦啦\"。\n\n> 文本所在区域指的是，从文本处向其父视图寻找，直至发现一个可点击的部件为止。"
	},
	"simpleactionautomator.click_11": {
		"prefix": "simpleactionautomator.click",
			"body": [
				"simpleactionautomator.click($1, $2, $3, $4)"
			],
				"description": "**注意，该函数一般只用于录制的脚本中使用，在自己写的代码中使用该函数一般不要使用该函数。**\n\n点击在指定区域的控件。当屏幕中并未包含与该区域严格匹配的区域，或者该区域不能点击时返回false，否则返回true。\n\n有些按钮或者部件是图标而不是文字（例如发送朋友圈的照相机图标以及QQ下方的消息、联系人、动态图标），这时不能通过`click(text, i)`来点击，可以通过描述图标所在的区域来点击。left, bottom, top, right描述的就是点击的区域。\n\n至于要定位点击的区域，可以在悬浮窗使用布局分析工具查看控件的bounds属性。\n\n通过无障碍服务录制脚本会生成该语句。"
	},
	"simpleactionautomator.scrollUp_12": {
		"prefix": "simpleactionautomator.scrollUp",
			"body": [
				"simpleactionautomator.scrollUp($1)"
			],
				"description": "找到第i+1个可滑动控件上滑或**左滑**。返回是否操作成功。屏幕上没有可滑动的控件时返回false。\n\n另外不加参数时`scrollUp()`会寻找面积最大的可滑动的控件上滑或左滑，例如微信消息列表等。\n\n参数为一个整数i时会找到第i + 1个可滑动控件滑动。例如`scrollUp(0)`为滑动第一个可滑动控件。"
	},
	"simpleactionautomator.scrollDown_13": {
		"prefix": "simpleactionautomator.scrollDown",
			"body": [
				"simpleactionautomator.scrollDown($1)"
			],
				"description": "找到第i+1个可滑动控件下滑或**右滑**。返回是否操作成功。屏幕上没有可滑动的控件时返回false。\n\n另外不加参数时`scrollUp()`会寻找面积最大的可滑动的控件下滑或右滑。\n\n参数为一个整数i时会找到第i + 1个可滑动控件滑动。例如`scrollUp(0)`为滑动第一个可滑动控件。"
	},
	"simpleactionautomator.setText_14": {
		"prefix": "simpleactionautomator.setText",
			"body": [
				"simpleactionautomator.setText($1, $2)"
			],
				"description": "返回是否输入成功。当找不到对应的文本框时返回false。\n\n不加参数i则会把所有输入框的文本都置为text。例如`setText(\"测试\")`。\n\n这里的输入文本的意思是，把输入框的文本置为text，而不是在原来的文本上追加。"
	},
	"simpleactionautomator.input_15": {
		"prefix": "simpleactionautomator.input",
			"body": [
				"simpleactionautomator.input($1, $2)"
			],
				"description": "返回是否输入成功。当找不到对应的文本框时返回false。\n\n不加参数i则会把所有输入框的文本追加内容text。例如`input(\"测试\")`。"
	},
	"uiselector.selector_16": {
		"prefix": "uiselector.selector",
			"body": [
				"uiselector.selector($1)"
			],
				"description": "创建一个新的选择器。但一般情况不需要使用该函数，因为可以直接用相应条件的语句创建选择器。\n\n由于历史遗留原因，本不应该这样设计(不应该让`id()`, `text()`等作为全局函数，而是应该用`By.id()`, `By.text()`)，但为了后向兼容性只能保留这个设计。\n\n这样的API设计会污染全局变量，后续可能会支持\"去掉这些全局函数而使用By._\\*_\"的选项。"
	},
	"uiselector.algorithm_17": {
		"prefix": "uiselector.algorithm",
			"body": [
				"uiselector.algorithm($1)"
			],
				"description": "**\\[v4.1.0新增\\]**\n\n*   `algorithm` {string} 搜索算法，可选的值有：\n    *   `DFS` 深度优先算法，选择器的默认算法\n    *   `BFS` 广度优先算法\n\n指定选择器的搜索算法。例如：\n\n    log(selector().text(\"文本\").algorithm(\"BFS\").find());\n    \n\n广度优先在控件所在层次较低时，或者布局的层次不多时，通常能更快找到控件。"
	},
	"uiselector.text_18": {
		"prefix": "uiselector.text",
			"body": [
				"uiselector.text($1, $2)"
			],
				"description": "为当前选择器附加控件\"text等于字符串str\"的筛选条件。\n\n控件的text(文本)属性是文本控件上的显示的文字，例如微信左上角的\"微信\"文本。"
	},
	"uiselector.textContains_19": {
		"prefix": "uiselector.textContains",
			"body": [
				"uiselector.textContains($1)"
			],
				"description": "为当前选择器附加控件\"text需要包含字符串str\"的筛选条件。\n\n这是一个比较有用的条件，例如QQ动态页和微博发现页上方的\"大家都在搜....\"的控件可以用`textContains(\"大家都在搜\").findOne()`来获取。"
	},
	"uiselector.textStartsWith_20": {
		"prefix": "uiselector.textStartsWith",
			"body": [
				"uiselector.textStartsWith($1)"
			],
				"description": "为当前选择器附加控件\"text需要以prefix开头\"的筛选条件。\n\n这也是一个比较有用的条件，例如要找出Auto.js脚本列表中名称以\"QQ\"开头的脚本的代码为`textStartsWith(\"QQ\").find()`。"
	},
	"uiselector.textEndsWith_21": {
		"prefix": "uiselector.textEndsWith",
			"body": [
				"uiselector.textEndsWith($1)"
			],
				"description": "为当前选择器附加控件\"text需要以suffix结束\"的筛选条件。"
	},
	"uiselector.textMatches_22": {
		"prefix": "uiselector.textMatches",
			"body": [
				"uiselector.textMatches($1)"
			],
				"description": "为当前选择器附加控件\"text需要满足正则表达式reg\"的条件。\n\n有关正则表达式，可以查看[正则表达式 - 菜鸟教程](http://www.runoob.com/Stringp/Stringp-example.html)。\n\n需要注意的是，如果正则表达式是字符串，则需要使用`\\\\`来表达`\\`(也即Java正则表达式的形式)，例如`textMatches(\"\\\\d+\")`匹配多位数字；但如果使用JavaScript语法的正则表达式则不需要，例如`textMatches(/\\d+/)`。但如果使用字符串的正则表达式则该字符串不能以\"/\"同时以\"/\"结束，也即不能写诸如`textMatches(\"/\\\\d+/\")`的表达式，否则会被开头的\"/\"和结尾的\"/\"会被忽略。"
	},
	"uiselector.desc_23": {
		"prefix": "uiselector.desc",
			"body": [
				"uiselector.desc($1, $2)"
			],
				"description": "为当前选择器附加控件\"desc等于字符串str\"的筛选条件。\n\n控件的desc(描述，全称为Content-Description)属性是对一个控件的描述，例如网易云音乐右上角的放大镜图标的描述为搜索。要查看一个控件的描述，同样地可以借助悬浮窗查看。\n\ndesc属性同样是定位控件的利器。"
	},
	"uiselector.descContains_24": {
		"prefix": "uiselector.descContains",
			"body": [
				"uiselector.descContains($1)"
			],
				"description": "为当前选择器附加控件\"desc需要包含字符串str\"的筛选条件。"
	},
	"uiselector.descStartsWith_25": {
		"prefix": "uiselector.descStartsWith",
			"body": [
				"uiselector.descStartsWith($1)"
			],
				"description": "为当前选择器附加控件\"desc需要以prefix开头\"的筛选条件。"
	},
	"uiselector.descEndsWith_26": {
		"prefix": "uiselector.descEndsWith",
			"body": [
				"uiselector.descEndsWith($1)"
			],
				"description": "为当前选择器附加控件\"desc需要以suffix结束\"的筛选条件。"
	},
	"uiselector.descMatches_27": {
		"prefix": "uiselector.descMatches",
			"body": [
				"uiselector.descMatches($1)"
			],
				"description": "为当前选择器附加控件\"desc需要满足正则表达式reg\"的条件。\n\n有关正则表达式，可以查看[正则表达式 - 菜鸟教程](http://www.runoob.com/Stringp/Stringp-example.html)。\n\n需要注意的是，如果正则表达式是字符串，则需要使用`\\\\`来表达`\\`(也即Java正则表达式的形式)，例如`textMatches(\"\\\\d+\")`匹配多位数字；但如果使用JavaScript语法的正则表达式则不需要，例如`textMatches(/\\d+/)`。但如果使用字符串的正则表达式则该字符串不能以\"/\"同时以\"/\"结束，也即不能写诸如`textMatches(\"/\\\\d+/\")`的表达式，否则会被开头的\"/\"和结尾的\"/\"会被忽略。"
	},
	"uiselector.id_28": {
		"prefix": "uiselector.id",
			"body": [
				"uiselector.id($1)"
			],
				"description": "为当前选择器附加\"id等于resId\"的筛选条件。\n\n控件的id属性通常是可以用来确定控件的唯一标识，如果一个控件有id，那么使用id来找到他是最好的方法。要查看屏幕上的控件的id，可以开启悬浮窗并使用界面工具，点击相应控件即可查看。若查看到的控件id为null, 表示该控件没有id。另外，在列表中会出现多个控件的id相同的情况。例如微信的联系人列表，每个头像的id都是一样的。此时不能用id来唯一确定控件。\n\n在QQ界面经常会出现多个id为\"name\"的控件，在微信上则每个版本的id都会变化。对于这些软件而言比较难用id定位控件。"
	},
	"uiselector.idContains_29": {
		"prefix": "uiselector.idContains",
			"body": [
				"uiselector.idContains($1)"
			],
				"description": "为当前选择器附加控件\"id包含字符串str\"的筛选条件。比较少用。"
	},
	"uiselector.idStartsWith_30": {
		"prefix": "uiselector.idStartsWith",
			"body": [
				"uiselector.idStartsWith($1)"
			],
				"description": "为当前选择器附加\"id需要以prefix开头\"的筛选条件。比较少用。"
	},
	"uiselector.idEndsWith_31": {
		"prefix": "uiselector.idEndsWith",
			"body": [
				"uiselector.idEndsWith($1)"
			],
				"description": "为当前选择器附加\"id需要以suffix结束\"的筛选条件。比较少用。"
	},
	"uiselector.idMatches_32": {
		"prefix": "uiselector.idMatches",
			"body": [
				"uiselector.idMatches($1)"
			],
				"description": "附加id需要满足正则表达式。\n\n需要注意的是，如果正则表达式是字符串，则需要使用`\\\\`来表达`\\`(也即Java正则表达式的形式)，例如`textMatches(\"\\\\d+\")`匹配多位数字；但如果使用JavaScript语法的正则表达式则不需要，例如`textMatches(/\\d+/)`。但如果使用字符串的正则表达式则该字符串不能以\"/\"同时以\"/\"结束，也即不能写诸如`textMatches(\"/\\\\d+/\")`的表达式，否则会被开头的\"/\"和结尾的\"/\"会被忽略。\n\n    idMatches(\"[a-zA-Z]+\")"
	},
	"uiselector.className_33": {
		"prefix": "uiselector.className",
			"body": [
				"uiselector.className($1, $2)"
			],
				"description": "为当前选择器附加控件\"className等于字符串str\"的筛选条件。\n\n控件的className(类名)表示一个控件的类别，例如文本控件的类名为android.widget.TextView。\n\n如果一个控件的类名以\"android.widget.\"开头，则可以省略这部分，例如文本控件可以直接用`className(\"TextView\")`的选择器。\n\n常见控件的类名如下：\n\n*   `android.widget.TextView` 文本控件\n*   `android.widget.ImageView` 图片控件\n*   `android.widget.Button` 按钮控件\n*   `android.widget.EditText` 输入框控件\n*   `android.widget.AbsListView` 列表控件\n*   `android.widget.LinearLayout` 线性布局\n*   `android.widget.FrameLayout` 帧布局\n*   `android.widget.RelativeLayout` 相对布局\n*   `android.widget.RelativeLayout` 相对布局\n*   `android.support.v7.widget.RecyclerView` 通常也是列表控件"
	},
	"uiselector.classNameContains_34": {
		"prefix": "uiselector.classNameContains",
			"body": [
				"uiselector.classNameContains($1)"
			],
				"description": "为当前选择器附加控件\"className需要包含字符串str\"的筛选条件。"
	},
	"uiselector.classNameStartsWith_35": {
		"prefix": "uiselector.classNameStartsWith",
			"body": [
				"uiselector.classNameStartsWith($1)"
			],
				"description": "为当前选择器附加控件\"className需要以prefix开头\"的筛选条件。"
	},
	"uiselector.classNameEndsWith_36": {
		"prefix": "uiselector.classNameEndsWith",
			"body": [
				"uiselector.classNameEndsWith($1)"
			],
				"description": "为当前选择器附加控件\"className需要以suffix结束\"的筛选条件。"
	},
	"uiselector.classNameMatches_37": {
		"prefix": "uiselector.classNameMatches",
			"body": [
				"uiselector.classNameMatches($1)"
			],
				"description": "为当前选择器附加控件\"className需要满足正则表达式reg\"的条件。\n\n有关正则表达式，可以查看[正则表达式 - 菜鸟教程](http://www.runoob.com/Stringp/Stringp-example.html)。\n\n需要注意的是，如果正则表达式是字符串，则需要使用`\\\\`来表达`\\`(也即Java正则表达式的形式)，例如`textMatches(\"\\\\d+\")`匹配多位数字；但如果使用JavaScript语法的正则表达式则不需要，例如`textMatches(/\\d+/)`。但如果使用字符串的正则表达式则该字符串不能以\"/\"同时以\"/\"结束，也即不能写诸如`textMatches(\"/\\\\d+/\")`的表达式，否则会被开头的\"/\"和结尾的\"/\"会被忽略。"
	},
	"uiselector.packageName_38": {
		"prefix": "uiselector.packageName",
			"body": [
				"uiselector.packageName($1, $2)"
			],
				"description": "为当前选择器附加控件\"packageName等于字符串str\"的筛选条件。\n\n控件的packageName表示控件所属界面的应用包名。例如微信的包名为\"com.tencent.mm\", 那么微信界面的控件的packageName为\"com.tencent.mm\"。\n\n要查看一个应用的包名，可以用函数`app.getPackageName()`获取，例如`toast(app.getPackageName(\"微信\"))`。"
	},
	"uiselector.packageNameContains_39": {
		"prefix": "uiselector.packageNameContains",
			"body": [
				"uiselector.packageNameContains($1)"
			],
				"description": "为当前选择器附加控件\"packageName需要包含字符串str\"的筛选条件。"
	},
	"uiselector.packageNameStartsWith_40": {
		"prefix": "uiselector.packageNameStartsWith",
			"body": [
				"uiselector.packageNameStartsWith($1)"
			],
				"description": "为当前选择器附加控件\"packageName需要以prefix开头\"的筛选条件。"
	},
	"uiselector.packageNameEndsWith_41": {
		"prefix": "uiselector.packageNameEndsWith",
			"body": [
				"uiselector.packageNameEndsWith($1)"
			],
				"description": "为当前选择器附加控件\"packageName需要以suffix结束\"的筛选条件。"
	},
	"uiselector.packageNameMatches_42": {
		"prefix": "uiselector.packageNameMatches",
			"body": [
				"uiselector.packageNameMatches($1)"
			],
				"description": "为当前选择器附加控件\"packageName需要满足正则表达式reg\"的条件。\n\n有关正则表达式，可以查看[正则表达式 - 菜鸟教程](http://www.runoob.com/Stringp/Stringp-example.html)。"
	},
	"uiselector.bounds_43": {
		"prefix": "uiselector.bounds",
			"body": [
				"uiselector.bounds($1, $2, $3, $4)"
			],
				"description": "一个控件的bounds属性为这个控件在屏幕上显示的范围。我们可以用这个范围来定位这个控件。尽管用这个方法定位控件对于静态页面十分准确，却无法兼容不同分辨率的设备；同时对于列表页面等动态页面无法达到效果，因此使用不推荐该选择器。\n\n注意参数的这四个数字不能随意填写，必须精确的填写控件的四个边界才能找到该控件。例如，要点击QQ主界面的右上角加号，我们用布局分析查看该控件的属性，如下图：\n\n可以看到bounds属性为(951, 67, 1080, 196)，此时使用代码`bounds(951, 67, 1080, 196).clickable().click()`即可点击该控件。"
	},
	"uiselector.boundsInside_44": {
		"prefix": "uiselector.boundsInside",
			"body": [
				"uiselector.boundsInside($1, $2, $3, $4)"
			],
				"description": "为当前选择器附加控件\"bounds需要在left, top, right, buttom构成的范围里面\"的条件。\n\n这个条件用于限制选择器在某一个区域选择控件。例如要在屏幕上半部分寻找文本控件TextView，代码为:\n\n    var w = className(\"TextView\").boundsInside(0, 0, device.width, device.height / 2).findOne();\n    log(w.text());\n    \n\n其中我们使用了`device.width`来获取屏幕宽度，`device.height`来获取屏幕高度。"
	},
	"uiselector.boundsContains_45": {
		"prefix": "uiselector.boundsContains",
			"body": [
				"uiselector.boundsContains($1, $2, $3, $4)"
			],
				"description": "为当前选择器附加控件\"bounds需要包含left, top, right, buttom构成的范围\"的条件。\n\n这个条件用于限制控件的范围必须包含所给定的范围。例如给定一个点(500, 300), 寻找在这个点上的可点击控件的代码为:\n\n    var w = boundsContains(500, 300, device.width - 500, device.height - 300).clickable().findOne();\n    w.click();"
	},
	"uiselector.drawingOrder_46": {
		"prefix": "uiselector.drawingOrder",
			"body": [
				"uiselector.drawingOrder($1)"
			],
				"description": "为当前选择器附加控件\"drawingOrder等于order\"的条件。\n\ndrawingOrder为一个控件在父控件中的绘制顺序，通常可以用于区分同一层次的控件。\n\n但该属性在Android 7.0以上才能使用。"
	},
	"uiselector.clickable_47": {
		"prefix": "uiselector.clickable",
			"body": [
				"uiselector.clickable($1)"
			],
				"description": "为当前选择器附加控件是否可点击的条件。但并非所有clickable为false的控件都真的不能点击，这取决于控件的实现。对于自定义控件(例如显示类名为android.view.View的控件)很多的clickable属性都为false都却能点击。\n\n需要注意的是，可以省略参数`b`而表示选择那些可以点击的控件，例如`className(\"ImageView\").clickable()`表示可以点击的图片控件的条件，`className(\"ImageView\").clickable(false)`表示不可点击的图片控件的条件。"
	},
	"uiselector.longClickable_48": {
		"prefix": "uiselector.longClickable",
			"body": [
				"uiselector.longClickable($1)"
			],
				"description": "为当前选择器附加控件是否可长按的条件。"
	},
	"uiselector.checkable_49": {
		"prefix": "uiselector.checkable",
			"body": [
				"uiselector.checkable($1)"
			],
				"description": "为当前选择器附加控件是否可勾选的条件。勾选通常是对于勾选框而言的，例如图片多选时左上角通常有一个勾选框。"
	},
	"uiselector.selected_50": {
		"prefix": "uiselector.selected",
			"body": [
				"uiselector.selected($1)"
			],
				"description": "为当前选择器附加控件是否已选中的条件。被选中指的是，例如QQ聊天界面点击下方的\"表情按钮\"时，会出现自己收藏的表情，这时\"表情按钮\"便处于选中状态，其selected属性为true。"
	},
	"uiselector.enabled_51": {
		"prefix": "uiselector.enabled",
			"body": [
				"uiselector.enabled($1)"
			],
				"description": "为当前选择器附加控件是否已启用的条件。大多数控件都是启用的状态(enabled为true)，处于“禁用”状态通常是灰色并且不可点击。"
	},
	"uiselector.scrollable_52": {
		"prefix": "uiselector.scrollable",
			"body": [
				"uiselector.scrollable($1)"
			],
				"description": "为当前选择器附加控件是否可滑动的条件。滑动包括上下滑动和左右滑动。\n\n可以用这个条件来寻找可滑动控件来滑动界面。例如滑动Auto.js的脚本列表的代码为:\n\n    className(\"android.support.v7.widget.RecyclerView\").scrollable().findOne().scrollForward();\n    //或者classNameEndsWith(\"RecyclerView\").scrollable().findOne().scrollForward();"
	},
	"uiselector.editable_53": {
		"prefix": "uiselector.editable",
			"body": [
				"uiselector.editable($1)"
			],
				"description": "为当前选择器附加控件是否可编辑的条件。一般来说可编辑的控件为输入框(EditText)，但不是所有的输入框(EditText)都可编辑。"
	},
	"uiselector.multiLine_54": {
		"prefix": "uiselector.multiLine",
			"body": [
				"uiselector.multiLine($1)"
			],
				"description": "为当前选择器附加控件是否文本或输入框控件是否是多行显示的条件。"
	},
	"uiselector.findOne_55": {
		"prefix": "uiselector.findOne",
			"body": [
				"uiselector.findOne($1)"
			],
				"description": "根据当前的选择器所确定的筛选条件，对屏幕上的控件进行搜索，直到屏幕上出现满足条件的一个控件为止，并返回该控件。如果找不到控件，当屏幕内容发生变化时会重新寻找，直至找到。\n\n需要注意的是，如果屏幕上一直没有出现所描述的控件，则该函数会阻塞，直至所描述的控件出现为止。因此此函数不会返回`null`。\n\n该函数本来应该命名为`untilFindOne()`，但由于历史遗留原因已经无法修改。如果想要只在屏幕上搜索一次而不是一直搜索，请使用`findOnce()`。\n\n另外，如果屏幕上有多个满足条件的控件，`findOne()`采用深度优先搜索(DFS)，会返回该搜索算法找到的第一个控件。注意控件找到的顺序有时会起到作用。"
	},
	"uiselector.findOne_56": {
		"prefix": "uiselector.findOne",
			"body": [
				"uiselector.findOne($1, $2)"
			],
				"description": "根据当前的选择器所确定的筛选条件，对屏幕上的控件进行搜索，直到屏幕上出现满足条件的一个控件为止，并返回该控件；如果在timeout毫秒的时间内没有找到符合条件的控件，则终止搜索并返回`null`。\n\n该函数类似于不加参数的`findOne()`，只不过加上了时间限制。\n\n示例：\n\n    //启动Auto.js\n    launchApp(\"Auto.js\");\n    //在6秒内找出日志图标的控件\n    var w = id(\"action_log\").findOne(6000);\n    //如果找到控件则点击\n    if(w != null){\n        w.click();\n    }else{\n        //否则提示没有找到\n        toast(\"没有找到日志图标\");\n    }"
	},
	"uiselector.findOnce_57": {
		"prefix": "uiselector.findOnce",
			"body": [
				"uiselector.findOnce($1)"
			],
				"description": "根据当前的选择器所确定的筛选条件，对屏幕上的控件进行搜索，如果找到符合条件的控件则返回该控件；否则返回`null`。"
	},
	"uiselector.findOnce_58": {
		"prefix": "uiselector.findOnce",
			"body": [
				"uiselector.findOnce($1)"
			],
				"description": "根据当前的选择器所确定的筛选条件，对屏幕上的控件进行搜索，并返回第 i + 1 个符合条件的控件；如果没有找到符合条件的控件，或者符合条件的控件个数 < i, 则返回`null`。\n\n注意这里的控件次序，是搜索算法深度优先搜索(DSF)决定的。"
	},
	"uiselector.find_59": {
		"prefix": "uiselector.find",
			"body": [
				"uiselector.find($1)"
			],
				"description": "根据当前的选择器所确定的筛选条件，对屏幕上的控件进行搜索，找到所有满足条件的控件集合并返回。这个搜索只进行一次，并不保证一定会找到，因而会出现返回的控件集合为空的情况。\n\n不同于`findOne()`或者`findOnce()`只找到一个控件并返回一个控件，`find()`函数会找出所有满足条件的控件并返回一个控件集合。之后可以对控件集合进行操作。\n\n可以通过empty()函数判断找到的是否为空。例如：\n\n    var c = className(\"AbsListView\").find();\n    if(c.empty()){\n        toast(\"找到啦\");\n    }else{\n        toast(\"没找到╭(╯^╰)╮\");\n    }"
	},
	"uiselector.untilFind_60": {
		"prefix": "uiselector.untilFind",
			"body": [
				"uiselector.untilFind($1)"
			],
				"description": "根据当前的选择器所确定的筛选条件，对屏幕上的控件进行搜索，直到找到至少一个满足条件的控件为止，并返回所有满足条件的控件集合。\n\n该函数与`find()`函数的区别在于，该函数永远不会返回空集合；但是，如果屏幕上一直没有出现满足条件的控件，则该函数会保持阻塞。"
	},
	"uiselector.exists_61": {
		"prefix": "uiselector.exists",
			"body": [
				"uiselector.exists($1)"
			],
				"description": "判断屏幕上是否存在控件符合选择器所确定的条件。例如要判断某个文本出现就执行某个动作，可以用：\n\n    if(text(\"某个文本\").exists()){\n        //要支持的动作\n    }"
	},
	"uiselector.waitFor_62": {
		"prefix": "uiselector.waitFor",
			"body": [
				"uiselector.waitFor()"
			],
				"description": "等待屏幕上出现符合条件的控件；在满足该条件的控件出现之前，该函数会一直保持阻塞。\n\n例如要等待包含\"哈哈哈\"的文本控件出现的代码为：\n\n    textContains(\"哈哈哈\").waitFor();"
	},
	"uiselector.filter_63": {
		"prefix": "uiselector.filter",
			"body": [
				"uiselector.filter($1)"
			],
				"description": "为当前选择器附加自定义的过滤条件。\n\n例如，要找出屏幕上所有文本长度为10的文本控件的代码为：\n\n    var uc = className(\"TextView\").filter(function(w){\n        return w.text().length == 10;\n    });"
	},
	"uiobject.click_64": {
		"prefix": "uiobject.click",
			"body": [
				"uiobject.click($1)"
			],
				"description": "点击该控件，并返回是否点击成功。\n\n如果该函数返回false，可能是该控件不可点击(clickable为false)，当前界面无法响应该点击等。"
	},
	"uiobject.longClick_65": {
		"prefix": "uiobject.longClick",
			"body": [
				"uiobject.longClick($1)"
			],
				"description": "长按该控件，并返回是否点击成功。\n\n如果该函数返回false，可能是该控件不可点击(longClickable为false)，当前界面无法响应该点击等。"
	},
	"uiobject.setText_66": {
		"prefix": "uiobject.setText",
			"body": [
				"uiobject.setText($1, $2)"
			],
				"description": "设置输入框控件的文本内容，并返回是否设置成功。\n\n该函数只对可编辑的输入框(editable为true)有效。"
	},
	"uiobject.copy_67": {
		"prefix": "uiobject.copy",
			"body": [
				"uiobject.copy($1)"
			],
				"description": "对输入框文本的选中内容进行复制，并返回是否操作成功。\n\n该函数只能用于输入框控件，并且当前输入框控件有选中的文本。可以通过`setSelection()`函数来设置输入框选中的内容。\n\n    var et = className(\"EditText\").findOne();\n    //选中前两个字\n    et.setSelection(0, 2);\n    //对选中内容进行复制\n    if(et.copy()){\n        toast(\"复制成功\");\n    }else{\n        toast(\"复制失败\");\n    }"
	},
	"uiobject.cut_68": {
		"prefix": "uiobject.cut",
			"body": [
				"uiobject.cut()"
			],
				"description": "对输入框文本的选中内容进行剪切，并返回是否操作成功。\n\n该函数只能用于输入框控件，并且当前输入框控件有选中的文本。可以通过`setSelection()`函数来设置输入框选中的内容。"
	},
	"uiobject.paste_69": {
		"prefix": "uiobject.paste",
			"body": [
				"uiobject.paste($1)"
			],
				"description": "对输入框控件进行粘贴操作，把剪贴板内容粘贴到输入框中，并返回是否操作成功。\n\n    //设置剪贴板内容为“你好”\n    setClip(\"你好\");\n    var et = className(\"EditText\").findOne();\n    et.paste();"
	},
	"uiobject.setSelection_70": {
		"prefix": "uiobject.setSelection",
			"body": [
				"uiobject.setSelection($1, $2, $3)"
			],
				"description": "对输入框控件设置选中的文字内容，并返回是否操作成功。\n\n索引是从0开始计算的；并且，选中内容不包含end位置的字符。例如，如果一个输入框内容为\"123456789\"，要选中\"4567\"的文字的代码为`et.setSelection(3, 7)`。\n\n该函数也可以用来设置光标位置，只要参数的end等于start，即可把输入框光标设置在start的位置。例如`et.setSelection(1, 1)`会把光标设置在第一个字符的后面。"
	},
	"uiobject.scrollForward_71": {
		"prefix": "uiobject.scrollForward",
			"body": [
				"uiobject.scrollForward($1)"
			],
				"description": "对控件执行向前滑动的操作，并返回是否操作成功。\n\n向前滑动包括了向右和向下滑动。如果一个控件既可以向右滑动和向下滑动，那么执行`scrollForward()`的行为是未知的(这是因为Android文档没有指出这一点，同时也没有充分的测试可供参考)。"
	},
	"uiobject.scrollBackward_72": {
		"prefix": "uiobject.scrollBackward",
			"body": [
				"uiobject.scrollBackward($1)"
			],
				"description": "对控件执行向后滑动的操作，并返回是否操作成功。\n\n向后滑动包括了向右和向下滑动。如果一个控件既可以向右滑动和向下滑动，那么执行`scrollForward()`的行为是未知的(这是因为Android文档没有指出这一点，同时也没有充分的测试可供参考)。"
	},
	"uiobject.select_73": {
		"prefix": "uiobject.select",
			"body": [
				"uiobject.select($1)"
			],
				"description": "对控件执行\"选中\"操作，并返回是否操作成功。\"选中\"和`isSelected()`的属性相关，但该操作十分少用。"
	},
	"uiobject.collapse_74": {
		"prefix": "uiobject.collapse",
			"body": [
				"uiobject.collapse($1)"
			],
				"description": "对控件执行折叠操作，并返回是否操作成功。"
	},
	"uiobject.expand_75": {
		"prefix": "uiobject.expand",
			"body": [
				"uiobject.expand($1)"
			],
				"description": "对控件执行操作，并返回是否操作成功。"
	},
	"uiobject.show_76": {
		"prefix": "uiobject.show",
			"body": [
				"uiobject.show()"
			],
				"description": "对集合中所有控件执行显示操作，并返回是否全部操作成功。"
	},
	"uiobject.scrollUp_77": {
		"prefix": "uiobject.scrollUp",
			"body": [
				"uiobject.scrollUp()"
			],
				"description": "对集合中所有控件执行向上滑的操作，并返回是否全部操作成功。"
	},
	"uiobject.scrollDown_78": {
		"prefix": "uiobject.scrollDown",
			"body": [
				"uiobject.scrollDown()"
			],
				"description": "对集合中所有控件执行向下滑的操作，并返回是否全部操作成功。"
	},
	"uiobject.scrollLeft_79": {
		"prefix": "uiobject.scrollLeft",
			"body": [
				"uiobject.scrollLeft()"
			],
				"description": "对集合中所有控件执行向左滑的操作，并返回是否全部操作成功。"
	},
	"uiobject.scrollRight_80": {
		"prefix": "uiobject.scrollRight",
			"body": [
				"uiobject.scrollRight($1)"
			],
				"description": "返回该控件的所有子控件组成的控件集合。可以用于遍历一个控件的子控件，例如：\n\n    className(\"AbsListView\").findOne().children()\n        .forEach(function(child){\n            log(child.className());\n        });"
	},
	"uiobject.children_81": {
		"prefix": "uiobject.children",
			"body": [
				"uiobject.children($1)"
			],
				"description": "返回该控件的所有子控件组成的控件集合。可以用于遍历一个控件的子控件，例如：\n\n    className(\"AbsListView\").findOne().children()\n        .forEach(function(child){\n            log(child.className());\n        });"
	},
	"uiobject.childCount_82": {
		"prefix": "uiobject.childCount",
			"body": [
				"uiobject.childCount($1)"
			],
				"description": "返回子控件数目。"
	},
	"uiobject.child_83": {
		"prefix": "uiobject.child",
			"body": [
				"uiobject.child($1, $2)"
			],
				"description": "返回第i+1个子控件。如果i>=控件数目或者小于0，则抛出异常。\n\n需要注意的是，由于布局捕捉的问题，该函数可能返回`null`，也就是可能获取不到某个子控件。\n\n遍历子控件的示例：\n\n    var list = className(\"AbsListView\").findOne();\n    for(var i = 0; i < list.childCount(); i++){\n        var child = list.child(i);\n        log(child.className());\n    }"
	},
	"uiobject.parent_84": {
		"prefix": "uiobject.parent",
			"body": [
				"uiobject.parent($1)"
			],
				"description": "返回该控件的父控件。如果该控件没有父控件，返回`null`。"
	},
	"uiobject.bounds_85": {
		"prefix": "uiobject.bounds",
			"body": [
				"uiobject.bounds($1)"
			],
				"description": "返回控件在屏幕上的范围，其值是一个[Rect](https://hyb1996.github.io/AutoJs-Docs/widgets-based-automation.html#widgets_based_automation_rect)对象。\n\n示例：\n\n    var b = text(\"Auto.js\").findOne().bounds();\n    toast(\"控件在屏幕上的范围为\" + b);\n    \n\n如果一个控件本身无法通过`click()`点击，那么我们可以利用`bounds()`函数获取其坐标，再利用坐标点击。例如：\n\n    var b = desc(\"打开侧拉菜单\").findOne().bounds();\n    click(b.centerX(), b.centerY());\n    //如果使用root权限，则用 Tap(b.centerX(), b.centerY());"
	},
	"uiobject.boundsInParent_86": {
		"prefix": "uiobject.boundsInParent",
			"body": [
				"uiobject.boundsInParent($1)"
			],
				"description": "返回控件在父控件中的范围，其值是一个[Rect](https://hyb1996.github.io/AutoJs-Docs/widgets-based-automation.html#widgets_based_automation_rect)对象。"
	},
	"uiobject.drawingOrder_87": {
		"prefix": "uiobject.drawingOrder",
			"body": [
				"uiobject.drawingOrder($1)"
			],
				"description": "返回控件在父控件中的绘制次序。该函数在安卓7.0及以上才有效，7.0以下版本调用会返回0。"
	},
	"uiobject.id_88": {
		"prefix": "uiobject.id",
			"body": [
				"uiobject.id($1)"
			],
				"description": "获取控件的id，如果一个控件没有id，则返回`null`。"
	},
	"uiobject.text_89": {
		"prefix": "uiobject.text",
			"body": [
				"uiobject.text($1)"
			],
				"description": "获取控件的文本，如果控件没有文本，返回`\"\"`。"
	},
	"uiobject.findByText_90": {
		"prefix": "uiobject.findByText",
			"body": [
				"uiobject.findByText($1, $2)"
			],
				"description": "根据文本text在子控件中递归地寻找并返回文本或描述(desc)**包含**这段文本str的控件，返回它们组成的集合。\n\n该函数会在当前控件的子控件，孙控件，曾孙控件...中搜索text或desc包含str的控件，并返回它们组合的集合。"
	},
	"uiobject.findOne_91": {
		"prefix": "uiobject.findOne",
			"body": [
				"uiobject.findOne($1, $2)"
			],
				"description": "根据选择器selector在该控件的子控件、孙控件...中搜索符合该选择器条件的控件，并返回找到的第一个控件；如果没有找到符合条件的控件则返回`null`。\n\n例如，对于酷安动态列表，我们可以遍历他的子控件(每个动态列表项)，并在每个子控件中依次寻找点赞数量和图标，对于点赞数量小于10的点赞：\n\n    //找出动态列表\n    var list = id(\"recycler_view\").findOne();\n    //遍历动态\n    list.children().forEach(function(child){\n        //找出点赞图标\n        var like = child.findOne(id(\"feed_action_view_like\"));\n        //找出点赞数量\n        var likeCount = child.findOne(id(\"text_view\"));\n        //如果这两个控件没有找到就不继续了\n        if(like == null || likeCount == null){\n            return;\n        }\n        //判断点赞数量是否小于10\n        if(parseInt(likeCount.text()) < 10){\n            //点赞\n            like.click();\n        }\n    });"
	},
	"uiobject.find_92": {
		"prefix": "uiobject.find",
			"body": [
				"uiobject.find($1, $2)"
			],
				"description": "根据选择器selector在该控件的子控件、孙控件...中搜索符合该选择器条件的控件，并返回它们组合的集合。"
	},
	"uicollection.size_93": {
		"prefix": "uicollection.size",
			"body": [
				"uicollection.size($1)"
			],
				"description": "返回集合中的控件数。\n\n历史遗留函数，相当于属性length。"
	},
	"uicollection.get_94": {
		"prefix": "uicollection.get",
			"body": [
				"uicollection.get($1, $2)"
			],
				"description": "返回集合中第i+1个控件(UiObject)。\n\n历史遗留函数，建议直接使用数组下标的方式访问元素。"
	},
	"uicollection.each_95": {
		"prefix": "uicollection.each",
			"body": [
				"uicollection.each($1)"
			],
				"description": "遍历集合。\n\n历史遗留函数，相当于`forEach`。参考[forEach](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Array/forEach)。"
	},
	"uicollection.empty_96": {
		"prefix": "uicollection.empty",
			"body": [
				"uicollection.empty($1)"
			],
				"description": "返回控件集合是否为空。"
	},
	"uicollection.nonEmpty_97": {
		"prefix": "uicollection.nonEmpty",
			"body": [
				"uicollection.nonEmpty($1)"
			],
				"description": "返回控件集合是否非空。"
	},
	"uicollection.find_98": {
		"prefix": "uicollection.find",
			"body": [
				"uicollection.find($1, $2)"
			],
				"description": "根据selector所确定的条件在该控件集合的控件、子控件、孙控件...中找到所有符合条件的控件并返回找到的控件集合。\n\n注意这会递归地遍历控件集合里所有的控件以及他们的子控件。和数组的`filter`函数不同。\n\n例如：\n\n    var names = id(\"name\").find();\n    //在集合\n    var clickableNames = names.find(clickable());"
	},
	"uicollection.findOne_99": {
		"prefix": "uicollection.findOne",
			"body": [
				"uicollection.findOne($1, $2)"
			],
				"description": "根据选择器selector在该控件集合的控件的子控件、孙控件...中搜索符合该选择器条件的控件，并返回找到的第一个控件；如果没有找到符合条件的控件则返回`null`。"
	},
	"rect.centerX_100": {
		"prefix": "rect.centerX",
			"body": [
				"rect.centerX($1)"
			],
				"description": "长方形中点x坐标。"
	},
	"rect.centerY_101": {
		"prefix": "rect.centerY",
			"body": [
				"rect.centerY($1)"
			],
				"description": "长方形中点y坐标。"
	},
	"rect.width_102": {
		"prefix": "rect.width",
			"body": [
				"rect.width($1)"
			],
				"description": "长方形宽度。通常可以作为控件宽度。"
	},
	"rect.height_103": {
		"prefix": "rect.height",
			"body": [
				"rect.height($1)"
			],
				"description": "长方形高度。通常可以作为控件高度。"
	},
	"rect.contains_104": {
		"prefix": "rect.contains",
			"body": [
				"rect.contains($1)"
			],
				"description": "返回是否包含另一个长方形r。包含指的是，长方形r在该长方形的里面(包含边界重叠的情况)。"
	},
	"rect.intersect_105": {
		"prefix": "rect.intersect",
			"body": [
				"rect.intersect($1)"
			],
				"description": "返回是否和另一个长方形相交。"
	},
	"rect.left_106": {
		"prefix": "rect.left",
			"body": [
				"rect.left"
			],
				"description": "长方形左边界的x坐标、"
	},
	"rect.right_107": {
		"prefix": "rect.right",
			"body": [
				"rect.right"
			],
				"description": "长方形右边界的x坐标、"
	},
	"rect.top_108": {
		"prefix": "rect.top",
			"body": [
				"rect.top"
			],
				"description": "长方形上边界的y坐标、"
	},
	"rect.bottom_109": {
		"prefix": "rect.bottom",
			"body": [
				"rect.bottom"
			],
				"description": "长方形下边界的y坐标、"
	}
}
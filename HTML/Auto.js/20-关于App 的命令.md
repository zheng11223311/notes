### 1.关于App 的命令

地址:[应用 - App (autojs.org)](https://pro.autojs.org/docs/#/zh-cn/app?id=app)

# [App](https://pro.autojs.org/docs/#/zh-cn/app?id=app)

app模块提供一系列函数，用于使用其他应用、与其他应用交互。例如发送意图、打开文件、发送邮件等。

同时提供了方便的进阶函数startActivity和sendBroadcast，用他们可完成app模块没有内置的和其他应用的交互。

## [app.versionCode](https://pro.autojs.org/docs/#/zh-cn/app?id=appversioncode)

- {number}

当前软件版本号，整数值。例如160, 256等。

如果在Auto.js中运行则为Auto.js的版本号；在打包的软件中则为打包软件的版本号。

```
toastLog(app.versionCode);
```

## [app.versionName](https://pro.autojs.org/docs/#/zh-cn/app?id=appversionname)

- {string}

当前软件的版本名称，例如"3.0.0 Beta"。

如果在Auto.js中运行则为Auto.js的版本名称；在打包的软件中则为打包软件的版本名称。

```
toastLog(app.versionName);
```

## [app.autojs.versionCode](https://pro.autojs.org/docs/#/zh-cn/app?id=appautojsversioncode)

- {number}

Auto.js版本号，整数值。例如160, 256等。

## [app.autojs.versionName](https://pro.autojs.org/docs/#/zh-cn/app?id=appautojsversionname)

- {string}

Auto.js版本名称，例如"3.0.0 Beta"。

**app.versionCode**

- 当前软件版本号

**app.versionName**

- 当前软件版本名称

**app.autojs.versionCode**

- autojs 版本号

**app.autojs.versionName**

- autojs 版本名称


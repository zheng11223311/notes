### 1.App 的安装和卸载

地址:[应用 - App (autojs.org)](https://pro.autojs.org/docs/#/zh-cn/app?id=appuninstallpackagename)

## [app.uninstall(packageName)](https://pro.autojs.org/docs/#/zh-cn/app?id=appuninstallpackagename)

- `packageName` {string} 应用包名

卸载应用。执行后会会弹出卸载应用的提示框。如果该包名的应用未安装，由应用卸载程序处理，可能弹出"未找到应用"的提示。

```
//卸载QQ
app.uninstall("com.tencent.mobileqq");
```

**示例:**

```js
// 查看文件=安装命令,会用相应的工具打开
// app.viewFile("/sdcard/Download/mpsq.apk")

// 一闪而过,在脚本界面还是会这样,有时候还没有响应,bug
// app.uninstall("com.skymobi.moposns")
// console.log(app.uninstall("com.tencent.mobileqq"));


toast ('启动服务器')
```


# Electron Package

打包的第一步,需要安装electron 的打包工具

```
npm install electron-packager -g
```

打包之前要安装项目相关的依赖

```
npm i
```

测试是否安装成功

```
npm start
```

打包前为当前app 制作icon:`icon.ico`,`256*256`,制作好放入app 根目录

electron-packager 打包:

electron-packager 打包又两种方式

一是直接在命令行编辑命令,直接进行打包

另一种是在`package.json`里编辑package,执行`npm run package`

1. 在app 根目录执行命令:

```bash
electron-packager . 项目名 --platform=win32 --arch=x64 --icon=icon.ico --out=./out --asar --app-version=0.0.1		//. 当前路径 操作系统位数,核数	
```

1. 另一种是编辑`package.json`

```json
"scripts":{
	"build:all":"electron-packager . --all --overwrite",
    "build:mac":"electron-packager . 项目名 --platform=darwin --arch=x64 --icon=icon.ico --out=./out --overwrite",
    "build:win64":"electron-packager . 项目名 --platform=win32 --arch=x64 --icon=icon.ico --out=./out --overwrite",
    "build:win32":"electron-packager . 项目名 --platform=win32 --arch=x32 --icon=icon.ico --out=./out --overwrite",
    "package":"electron-packager . 项目名  --icon=icon.ico --out=./out  --app-version=0.0.1  --overwrite	"
}
```

执行

```
npm run package
```



# electron-builder(常见打包方式)

安装

```
npm i electron-builder -save-dev
```

package.json 配置

```json
"scripts":{
	"dist":"electron-builder . --win --x64 --dir"	//--dir 当前目录
},
"build":{
    productName:"项目名",
    "appId":"com.xxx.bibibili",
    copyright:"xiao",
    "directories":{
        "output":"build",
    },
    "win":{
        "icon":"xx/icon.ico"
    }
}
```

执行

```
npm run dist
```


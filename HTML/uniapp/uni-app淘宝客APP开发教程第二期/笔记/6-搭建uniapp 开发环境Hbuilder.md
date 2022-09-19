# 搭建uniapp 开发环境Hbuilder

官网: [HBuilderX-高效极客技巧 (dcloud.io)](https://dcloud.io/hbuilderx.html) 



##### 下载

选择`正式版`-`App 开发版本`

安装地址 : https://download1.dcloud.net.cn/download/HBuilderX.3.4.15.20220610.zip





# 创建项目

点击左上角文件图标,选择`项目`,选择`uni-app(U)`

输入`项目名称`,选择`默认模板`

点击`创建` ,即可创建模板

点击右上角的`预览`,即可预览项目

也可以点击左上角`播放图标(运行)`,选择运行在指定的平台下



在根目录下的`package.json`中

```json
{
	"pages": [ //pages数组中第一项表示应用启动页，参考：https://uniapp.dcloud.io/collocation/pages
		{
			"path": "pages/index/index",	//指定加载的入口页面
			"style": {
				"navigationBarTitleText": "uni-app"
			}
		}
	],
	"globalStyle": {
		"navigationBarTextStyle": "black",
		"navigationBarTitleText": "uni-app",
		"navigationBarBackgroundColor": "#F8F8F8",
		"backgroundColor": "#F8F8F8"
	}
}

```


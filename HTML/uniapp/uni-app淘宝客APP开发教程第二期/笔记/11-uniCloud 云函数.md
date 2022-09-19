# uniCloud 云函数

##### 创建云函数(每个创建的函数都需要如下步骤)

在项目`/uniCloud/cloudfunctions`上右键选择`新建云函数`,输入函数名称,点击`创建`

会在`cloudfunctions`下生成一个同名文件夹,其中带有`index.js` 文件



`/uniCloud/cloudfunctions/login/index.js`

```js
'use strict';
exports.main = async (event, context) => {
	//event为客户端上传的参数
	console.log('event : ', event)
	
	//返回数据给客户端
	return event
};

```

此时,只是创建在本地,需要上传到云端

在项目`/uniCloud/cloudfunctions`上右键`上传所有云函数,公共模块及actions`

(同理,在云端创建的,在项目中需要点击右键`下载所有云函数,公共模块及actions`)

在 [函数/对象列表 - uniCloud (dcloud.net.cn)](https://unicloud.dcloud.net.cn/cloud/function?platform=aliyun&appid=)  中查看到上传的函数

在`/uniCloud/`上右键`打开uniCloud web 控制台`,进入网页查看服务器,查看到上传的函数



`/uniCloud/cloudfunctions/login/index.js`

```js
'use strict';
exports.main = async (event, context) => {
	//event为客户端上传的参数.用户在data 中传入的数据
	// context 是运行状态的回调信息
	console.log('event : ', event)
	
	//返回数据给客户端
	return event 
	// return {
	// 	context
	// }
};

```

`pages/index/index.vue`

```vue
<template>
	<view class="content">
		<image class="logo" src="/static/logo.png"></image>
		<view class="text-area">
			<text class="title">{{title}}</text>
		</view>
		<button type="default" @click="open">查询</button>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				title: 'Hello'
			}
		},
		onLoad() {

		},
		methods: {
		open(){
			// 调用云函数
			uniCloud.callFunction({
				name:"login",	//调用哪一个云函数
				data:{		//传入函数的数据
					name:"嘿嘿嘿哈哈",
					age:18,
				},
				success(res) {	//接收函数return 返回的数据
					console.log(res);
					console.log('成功调用的返回');
				},
				fail() {
					console.log('这里是调用失败的返回结果');
				}
			})
		}
		}
	}
</script>

<style>
	.content {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
	}

	.logo {
		height: 200rpx;
		width: 200rpx;
		margin-top: 200rpx;
		margin-left: auto;
		margin-right: auto;
		margin-bottom: 50rpx;
	}

	.text-area {
		display: flex;
		justify-content: center;
	}

	.title {
		font-size: 36rpx;
		color: #8f8f94;
	}
</style>

```

修改云函数后,需要在云函数所在文件夹上右键`上传部署`,同步到云端

默认使用的`连接本地云函数`,只在本地测试,最后上传到云端,如果需要`连接云端函数`,在底部控制台中选择`连接云端函数`





#### 云数据库

[函数/对象列表 - uniCloud (dcloud.net.cn)](https://unicloud.dcloud.net.cn/cloud/function?platform=aliyun&appid=)  

这里创建数据库



#### 云存储

用来上传存储文件,可以在网页端操作,或使用代码上传

```js
uniCloud.uploadFile()		//使用代码上传文件
```





#### 跨域配置

配置允许访问此服务器的域名,开发网站时,需要配置自己的网站域名以允许访问



#### 前端网页托管

托管自己的网页,可以访问自己的网页
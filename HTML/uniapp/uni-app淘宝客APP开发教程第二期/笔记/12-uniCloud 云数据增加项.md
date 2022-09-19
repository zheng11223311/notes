# uniCloud 云数据增加

**注意:云数据库只能是在云函数中进行调用**

`/uniCloud/cloudfunctions/login/index.js`

```js
'use strict';

// 连接云数库,快捷代码块cdb
// 一个账号默认只有一个数据库
const db = uniCloud.database();
// 选择数据表user
const collection=db.collection('user')



exports.main = async (event, context) => {
	
	// 新增数据
	// let data=await collection.add({
	// 	// 字段名:字段值
	// 	username:'乖乖'
	// })
	
	// 新增多条数据,使用数组格式
	let data=await collection.add([
		{
			username:'乖乖'
		},
		{
			username:'娆玥'
		},
		{
			username:'潇潇'
		}
	])
	
	
	//返回数据给客户端
	return event 
};

```

云函数修改后同步道云端,这样才能调用云端的函数才能调用数据库

同时需要在`Hbuilder`底部控制器中选择`连接云端函数`



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


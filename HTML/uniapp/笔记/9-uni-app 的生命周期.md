### uni-app 生命周期

**应用的生命周期**

声明周期的概念:一个对象从创建,运行,销毁的整个过程被称为生命周期

声明周期函数:在生命周期中每一个阶段会伴随着每一个函数的触发,这些函数被称为生命周期函数

`uni-app` 支持如下应用声明周期函数

在app.vue中

| 函数名   | 说明                                                |
| -------- | --------------------------------------------------- |
| onLaunch | 当`uni-app`初始化完成时(全局只触发一次)             |
| onShow   | 当`uni-app`启动,或从后台进入前台显示                |
| onHide   | 当`uni-app` 从前台进入后台,比如浏览器转后台时会触发 |
| onError  | 当`uni-app` 报错时触发,参数时错误信息               |

**App.vue**

```vue
<script>
	export default {
		onLaunch: function() {
			console.log('App Launch')
		},
		onShow: function() {
			console.log('App Show')
		},
		onHide: function() {
			console.log('App Hide')
		},
		onError(err) {
			console.log(err)
		}
	}
</script>

<style>
	/*每个页面公共css */
</style>
```

**页面的生命周期**

`uni-app` 支持如下页面生命周期函数:

| 函数名   | 说明                                                         | 平台差异说明 | 最低版本 |
| -------- | ------------------------------------------------------------ | ------------ | -------- |
| onLoad   | 监听页面加载,其参数为上个页面传递的参数,参数类型为Object(用于页面传参) |              |          |
| onShow   | 监听页面显示,页面每次出现在屏幕上都会触发,包括从下级页面返回露出当前页面 |              |          |
| onReady  | 监听页面初次渲染完成                                         |              |          |
| onHide   | 监听页面隐藏                                                 |              |          |
| onUnload | 监听页面卸载                                                 |              |          |

**示例**

`style.vue`

```vue
<template>
	<view class="content">
		
	</view>
</template>

<script>
	export default{
		data(){ 
			return{
				
			}
		},
		methods:{
		   
		},
		onLoad() {
			console.log('页面加载完成')
		},
		onReady() {
			console.log('页面初次渲染完成')
		},
		onShow() {
			console.log('显示当前页面')
		},
		onHide() {
			console.log('隐藏当前页面')
		},
		onUnload() {
			console.log('页面被卸载')
		}
	}
</script>

<style>
	
</style>

```


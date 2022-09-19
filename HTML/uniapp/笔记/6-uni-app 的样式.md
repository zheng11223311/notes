### uni-app 的样式

- rpx 即响应式px,一种根据屏幕宽度自适应的动态单位,以750 宽的屏幕为基准,750rpx 恰好为屏幕的宽度,屏幕变宽,rpx 实际显示效果会等比放大(即把页面宽分为750份)

- **注意:rpx 最大只能适应960px的宽度,过大就变回原样**

- 使用`@import`语句可以导入外联样式表,`@import`后需要根导入的外联样式表的相对路径,用`;`表示语句结束

- 支持基本常用的选择器class,id,element 等

- 在`uni-app`种不能使用`*`选择器

- `page`相当于`body`节点

- 定义在App.vue 中的样式为全局样式,作用于每一个页面,在pages 目录下的vue 文件中定义的样式为局部样式,只作用于在对应的页面,并会覆盖App.vue 中相同的选择器

- `uni-app`支持使用字体图标,使用方式与普通`web`项目相同,需要注意以几点:

  - 字体文件小于40kb,`uni-app`会自动将其转化为base64 格式

  - 字体文件大于40kb,需要开发者自己转换,否则使用将不生效

  - 字体文件的引用路径推荐使用以 ~@ 开头的绝对路径

  - ```css
    <!-iconfont.css 文件中 -->
    @font-face{
     font-family:test1-icon;
     src:url('~@/static/iconfont.ttf');
    }
    ```

- 如何使用scss 或者less

- 在HBuilderX >工具>插件安装 下选择scss 插件/less 插件

```vue
<template>
	<view class="content">
		<view class="">
			样式的学习
		</view>
		<view class="text-area">
			哈哈哈
		</view>
	</view>
</template>

<script>
</script>

<style>
	@import url("./style.css");
	.text-area{
		width: 385rpx;
		height: 375rpx;
		background-color: #F0AD4E;
		font-size: 30rpx;
	}
</style>

```

**style.css**

```css
view{
	color: #007AFF;
	font-size: 30px;
}
```

App.vue 下的style,和uni.scss 都是全局的css 样式


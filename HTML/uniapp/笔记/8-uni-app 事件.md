### uni-app 事件

**事件绑定**

在uni-app 中事件绑定和vue 中是一样的,通过v-on 进行事件的绑定,也可以简写为@

```vue
<button @click="tapHandle">点击</button>
```

事件函数定义在methods 中

```vue
methods:{
    tapHandle(){
    	console.log('被点击了')
    }
}
```

事件传参

- 默认如果没有传递参数,事件函数第一个形参为事件对象

```vue
//template
<button> @click="tapHandle"</button>
//script
methods:{
    tapHandle(e){
    	console.log(e)
    }
}
```

- 如果给事件函数传递参数,则对应的事件函数形参接受的是传递过来的数据

```vue
//template
<button> @click="tapHandle('1')"</button>
//script
methods:{
    tapHandle(e){
    	console.log(e)	//1
    }
}
```

**示例**

```vue
<template>
	<view class="content">
		<button @click="tapHandle"> 点击</button>
		
	</view>
</template>

<script>
	export default{
		data(){
			return{
				
			}
		},
		methods:{
		    tapHandle(e){
		    	console.log(e)
		    }
		}
	}
</script>

<style>
	
</style>

```


### 1.Web Works

有些时候我们需要在客户端进行大量的运算,但是我们又不想阻塞主线程,使用异步,如果计算量比较大,时间比较长的,也会阻塞主线程的运行,甚至会导致浏览器的假死状态,这时候HTML5 的新特性就派上了用场,web works 提供了后台线程处理的api,它允许将复杂的,耗时的,单纯的 js 处理逻辑放在后台线程中进行处理,让js 线程不阻塞UI 线程

`webpack.config.js`

```js
const HtmlWebpackPlugin=require('html-webpack-plugin')

module.exports={
	entry:'./src/app.js',		//入口文件
    mode:"developement",  // 开发模式	
	plugins:{		//插件
		//new HtmlWebpackPlugin(),		//自动生成index.html 并引入打包后的js 文件
        new HtmlWebpackPlugin({			//根据自己的模板生成index.html 文件
    	}),
	},
}
```

`src`下`work.js`

```js
self.onmessage=(message)=>{		//接收主线程的信息
    self.postMessage({			//向主线程发送信息
        answer:111,
    })
}
```

`src`下`app.js`

```js
const worker=new Worker(new URL('./work.js',import.meta.url))		//webpack5 内置Worker

worker.postMessage({
    question:'发送给work.js 的线程'
})


worker..onmessage=(message)=>{
    console.log(message.data.answer)
}
```

执行打包

```
npx webpack
```

执行热更新

```
npx webpack server
```


### 1.加载fonts 字体

那么,像字体这样的其他资源如何处理呢?使用`asset Modules` 也可以接收并加载任何文件,然后将其输出到构建目录,这就是说,我们可以将他们用于任何类型的文件,也包括字体,让我们更新`webpack.config.js`来处理字体文件:

```js
module:{
    rules:[
        {
            test:/\.(woff|woff2|eot|ttf|otf)$/i,
            type:"asset/resource",
        }
    ]
}
```

`style.css`

使用css3 的fontface 来定义一个字体

```css
@font-face{
    font-family:'iconfont';		//自己定义的字体名
    src:url('./assets/iconfont.ttf') format('truetype');	//格式为truetype 类型的字体
}

<!--使用字体-->
.icon{
    font-family:'iconfont';	
    font-size:30px;			//字体大小
}
```

`index.js`

```js
import 'style.css'

div.innerHTML='&#xe668;'
div.classList.add('icon')
```

**编译**

```
webpack 
```

**热更新**

```
webpack-dev-server --open
```


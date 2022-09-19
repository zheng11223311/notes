**组件**

.jsx  和 .js 在导入的时候都可以省略

index.jsx 和index.js  在导入的时候可以省略,只引入当前的文件夹,默认引入index 文件

**区分普通js 文件和React 组件,例如index.js**

1.组件首字母使用大写==>Index.js

2.组件使用 .jsx 结尾===>index.jsx

**样式模块化:**

**解决 css 文件使用相同类名冲突**

示例:

 home 文件夹下的  index.css 改成 index.module.css

```css
.title{
	color:gold;
}
```

home 文件夹下的index.jsx 引入 index.module.css

```jsx
import home from './index.module.css'
```

index.jsx 使用css 样式的.title 类的css

```jsx
<h2 className={home.title}>hello</h2>
```


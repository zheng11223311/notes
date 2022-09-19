**动态import**

**按需加载**

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <button id="btn">点击</button>
    <script src="./3-Promise.js"></script>
</body>
</html>
```

**3-Promise.js**

```js
// 获取元素
const btn=document.getElementById('btn')
btn.onclick=function(){
    // import 是一个Promise 对象
    import('./4-hello.js').then(module=>{
        console.log(module);
        module.hello()
    })
}
```

**4-hello.js**

```js
export function hello(){
    alert('hello')
}
```


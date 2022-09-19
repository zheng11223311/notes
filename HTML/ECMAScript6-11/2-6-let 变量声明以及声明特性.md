**1.变量不能重复声明**

**2.块级作用域 全局,函数,eval**

**3.不存在变量提升**

**4.不影响作用域链**

​	函数内部可以使用外部let 的变量

**let 案例**

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .item{
            width: 200px;
            height: 150px;
            border: 1px solid pink;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="page-header">点击切换颜色</h2>
        <div class="item"></div>
        <div class="item"></div>
        <div class="item"></div>
    </div>
    <script>
        //获取div 元素对象
        let items=document.getElementsByClassName('item')

        //遍历并绑定事件
        for(var i=0;i<items.length;i++){
            items[i].onclick=function(){
                //修改当前元素的背景颜色
                // this.style.background='pink'  //可以修改
                items[i].style.background='pink'    
                //不可以修改，需要将var 改为let，形成块级作用域
            }
        }
    </script>
</body>
</html>
```


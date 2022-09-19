**Layui**

**官网:**

https://layui.com/doc/

**安装**

> 1.官网下载
>
> 2.npm 安装
>
> ```
> npm i layui
> ```

**使用**

```html
//layer.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./layui/css/layui.css">
    <script src="./layui/layui.js"></script> 
    <style>
        .demo-class{
            width:100px;
            background:deeppink;
            color:#fff
        }
    </style>
</head>
<body>
    
    <button id="openAlert" class="layui-btn layui-btn-primary">打开弹窗</button>
    <button id="btn" class="layui-btn layui-btn-primary">获取段子</button>
    <button id="iframe" class="layui-btn layui-btn-primary">打开iframe</button>

    <script>
        //一般直接写在一个js 文件里面
        layui.use(['layer'],function(){
            var layer=layui.layer
            console.log(layui);
            let $=layui.jquery       //使用layui 里面内置的jquery
            console.log($);
            layer.msg('layer 弹窗')
            console.log($('button').eq(0));
        $('#openAlert').click(()=>{
            //点击按钮弹出一个弹窗
            let index=layer.open({
                title:'这是一个信息提示!',
                content:'中午去吃蒸菜!',
                btn:['跳转至淘宝','让页面变红','关闭弹窗'],
                yes:function(){
                    // 第一个bth调用，跳转至淘宝
                    location.href='http://www.taobao.com'
                },
                btn2:function(){
                    // 第2个bth调用，让页面变红
                    $('body').css('background','skyblue')
                },
                btn3:function(){
                    // 第2个bth调用，让页面变红
                    layer.close(index)
                }
            })
        })

        console.log('-----------------分界线----------------------');

        //获取段子
        $('#btn').click(()=>{
            $.get('https://api.apiopen.top/getJoke?page=1&count=1&type=text')
            // $.get('https://api.apiopen.top/getJoke?page=1&count=2&type=video')
            .then(res=>{
                // layer.open()
                console.log(res);
                layer.open({
                skin:'demo-class',      //添加自定义css
                title:res.result[0].name,
                content:res.result[0].text
            })
            })
        })


        $('#iframe').click(()=>{
//                 layer.open({
//                 type: 2, 
//                 content: 'http://baidu.com',
// //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
//                 });

            //  layer.msg('不开森..',{icon:5})
            })
      

        })
    </script>
</body>
</html>
```

**后台管理界面**

```html
//admin.html
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>layout 管理系统大布局 - Layui</title>
  <link rel="stylesheet" href="./layui/css/layui.css">
</head>
<body>
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo layui-hide-xs layui-bg-black">layout demo</div>
    <!-- 头部区域（可配合layui 已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <!-- 移动端显示 -->
      <li class="layui-nav-item layui-show-xs-inline-block layui-hide-sm" lay-header-event="menuLeft">
        <i class="layui-icon layui-icon-spread-left"></i>
      </li>
      
      <li class="layui-nav-item layui-hide-xs"><a href="">nav 1</a></li>
      <li class="layui-nav-item layui-hide-xs"><a href="">nav 2</a></li>
      <li class="layui-nav-item layui-hide-xs"><a href="">nav 3</a></li>
      <li class="layui-nav-item">
        <a href="javascript:;">nav groups</a>
        <dl class="layui-nav-child">
          <dd><a href="">menu 11</a></dd>
          <dd><a href="">menu 22</a></dd>
          <dd><a href="">menu 33</a></dd>
        </dl>
      </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item layui-hide layui-show-md-inline-block">
        <a href="javascript:;">
          <img src="//tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg" class="layui-nav-img">
          tester
        </a>
        <dl class="layui-nav-child">
          <dd><a href="">Your Profile</a></dd>
          <dd><a href="">Settings</a></dd>
          <dd><a href="">Sign out</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item" lay-header-event="menuRight" lay-unselect>
        <a href="javascript:;">
          <i class="layui-icon layui-icon-more-vertical"></i>
        </a>
      </li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree" lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">menu group 1</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">menu 1</a></dd>
            <dd><a href="javascript:;">menu 2</a></dd>
            <dd><a href="javascript:;">menu 3</a></dd>
            <dd><a href="">the links</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">menu group 2</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">list 1</a></dd>
            <dd><a href="javascript:;">list 2</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="javascript:;">click menu item</a></li>
        <li class="layui-nav-item"><a href="">the links</a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">内容主体区域。记得修改 layui.css 和 js 的路径</div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    底部固定区域
  </div>
</div>
<script src="./layui/layui.js"></script>
<script>
//JS 
layui.use(['element', 'layer', 'util'], function(){
  var element = layui.element
  ,layer = layui.layer
  ,util = layui.util
  ,$ = layui.$;
  
  //头部事件
  util.event('lay-header-event', {
    //左侧菜单事件
    menuLeft: function(othis){
      layer.msg('展开左侧菜单的操作', {icon: 0});
    }
    ,menuRight: function(){
      layer.open({
        type: 1
        ,content: '<div style="padding: 15px;">处理右侧面板的操作</div>'
        ,area: ['260px', '100%']
        ,offset: 'rt' //右上角
        ,anim: 5
        ,shadeClose: true
      });
    }
  });
  
});
</script>
</body>
</html>
```


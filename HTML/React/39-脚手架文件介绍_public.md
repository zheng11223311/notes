**public 下的index.html 文件**

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <!-- %PUBLIC_URL%  代表public 文件夹的路径 -->
    <link rel="icon" href="%PUBLIC_URL%/favicon.ico" />
    <!-- 开启理想视口,用于做移动端网页的适配 -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- 用于适配浏览器页签(标签窗口)+地址栏的颜色(仅支持安卓手机,而且兼容性不太好)-->
    <meta name="theme-color" content="#000000" />
    <!-- 描述网站信息 -->
    <meta
      name="description"
      content="Web site created using create-react-app"
    />
    <!--apple-touch-icon 苹果手机将浏览器页面添加到手机桌面时,手机桌面显示的图标  -->
    <link rel="apple-touch-icon" href="%PUBLIC_URL%/logo192.png" />
    <!-- 对页面进行加壳,做成手机app 形式,在这里做一些获取手机权限的配置,不做加壳的话,这个配置没有什么用处-->
    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />
    <title>React App</title>
  </head>
  <body>
    <!-- 浏览器不支持js 文件时显示 -->
    <noscript>You need to enable JavaScript to run this app.</noscript>
    <!-- 根组件 -->
    <div id="root"></div>
  </body>
</html>
```


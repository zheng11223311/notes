 【代码】 https://github.com/jinhuafe/threejs-tutorial 

【参考资料】 

（1）threejs参考书：Learn Three.js - Third Edition（Jos Dirksen） 

（2）webgl参考书：WebGL Programming Guide: Interactive 3D Graphics Programming with WebGL（Kouichi Matsuda, Rodger Lea） 

（3）threejs官网：https://threejs.org/ 

【说明】

 本视频为three.js入门导向，不包括： 

- texture的高阶使用 - 粒子系统（及与shader结合）
- Postprocessing - Blender与three.js的结合
- 物理引擎的使用（cannon.js） - 
- shader语言（vertexShader/fragmentShader）
-  佛系更新... 



# 引入 ThteeJS 的几种方式

1. js 文件引入,只需要`build`下的`js`文件
2. cdn 链接引入
3. npm 引入



`ThreeJS 入门 - 进华讲解\代码\1-引入ThreeJS 的几种方式.html`

```html
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <!-- js文件引入 -->
    <!-- <script src="../../js/three.js-master/build/three.min.js"></script> -->

    <!--cdn 引入文件  -->
    <!-- https://cdnjs.com/ 搜索 threejs -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js" referrerpolicy="no-referrer">
    </script>
    <script>
        console.log(THREE);
    </script>

    vite 为vue 推出的新一代项目构建器
    <!-- npm 引入  -->
    使用命令 创建项目
    npm create vite 项目名(threejs)
    选择框架
    vanilla 即原生js,不使用框架
    回车生成项目的初始化文件夹 threejs
    使用命令 下载包vite 和three
    npm install vite three
    启动项目
    npm run dev
    vite 支持热更新
    或者npm install three 下载threejs
    使用threejs
    import  * as THREE from 'three'
    console.log(THREE)



</body>

</html>
```


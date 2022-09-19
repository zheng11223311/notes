**题外**

```
-save ：自动将模块和版本号添加到 dependencies 部分
-save -dev ：自动将模块和版本号添加到 devdependencies 部分
```

### 1.准备工作

创建一个app 文件,放置前端项目

创建一个server 文件,放置后端项目

**开始创建项目**

在server 文件中初始化整体项目结构

```
express 项目名称	
```

**如果没有express 库需要安装**

```
npm install -g express  
npm install -g express-generator
```

项目创建成功,生成一个基本文件结构

**进入项目,安装对应的包**

```
cd 项目名称
npm install
```

**启动项目**

```
 SET DEBUG=项目名称:* & npm start
 或
node ./bin/www
 或
 npm start
 或
//node app.js 暂时不可行,需要后期配置
```

根据提示信息,打开网站http://localhost:3000/

**修改模板引擎为ejs,需要安装ejs**

```
npm install ejs
```


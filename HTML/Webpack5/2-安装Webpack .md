### 1.安装Webpack 

`webpack` 为主包,`webpack-cli` 使我们可以在命令行里边执行`webpack `命令

```
npm install webpack webpack-cli --save-dev 	  //下载到本地
npm install webpack webpack-cli -g   //下载到全局
```

**初始化项目**

```
npm init -y
```

**打包**

生成`dist` 目录,以及子文件`main.js`

```
webpack      //默认使用全局webpack
```

**查看打包的详细信息**

```
webpack --stats detailed
```

**npx 与node ,npm 一起存在,当全局的webpack 不存在时,使用npx 调用本地的webpack**

```
npx webpack
```


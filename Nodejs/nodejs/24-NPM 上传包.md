**1.创建文件夹(packageUpload)**

包内文件

```js
//rename.js
// 重命名
let fs=require('fs')
function rename(oldPath,newPath){
    return new Promise((resolve,reject)=>{
        fs.rename(oldPath,newPath,(error)=>{
            if(error){
                reject(error)
            }else{
                resolve('重命名成功')
            }
        })
    })
}
```

**2.npm 包的初始化**

npm init

**package.json 文件**

```json
{
  "name": "packageUpload",
  "version": "1.0.0",
  "description": "这是一个fs 包封装重命名的包",
  "main": "rename.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [
    "fs",
    "Promise"
  ],
  "author": "lc",
  "license": "ISC"
}

```

**3.npm 包信息的设置**

**4.注册npm 官网账号**

**5.npm 官网账号需要邮箱验证**

**6.本机登入npm**

npm login

**7.发布npm 包(packageUpload)**

npm public

**8.下载使用该包**

npm i 上传的包名

例如:npm i packageUpload
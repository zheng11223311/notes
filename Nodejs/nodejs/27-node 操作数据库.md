**Node.js 连接MySQL**

介绍如何使用Node.js 来连接MySQL,并对数据库进行操作

**安装驱动**

npm install mysql

**连接数据库**

在以下实例中根据你的实际配置修改数据库用户名及密码及数据库名

```js
//index.js 文件
// 连接数据库
let mysql=require('mysql')
// console.log(mysql);

let options={
    host:'localhost',        //主机名
    // port:'3300',            //端口号,默认3306
    user:'root',
    password:'',
    database:'mall'           //连接的数据库,没有数据库时可以不写
}

let con=mysql.createConnection(options)     //创建数据库
//建立连接
con.connect((err)=>{
    //如果建立连接失败
    if(err){
        console.log(err);
    }else{
        console.log('连接成功');
    }
})       

//执行数据库语句
//执行查询语句
let strsql='select * from user'  //在表user 中查找所有字段
con.query(strsql,(err,data,fields)=>{
    //err 错误信息,data 成功返回的数据,fields 数据的信息
    // console.log(err);
    // console.log(data);
    // console.log(fields);
})

//删除表
// let strsql2='drop table user'       //删除的表user
// con.query(strsql2,(err,results)=>{
//     //err 错误信息, results 执行的结果
//     console.log(err);
//     console.log(results);  //返回删除成功的信息
// })

//删除库
// let strsql3='drop database web'
// con.query(strsql3,(err,results)=>{
//     //err 错误信息, results 执行的结果
//     console.log(err);
//     console.log(results);  //返回删除成功的信息
// })

//创建库,存在的库不能再次创建
// let strsql4='create database mall'
// con.query(strsql4,(err,results)=>{
//      //err 错误信息, results 执行的结果
//     console.log(err);
//     console.log(results);  //返回删除成功的信息
// })

//创建表,存在的表不能再次创建
// 必须要先连接到一个数据库,才能在库里面创建表
// let strsql5='CREATE TABLE user ( `id`  int NOT NULL AUTO_INCREMENT,`username`  varchar(255) NULL,`password`  varchar(255) NULL,`mail`  varchar(255) NULL,PRIMARY KEY(`id`));'
// con.query(strsql5,(err,results)=>{
//      //err 错误信息, results 执行的结果
//     console.log(err);
//     console.log(results);  //返回删除成功的信息
// })

// 插入数据(创建字段,中文报错)
//id 设置了自动递增(设置为主键)的话,id 可以不写,自动增加
// let strsql6='insert into user (id,username,password) values(1,"hello","1234")'
// con.query(strsql6,(err,results)=>{
//      //err 错误信息, results 执行的结果
//     console.log(err);
//     console.log(results);  //返回删除成功的信息
// })

// let strsql7='insert into user (id,username,password,mail) values(2,"hello","1234","2345678@qq.com")'
// con.query(strsql7,(err,results)=>{
//      //err 错误信息, results 执行的结果
//     console.log(err);
//     console.log(results);  //返回删除成功的信息
// })

//简便写法
let strsql8='insert into user (username,password,mail) values(?,?,?)'
con.query(strsql8,['name11','password','123@123'],(err,results)=>{
     //err 错误信息, results 执行的结果
    console.log(err);
    console.log(results);  //返回删除成功的信息
})
//修改字段
let strsql9='update user set username="张三"'
con.query(strsql8,['name11','password','123@123'],(err,results)=>{
     //err 错误信息, results 执行的结果
    console.log(err);
    console.log(results);  //返回删除成功的信息
})
```

可以将书籍链接存储到数据库

联表查询

将user 表的user.name  字段与user1 表的user1.id 字段连接在一起

,限制查询0-5条

```mysql
select user.name from user left join user1 on user1.id limit 0,5
```


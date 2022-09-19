//封装数据库查询函数

function sqlQuery(strsql,ku){
     return new Promise(function(resolve,reject){
          let mysql=require('mysql')
          let options={
            host:'localhost',        //主机名
            // port:'3300',            //端口号,默认3306
            user:'root',
            password:'',
            database:ku           //连接的数据库,没有数据库时可以不写
            }

        let con=mysql.createConnection(options)     //创建数据库
    //建立连接
    con.connect((err)=>{
                //如果建立连接失败
                if(err){
                console.log(err);
            }else{
                console.log('数据库连接成功');
            }
        })      
    //  strsql='insert into user (id,user,password) values(3,"hello","1234")'
    con.query(strsql,[],(err,data,fields)=>{
            // err 错误信息,data 成功返回的数据,fields 数据的信息
            // console.log(err);
            // console.log(data);
            // console.log(fields);
                 if(err){
                reject(err);
            }else{
                console.log('数据字段查询成功');
                resolve(data)
            }
           })

     })

   
}

module.exports =sqlQuery
const proxy=require('http-proxy-middleware')
    //这里的代码变化需要重新启动服务器
module.exports=function(app){
    app.use(
        proxy('/api',{      //检测到请求路径带有/api 的路径,会触发该代理
            target:'http://localhost:5000',
            changeOrigin:true,  //控制服务器收到的请求头中的Host 字段,没有这个属性的话,
            //一般能获取到数据,但是服务器上显示的是3000端口的请求,而不是5000端口,
            //严格的服务器检测到也会阻止
            pathRewrite:{
                '^/api':'',     //将请求地址的/api 替换为空(重写请求路径)
            }
        }),
        proxy('/api2',{
            target:'http://localhost:5001',
            changeOrigin:true,
            pathRewrite:{
                '^/api2':'',     //将请求地址的/api2 替换为空
            }
        })
    )
}
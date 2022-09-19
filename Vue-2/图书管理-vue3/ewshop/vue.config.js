//修改配置文件后必须重启项目
module.exports={
    configureWebpack:{
        //打包的配置文件
        resolve:{
            //起别名
            alias:{
                'assets':'@/assets',
                'components':'@/components',
                'network':'@/network',  //网络
                'utils':'@/utils',  //第三方工具
                'views':'@/views',
            }
        }
    },
    //当前ewshop 下生成打包好的dist 文件夹
    //打包后访问的地址为网站根目录下的ewshop 文件夹
    publicPath:'/ewshop' 
}
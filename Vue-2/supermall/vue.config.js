//配置别名,在外部修改别名,不动内部设置的别名
//修改后需要重新npm run serve
module.exports={
    configureWebpack:{
        resolve:{
            extensions:['js','css','vue'],   //可以不用写后缀,默认已经配置了
            alias:{
                'components':'@/components',
                'assets':'@/assets',
                'network':'@/network',
                'common':'@/common',
                'views':'@/views',
            }

        },
        
    },
     //打包后访问的地址为网站根目录下的ewshop 文件夹
     publicPath: '/supermall',  //文件在网站根目录下的supermall
    outputDir: "dist", // 输出文件目录
    lintOnSave: false, // eslint 是否在保存时检查
    // assetsDir: 'static', // 配置js、css静态资源二级目录的位置
    // dist(根) 下
    assetsDir: './supermall', // 配置js、css静态资源二级目录的位置
     
}

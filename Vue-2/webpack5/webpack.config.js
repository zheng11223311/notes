const {resolve,join}=require('path')  //处理路径的模块
const HtmlWebpackPlugin=require('html-webpack-plugin') //引用打包html 的插件,不要带{} 里面加变量
const MinCssExtractPlugin=require('mini-css-extract-plugin'); //引用迷你css 单独提取插件
const OptimizeCssAssetsWebpackPlugin=require('optimize-css-assets-webpack-plugin')  //引用压缩css 插件
const purgecssPlugin=require('purgecss-webpack-plugin') //去除死代码
const glob=require('glob')
const PATHS={src:join(__dirname,'src')} //PATHS 对象为src 属性,src 属性就是当前目录下的src

module.exports={           //导出配置
    target:"web",           //保存后的自动刷新
    devServer:{
        port:3001,
        compress:true,    //使用编译
        open:true,          //自动打开浏览器
        hot:true,
    },
    mode:'development',  //运行指令 webpack, 生产模式 默认生成生产的dist 文件 ,开发模式 development
    entry:['./src/index.js','./src/index.html'],   // 打包时的入口文件 默认是这个,可以不写

    // 多个路口
    // entry:{
    //     vend:['./src/js/jquery.js','./src/js/common.js'], //将这两个文件打包成一个vend 文件
    //     index:'./src/js/index.js',  //入口文件
    //     cart:'./src/js/cart.js',     //入口文件
    // },
    output:{            //输出路径
        filename:'[name].js',    // 默认输出在dist/main.js 文件 
        path:resolve(__dirname,'build')   //调用path 方法 __dirname 项目当前的根目录路径,在跟路径下创建build 文件夹
        //运行指令webpack 将./src/index.js 文件打包到build/build.js 下
    },

    module:{        //模块
        rules:[     //规则
            //写入loader 
            // {
                    // test:/\.css$/,
            //     loader:'css-loader'  一个loader
            // },
            // {
            //     test:/\.css$/,    //匹配谁使用这个loader
            //     use:['style-loader','css-loader']  //多个loader使用,注意先后顺序,数组内文件从右到左,从下到上,先css 处理在style 导入
            // },
            // {
            //     test:/\.less$/,    //匹配谁使用这个loader
            //     use:['style-loader','css-loader','less-loader']  //多个loader使用,注意先后顺序,数组内文件从右到左,从下到上,先css 处理在style 导入
            // },
            // {
            //     test:/\.scss$/,    //匹配谁使用这个loader
            //     use:['style-loader','css-loader','sass-loader']  //多个loader使用,注意先后顺序,数组内文件从右到左,从下到上,先css 处理在style 导入
            // },
            // {
            //     test:/\.css$/,    //匹配谁使用这个loader
            //     use:[MinCssExtractPlugin.loader,'css-loader','postcss-loader']  //多个loader使用,注意先后顺序,数组内文件从右到左,从下到上,先css 处理在style 导入
            // },
            {
                test:/\.css$/,    //匹配谁使用这个loader
                use:['style-loader','css-loader','postcss-loader']  //多个loader使用,注意先后顺序,数组内文件从右到左,从下到上,先css 处理在style 导入
            },
            {
                test:/\.less$/,    //匹配谁使用这个loader
                use:[MinCssExtractPlugin.loader,'css-loader','less-loader','postcss-loader']  //多个loader使用,注意先后顺序,数组内文件从右到左,从下到上,先css 处理在style 导入
            },
            {
                test:/\.scss$/,    //匹配谁使用这个loader
                use:[MinCssExtractPlugin.loader,'css-loader','sass-loader','postcss-loader']  //多个loader使用,注意先后顺序,数组内文件从右到左,从下到上,先css 处理在style 导入
            },
            {
                test:/\.(webp|jpg|jpeg|gif)$/,    //匹配谁使用这个loader
                loader:'url-loader',
                    options:{
                        publicPath:'./images/',    //公共路径,会在输出路径前面创建一个路径 并创建images 文件
                        outputPath:'images/',     //图片输出的路径
                        limit:1024*8,           //小于limit 的小图片会转换base64 的格式
                        // name:'[hash].[ext]',   //生成以哈希为名称的文件名,[ext]是变量名 为不同图片的后缀的格式 也可以写 [name].jpg
                        name:'[name][hash:10].[ext]',   //以文件名字和哈希前10位组成文件名

                } //option 对file 的操作
            },
            {
                test:/\.html$/,
                loader:'html-loader',  //用来处理引用打包后的图片路径的问题,既解决图片名称的变化带来的路径不对的情况
            },
            {
                exclude:/\.(js|json|html|css|less|scss|png|jpg|gif|gpeg|webp)$/,     //排除资源,打包其他资源(字体图标)
                loader:'file-loader',
                options:{
                    outputPath:'font/',
                    publicPath:'./font',
                    name:'[name][hash:10].[ext]'
                }
            },
            // {
            //     test:/\.js$/,       //只检查js 语法,只检查自己写的代码,不检查第三方库的代码
            //     exclude:/node_modules/,   //排除node_modules 第三方库
            //     loader:'eslint-loader',
            //     options:{
            //         fix:true        //检查出来后制动修复语法问题
            //     }
            // },
        ]
    },

    plugins:[
        //插件 比如压缩(丑化)插件
        new HtmlWebpackPlugin({  //生成HTML 模板
            template:'./src/index.html',
            filename:'index.html',
            // chunks:['index','vend']   //指定引入的js 文件,避免引入其他js 文件,数组内文件从后往前加载
        }),
        // new HtmlWebpackPlugin({
        //     template:'./src/cart.html',
        //     filename:'cart.html',
        //     chunks:['cart','vend']
            
        // }),
        new MinCssExtractPlugin(),  //迷你css 单独提取插件
        new OptimizeCssAssetsWebpackPlugin(),  //压缩css 插件  Optimize  最优化  Assets 有价值的,资产
        new purgecssPlugin({
        paths:glob.sync(`${PATHS.src}/**/*`,{nodir:true}),  //在打包前读取有用的css,在打包  /**/* 为子层
    })
    ],


}
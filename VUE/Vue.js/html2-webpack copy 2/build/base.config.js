const path =require('path')
const webpack =require('webpack')
// const HtmlWebpackPlugin =require('html-webpack-plugin')
// const UglifyjsWebpackPlugin =require('uglifyjs-webpack-plugin')

module.exports={
    entry:'./src/main.js',   
    output:{
        //当前文件的../dist 层目录下
        path:path.resolve(__dirname,'../dist'),
        filename:'bundle.js',
        // publicPath:'dist/'  进一步配置好了不需要使用这个
    },
    module:{
        rules: [
      {
        test: /\.css$/,
        //css-loader 只负责将css 文件进行加载,不负责
        use: [ 'style-loader','css-loader']
      },
      {
         test: /\.less$/,
            use: [{
                loader: "style-loader" // creates style nodes from JS strings
            }, {
                loader: "css-loader" // translates CSS into CommonJS
            }, {
                loader: "less-loader" // compiles Less to CSS
            }]
      },
      {
        // DOS早期后缀名只允许3位数.jpg .htm
        test: /\.(png|jpg|gif|jpeg)$/,
        use: [
          {
            loader: 'url-loader',
            options: {
              limit: 81,
            name:'img/[name].[hash:8].[ext]'
            //[name]没有括号,打包出来的就都是name 名字的图片
            //加了[],就是一个变量,name 是要保存的图片的名字
            // name/表示名为name 的文件夹
            //[hash:8] 取hash 的前8位
            //[ext] 扩展名,根据不同格式的图片的扩展名,
            //直接 ext 表示扩展名为ext
            // 在dist 下创建img文件夹和图片

            }
          }
        ]
      },
       {
      test: /\.js$/,    //匹配js 文件
      //exclude:排除   include:包含
      exclude: /(node_modules|bower_components)/,
      use: {
        loader: 'babel-loader',
        options: {
          presets: ['es2015']
        }
      }
    },
    {
      test:/\.vue$/,
      use:['vue-loader']
    }
    ]
    },
    resolve:{
      //导入时可以省略后缀名
      // extensions:['.js','.css','.vue'],
      // alias  别名
      alias:{
        //main.js 引入vue 时,在node_modules 文件夹里找指定文件夹
        //或者在import Vue from 'vue/dist/vue.esm.js',就不用配置
        // vue.esm.js 这个版本包含编译template 的文件
        // 默认是vue.runtime.js
        'vue$':'vue/dist/vue.esm.js'
      }
    },
    plugins:[
      //横幅
      new webpack.BannerPlugin('最终解释权归逃离216 所有'),
      new HtmlWebpackPlugin({
         //根据src 文件夹下index.html 这个模板生成新的html
        template:'index.html',  
        
      }),
    ],
    
}
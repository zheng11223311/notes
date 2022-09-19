const UglifyjsWebpackPlugin =require('uglifyjs-webpack-plugin')
const webpackMerge =require('webpack-merge')
const baseConfig = require('./base.config')

module.exports=webpackMerge(baseConfig,{
    plugins:[
      new UglifyjsWebpackPlugin() //对js 文件进行压缩
    ],
})

module.exports = {
  // 执行npm run dev 时配置
  devServer: {
    port: 8999, //  端口号的配置
    open: true // 自动打开浏览器
  },
  publicPath: '/node/echar/frontend/dist',
  outputDir: 'dist', // 输出文件目录
  lintOnSave: false, // eslint 是否在保存时检查
  assetsDir: './' // 配置js、css静态资源二级目录的位置
}

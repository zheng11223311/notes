// 解决
// App running at:
// - Local:   http://localhost:8080/
// - Network: unavailable   不存在的问题

module.exports = {

    configureWebpack: {

        // other webpack options to merge in ...

    },

    // devServer Options don't belong into `configureWebpack`

    devServer: {

        public: '192.168.153.1:8080',

        hot: true,

        disableHostCheck: true,

    },

    // 解决打包路径错误,创建vue.config.js
    //网站根路径  /gg  表示根路径为gg
    publicPath: '/kwmusic'

};

// 解决成功
// App running at:
// - Local:   http://localhost:8080/
// - Network: http://192.168.153.1:8080/
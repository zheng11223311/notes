module.export={
    configureWebpack:{
        resolve:{
            // extend:['.js'],  可以不用多写的后缀名
            alias:{
                // '@':'src',  默认已经配置了
                // 'assets':'@/assets',
                // 'common':'@/common',
                // 'components':'@/components',
                // 'network':'@/network',
                // 'views':'@/views',
                // 'assets':resolve('./src/assets'),
                // 'common':resolve('./src/common'),
                // 'components':resolve('./src/components'),
                // 'network':resolve('./src/network'),
                // 'views':resolve('./src/views'),
            }
        }
    }
}
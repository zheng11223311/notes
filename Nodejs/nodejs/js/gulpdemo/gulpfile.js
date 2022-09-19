const gulp=require('gulp')
const htmlmin=require('gulp-htmlmin')
const fileinclude=require('gulp-file-include')
const less=require('gulp-less')
const csso=require('gulp-csso')
const babel=require('gulp-babel')
const uglify=require('gulp-uglify')



//使用gulp.task() 方法建立任务
gulp.task('first',()=>{     //first     建立的任务的名字
    //获取要处理的文件
    gulp.src('./src/css/base.css')
    // 将处理后的文件输出到dist 目录
    .pipe(gulp.dest('./dist/css'))
})

// html 任务
// 1.html 文件中代码的压缩操作

gulp.task('htmlmin',()=>{       //htmlmin     建立的任务的名字
   
    gulp.src('./src*.html')
    // 将抽离的公共代码放到同一个./common/common.html 文件中
    // ,在被抽离的html 中 要使用的地方使用@@include('./common/common.html')
    .pipe(fileinclude())
    //压缩html 文件中的代码     collapseWhitespace  折叠空格
    .pipe(htmlmin({collapseWhitespace:true}))
    .pipe(gulp.dest('dist'))
})

// 2.抽离html 文件中的公共代码



// css 任务
// 1.less 语法转换
// 2.css 代码压缩
gulp.task('cssmin',()=>{
    //选着所有css 文件和less 文件
    gulp.src(['./src/*.less','./src/css/*.css'])
        //语法转换
    .pipe(less())
    //压缩css
    .pipe(csso())
    .pipe(gulp.dest('dist/css'))
})


//js 任务
//1.es6 语法转换
// 2.代码压缩
gulp.task('jsmin',()=>{
    gulp.src('./src/js/*.js')
        // es6 语法转换
    .pipe(babel({
        //它可以判断当前代码的运行环境 将代码转换为当前运行环境所支持的代码
        presets:['@babel/env']
    }))
    // 代码压缩
    .pipe(uglify())
    .pipe(gulp.dest('./dist/js'))
})

// 复制文件夹
gulp.task('copy',()=>{
    gulp.src('./src/images/*')

    .pipe(gulp.dest('./dist/images'))

    gulp.src('./src/lib/*')
    
    .pipe(gulp.dest('./dist/lib'))
})


//构建任务,所有任务一起执行
gulp.task('default',['htmlmin','cssmin','jsmin','copy'])       
// 执行gulp default   执行gulp 默认找 default 命令
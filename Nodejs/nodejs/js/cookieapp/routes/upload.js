var express = require('express');
var router = express.Router();
var multer=require('multer')
var fs=require('fs')

//配置上传对象,自动创建文件夹
// let upload1=multer({dest:'./public/upload'})

//设置多个文件上传
let upload1=multer({dest:'./public/upload',limits:{filesSize:1024*1024*20,files:5}})

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.render('uploadimg.ejs')
});



// 处理上传的POST 请求
// 如果上传单个文件，可调用upload。single（） 方法，并将表单文件的name 值传入
router.post('/',upload1.single('imgfile'),(req,res)=>{
    console.log(req.file);

    //重命名文件,因为直接上传的文件名为随机名字,我们想要重命名为.jpg 格式
      var oldFile=req.file. destination+'/'+req.file.filename	//指定旧文件
      var newFile=req.file. destination+'/'+req.file.originalname
      console.log(newFile);
      fs.rename(oldFile,newFile,err=>{
      console.log('重命名成功');
    })
    res.json({
      state:'ok',
      imgUrl:'/upload/'+req.file.originalname,

    })
})


router.get('/ajax',(req,res)=>{
  res.render('ajaxupload.ejs')
})

module.exports = router;

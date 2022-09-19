**ajax 上传图片**

**图片上传实现步骤**

**图片上传**

通过jquery 监听input change 事件,这样我们可以获取到上传的图片流信息,从而可以获取到图片的地址,大小,格式以及名称等信息

```ejs
<!--view 下ajaxupload.ejs 文件-->
<!DOCTYPE html>
<html>
  <head>
    <title>图片上传</title>
    <link rel='stylesheet' href='/stylesheets/style.css' />
  </head>
  <body>
    <h1>图片上传</h1>
    <!-- 表单上传文件时,需要改变属性enctype 为enctype="multipart/from-data" 
    ,即定义表单的上传类型为文件类型
    -->
    <form action="/imgUpload" method="post" enctype="multipart/form-data">
      <label for="inp">选择文件</label>
    <input  hidden type="file" name="imgfile" id="inp">
      <div class="btn">上传</div>
  </form>
  <div>
    <h3>预览图片</h3>
    <img src="" alt="" id="yulan">
  </div>
  <script src="/js/jquery-3.1.1.min.js"></script>
  <script>
    console.log($('#inp'));
    let formDataObj=new FormData()
    let file
      $('#inp').change((e)=>{
      // console.log($('form'));
      file=$('#inp')[0].files[0]
      console.log($('#inp')[0].files[0]);
      //预览图片
      //创建预览图片地址
      let httpUrl=window.webkitURL.createObjectURL(file)    //生成一个地址
      $('#yulan').attr('src',httpUrl)



      // 创建formData 对象,将文件追加到formData 对象里
       formDataObj=new FormData()
// 一个imgfile 下能存放多张图片,如果多次点击选择文件, imgfile 下会存放多张图片,而这里只能上传一张图片 所以formDataObj=new FormData() 要在行数内部再次创建一次,不然会报错
      formDataObj.append('imgfile',file)

    })
    $('.btn').click(()=>{
      $.ajax({
        url:'/imgUpload',
        method:'POST',
        data:formDataObj,
        processData:false,  //数据不需要额外处理
        contentType:false   //不要设置类型,已经定义为formData 数据类型
      }).then(res=>{
        console.log(res);
        $('body').append(`<h1>上传成功</h1><img src='${res.imgUrl}'/>`)
      })
    })
  </script>
  </body>
  
</html>
```

```js
//routes 下 upload.js 文件
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

```

```js
//app.js 文件
//多出使用一下两条
var upload = require('./routes/upload');
app.use('/imgUpload', upload);
```


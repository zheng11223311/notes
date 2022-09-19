var express = require('express');
const jiami = require('../../module/jiami');
var router = express.Router();
var sqlQuery=require('../../module/sqlQuery')
//引入session 登入验证
let permission=require('../../module/permission.js')
// console.log(sqlQuery);
/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('注册登入管理模块');
});

//获取登入表单post 提交的数据
router.post('/index.html',async function(req, res, next) {
  let user=req.body.user 
  let password=req.body.password
  // console.log(req.body);
  console.log(user,password);
  console.log('-------------------------');
  console.log(req.session.user);
  //判断用户是否存在,如果没有用户才进行登入操作
  let sqlStr='select * from user where user = "'+user+'" and password ="'+jiami(password)+'"'
  //使用promise 导出函数内sqlQuery 查询结果,使用await 接收到导出的结果
  let result=await sqlQuery(sqlStr,'yygl')
  // console.log(result);
  //  保存session
    
  //防止回退保存的记录还能登上,暂未实现
 
    
  if(result.length!=0){
    //存在用户
    req.session.user=user
    res.render('ProClinic医院管理系统响应式模板/index.ejs')
    
  }else{
    res.send(`<h1>账号或密码输入错误</h1>
    <p><span>5</span>s 后跳转至登入页面</p>
    <p class="">你也可以手动点击:<a href="/login/login.html" class="">跳转至登入页面</a></p>
  <s>
    let num=5
    setInterval(()=>{
      num--
      if(num<0){
        location.href='/login/login.html'
      }else{
        document.querySelector('span').innerHTML=num
      }
    },1000)
    </s>
    `)
  }

  
});
router.get('/register', function(req, res, next) {
    //自动找到views 下的子目录
    //views 下的ejs 文件 自动找到public 下的子目录文件
    //例如:href="/images/fav.png">  自动找到public 下的子目录 images 文件
    //images 前面要加/ 指定根目录public
  res.render('ProClinic医院管理系统响应式模板/index.ejs')
});

router.get('/loginout.html',function(req, res, next){
    req.session.destroy((err)=>{
      console.log(err);
    })
    res.send(`<h1>退出登入成功</h1>
    <p><span>5</span>s 后跳转至登入页面</p>
    <p class="">你也可以手动点击:<a href="/login/login.html" class="">跳转至登入页面</a></p>
  <script>
    let num=5
    setInterval(()=>{
      num--
      if(num<0){
        //    /sign-up.html  是直接到http://localhost:3000/sign-up.html
        location.href='/login/login.html'
      }else{
        document.querySelector('span').innerHTML=num
      }
    },1000)
  </script>`)
})

router.get('/login', function(req, res, next) {
  res.send('登入管理模块');
});

//用户注册表单post 提交的数据
router.post('/login.html', async function(req, res, next) {
  //获取username 和密码
  let user=req.body.user 
  let password=req.body.password
  let email=req.body.email
  // console.log(req.body);
  // console.log(password);
  //判断用户是否存在,如果没有用户才进行插入操作
  /* 
    node中调用mysql模块读写时候，如果直接插入字符串：

connection.query(‘SELECT * from users WHERE name=’ + data.name , callback);

或者：

connection.query(‘SELECT * from users WHERE name = alan’ , callback);

会抛出这个错误。

正确写法应该是：

connection.query("SELECT * from users WHERE name= ‘alan’ ", callback);

或者

connection.query("SELECT * from users WHERE name= ’ “+ data.name+” ’ ", callback);

转载：https://www.cnblogs.com/alan2kat/p/7773796.html

  */
  let sqlStr='select * from user where user = "'+user+'"'
  //使用promise 导出函数内sqlQuery 查询结果,使用await 接收到导出的结果
  let result=await sqlQuery(sqlStr,'yygl')
  console.log(result);
  if(result.length!=0){
    // 告知此用户名已存在,请直接登入或找回密码
    res.render('info/info')
  }else{
    //设置id 为自增长
    // alter table user modify id int(11) auto_increment;
    sqlStr='insert into user (user,password) values("'+user+'","'+ jiami(password) +'")'
    sqlQuery(sqlStr,'yygl')
    console.log('注册成功');
    res.render('ProClinic医院管理系统响应式模板/login.ejs')
  }
  
});
// 默认首页
router.get('/index.html',permission, function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/index.ejs')
});
// 添加病人信息
router.get('/add-patient.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/add-patient.ejs')
});
router.post('/add-patient.html',async function(req, res, next) {
  let {patientname,birthday,age,phone,Email,gender,confirm}=req.body
  console.log(patientname,birthday,age,phone,Email,gender,confirm);
  // let sqlStr='select * from patient where Email = "'+Email+'"'
  // 邮件使用字段类型为text
  //  使用char(11),类型,因为手机号是固定的11位,所以可以直接使用char(11) 
  // let sqlStr='insert into patient (patientname,birthday,age,phone,Email,gender,confirm) values("'+patientname+'","'+ birthday +'","'+ age +'","'+ phone +'","'+ Email +'","'+ gender +'","'+ confirm +'")'
  let sqlStr='insert into patient (patientname,birthday,age,phone,Email,gender) values("'+patientname+'","'+ birthday +'","'+ age +'","'+ phone +'","'+ Email +'","'+ gender +'")'
  //使用promise 导出函数内sqlQuery 查询结果,使用await 接收到导出的结果
  let result=await sqlQuery(sqlStr,'yygl')
  console.log(result);
  // location.href="add-patient.html"   当前目录下    http://localhost:3000/login/add-patient.html
  // location.href="/add-patient.html"   域名目录下    http://localhost:3000/add-patient.html
  res.send('<script>alert("病人信息增加成功");location.href="add-patient.html"</script>')
});
// 查看病人信息
router.get('/patients.html',async function(req, res, next) {
  let sqlStr='select * from patient'
  let result=await sqlQuery(sqlStr,'yygl')
  console.log(result);
  
  res.render('ProClinic医院管理系统响应式模板/patients.ejs',{script:result})
});
// 病人详情
router.get('/about-patient.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/about-patient.ejs')
});
// 编辑病人信息
router.get('/edit-patient.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/edit-patient.ejs')
});



// 添加医生信息
router.get('/add-doctor.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/add-doctor.ejs')
});
// 查询医生信息
router.get('/doctors.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/doctors.ejs')
});
// 编辑医生信息
router.get('/about-doctor.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/about-doctor.ejs')
});
// 医生信息详情
router.get('/edit-doctor.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/edit-doctor.ejs')
});



// 添加出诊信息
router.get('/add-appointment.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/add-appointment.ejs')
});
// 查询出诊信息
router.get('/appointments.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/appointments.ejs')
});
// 出诊信息详情
router.get('/about-appointment.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/about-appointment.ejs')
});
// 编辑出诊信息
router.get('/edit-appointment.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/edit-appointment.ejs')
});



// 添加支付
router.get('/add-payment.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/add-payment.ejs')
});
// 所有支付
router.get('/payments.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/payments.ejs')
});
// 发票
router.get('/about-payment.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/about-payment.ejs')
});



// 添加病房
router.get('/add-room.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/add-room.ejs')
});
// 查询病房
router.get('/rooms.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/rooms.ejs')
});
// 编辑病房信息
router.get('/edit-room.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/edit-room.ejs')
});



// 排版
router.get('/typography.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/typography.ejs')
});
// 按钮
router.get('/buttons.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/buttons.ejs')
});
// 卡片
router.get('/cards.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/cards.ejs')
});
// 选项卡
router.get('/tabs.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/tabs.ejs')
});
// 手风琴
router.get('/accordions.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/accordions.ejs')
});
// 模态窗口
router.get('/modals.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/modals.ejs')
});
// 媒体和列表
router.get('/lists.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/lists.ejs')
});
// 网格
router.get('/grid.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/grid.ejs')
});
// 进度条   
router.get('/progress-bars.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/progress-bars.ejs')
});
// 预警和提示
router.get('/notifications-alerts.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/notifications-alerts.ejs')
});
// 分页
router.get('/pagination.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/pagination.ejs')
});
// 滑块
router.get('/carousel.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/carousel.ejs')
});
// 表格
router.get('/tables.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/tables.ejs')
});
// Morris图表
router.get('/charts-1.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/charts-1.ejs')
});
// Flot图表
router.get('/charts-2.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/charts-2.ejs')
});
// 谷歌地图
router.get('/map-1.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/map-1.ejs')
});
// Vector地图
router.get('/map-2.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/map-2.ejs')
});
// 表单
router.get('/forms.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/forms.ejs')
});
// Font Awesome 
router.get('/font-awesome.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/font-awesome.ejs')
});
// Themify图标
router.get('/themify.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/themify.ejs')
});




// 登录
router.get('/login.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/login.ejs')
});
// 注册
router.get('/sign-up.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/sign-up.ejs')
});
// 404
router.get('/404.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/404.ejs')
});
// 空白页
router.get('/blank-page.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/blank-page.ejs')
});
// 价格表
router.get('/pricing.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/pricing.ejs')
});
// FAQ
router.get('/faq.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/faq.ejs')
});
// 发票
router.get('/invoice.html', function(req, res, next) {
  res.render('ProClinic医院管理系统响应式模板/invoice.ejs')
});



module.exports = router;
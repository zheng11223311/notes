//根据登入时的创建的session 是否存在判定是否允许进入页面
function permission(req,res,next){
  //尚未登入,返回至登入页面
    if(req.session.user==undefined){
       res.send(`<h1>尚未登入,请登入</h1>
    <p><span>5</span>s 后跳转至登入页面</p>
    <p class="">你也可以手动点击:<a href="/login/login.html" class="">跳转至登入页面</a></p>
  <script>
    let num=5
    setInterval(()=>{
      num--
      if(num<0){
        location.href='/login/login.html'
      }else{
        document.querySelector('span').innerHTML=num
      }
    },1000)
    </script>
    `)
    }else{
      //正常进入
      next()
    }
}

module.exports=permission
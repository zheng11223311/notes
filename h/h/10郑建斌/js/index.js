// 打开登入页面
var login= $('.register span:nth-of-type(1)')
// console.log(login);
login.click(()=>{
     $('body .body-login').css('display','block')
})

// 关闭登入页面
var logout= $('body .body-login1 div:nth-child(1) i ')
logout.click(()=>{
     $('body .body-login').css('display','none')
})

//判断输入内容
var email=$('body .body-login1 div.form input:nth-child(1)')
    email.on('change',()=>{
        console.log(email.val());
        var value=email.val()
        var reg=/^[0-9a-z]{6,12}@[0-9a-z]{1,3}\.[a-z]{1,3}$/g
        // console.log(reg.test(value));        //再次匹配就会错误
        var result=reg.test(value)
        console.log(result);
        var usertips=$('body .body-login1 div.form span:nth-of-type(1)')
        if(result){
            usertips.html('输入正确')
            usertips.css('color',' rgb(13, 160, 8)')
        }else{
            usertips.html('输入错误')
            usertips.css('color','red')
        }
    })

    //判断密码
var passw=$('body .body-login1 div.form input:nth-child(4)')
    passw.on('change',()=>{
        console.log(passw.val());
        var value=passw.val()
        var reg=/^[0-9a-z]{6,12}$/g
        // console.log(reg.test(value));        //再次匹配就会错误
        var result=reg.test(value)
        console.log(result);
        var psstips=$('body .body-login1 div.form span:nth-of-type(2)')
        if(result){
            psstips.html('输入正确')
            psstips.css('color',' rgb(13, 160, 8)')
        }else{
            psstips.html('请输入6-12位数字或字母')
            psstips.css('color','red')
        }
    })

    // 轮播图
    var lun=$("body > section > div:nth-child(1) > div.box>.body")
    console.log(lun);
    var length=0
    var timer
    var dian=0
    //封装轮播图函数
    function timee(){
        timer=setInterval(()=>{
        length+=1080
        dian+=1
        if(length==1080*3){
            length=0
            dian=0
        }
        lun.css('transform','translate('+ -length+'px)')
        var i=document.querySelectorAll("body > section > div:nth-child(1) > div.box > div.mod_slide_switch > a> i")
        // console.log(i);

        $(i).removeClass('hover')
        $(i).eq(dian).addClass('hover')
        // console.log($(i).eq(0));
    },2000)
    }
    timee()
    // 鼠标进入轮播图
    var lunbox=$("body > section > div:nth-child(1) > div.box")
    lunbox.on('mouseenter',()=>{
        clearInterval(timer)
    })
     // 鼠标移出轮播图
    lunbox.on('mouseleave',()=>{
        clearInterval(timer)
            timee()
    })
     // 鼠标进入向左箭头
     var left=$("body > section > div:nth-child(1) > span.lce.iconfont.icon-xiangzuo")
     console.log(left);
    left.on('mouseenter',()=>{
        clearInterval(timer)
    })
    left.on('mouseleave',()=>{
        timee()
    })
    left.on('click',()=>{
        // console.log(length);
       length-=1080
        dian-=1
        if(length==-1080){
            length=1080*2
            dian=2
        }
        lun.css('transform','translate('+ -length+'px)')
        // console.log(length);
        var i=document.querySelectorAll("body > section > div:nth-child(1) > div.box > div.mod_slide_switch > a> i")
        $(i).removeClass('hover')
        $(i).eq(dian).addClass('hover')
    })
     // 鼠标进入向有箭头
     var reft=$("body > section > div:nth-child(1) > span.rce.iconfont.icon-xiangyou")
     console.log(reft);
    reft.on('mouseenter',()=>{
        clearInterval(timer)
    })
    reft.on('mouseleave',()=>{
        timee()
    })
    reft.on('click',()=>{
        length+=1080
        dian+=1
        if(length==1080*3){
            length=0
            dian=0
        }
        lun.css('transform','translate('+ -length+'px)')
        var i=document.querySelectorAll("body > section > div:nth-child(1) > div.box > div.mod_slide_switch > a> i")
        $(i).removeClass('hover')
        $(i).eq(dian).addClass('hover')
    })
// 鼠标进入点
var i=$("body > section > div:nth-child(1) > div.box > div.mod_slide_switch > a> i")
i.each((index,item)=>{
    console.log(item);
    $(item).on('click',()=>{
        dian=index
        length=1080*dian
        lun.css('transform','translate('+ -length+'px)')
        var i=document.querySelectorAll("body > section > div:nth-child(1) > div.box > div.mod_slide_switch > a> i")
        $(i).removeClass('hover')
        $(i).eq(dian).addClass('hover')
    })
})

// 广告
let count=3
 let timer1=setInterval(()=>{
     count--
     $('body .ad span').html(count)
    if(count==0){
        $('body .ad').css('display','none')
        clearInterval(timer1)
    }
},1000)


// $.ajax('https://shc.y.qq.com/splcloud/fcgi-bin/smartbox_new.fcg?_=1624625883825&cv=4747474&ct=24&format=json&inCharset=utf-8&outCharset=utf-8&notice=0&platform=yqq.json&needNewCode=1&uin=0&g_tk_new_20200303=5381&g_tk=5381&hostUin=0&is_xml=0&key=a')

function startTime() {
                     var today = new Date(); //定义日期对象  
                     var yyyy = today.getFullYear(); //通过日期对象的getFullYear()方法返回年   
                     var MM = today.getMonth() + 1; //通过日期对象的getMonth()方法返回年   
                     var dd = today.getDate(); //通过日期对象的getDate()方法返回年    
                     var hh = today.getHours(); //通过日期对象的getHours方法返回小时  
                     var mm = today.getMinutes(); //通过日期对象的getMinutes方法返回分钟  
                     var ss = today.getSeconds(); //通过日期对象的getSeconds方法返回秒  
                     // 如果分钟或小时的值小于10，则在其值前加0，比如如果时间是下午3点20分9秒的话，则显示15：20：09  
                     MM = checkTime(MM);
                     dd = checkTime(dd);
                     mm = checkTime(mm);
                     ss = checkTime(ss);
                     var day; //用于保存星期（getDay()方法得到星期编号）
                     if (today.getDay() == 0) day = "星期日 "
                     if (today.getDay() == 1) day = "星期一 "
                     if (today.getDay() == 2) day = "星期二 "
                     if (today.getDay() == 3) day = "星期三 "
                     if (today.getDay() == 4) day = "星期四 "
                     if (today.getDay() == 5) day = "星期五 "
                     if (today.getDay() == 6) day = "星期六 "
                     document.querySelector('.animation').children[3].innerHTML = yyyy + "-" + MM + "-" + dd + " " + hh + ":" + mm + ":" + ss + "   " + day;
                     setTimeout('startTime()', 1000); //每一秒中重新加载startTime()方法
                 }
function checkTime(i) {
    if (i < 10) {
        i = "0" + i;
    }
    return i;
}
startTime() 
// 放大

function scale(){
    var box=document.querySelector('.body1')
    var div=document.createElement('div')
            box.appendChild(div)
            div.style.position='absolute'
            div.style.width='200px'
            div.style.height='300px'
            div.style.left='300px'
            div.style.background='pink'
            div.style.display='none'
    for(let span of box.children){
        // console.log(span);
        span.onmousemove=function(e){
             div.style.display='block'
            // console.log(e.x);
            // console.log(span.children[0].getAttribute('src'));
        //   div.style.left=e.x-100+'px'
        //   div.style.top=e.y+100+'px'
        //      console.log(e.pageX);
          div.style.left=e.pageX-100+'px'
        //   div.style.top=e.pageY+100+'px'
            div.setAttribute('src',span.children[0].getAttribute('src'))
            div.innerHTML=`
            <img src=`+span.children[0].getAttribute('src')+`></img>
            `
        }
        span.onmouseleave=()=>{
            // box.removeChild(div)
            div.style.display='none'
        }
    }
     
}
scale()

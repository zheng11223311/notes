// 点击头像登出或者登入界面
var login_img=document.querySelector('.top div img')
//用户昵称
var login_pet_name=document.querySelector('.top div:nth-child(1) span')
// console.log(login_img);
//登入页面
var login=document.querySelector('.login_in')
// 登入页面返回图标
var login_back=document.querySelector('.login_in_back div:nth-child(1) img')
//聊天收起
var index_pick_up=document.querySelector('.top div:nth-child(3) img')
//登入收起
var index_pick_up_img1=document.querySelector('.login_in_back div:nth-child(2) img')
// 聊天收起时显示头像
var index_pick_up_img=document.querySelector('.main>img')
var main=document.querySelector('.main')

// 成员/群名称 父盒子
var center_l=document.querySelector('.center_l')
//聊天内容标题
var center_r_title=document.querySelector('.center_r>.center_r_title')
// console.log(center_r_title);
//聊天框
var center_r_content=document.querySelector('.center_r>.center_r_top')

// 显示登出或者登入界面
login_img.onclick=function(){
    login.style.display='block'
}
//登入页面显示时的用户头像
var logining_in_img=document.querySelector('.login_in>div:nth-child(2) img')
// console.log(logining_in_img);
login_img.onclick=function(){
    login.style.display='block'
}
//隐藏登出或者登入界面
login_back.onclick=function(){
    login.style.display='none'
}

//登入页面收起
index_pick_up_img1.onclick=function(){
    main.classList.add('pack_up')
    login.classList.add('pack_up')
   
    setTimeout(function(){
        login.style.display='none'
        index_pick_up_img.style.display='inline-block'
        index_pick_up_img.src='./static/img/2.png'
    },1000)
    console.log(main);
    //点击展开登入页面
    index_pick_up_img.onclick=function(){
        main.classList.remove('pack_up')
        login.classList.remove('pack_up')
        index_pick_up_img.style.display='none'
        login.style.display='none'
    }
}

// 点击展开聊天页面
index_pick_up_img.onclick=function(){
    main.classList.remove('pack_up')
    login.classList.remove('pack_up')
    index_pick_up_img.style.display='none'
    login.style.display='none'
    console.log(main);
}



//登入按钮
var login_btn=document.querySelector('form div:nth-child(3) button')
//注册按钮
var login_register=document.querySelector('form div:nth-child(4) button')
//退出账号按钮
var login_out=document.querySelector('form div:nth-child(5) input')
//加载中图片
var loading=document.querySelector('.login_in .loading')

//判断是否登入
let islogin=false

//搜索好友和添加好友
var top_input = document.querySelector("body > div.main > div.top > div:nth-child(2) > input[type=text]")
//搜索显示结果框
let top_input_reslut=document.querySelector(".top_search_friend")


top_input.onfocus=function(){
    //展开上搜索面板
    top_input_reslut.style.display="block"
}
//父盒子失去焦点时，移除搜索内容
// console.log(top_input_reslut.parentNode);
top_input.onblur=function(){
    top_input_reslut.onmouseleave=function(){
        top_input_reslut.style.display="none"
    }
    
}



// 登入操作
login_btn.onclick=function(e){
    e.preventDefault()
    // 切出登入中
    loading.style.display="block"
    //账号
    var login_admin=document.querySelector('form div:nth-child(1) input').value
    //去除前后空格
    login_admin=login_admin.trim()
    // console.log(login_admin);
    //密码
    var login_pws=document.querySelector('form div:nth-child(2) input').value
    login_pws=login_pws.trim()
    // console.log(login_pws);
    
    

    var timr1=setTimeout(function(){
        if(loading.style.display="block"){
            loading.style.display="none"
        alert('网络有点慢哦~')
        }
        
    },5000)

    url="./static/asp/login.asp?username="+login_admin+"&password="+login_pws
    $.ajax({          
        url, 
    //dataType:"tex",  
     type:"GET", 
     async:"true",
    //data:{发送到/读取后台（服务器）的数据},
     success:function(data){
        clearTimeout(timr1)
        loading.style.display="none"
        // console.log(data);
        console.log("eval(data)",eval(data));
        if(eval(data)[0]==true){
        //    alert("登入成功!")
           //隐藏登入界面
           login.style.display="none"
            //设置登录头像
            //如果用户没有设置头像，为默认头像
            login_img.src=eval(data)[3]??="./static/img/1.jpg"
            //用户登入界面显示的头像
            logining_in_img.src=eval(data)[3]??="./static/img/1.jpg"
            login_img.title=eval(data)[1]
            login_pet_name.innerText=eval(data)[2]==''?'用户名':eval(data)[2]
             //清除登录前的搜索框的内容
            top_input.value=''
            // 聊天页面点击收起
            index_pick_up.onclick=function(){
                main.classList.add('pack_up')
                login.style.display='none'
                setTimeout(function(){
                    index_pick_up_img.style.display='inline-block'
                    //登入账号的头像
                    index_pick_up_img.src=eval(data)[3]??="./static/img/1.jpg"
                },1000)
                // console.log(main);
            }

            //登入之后可以使用添加好友
            //搜索好友框
            top_input.oninput=function(){
                // this.value=this.value.replace(/[a-z]/,'')
                url="./static/asp/search.asp?friendid="+this.value
                $.ajax({          
                    url, 
                type:"GET", 
                async:"true",
                success:function(data1){
                    console.log(eval(data1));   //我与好友对应的表
                    // console.log(typeof eval(data01)[0]);
                    if(typeof eval(data1)[0]!="string"){
                        // console.log(1);
                        top_input_reslut.innerHTML=`
                            <div>
                                <div class="head">
                                    <img class="headimg" src=${eval(data1)[2]??="./static/img/2.jpg"} alt="">
                                </div>
                                <div class="message">
                                    <p>${eval(data1)[1]}</p>
                                    <span>添加好友</span>
                                </div>
                            </div>
                            `
                            //获取添加标签
                            let top_input_reslut_add=document.querySelector(".top_search_friend div .message span")
                            // console.log(top_input_reslut_add);
                            // 添加好友
                            top_input_reslut_add.onclick=function(){
                            //console.log(top_input);
                            url="./static/asp/addfriend.asp?friendid="+top_input.value+"&myid="+eval(data)[1]
                            $.ajax({          
                                url, 
                                type:"GET", 
                                async:"true",
                                success:function(data2){
                                    console.log(eval(data2));// 返回成功提示
                                    //执行刷新好友成员列表
                                    // url="./static/asp/grouppeople.asp?myid="+eval(data)[1]
                                    // $.ajax({          
                                    //     url, 
                                    // type:"GET", 
                                    // async:"true",
                                    // success:function(data3){
                                    //     console.log(data3);     //所有好友消息
                                    //     // console.log(center_l_child.children[1].children[1]);
                                    //     // center_l_child.children[1].children[1].innerText=eval(data22)[eval(data22).length-1][3]
                                    // },
                                    // error:function(){}
                                    // })
                                },
                                error:function(){
                                    top_input_reslut.innerHTML=`请输入数字！`
                                    console.log("错误-0001");
                                }
                            })

                        }

                    }else{
                        top_input_reslut.innerHTML=`${eval(data1)}`
                    }
                
                },
                error:function(){
                    top_input_reslut.innerHTML=`请输入数字！`
                    console.log("错误-0001");
                }
                })
                
            }




            //清除之前账号的成员
            center_l.innerHTML=''
            //清除聊天框内容
            center_r_content.innerHTML=''

            //旧好友成员个数
            let friendsum
            //登入后第一次可以更新
            let friendsum_update=true
            //使用myid 获取好友列表
            url="./static/asp/friendid.asp?myid="+eval(data)[1]  //loginadmin 数据
                $.ajax({          
                    url, 
                type:"GET", 
                async:"true",
                success:function(data1){
                    
                    // console.log(data1);      //好友列表
                    let data11=eval(data1)

                    friendsum=data11
                         //定时请求,将最新添加的成员添加到成员列表中
                         setInterval(function(){
                            url="./static/asp/friendid.asp?myid="+eval(data)[1]
                            $.ajax({          
                                url, 
                            type:"GET", 
                            async:"true",
                            success:function(data23){
                                //新旧成员个数相等,不执行更新
                                console.log(friendsum);
                                console.log(eval(data23));
                                if(friendsum.length!=eval(data23).length||!friendsum_update)return
                                friendsum_update=false
                                console.log("更新好友列表");
    
                                //将本次获得个数赋给其作为旧值,与下一次取得的值做比较
                                friendsum=eval(data23)
                                //清除所有成员,写入新数据
                                center_l.innerHTML=''
                                
                                     // 遍历所有的数据,获取并不同的friendid(即不同的好友)
                                     friendsum.forEach(function(item,index){
                        // 创建不同的friendid(即不同的好友)
                        // console.log(item[1]);    //不同好友的id
                        //获取不同好友的信息
                        let friend
                        if(item[0]==eval(data)[1]){
                            friend=item[1]
                        }else{
                            friend=item[0]
                        }
                        url="./static/asp/search.asp?friendid="+friend
                        $.ajax({          
                            url, 
                        type:"GET", 
                        async:"true",
                        success:function(data2){
                       
                            // console.log(data2);
                            // console.log(eval(data2));
                            var center_l_child= document.createElement("div")
                            center_l_child.innerHTML=`
                                <div class="head" data="${eval(data2)[0]}">
                                    <img class="headimg" src=${eval(data2)[2]??="./static/img/1.jpg"} alt="">
                                </div>
                                <div class="message">
                                    <p>${eval(data2)[1]==""?"未设置用户名":eval(data2)[1]}</p>
                                    <p></p>
                                </div>
                            `
                            center_l.appendChild(center_l_child)   
                            // 实时获取最新消息,改变成员最新消息
                            setInterval(function(){
                                url="./static/asp/grouppeople.asp?myid="+item[0]+"&friendid="+item[1]
                                $.ajax({          
                                    url, 
                                type:"GET", 
                                async:"true",
                                success:function(data3){
                                    // console.log(data3);     //每个id 好对应的消息
                                    // console.log(center_l_child.children[1].children[1]);
                                    center_l_child.children[1].children[1].innerText=eval(data3)[eval(data3).length-1][3]
                                },
                                error:function(){
                                    console.log("获取好友消息失败！");
                                }
                                })
                            },2000)  
                        
                            // 成员/群名称
                            var center_l_people=document.querySelectorAll('.center_l>div') 
                            //  console.log(center_l_people);     
        
                            //定义是否更新界面,true 为更新
                            //true 为第一次获取到数据进行判断并赋值给空的before_update,
                            // 后面使用before_update 进行判断
                            let update_msg=true
                            //获取更新之前的数据,数据长度相等不更新
                            let before_update
                            // 设置全局定时器
                            let chat_content_update
                            //第一次请求的单个好友信息
                            // let friend_msg_update=[]
        
        
                            //遍历所有好友成员
                            center_l_people.forEach((element,index) => {
                                // console.log(element);
                                // console.log(index);
                                element.onclick=function(){
                                    //清除上一个实时消息定时
                                    if(!update_msg){
                                        clearInterval(chat_content_update)
                                        console.log("清除定时器");
                                    }
                                    
                                    //清除其他人的聊天记录,切换为自己的聊天记录
                                    center_r_content.innerHTML=''
                                    // console.log(element.children[0].getAttribute("data"));
                                    let center_l_child_data_id=element.children[0].getAttribute("data")
                                    //用户名
                                    let center_l_child_name=element.children[1].children[0].innerText
                                    //成员好友头像
                                    let center_l_child_headimg=element.children[0].children[0].src
                                    // console.log(center_l_child_data_id);
                                    // 改变标题
                                    center_r_title.innerText=element.children[1].children[0].innerHTML
                                    // console.log(item[1]);    //不同好友的id
                                    //显示历史记录,请求新的历史记录,实时跟新新的历史记录
                                    url="./static/asp/grouppeople.asp?myid="+eval(data)[1]+"&friendid="+center_l_child_data_id
                                    console.log("myid:"+item[0]);
                                    console.log("fid:"+center_l_child_data_id);
                                    $.ajax({          
                                        url, 
                                    type:"GET", 
                                    async:"true",
                                    success:function(data4){
                                        
                                        // console.log(data4);     //每个id 好对应的消息
                                        // console.log(eval(data4));     //每个id 好对应的消息
                                        // console.log(eval(data)[0]);     
                                        //遍历我与每个好友单独的消息
                                        eval(data4).forEach(function(item1,index1){
                                            //myid 等于好友的id
                                            if(item1[0]==center_l_child_data_id){
                                                let center_r_top_role_content_name=document.createElement("div")
                                                center_r_top_role_content_name.classList.add("center_r_top_role")
                                                center_r_top_role_content_name.innerHTML=`
                                                <div class="center_r_top_role_img">
                                                    <img src=${center_l_child_headimg} alt="">
                                                </div>
                                                <div class="center_r_top_role_content">
                                                    <p>${center_l_child_name==""?"未设置用户名":center_l_child_name}</p>
                                                    <span>${item1[3]}</span>
                                                    <p>${item1[4]}</p>
                                                </div>
                                                `
                                                center_r_content.appendChild(center_r_top_role_content_name)
                                                //对父盒子设置,当父盒子出现滚动条时自动滑到底部
                                                center_r_content.scrollTop=center_r_content.scrollHeight
                                            }
                                            // // myid=我的id ==> 我自己的消息
                                            else if(item1[0]==eval(data)[1]){
                                                let center_r_top_myrole_content_name=document.createElement("div")
                                                center_r_top_myrole_content_name.classList.add("center_r_top_role_myself")
                                                center_r_top_myrole_content_name.innerHTML=`
                                                <div class="center_r_top_role_myself_content">
                                                        <p>${item1[2]}</p>
                                                        <span>${item1[3]}</span>
                                                        <p>${item1[4]}</p>
                                                    </div>
                                                    <div class="center_r_top_role_myself_img">
                                                        <img src=${item1[5]} alt="">
                                                    </div>
                                                `
                                                center_r_content.appendChild(center_r_top_myrole_content_name)
                                                //对父盒子设置,当父盒子出现滚动条时自动滑到底部
                                                center_r_content.scrollTop=center_r_content.scrollHeight
                                            }
                                        })
        
                                        //原来的聊天记录
                                         before_update=eval(data4)
                                        //定时请求新的聊天记录
                                        chat_content_update=setInterval(function(){
                                  
                                //请求地址也要一起放在定时器面，否则定时器，获取的数据不会改变
                                url="./static/asp/grouppeople.asp?myid="+eval(data)[1]+"&friendid="+center_l_child_data_id  //23 id
                                    $.ajax({          
                                        url, 
                                    type:"GET", 
                                    async:"true",
                                    success:function(data23){
                                        // console.log(before_update);
                                        // console.log(eval(data23));
                                // 需要每个用户都有自己的面板,保留自己的信息
                                // 是否更新界面before_update.length
                                //判断时间是否相等
                                if(update_msg|| before_update[before_update.length-1][4]!=eval(data23)[eval(data23).length-1][4]){
                                              //清除面板
                                              center_r_content.innerHTML=''
                                    update_msg=false
                                    console.log("可以跟新");
                                    //将获取到的记录作为一个旧历史，便于与下一个新历史比较
                                    before_update=eval(data23)
        
        
                                    //遍历每次获取的加载的数据
                                    eval(data23).forEach(function(item11,index){
                                    // 筛选记录里的此好友信息
                                    // console.log(item11[0]==center_l_child_data_id);
                                    // console.log(item11[0]);
                                    // console.log(center_l_child_data_id);
                                    if(item11[0]==center_l_child_data_id){
                                        let center_r_top_role_content_name=document.createElement("div")
                                        center_r_top_role_content_name.classList.add("center_r_top_role")
                                        center_r_top_role_content_name.innerHTML=`
                                        <div class="center_r_top_role_img">
                                            <img src=${center_l_child_headimg} alt="">
                                        </div>
                                        <div class="center_r_top_role_content">
                                            <p>${center_l_child_name==""?"未设置用户名":center_l_child_name}</p>
                                            <span>${item11[3]}</span>
                                            <p>${item11[4]}</p>
                                        </div>
                                        `
                                        center_r_content.appendChild(center_r_top_role_content_name)
                                        center_r_content.scrollTop=center_r_content.scrollHeight
                                    }
                                    else if(item11[0]==eval(data)[1]){
                                        let center_r_top_myrole_content_name=document.createElement("div")
                                        center_r_top_myrole_content_name.classList.add("center_r_top_role_myself")
                                        center_r_top_myrole_content_name.innerHTML=`
                                        <div class="center_r_top_role_myself_content">
                                                <p>${item11[2]}</p>
                                                <span>${item11[3]}</span>
                                                <p>${item11[4]}</p>
                                            </div>
                                            <div class="center_r_top_role_myself_img">
                                                <img src=${item11[5]} alt="">
                                            </div>
                                        `
                                        center_r_content.appendChild(center_r_top_myrole_content_name)
                                        center_r_content.scrollTop=center_r_content.scrollHeight
                                    }
                                            })
        
                                                
        
        
                                            }else{
                                                console.log("不可以跟新~");
                                            } 
                                                    
                                                },
                                                error:function(){}
                                                }) 
        
                                        },2000)
        
        
                                    
                                },
                                error:function(){
                                    console.log("获取好友消息失败！");
                                }
                                })
                       
        
        
        
        
        
                                                
                                                //发送消息
                                                let center_r_button_text=document.getElementById('textarea1')
                                                //文本框内容只能使用value 才获取到,使用innerHTML,和innerText 无法获取到
                                                // console.log(center_r_button_text);
                                                let center_r_button_btn=document.querySelector('.center_r_button button')
                                                center_r_button_btn.onclick=function(){
                                                    //时间格式化
                                                    // function dateFormat(fmt, date) {
                                                    //     let ret;
                                                    //     const opt = {
                                                    //         "Y+": date.getFullYear().toString(),        // 年
                                                    //         "m+": (date.getMonth() + 1).toString(),     // 月
                                                    //         "d+": date.getDate().toString(),            // 日
                                                    //         "H+": date.getHours().toString(),           // 时
                                                    //         "M+": date.getMinutes().toString(),         // 分
                                                    //         "S+": date.getSeconds().toString()          // 秒
                                                    //         // 有其他格式化字符需求可以继续添加，必须转化成字符串
                                                    //     };
                                                    //     for (let k in opt) {
                                                    //         ret = new RegExp("(" + k + ")").exec(fmt);
                                                    //         if (ret) {
                                                    //             fmt = fmt.replace(ret[1], (ret[1].length == 1) ? (opt[k]) : (opt[k].padStart(ret[1].length, "0")))
                                                    //         };
                                                    //     };
                                                    //     return fmt;
                                                    // }
                                                    // let date = new Date()
                                                    // console.log(dateFormat("YYYY/mm/d H:MM:SS", date));
        
        
                                                    //发送至聊天框
                                                    let center_r_top_role_content_myname=document.createElement("div")
                                                    center_r_top_role_content_myname.classList.add("center_r_top_role_myself")
                                                    center_r_top_role_content_myname.innerHTML=`
                                                                <div class="center_r_top_role_myself_content">
                                                                <p>${eval(data)[2]}</p>
                                                                <span>${center_r_button_text.value}</span>
                                                                <p></p>
                                                            </div>
                                                            <div class="center_r_top_role_myself_img">
                                                                <img src=${login_img.src} alt="">
                                                            </div>
                                                        `
                                                        // if(center_r_button_text.value==" ") return
                                                        center_r_content.appendChild(center_r_top_role_content_myname)
                                                        
                                                        let center_r_button_text1=center_r_button_text.value
                                                        center_r_button_text.value=''
                                                
                                                        // 页面滑动到底部
                                                        // window.scrollTo(0, document.documentElement.clientHeight);
                                                        // center_r_content.scrollIntoView(true);
                                                        //参数为true：调用该函数，页面发送滚动，使element的顶部与视图(容器)顶部对齐。参数为false：使element的底部与视图(容器)底部对齐
        
                                                        //对父盒子设置,当父盒子出现滚动条时自动滑到底部
                                                        center_r_content.scrollTop=center_r_content.scrollHeight
                                                        
                                                    
        
                                                        url=`./static/asp/write.asp?myid=${eval(data)[1]}
                                                        &friendid=${center_l_child_data_id}&myname=${eval(data)[2]}&mymsg=${center_r_button_text1}
                                                        &myheadimg=${login_img.src.toString()}`
                                                        //向数据库写入数据
                                                        $.ajax({          
                                                            url, 
                                                        type:"GET", 
                                                        async:"true",
                                                        success:function(data2){
                                                            center_r_top_role_content_myname.children[0].children[2].innerHTML=data2
                                                            center_r_content.scrollTop=center_r_content.scrollHeight
                                                            // console.log(data2);
                                                        },
                                                        error:function(){
                                                            alert("发送消息失败!")
                                                            console.log("错误-3");
                                                        }
                                                        })
        
        
        
        
                                                }
                                                
                                                
                                                
        
                                            }
                                        });
        
        
                             
                                    },
                                    error:function(){
                                        console.log("请求好友列表失败！")
                                    }
                                })
                                })
    
    
                            },
                            error:function(){
                                console.log("更新好友列表失败！");
                            }
                            })
                        },2000)
               

                },   //success 结束
                error:function(e){
                    console.log("错误2-1");
                }
            })


         }else{
            alert("账号或密码输入错误！")
         }
     },      
     error:function(e){
        clearTimeout(timr1)
        loading.style.display="none"
        if(e){
            alert("账号或密码输入错误！")
        }
        //  console.log(e);
     }
});


}

//注册操作
login_register.onclick=function(e){
    // 切出登入中
    loading.style.display="block"
    var login_admin=document.querySelector('form div:nth-child(1) input').value
// console.log(login_admin);
//登入按钮
var login_pws=document.querySelector('form div:nth-child(2) input').value
// console.log(login_pws);
    e.preventDefault()

    var timr1=setTimeout(function(){
        if(loading.style.display="block"){
            loading.style.display="none"
        alert('网络有点慢哦~')
        }
},5000)

    url="./static/asp/register.asp?username="+login_admin+"&password="+login_pws
    $.ajax({          
        url, 
     type:"GET", 
     async:"true",
     success:function(data){
        clearTimeout(timr1)
        loading.style.display="none"
        console.log(data);
       console.log(eval(data));
        if(eval(data)[0]==true){
            //弹出注册成功
           alert(eval(data)[1])
         }else{
            alert("注册失败:账号已存在,请重试！！")
         }
     },      
     error:function(e){
        clearTimeout(timr1)
        loading.style.display="none"
        console.log("错误2");
        if(e){
            alert("发生了未知的错误，请稍后再试！")
        }
        //  console.log(e);
     }
});

}

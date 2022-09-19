
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"ui"; 

/**
autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
1群:168196007
2群:830810438
3群:571854376
4群:63732194
5群:592916456
//autojs源码提取,加密打包,代码解密,还原.微信:shenlong6898
*/
ui.layout(
    <vertical padding="16">
        <text textSize="25sp" textColor="black" h="40" text="刷乐任务设置"/>
        <text textSize="20sp" textColor="black" h="40" text="抖音任务设置"/>
        <checkbox id="douyinzang" textSize="15sp" checked="true" text="抖音点赞任务"/>
        <checkbox id="douyinguanzhu" textSize="15sp" checked="true" text="抖音关注任务"/>
        <text textSize="20sp" textColor="black" h="40" text="快手任务设置"/>
        <checkbox id="kuaishouzang" textSize="15sp" checked="false" text="快手点赞任务"/>
        <checkbox id="kuaishouguanzhu" textSize="15sp" checked="flase" text="快手关注任务"/>
        <text textSize="20sp" textColor="black" h="40" text="任务频率设置"/>
        <text textSize="15sp" textColor="red" h="40" text="当同时勾选关注任务和点赞任务时,才需要设置以下选项"/>
        <text textSize="20sp" textColor="black"  text="抖音任务频率设置"/>
    <horizontal>
        <text textSize="15sp" textColor="black"  text="每做"/>
        <input textSize="15sp" textColor="blue" id="douyin_guanzhutime" text="1"/>
        <text textSize="15sp" textColor="black"  text="个关注任务(默认为1)"/>
    </horizontal>

    <horizontal>
    <text textSize="15sp" textColor="black"  text="做"/>
        <input textSize="15sp" textColor="blue" id="douyin_dianzantime" text="1"/>
        <text textSize="15sp" textColor="black"  text="个点赞任务(默认为1)"/>
    </horizontal>
    <text textSize="20sp" textColor="black"  text="快手任务频率设置"/>
    <horizontal>
        <text textSize="15sp" textColor="black"  text="每做"/>
        <input textSize="15sp" textColor="blue" id="kuaishou_guanzhutime" text="1"/>
        <text textSize="15sp" textColor="black"  text="个关注任务(默认为1)"/>
    </horizontal>

    <horizontal>
    <text textSize="15sp" textColor="black"  text="做"/>
        <input textSize="15sp" textColor="blue" id="kuaishou_dianzantime" text="1"/>
        <text textSize="15sp" textColor="black"  text="个点赞任务(默认为1)"/>
    </horizontal>
        <button id="ok" text="开始脚本"/>
        <text textSize="12sp" textColor="black" gravity="center" text="本脚本安卓7.0以上无需ROOT权限"/>
        <text textSize="12sp" textColor="black" gravity="center" text="本脚本安卓7.0以下需要ROOT权限"/>
        <frame w="*" h="*">
            <text textSize="20sp" textColor="blue" id="guangao" gravity="center|bottom" text="更多脚本请加QQ群:906824840"/>
        </frame>
    </vertical>
);

ui.ok.click(function()
{
    var douyin_dianzan_able=ui.douyinzang.checked
    var douyin_guanzhu_able=ui.douyinguanzhu.checked
    var kuaishou_dianzan_able=ui.kuaishouzang.checked
    var kuaishou_guanzhu_able=ui.kuaishouguanzhu.checked
    
    var douyin_dianzanlimit=Number(ui.douyin_dianzantime.getText())
    var douyin_guanzhulimit=Number(ui.douyin_guanzhutime.getText())
    var kuaishou_dianzanlimit=Number(ui.kuaishou_dianzantime.getText())
    var kuaishou_guanzhulimit=Number(ui.kuaishou_guanzhutime.getText())

    douyin_dianzan_time=0
    douyin_guanzhu_time=0
    kuaishou_dianzan_time=0
    kuaishou_guanzhu_time=0

    if(douyin_guanzhu_able==true&&douyin_dianzan_able==true&&kuaishou_guanzhu_able==true&&kuaishou_dianzan_able==true)
    {
        task_chose=1
    }
    else if(douyin_guanzhu_able==false&&douyin_dianzan_able==true&&kuaishou_guanzhu_able==true&&kuaishou_dianzan_able==true)
    {
        task_chose=2
    }
    else if(douyin_guanzhu_able==false&&douyin_dianzan_able==false&&kuaishou_guanzhu_able==true&&kuaishou_dianzan_able==true)
    {
        task_chose=3
    }
    else if(douyin_guanzhu_able==false&&douyin_dianzan_able==false&&kuaishou_guanzhu_able==false&&kuaishou_dianzan_able==true)
    {
        task_chose=4
    }
    else if(kuaishou_dianzan_able==true&&douyin_dianzan_able==true)
    {
        task_chose=2
    }
    else
    {
        task_chose=1
    }



    if(douyin_dianzan_able==true&&douyin_guanzhu_able==true&&kuaishou_dianzan_able==false&&kuaishou_guanzhu_able==false)
    {
        toastLog("每做 "+douyin_guanzhulimit+" 个"+"抖音关注任务做 "+douyin_dianzanlimit+" 个抖音点赞任务")
    }
    else if(douyin_dianzan_able==false&&douyin_guanzhu_able==false&&kuaishou_dianzan_able==true&&kuaishou_guanzhu_able==true)
    {
        toastLog("每做 "+kuaishou_guanzhulimit+" 个"+"快手关注任务做 "+kuaishou_dianzanlimit+" 个快手点赞任务")
    }
    else if(douyin_dianzan_able==true&&douyin_guanzhu_able==true&&kuaishou_dianzan_able==true&&kuaishou_guanzhu_able==true)
    {
        toastLog("每做 "+douyin_guanzhulimit+" 个"+"抖音关注任务做 "+douyin_dianzanlimit+" 个抖音点赞任务"+"\n"+"每做 "+kuaishou_guanzhulimit+" 个"+"快手关注任务做 "+kuaishou_dianzanlimit+" 个快手点赞任务")
    }

    if((isNaN(Number(douyin_dianzanlimit)))==true||(isNaN(Number(douyin_guanzhulimit)))==true||(isNaN(Number(kuaishou_dianzanlimit)))==true||(isNaN(Number(kuaishou_guanzhulimit)))==true)
    {
        toastLog("输入非数字")
    }
    else if((isNaN(Number(douyin_dianzanlimit)))==false||(isNaN(Number(douyin_guanzhulimit)))==false||(isNaN(Number(kuaishou_dianzanlimit)))==false||(isNaN(Number(kuaishou_guanzhulimit)))==false)
    {
    

    threads.start(function(){

        function helloWorld(){
            
            if(!requestScreenCapture()){
                toast("请求截图失败");
                exit();
            }
        
            opl=1
            imgs=null
            while(true)
            {
            
                threads.start(function(){
        
                    log("begin")
                    
                    imgs = captureScreen();
                    log("finish")
                })
        
                sleep(3500)
                if(imgs!=null)
                {
                    break
                }
                if(imgs==null)
                {
                    threads.shutDownAll()
                    toastLog("截图被拦截，再次截图")
                }
                sleep(1200)
                opl++
                if(opl>2)
                {
                    break
                }
            }
            
                
        
            
            if(imgs!=null)
            {
                var point=images.findColor(imgs, "#ff1d9406", {threshold: 3})
                imgs=null
                
                log(point)
                if(point!=null)
                {
                    toastLog("提交任务按钮："+point)
                    click(point.x+15,point.y+15)
                }
            }
        }
        
        function 提交任务模块()
        {
            imgs=null
            toastLog("开始提交任务")
            qwe=0
            while(true)
            {
                
                
                var 首页=idContains("imagehome").findOnce()
                sleep(1000);
                if(首页==null)
                {
                    
                    engines.execScript("hello world", "helloWorld();\n" + helloWorld.toString());
                   
                    qwe++
                    if(qwe>3)
                    {
                        toastLog("异常超时,重试")
                        rwz=1
                        app.launchApp("刷乐");
                        sleep(5000)
                        break
                    }
                    
                }
            
                if(首页!=null)
                {
                    rwz=2
                    toastLog("返回首页")
                    break
                }
                sleep(5000)
            }
        }
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        function 任务二次检测()
        {
            while(true)
            {
                var 任务类型=idContains("task2Type").findOnce()
                if(任务类型!=null)
                {
                    任务=任务类型.text()
                    // toastLog("任务:"+任务)
                    if(任务=="D音关注")
                    {
                        任务="抖音关注"
                        toastLog("任务是"+任务)
                        break
                    }
                    else if(任务=="D音点赞")
                    {
                        任务="抖音点赞"
                        toastLog("任务是"+任务)
                        break
                    }
                    else if(任务=="K手关注")
                    {
                        任务="快手关注"
                        toastLog("任务是"+任务)
                        break
                    }
                    else if(任务=="K手点赞")
                    {
                        任务="快手点赞"
                        toastLog("任务是"+任务)
                        break
                    }
                    else if(任务=="D音播放")
                    {
                        任务="抖音播放"
                        toastLog("任务是"+任务)
                        break
                    }
                    else if(任务=="K手播放")
                    {
                        任务="快手播放"
                        toastLog("任务是"+任务)
                        break
                    }
                    else
                    {
                        任务="异常"
                        toastLog("任务："+任务)
                        break
                    }
                    
                }
                sleep(1000)
            }
        
        
        }
        
        
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        function 抖音点赞模块()
        {
            while(true)
            {
                var 打开看看=textStartsWith("打开看看").findOnce()
                var 前往=text("前往")
                var 开始任务=text("开始任务").findOnce()
                if(开始任务!=null)
                {
                    开始任务.click()
                }
                if(打开看看!=null)
                {
                    打开看看.click()
                    break
                }
                if(前往!=null)
                {
                    前往.click()
                    break
                }
                sleep(2500)
                
            }
            sleep(5000)
        
                   
                        toastLog("点赞")
                        click(点赞按钮中心位置.centerX()+random(-15,+15),点赞按钮中心位置.centerY()+random(-15,+15))
                    
         
                    sleep(5000)
                    toastLog("开始提交任务")
                    提交任务模块()
           
        }
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        function 抖音关注模块()
        {
            while(true)
            {
                var 打开看看=textStartsWith("打开看看").findOnce()
                var 前往=text("前往")
                var 开始任务=text("开始任务").findOnce()
                if(开始任务!=null)
                {
                    开始任务.click()
                }
                if(打开看看!=null)
                {
                    打开看看.click()
                    break
                }
                if(前往!=null)
                {
                    前往.click()
                    break
                }
                sleep(2500)
                
            }
            sleep(5000)
            while(true)
            {
                var 关注=text("关注").clickable(true).boundsInside(0, device.height/7,device.width, device.height/2).findOnce()
                var 取消关注=text("取消关注").findOnce()
                if(关注!=null)
                {
                    关注.click()
                    break
                }
                if(取消关注!=null)
                {
                   break
                }
                
                sleep(1000)
            }
            sleep(5000)
            toastLog("开始提交任务")
            提交任务模块()
            
        }
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        function 抖音播放模块()
        {
            while(true)
            {
                var 打开看看=textStartsWith("打开看看").findOnce()
                var 前往=text("前往")
                var 开始任务=text("开始任务").findOnce()
                if(开始任务!=null)
                {
                    开始任务.click()
                }
                if(打开看看!=null)
                {
                    打开看看.click()
                    break
                }
                if(前往!=null)
                {
                    前往.click()
                    break
                }
                sleep(2500)
                
            }
            sleep(10000)
            toastLog("开始提交任务")
            提交任务模块()
            
        }
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        function 快手点赞模块()
        {
            while(true)
            {
                var 去看看=text("去看看").findOnce()
                var 开始任务=text("开始任务").findOnce()
                if(开始任务!=null)
                {
                    开始任务.click()
                }
                if(去看看!=null)
                {
                    去看看.click()
                    break
                }
                sleep(2500)
                
            }
            sleep(5000)

            
            var 点赞=desc("喜欢").findOnce()
            if(点赞!=null)
            {
                点赞.click()
            }
                sleep(5000)
                toastLog("开始提交任务")
                提交任务模块()   

        }
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        function 快手播放模块()
        {
            while(true)
            {
                var 去看看=text("去看看").findOnce()
                var 开始任务=text("开始任务").findOnce()
                if(开始任务!=null)
                {
                    开始任务.click()
                }
                if(去看看!=null)
                {
                    去看看.click()
                    break
                }
                sleep(2500)
                
            }
            sleep(10000)
            toastLog("开始提交任务")
            提交任务模块()   

        }
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        
        function 快手关注模块()
        {
            sleep(1000)
            while(true)
            {
                var 去看看=text("去看看").findOnce()
                var 开始任务=text("开始任务").findOnce()
                if(开始任务!=null)
                {
                    开始任务.click()
                }
                if(去看看!=null)
                {
                    去看看.click()
                    break
                }
                sleep(2500)
                
            }
            
            sleep(5000)

            while(true)
            {
                var 关注按钮=descContains("关注, 按钮").findOnce()
                var 发私信=desc("发私信").findOnce()
                log(关注按钮)
                log(发私信)
                if(关注按钮!=null)
                {
                    click(关注按钮.bounds().centerX(),关注按钮.bounds().centerY())
                    sleep(1000)
                    toastLog("电玩4")
                    break
                }
                if(关注按钮==null)
                {
                    
                        var 文字关注=text("关注").findOne()
                        log(文字关注+"44444444444")
                        while(true)
                        {
                            var 关注=text("关注").findOnce()
                                if(关注!=null)
                                {
                                    click(关注.bounds().centerX(),关注.bounds().bottom+1.2*(关注.bounds().bottom-关注.bounds().top))
                                    break
                                }
                                
                            
                            sleep(2500)
                        }
                        break
                        
                }
                sleep(3000)
            }


            sleep(5000)
            toastLog("开始提交任务")
            提交任务模块()

        }
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        
        if(!requestScreenCapture()){
            toast("请求截图失败");
            exit();
        }

        //检验篡改
        qqnumber=ui.guangao.text()
        log(qqnumber)
        arre=qqnumber.split(":");
        
        se=Number(arre[1])
        log(se)
        if(se!=906824840)
        {
            toastLog("error")
            exit()
        }

        m=1
        n=1

        //获取抖音按钮坐标
        if(douyin_dianzan_able==true)
        {
            app.launchApp("抖音短视频");
            toastLog("打开抖音")
            sleep(random(7500,9000))
            while(true)
            {
                var 首页=text("首页").findOnce()
                log("首页"+"\n"+首页)
                if(首页!=null)
                {
                    var 首页p=首页.parent()
                    if(首页p!=null)
                    {
                        if(首页.parent().clickable()==true)
                        {
                            首页.parent().click()
                            toastLog("回到抖音首页,开始采集所需坐标")
                            break
                        }
            
                    }
                }
                else if(首页==null)
                {
                    back()
                }
                sleep(1000)
            }
            sleep(random(2500,5000))
            while(true)
            {
 
                var 点赞=className("android.widget.LinearLayout").clickable(true).descContains("喜欢").descEndsWith("按钮").boundsInside(device.width/2,0, device.width, device.height).findOnce()
                var 点赞按钮中心位置=点赞.bounds()
                 
                if(点赞!=null)
                {
            
                    toastLog("成功获取抖音按钮坐标")
                    break
                    
                }
                else
                {
            
                    toastLog("成功获取抖音按钮坐标,重新获取")
            
                }
            }
        }

        //打开刷乐开始脚本start<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

        app.launchApp("刷乐");
        while(true)
        {
            var 首页=idContains("imagehome").findOnce()
            if(首页!=null)
            {
                toastLog("进入首页")
                break
            }
            sleep(2000)
        }
        
        首页zb=首页.bounds()
        rw=1
        douyin_guanzhu_alltime=0
        douyin_dianzan_alltime=0
        kuaishou_guanzhu_alltime=0
        kuaishou_dianzan_alltime=0

        while(true)
        {
            task=null
            sleep(1000)
            toastLog("抖音关注次数总数"+douyin_guanzhu_alltime+"\n"+"抖音点赞次数总数"+douyin_dianzan_alltime+"\n"+"快手关注次数总数"+kuaishou_guanzhu_alltime+"\n"+"快手点赞次数总数"+kuaishou_dianzan_alltime)
            // toastLog("关注次数"+douyin_guanzhu_time+"\n"+"点赞次数"+douyin_dianzan_time)
            sleep(2000)
            

                if(douyin_guanzhu_time>=douyin_guanzhulimit)
                {
                    douyin_guanzhu_time=0
                    if(douyin_dianzan_able==true)
                    {
                        task_chose=2
                    }
                    else if(douyin_dianzan_able==false&&kuaishou_guanzhu_able==true&&kuaishou_dianzan_able==false)
                    {
                        task_chose=3
                    }
                    else if(douyin_dianzan_able==false&&kuaishou_guanzhu_able==false&&kuaishou_dianzan_able==true)
                    {
                        task_chose=4
                    }
                    
                }
                if(douyin_dianzan_time>=douyin_dianzanlimit)
                {
                    douyin_dianzan_time=0
                    if(kuaishou_guanzhu_able==true)
                    {
                        task_chose=3
                    }
                    else if(kuaishou_guanzhu_able==false&&kuaishou_dianzan_able==true&&douyin_guanzhu_able==false)
                    {
                        task_chose=4
                    }
                    else if(kuaishou_guanzhu_able==false&&kuaishou_dianzan_able==false&&douyin_guanzhu_able==true)
                    {
                        task_chose=1
                    }

                    
                }
                if(kuaishou_guanzhu_time>=kuaishou_guanzhulimit)
                {
                    kuaishou_guanzhu_time=0
                    if(kuaishou_dianzan_able==true)
                    {
                        task_chose=4
                    }
                    else if(kuaishou_dianzan_able==false&&douyin_guanzhu_able==true&&douyin_dianzang_able==false)
                    {
                        task_chose=1
                    }
                    else if(kuaishou_dianzan_able==false&&douyin_guanzhu_able==false&&douyin_dianzang_able==true)
                    {
                        task_chose=2
                    }
                    
                }
                if(kuaishou_dianzan_time>=kuaishou_dianzanlimit)
                {
                    kuaishou_dianzan_time=0
                    if(douyin_guanzhu_able==true)
                    {
                        task_chose=1
                    }
                    else if(douyin_guanzhu_able==false&&douyin_dianzang_able==true&&kuaishou_guanzhu_able==false)
                    {
                        task_chose=2
                    }
                    else if(douyin_guanzhu_able==false&&douyin_dianzang_able==false&&kuaishou_guanzhu_able==true)
                    {
                        task_chose=3
                    }
                    
                }

            toastLog("task："+task_chose)
            sleep(2000)
            /*task_chose值表
            1是抖音关注
            2是抖音点赞
            3是快手关注
            4是快手点赞
            */

            //任务选择
            sleep(2000)
            if(task_chose==1||task_chose==2)
            {
                var 抖音=text("D音").clickable(true).findOnce()
                if(抖音!=null)
                {
                    抖音.click()
                }
                sleep(2000)
                if(douyin_guanzhu_able==true&&task_chose==1)
                {
                    var 抖音关注=textContains("音关注").boundsInside(0, 50, device.width,device.height).findOnce()
                    log(抖音关注)
                    if(抖音关注!=null)
                    {
                        log(抖音关注.parent())
                        task=抖音关注.parent()
                        rw=1
                    }
                }
                else if(douyin_dianzan_able==true&&task_chose==2)
                {
                    var 抖音点赞=textContains("音点赞").boundsInside(0, 50, device.width,device.height).findOnce()
                    log(抖音点赞)
                    if(抖音点赞!=null)
                    {
                        log(抖音点赞.parent())
                        task=抖音点赞.parent()
                        rw=2
                    }
                }

                var 抖音播放=textContains("音播放").boundsInside(0, 50, device.width,device.height).findOnce()
                log(抖音播放)
                if(抖音播放!=null)
                {
                    task=抖音播放.parent()
                    rw=0
                }
            }

            else if(task_chose==3||task_chose==4)
            {
                var 快手=text("K手").clickable(true).findOnce()
                if(快手!=null)
                {
                    快手.click()
                }
                sleep(2000)
                if(kuaishou_guanzhu_able==true&&task_chose==3)
                {
                    var 快手关注=textContains("手关注").boundsInside(0, 50, device.width,device.height).findOnce()
                    log(快手关注)
                    if(快手关注!=null)
                    {
                        log(快手关注.parent())
                        task=快手关注.parent()
                        rw=3
                    }
                }
                else if(kuaishou_dianzan_able==true&&task_chose==4)
                {
                    var 快手点赞=textContains("手点赞").boundsInside(0, 50, device.width,device.height).findOnce()
                    log(快手点赞)
                    if(快手点赞!=null)
                    {
                        log(快手点赞.parent())
                        task=快手点赞.parent()
                        rw=4
                    }
                }
                
                var 快手播放=textContains("手播放").boundsInside(0, 50, device.width,device.height).findOnce()
                log(快手播放)
                if(快手播放!=null)
                {
                    task=快手播放.parent()
                    rw=0
                }
            }

        
        
            if(task!=null)
            {
        
            //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                if(抖音点赞!=null||抖音关注!=null||抖音播放!=null)
                {
                    log("进入抖音模块")
                    sleep(2500)
                    ty=1
                    uu=1
                    while(true)
                    {
                        var 开始任务=text("开始任务").findOnce()
                        log("开始任务")
                        if(开始任务!=null)
                        {
                            yu=2
                            break
                        }
                        if(开始任务==null)
                        {
                            toastLog("接任务")
                            task.click()
                            ty++
                            if(ty>3)
                            {
                                click(task.bounds().centerX(),task.bounds().centerY())
                            }
                        }
                        uu++
                        if(uu>6)
                        {
                            app.launchApp("刷乐");
                            yu=1
                            break
                        }
                        sleep(2000)
                    }
                    if(yu==1)
                    {
                        continue
                    }
                            sleep(2000)
                            任务二次检测()
                            if(rw==1)
                            {
                                if(任务=="抖音关注")
                                {
                                    log("任务检测抖音关注")
                                    rwz=1
                                }
                                else
                                {
                                    log("任务检测异常")
                                    back()
                                    sleep(5000)
                                    rwz=0
                                }
                            }
                            if(rw==2)
                            {
                                if(任务=="抖音点赞")
                                {
                                    log("任务检测抖音点赞")
                                    rwz=1
                                }
                                else
                                {
                                    log("任务检测异常")
                                    back()
                                    sleep(5000)
                                    rwz=0
                                }
                            }
                            if(rw==0)
                            {
                                if(任务=="抖音播放")
                                {
                                    log("任务检测抖音播放")
                                    rwz=1
                                }
                                else
                                {
                                    log("任务检测异常")
                                    back()
                                    sleep(5000)
                                    rwz=0
                                }
                            }


                    if(rwz==1)
                    {
                        cs=1
                        cs1=1
                        while(true)
                        {
                            var 开始任务=text("开始任务").findOnce()
                            
                            var 打开=textStartsWith("打开").findOnce()
                            var 前往=text("前往").findOnce()
                            log(开始任务+"\n 11")
                            if(开始任务!=null)
                            {
                                
            
                                开始任务.click()
                                sleep(1000)
                                var 首页=idContains("imagehome").findOnce()
                                if(首页!=null)
                                {
                                    cs++
                                    if(cs>5)
                                    {
                                        break
                                    }
                                }
                                
                            }
                            if(开始任务==null)
                            {
                                cs1++
                                if(cs1>2)
                                {
                                    break
                                }
                            }
                            if(打开!=null||前往!=null)
                            {
                                break
                            }
                            
            
                            
                            sleep(1500)
                        }
            
            
                        a=1
                        b=1
                        while(true)
                        {
                            var 首页=idContains("imagehome").findOnce()
                            if(首页!=null)
                            {
                                toastLog("首页")
                                a++
                                if(a>3)
                                {
                                    var 刷新=idContains("imagehome").findOnce()
                                    刷新.click()
                                    sleep(2000)
                                    break
                                }
                            }
                            if(首页==null)
                            {
                                toastLog("非首页")
                                b++
                                if(b>3)
                                {
                                    i=0
        
                                    if(rw==1)
                                    {
                                        抖音关注模块() 
                                        douyin_guanzhu_time++
                                        douyin_guanzhu_alltime++

                                    }
        
                                    else if(rw==2)
                                    {
                                        抖音点赞模块() 
                                        douyin_dianzan_time++
                                        douyin_dianzan_alltime++

                                    }

                                    else if(rw==0)
                                    {
                                        抖音播放模块() 
                                    }
     
                                
                                    break
                                }
                            }
                            sleep(1500)
                        }
                    }
                    else if(rwz==0)
                    {
                        continue
                    }

    

                  
                }
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                if(快手点赞!=null||快手关注!=null||快手播放!=null)
                {
                    log("进入快手模块")
                    sleep(2500)
                    ty=1
                    uu=1
                    while(true)
                    {
                        var 开始任务=text("开始任务").findOnce()
                        log("开始任务")
                        if(开始任务!=null)
                        {
                            yu=2
                            break
                        }
                        if(开始任务==null)
                        {
                            toastLog("接任务")
                            task.click()
                            ty++
                            if(ty>3)
                            {
                                click(task.bounds().centerX(),task.bounds().centerY())
                            }
                        }
                        uu++
                        if(uu>6)
                        {
                            app.launchApp("刷乐");
                            yu=1
                            break
                        }
                        sleep(2000)
                    }
                    if(yu==1)
                    {
                        continue
                    }
                            sleep(2000)
                            任务二次检测()
                            if(rw==3)
                            {
                                if(任务=="快手关注")
                                {
                                    log("任务检测快手关注")
                                    rwz=1
                                }
                                else
                                {
                                    log("任务检测异常")
                                    back()
                                    sleep(5000)
                                    rwz=0
                                }
                            }
                            if(rw==4)
                            {
                                if(任务=="快手点赞")
                                {
                                    log("任务检测快手点赞")
                                    rwz=1
                                }
                                else
                                {
                                    log("任务检测异常")
                                    back()
                                    sleep(5000)
                                    rwz=0
                                }
                            }
                            if(rw==0)
                            {
                                if(任务=="快手播放")
                                {
                                    log("任务检测快手播放")
                                    rwz=1
                                }
                                else
                                {
                                    log("任务检测异常")
                                    back()
                                    sleep(5000)
                                    rwz=0
                                }
                            }

                    if(rwz==1)
                    {
                        cs=1
                        cs1=1
                        while(true)
                        {
                            var 开始任务=text("开始任务").findOnce()
                            
                            var 打开=textStartsWith("打开").findOnce()
                            var 前往=text("前往").findOnce()
                            log(开始任务+"\n 11")
                            if(开始任务!=null)
                            {
                                
            
                                开始任务.click()
                                sleep(1000)
                                var 首页=idContains("imagehome").findOnce()
                                if(首页!=null)
                                {
                                    cs++
                                    if(cs>5)
                                    {
                                        break
                                    }
                                }
                                
                            }
                            if(开始任务==null)
                            {
                                cs1++
                                if(cs1>2)
                                {
                                    break
                                }
                            }
                            if(打开!=null||前往!=null)
                            {
                                break
                            }
                            
            
                            
                            sleep(1500)
                        }
            
            
                        a=1
                        b=1
                        while(true)
                        {
                            var 首页=idContains("imagehome").findOnce()
                            if(首页!=null)
                            {
                                toastLog("首页")
                                a++
                                if(a>3)
                                {
                                    var 刷新=idContains("imagehome").findOnce()
                                    刷新.click()
                                    sleep(2000)
                                    break
                                }
                            }
                            if(首页==null)
                            {
                                toastLog("非首页")
                                b++
                                if(b>3)
                                {

                                    if(rw==3)
                                    {
                                        快手关注模块() 
                                        kuaishou_guanzhu_time++
                                        kuaishou_guanzhu_alltime++

                                    }
        
                                    else if(rw==4)
                                    {
                                        快手点赞模块() 
                                        kuaishou_dianzan_time++
                                        kuaishou_dianzan_alltime++

                                    }

                                    else if(rw==0)
                                    {
                                        快手播放模块() 
                                    }
     
                                    break
                                }
                            }
                            sleep(1500)
                        }
                    }
                    else if(rwz==0)
                    {
                        continue
                    }
                  
                }
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>      
        //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          
            }  

            if(task==null)
        
            {
                toastLog("下一个")
                swipe(device.width/2+random(-100,100),device.height-2.5*(首页zb.bottom-首页zb.top)-random(30,60),device.width/2+random(-100,100),device.height/10+random(-50,50),random(788,911))
                sleep(1500)
            }

        sleep(1500)
        }

    })
}
    
})
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

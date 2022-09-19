
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"ui";
//autojs源码提取,加密打包,代码解密,还原.微信:zxkj6898 或zx033245 或QQ168196007
2019/9/20-遇见漂流瓶脚本开发需求党大纲：
    1.读取本地/sdcard/配置.txt内容返回为json对象
    2.打开遇见漂流瓶
    3.初始化变量，开始循环运行脚本{
        扔瓶子
        if 有广告 等待三十秒
        回复{
            语音|文字
        }
    }

用户参数：
    扔瓶子数量
    扔瓶子延迟
    回复延迟

    版本：1.1
*/

//设置脚本主题颜色
var color = '#FFD700'

ui.layout(
    <drawer id="drawer">
        <vertical>
            <appbar id='appbar' bg='{{this.color}}'>
                <toolbar id="toolbar" title="遇见漂流瓶"/>
            </appbar>
            <viewpager id="viewpager">
                <frame>
                    <vertical>
                        <horizontal gravity='center_vertical'>
                            <text text='' margin='5dp' bg='{{this.color}}' w='8dp' h='35dp'></text>
                            <text text='软件权限' textSize='16sp' textColor='{{this.color}}'></text>
                        </horizontal>
                        <vertical bg='#ffffff' margin='5dp'>
                            <Switch id="autoService" text="无障碍服务" checked="{{auto.service != null}}" padding="8 8 8 8" textSize="15sp"/>
                            <Switch id="windowService" text="悬浮窗服务" checked="{{floaty.checkPermission()}}" padding="8 8 8 8"textSize="15sp"/>
                        </vertical>
                        <horizontal gravity='center_vertical'>
                            <text text='' margin='5dp' bg='{{this.color}}' w='8dp' h='35dp'></text>
                            <text text='脚本配置' textSize='16sp' textColor='{{this.color}}'></text>
                        </horizontal>
                        <ScrollView>
                            <vertical margin='5dp' bg='#ffffff'>
                                <button margin='5dp' id='start' bg='{{this.color}}' textColor='#ffffff' textSize='16sp' text='开始运行'></button>
                            </vertical>
                        </ScrollView>
                    </vertical>
                </frame>
                <frame>

                </frame>
                <frame>

                </frame>
            </viewpager>
        </vertical>
    </drawer>
);


//设置状态栏的颜色
ui.statusBarColor(color)

//当用户回到本界面时，resume事件会被触发
ui.emitter.on("resume", function () {
    // 此时根据无障碍服务的开启情况，同步开关的状态
    ui.autoService.checked = auto.service != null;
    ui.windowService.checked = floaty.checkPermission()
})

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//用户勾选无障碍服务的选项时，跳转到页面让用户去开启
ui.autoService.on("check", (checked) => {
    if (checked && auto.service == null) {
        app.startActivity({
            action: "android.settings.ACCESSIBILITY_SETTINGS"
        });
    }
    if (!checked && auto.service != null) {
        auto.service.disableSelf();
    }
})

//悬浮窗按钮单击事件
ui.windowService.on('check', (checked) => {
    if (checked && !floaty.checkPermission() && device.sdkInt > 23) {
        log('打开悬浮窗权限')
        var intent = new Intent();
        intent.setAction("android.settings.action.MANAGE_OVERLAY_PERMISSION")
        app.startActivity(intent);
        toast('选择此软件')
    }
})


//引流操作
ui.start.on('click', () => {

    //开始获取脚本配置
    threads.start(function () {
        //脚本全部参数设置完毕！显示开始悬浮窗
        var w = floaty.window(
            <frame>
                <button id='ok' text=''></button>
            </frame>
        );

        //悬浮窗关闭时自动停止脚本
        w.exitOnClose();

        //悬浮窗常在
        setInterval(()=>{}, 1000);

        //设置悬浮窗的位置
        w.setPosition(20,device.height * 0.7);

        //设置悬浮窗属性
        w.setAdjustEnabled(true);

        //定义安妮判断变量
        var state = 0;
        ui.run(function(){
            w.ok.setText('开始');
        });

        //定义脚本线程变量
        var thread;

        //悬浮窗ok按钮单击事件
        w.ok.on('click', ()=> {
            if (state == 0) {
                log('开始运行');
                ui.run(function(){
                    w.ok.setText('停止');
                });
                state = 1;
                //开始执行主线脚本引擎
                thread = threads.start(function(){
                    //console.show();
                    main();
                });
            } else {
                log('停止运行');
                ui.run(function(){
                    w.ok.setText('开始');
                });
                thread.interrupt();
                state = 0;
            }
        });
    })
})

function main(){

    auto.waitFor();


    const skillPath = '/sdcard/漂流瓶配置/话术.txt';
    const configPath = '/sdcard/漂流瓶配置/配置.json';
    const voicePath = '/sdcard/漂流瓶语音/'
    const appName = '遇见漂流瓶';
    const findViewDelay = 2000
    const nameObj = storages.create('nameObj')


    var config = getPathText(configPath);
    var skill = getPathText(skillPath);

    log(skill.split('\n').length)

    if (config != null && skill != null) {

        toastLog('读取软件配置成功')

        launchApp(appName)

        text('我的').id('mMeTextView').waitFor()
        toastLog('进入漂流瓶成功吧！')
        id('mBeachTextView').findOne().click()
        sleep(999)

        loop:
        while (1) {

            config = getPathText(configPath);
            skill = getPathText(skillPath);
            skill = skill.split('\n');
            config = JSON.parse(config);

            log('进入while循环')
            reng_num = r_number(config.扔瓶次数)
            toastLog('本次需要扔'+reng_num+'次！')
            
            for (let reng_i = 0;reng_i < reng_num;reng_i++) {
                toastLog("第"+reng_i+"次扔瓶子");
                reng_reng = id('mThrowBottleImageView').findOne(findViewDelay)

                if (reng_reng != null) {
                    log('找到了扔一个按钮')
                } else {
                    log('没有找到扔一个按钮')
                    exit()
                }

                if (reng_reng.click()) {
                    log('点击扔一个按钮成功')
                } else {
                    log('点击扔一个按钮失败')
                    exit()
                }

                listView_a = id('mRecyclerView').findOne(findViewDelay)
                if (listView_a != null) {
                    log('找到了扔瓶子话术列表')

                    if (listView_a.child(random(0, listView_a.childCount() - 1)).child(0).click()) {
                        log('点击扔瓶子话术成功')
                    } else {
                        log('点击扔瓶子话术失败')
                        exit()
                    }
    
                    if (text('扔出去').findOne().click()) {
                        log('点击扔出去成功')
                    } else {
                        log('点击扔出去失败')
                        exit()
                    }

                    
                } else {
                    log('没有找到扔瓶子话术列表')
                    reng_yici = text('免费扔一次').findOne(findViewDelay)

                    if (reng_yici != null) {
                        reng_yici.click()
                        sleep(5000)
                        v_loop = true
                        while (v_loop) {
                            跳过 = id('tt_video_ad_close_layout').findOnce()
                            if (跳过 != null) {
                                
                                v_loop = false;
                            }
                            sleep(1111);
                        }
    
                        sleep(3000)
                        跳过.click()
    
                        log('关闭广告')
                        text('我的').id('mMeTextView').waitFor()
                        reng_i--;
                        continue;
                    } else {
                        log('没有找到免费扔一次')
                        id('mVipCloseImageView').findOne().click()
                        reng_i = 999;
                    }
                }

                text('我的').id('mMeTextView').waitFor()
                reng_delay = r_number(config.扔瓶延迟)
                toastLog('本次延迟'+reng_delay+'秒！')
                sleep(reng_delay * 1000)

            }

            toastLog('扔瓶子结束！开始回复')
            
            if (text('消息').findOne().parent().click()) {
                log('点击消息按钮成功')
            } else {
                log('点击消息按钮失败')
                exit()
            }


            //开始回复用户

            msgLoop = true;
            while (msgLoop) {
                //log('开始寻找用户列表')

                /*
                listView_b = id('mViewPager').findOne(findViewDelay)
                if (listView_b != null) {
                    log('用户列表不为空')
                } else {
                    log('用户列表为空')
                    exit()
                }

                */

                log('开始寻找小红点')
                dot = id('mDotTextView').depth(20).findOne(findViewDelay)
                if (dot != null) {
                    log('找到了小红点')

                    userView = dot.parent().parent().parent().parent().parent()

                    while(!userView.click());

                    log('点击用户成功')
                    text('请输入消息…').waitFor()
                    log('进入聊天界面成功')
                    //sleep(500)
                    try {
                        userName = id('mCommonToolBar').findOne().child(1).text()
                    } catch (err) {
                        log('获取用户名称报错:',err)
                        userName = random(0,9999)
                    }

                    userName_num = nameObj.get(userName) || 0;
                    log('已经跟%s聊了%d次', userName, userName_num);

                    if (userName_num < skill.length) {
                        skill_a = skill[userName_num].split('|')
                        log('skill_a:', skill_a)

                        skill_b = skill_a[random(0, skill_a.length - 1)]
    
                        if (skill_b.indexOf('.') > -1) {
                            log('语音回复')


                            id('mRecordImageView').findOne().click()
                            sleep(500)

                            voiceDelay = r_number(config.录音时间)
                        
                            log('本次录音时间为：%d', voiceDelay)
                            threads.start(function(){
                                sound('/sdcard/Android/data/com.innovation.driftbottle/cache/DriftBottle/voice/', voicePath+skill_b, '.amr', voiceDelay*100)
                                /*
                                    /sdcard/Android/data/com.innovation.driftbottle/cache/DriftBottle/voice/
                                    /sdcard/Android/data/com.innovation.driftbottle/cache/DriftBottle/voice/
                                */
                            });
                            voiceButton = text('按住 说话').findOne()
                            log('找到了按住说话')
                            press(voiceButton.bounds().centerX(), voiceButton.bounds().centerY(), voiceDelay*1005);



                        } else {
                            log('文字回复')
    
                            className('EditText').findOne().setText(skill_b)
                            sleep(999)
                            text('发送').findOne().click()
                
                            //skill_delay = r_number()
    
                        }
    
                        //开始写入次数到本地储存
                        userName_num++
                        nameObj.put(userName, userName_num)
                    } else {
                        log('话术发完了')

                    }
                    
                    sleep(999)
                    className("android.widget.ImageButton").findOne().click()
                    text('海滩').waitFor()
                    sleep(500)


                    skill_delay = r_number(config.回复延迟)
                    toastLog('本次延迟'+skill_delay+'秒')
                    sleep(skill_delay * 1000)

                } else {
                    log('没有找到小红点')
                    sleep(1000)
                    list_c = id("mRecyclerView").className("android.support.v7.widget.RecyclerView").scrollable(true).depth(13).findOne(findViewDelay)
                    if (list_c != null) {
                        log('找到了用户列表控件')

                        if (!list_c.scrollForward()) {
                            log('下滑到底了');
                            loop_1 = true
                            while(loop_1) {

                                oneName = id('mNameTextView').findOne().text()
                                log(oneName)
                                sleep(500)
                                list_c.scrollBackward()
                                sleep(500)
                                towName = id('mNameTextView').findOne().text()
                                log(towName)
                                if (oneName == towName) {

                                    log('上滑到底了')
                                    loop_1 = false;

                                }
                                

                                /*
    
                                if (list_c.scrollBackward()) {
                                    log('上滑到底了')
                                    loop_1 = false;
                                }

                                */
    
                                sleep(1000)
    
                            }
                            msgLoop = false;
                            
                        }
    
                        sleep(999)
                    } else {
                        log('没有找到用户列表控件')
                        //重启软件，并点击消息
                        openAppSetting(getPackageName('遇见漂流瓶'))
                        text('应用信息').waitFor();
                        sleep(500)
                        text('强行停止').findOne().click()
                        text('是否强行停止？').waitFor();
                        sleep(500)
                        text('确定').findOne().click()
                        sleep(1000)
                        launchApp('遇见漂流瓶')
                        text('我的').waitFor();
                        sleep(500)
                        text('消息').findOne().parent().click()
                        sleep(1000)
                    }

                }

            }

            if (text('海滩').findOne().click()) {
                log('点击海滩成功')
                
            } else {
                log('点击海滩失败')
                exit()
                
                
            }

            sleep(1000)

        }

    } else {
        log('配置或者话术为空')
    }

    //id = mThrowBottleImageView
}

//************************************************************************ */

function getPathText (path_a) {
    //开始获取本地配置
    if (files.isFile(path_a)) {
        getPathText_r = files.read(path_a)
        return getPathText_r; 
    } else {
        toastLog('读取不到你的软件配置')
        files.create('/sdcard/漂流瓶配置/')
        return null;
    }
}

function getKeyName(code, event){
    var keyCodeStr = event.keyCodeToString(code);
    var keyName = keyNames[keyCodeStr];
    if(!keyName){
        return keyCodeStr;
    }
    return keyName;
}

function r_number (r_number) {

    switch (typeof(r_number)) {
        case 'number':
            log('是数字')
            return r_number
        case 'string':
            log('是字符串')
            if (r_number.indexOf('-') > -1) {
                r_number_min = r_number.split('-')[0]
                r_number_max = r_number.split('-')[1]
                return random(Number(r_number_min), Number(r_number_max))
            } else {
                return Number(r_number)
            }
        default:
            log('r_number传入的值数据类型不对')
            return 0;
    }
}

//社交App语音替换函数
/*
app_path:string:社交软件的语音缓存目录
v_path:string:用户语音包目录
suffix:string:缓存语音后缀名
delay:number:循环替换用时*10
*/
function sound(app_path, v_path, suffix, delay) {
        
    if (files.exists(app_path) && files.exists(v_path)) {
        log('路径为合法值')

        var listFile = files.listDir(app_path, function(name){
            return name.endsWith(suffix) && files.isFile(files.join(app_path, name))
        })

        log('读取缓存完毕,请开始录音！')

        while (1) {
            newListFile = files.listDir(app_path, function(name){
                return name.endsWith(suffix) && files.isFile(files.join(app_path, name))
            })
            if (newListFile.length != listFile.length) {
                newFIleName = newListFile[newListFile.length - 1]
                //log('此次录音文件名：'+newFIleName)
                break;

            }
        }

        for (let i = 0;i < delay; i++) {
            voicePath = app_path + newFIleName
            if (!files.copy(v_path, voicePath)) {
                toastLog('失败！')
                break;
            }
            sleep(10)
        }
        toastLog('完成')
    } else {
        toastLog('传入的路径不合法！')
        return false
    }
}
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

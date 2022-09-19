
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"ui";
//autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
//1群:168196007 
//2群:830810438 
//3群:571854376 
//4群:63732194
//5群:592916456
//主题颜色
var color = "#5CACEE"

//版本名称
var appVersion = 'test 0.1.0'

ui.layout(
    <drawer id="drawer">
        <vertical>
            <appbar id='appbar' bg='{{this.color}}'>
                <toolbar id="toolbar" title="葫芦侠协议_{{appVersion}}"/>
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
                                <vertical>
                                    <input id='input_key' w='*' signleLine='ture' ellipsize='end'></input>
                                </vertical>
                                <button margin='5dp' id='button_key' bg='{{this.color}}' textColor='#ffffff' textSize='16sp' text='获取key'></button>                        
                                <button margin='5dp' id='button_0' bg='{{this.color}}' textColor='#ffffff' textSize='16sp' text='开始签到'></button>
                                <button margin='5dp' id='button_1' bg='{{this.color}}' textColor='#ffffff' textSize='16sp' text='开始点赞'></button>
                                <button margin='5dp' id='button_2' bg='{{this.color}}' textColor='#ffffff' textSize='16sp' text='开始评论'></button>
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

//获取葫芦侠key
ui.button_key.on('click', () => {
    threads.start(function(){
        ui.input_key.setText(getKey());
    })
})

//签到
ui.button_0.on('click', () => {
    keyText = ui.input_key.text()
    threads.start(function(){
        sign(keyText)
    })
})

//点赞
ui.button_1.on('click', () => {
    keyText = ui.input_key.text()
    threads.start(function(){
        likeUp(keyText)
    })
})

//评论
ui.button_2.on('click', () => {
    keyText = ui.input_key.text()
    threads.start(function(){
        comment(keyText)
    })
})

//ui.webview.loadUrl('http://xui.ptlogin2.qq.com/cgi-bin/xlogin?appid=716027609&pt_3rd_aid=100580922&daid=381&pt_skey_valid=1&style=35&s_url=http%3A%2F%2Fconnect.qq.com&refer_cgi=m_authorize&ucheck=1&fall_to_wv=1&status_os=9.3.2&redirect_uri=qqlogin%3A%2F%2Fwww.qq.com&client_id=100580922&response_type=token&switch=1')

function sign (key) {

    var sign_api = 'http://floor.huluxia.com/user/signin/ANDROID/2.1?platform=2&gkey=520000&app_version=3.5.1.85.1&versioncode=235&market_id=tool_tencent&_key=' + key + '&cat_id='

    plate_ids = [1,2,3,4,6,11,15,16,21,22,23,29,34,43,44,45,56,57,58,60,63,64,67,68,69,70,71,72,76,77,78,81,82,84,85,88,90,92,93,94,95,96,97,98,99,100,101]

    plate_ids.forEach((plate_id) => {
        r_data = http.get(sign_api + plate_id);

        log(r_data.body.string())

        sleep(random(1111,2222))
    })

    log('签到完成')

}

function comment (key) {


    var comment_api = 'http://floor.huluxia.com/comment/create/ANDROID/2.0?platform=2&gkey=000000&app_version=4.0.1.3.1&versioncode=275&market_id=tool_tencent&_key='+key


    loop = true

    while (loop) {

        randomNumber = random(11111111, 99999999)

        content = '啊哈哈哈哈'+random(111,999)

        r_data = http.post(comment_api,{
            post_id:randomNumber,
            comment_id:0,
            text:content
        })

        log(r_data.body.string())

        random(5555,9999)

    }


}

function likeUp (key) {
    var likeUp_api = 'http://floor.huluxia.com/post/praise/ANDROID/2.1?platform=2&gkey=000000&app_version=4.0.1.3.1&versioncode=275&market_id=tool_tencent&_key='+key+'&post_id='

    loop = true

    while (loop) {

        r_data = http.get(likeUp_api + random(11111111, 99999999)).body.json()

        if (r_data.msg == '贴子不存在!' || r_data.msg == '出错了，请联系客服') {
            log('点赞失败')
        } else {
            log('点赞成功')
            loop = false
        }

        sleep(random(4444, 8444))

    }


}

function getKey () {
    key = files.read('/sdcard/hlx/key.txt')
    if (key != null) {

        return key;

    } else {
        return null
    }
}

//var a = '54CEB0C2FA66EFBC65372A5F3BF7DDEF5561F8E0D66E9E58BA163EAF8B6F34177FC1C4FF8F502C57CE66948EB2C00F350836E8E4EB36A2CD'

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

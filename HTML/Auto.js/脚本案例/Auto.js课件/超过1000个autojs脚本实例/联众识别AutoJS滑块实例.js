
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

if(!requestScreenCapture()){
    toast("请求截图失败");
    exit();
}
    captureScreen("/sdcard/1" + ".jpg");//截图


    var src = images.read("/sdcard/1.jpg");
    var clip = images.clip(src, 0, 435, 1080, 245);//裁剪滑块区域图片  
    images.save(clip, "/sdcard/clip.png");






username ="wang16"//联众账号
password ="wang06."//联众密码
 img =images.read("/sdcard/clip.png")//读取本机图片路径
log(img)

var x1=getCode(username, password, img).data.res.split("|")[0].split(",")[0]
var x2=getCode(username, password, img).data.res.split("|")[1] .split(",")[0]
 log(x1 )
 log( x2 )///返回打码结果
 swipe(x1, 523, x2, 523, 600)//滑动 y坐标位置自定 
//setText(fh)




function getCode(username, password, img) {
    http.__okhttp__.setTimeout(3e4);
    var r = images.toBase64(img), i = device.release, c = device.model, s = device.buildId;
    try {
        var n = http.postJson("https://v2-api.jsdama.com/upload", {
            softwareId: 15134,//填软件id
            softwareSecret: '7t6aDPZPfxqkMtVK5neYz9kX5XTQf0wp9sE',//填软件联众2.0 接口 Secret
            username: username,
            password: password,
            captchaData: r,
            captchaType: 	1310,
            captchaMinLength: 0,
            captchaMaxLength: 0,
            workerTipsId: 0
        }, {
            headers: {
                "User-Agent": "Mozilla/5.0 (Linux; Android " + i + "; " + c + " Build/" + s + "; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/66.0.3359.126 Mobile Safari/537.36",
            }
        });
    } catch (e) {
        return {
            code: "-1",
            msg: "网络链接超时...",
            data: {}
        };
    }
    var d = n.body.json(), p = d.code, m = d.message;
    if ("10079009" == p) return {
        code: p,
        msg: m,
        data: {}
    };
    if ("10142006" == p) return {
        code: p,
        msg: m,
        data: {}
    };
    if ("10142004" == p) return {
        code: p,
        msg: m,
        data: {}
    };
    if ("10142005" == p) return {
        code: p,
        msg: m,
        data: {}
    };
    if ("10079006" == p) return {
        code: p,
        msg: m,
        data: {}
    };
    if ("0" == p) {
        return {
            code: p,
            msg: m,
            data: {
                res: d.data.recognition
            }
        };
    }
    return d;
}
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

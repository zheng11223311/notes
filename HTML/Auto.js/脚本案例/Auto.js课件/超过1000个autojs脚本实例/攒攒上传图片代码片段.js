
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

//autojs交流群,脚本代码还原,代码分享！群号:830810438 脚本分享高级群:1036477155 此群为收费群!


var 领取任务 = "http://zcore.zqzan.com/app/douyin/pull/one"

var m = post(领取任务,token)
log(m);

var 获取图片上传参数 ="http://zcore.zqzan.com/app/oss/shot_img"
var m = post(获取图片上传参数,token)
log(m.data.dir);
log(m.data.prefix);
log(m.data.expire);
log(m.data.host);
var rl=m.data.host;

//上传图片
var key =m.data.dir+m.data.prefix+m.data.expire+".png"
var temp = http.postMultipart("https://zqzan.oss-cn-shanghai.aliyuncs.com/", {
    key:key,
    policy:m.data.policy,
    OSSAccessKeyId:m.data.accessid,
    signature:m.data.signature,
    success_action_status:m.data.signature,
    file: ["Screenshot_2020-02-05-09-43-12-200_com.ss.android.ugc.aweme.png","/storage/emulated/0/DCIM/Screenshots/Screenshot_2020-02-05-09-43-12-200_com.ss.android.ugc.aweme.png"]

}, {
    "headers": {
        "Content-Type":"multipart/form-data; boundary=----125545885555"
    }
});
log(temp.statusCode)


function post (url, token) {
    try {
        var temp = http.post(url, {

        }, {
            "headers": {
                "Token": token
            }
        }).body.json();
        log(temp.code == 0 ? temp.msg : temp.msg)
        return temp;
    } catch (error) {
        console.error("Function=>submit：" + error);
    };
};
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

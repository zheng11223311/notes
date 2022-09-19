// a820a839-fd17-4035-838f-deb0d8abc8b0
toast('开始任务')
if(!requestScreenCapture()){
    toast("请求截图失败");
    exit();
}
var url = "http://zcore.zqzan.com/app/account/login";
var username = "13180569395";
var password = "aaattt123";
var token;

var res = http.post(url, {
    "username": username,
    "loginpw": MD5(password+"Uk&s23^ruk@")
},{headers:{token:"","User-Agent":'Redmi Note 8(Android/9) (com.zanqzan.app/1.2.21) Weex/0.26.0 1080x2130'}});

if(res.statusCode == 200){

    // log(res.body.json().data.token)
    token = res.body.json().data.token;
    log(token)

}

function MD5(string){
    var res=java.math.BigInteger(1,java.security.MessageDigest.getInstance("MD5").digest(java.lang.String(string).getBytes())).toString(16);
    while(res.length<32)res="0"+res;
    return res;
}

sleep(3000)
toast("开始获取任务")
var url = "http://zcore.zqzan.com/app/douyin/pull/one"
// var token = "061c6d73-d6ec-419c-a4b1-fb1432b36b23"

var resaa = 获取任务(true,1)
var body11 = resaa.body.json();
var aid = body11.data.id;

log(aid);

var aweme_id = body11.data.aweme_id;

log(aweme_id)

// if(res.statusCode == 200){
//     // log()
// }

//获取抖音任务
function 获取任务(bool,num){
    var res = http.post(url,{
        "b_discount": bool,
        "access": num,
        "exam_status": 0
    },{
        headers: {
            // "Token": token,
            token: token
        }
    })

    return res;
}

// { aweme_id: '6857360060721466627',     sample_img: 'https://zqzan.oss-cn-shanghai.aliyuncs.com/sample/dy_digger.jpg@!fwidth',     b_discount: true,     anchor_id: '2444910407199336',     id: '1291914666361610242',     type: 1,     earning: 11 } }


var host;
var key;
var OSSAccessKeyId;
var signature;
var imgName;
var policy;



shot_img();


log(host+"----"+key+"----"+OSSAccessKeyId+"----"+signature)

// https://yun.zqzan.com
// app/08_08//1268807849981091841_1596846809648.png
// LTAI4FwVNMW9yHsSHKW5mW3T
// mDHL1HFLRskVIJuNGXGcz63FJ7g=

function shot_img(){

    var url = "http://zcore.zqzan.com/app/oss/shot_img"

    var res = http.post(url,{},{
        headers: {
            token: token
        }
    })
    
    if(res.statusCode == 200){
        var obj = res.body.json();

        log(obj)
    
    
        host = obj.data.host;
    
        key = obj.data.dir+"/"+obj.data.prefix+obj.data.expire+".png";
    
        OSSAccessKeyId = obj.data.accessid;
        policy = obj.data.policy;
        signature = obj.data.signature;
    
        imgName = ".ss.android.ugc.aweme.jpg"
    }
}

toast('开始做任务');


sleep(10000)


sleep(1500)
var awemeId = aweme_id;
app.startActivity({ 
    action: "android.intent.action.VIEW", 
    data:"snssdk1128://aweme/detail/" + awemeId, 
    packageName: "com.ss.android.ugc.aweme", 
});

waitForPackage("com.ss.android.ugc.aweme")
sleep(1500)
log('开始截图')
sleep(10000)
var d=new Date()

var path1 = "/sdcard/"+d.getTime().toString()+".ss.android.ugc.aweme.jpg"

log(path1)

captureScreen(path1)

toast("截图完成");

sleep(3000)
var url = 'https://yun.zqzan.com'

// https://yun.zqzan.com----app/08_08//1268807849981091841_1596858065568.png----LTAI4FwVNMW9yHsSHKW5mW3T----r0zJzLbyZRxASug6SHnbi+Jt+zk=
// var host;
// var key;
// var OSSAccessKeyId;
// var signature;
// var imgName;
// var policy;

var akey = 'app/08_08//1268807849981091841_'+d.getTime().toString()+""+random(10,99)+'.png'
log(akey)

res = http.postMultipart(url, {
    key: akey,
    policy: policy,
    OSSAccessKeyId: OSSAccessKeyId,
    signature: signature,
    success_action_status: "200",
    file: open(path1)
});

log(res.statusCode)

sleep(1000)
toast("开始提交")
url = 'http://zcore.zqzan.com/app/douyin/submit/task';

// doit_id=1291882588513361922&shot_img=https%3A%2F%2Fyun.zqzan.com%2Fapp%2F08_08%2F%2F1268807849981091841_159684386042016.png%40!fwidth

// app/08_08//1268807849981091841_1596848171617.png

res = http.post(url,{
    doit_id: aid,
    shot_img: 'https://yun.zqzan.com/'+akey+'@!fwidth',
},{
    headers: {
        token: token
    }
})
log(res.body.string())





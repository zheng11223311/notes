//勾选点赞
// b_discount=false & access=1 & exam_status=0
// b_discount=false & access=2 & exam_status=0
// b_discount=false & access=4 & exam_status=0


var url = "http://zcore.zqzan.com/app/douyin/pull/one"
var token = "061c6d73-d6ec-419c-a4b1-fb1432b36b23"

var res = 获取任务(true,1)

if(res.statusCode == 200){
    log(res.body.json())
}

//获取抖音任务
function 获取任务(bool,num){
    var res = http.post(url,{
        "b_discount": bool,
        "access": num,
        "exam_status": 0
    },{
        headers: {
            // "Token": token,
            token: token,
            "User-Agent": 'Redmi Note 8(Android/9) (com.zanqzan.app/1.2.21) Weex/0.26.0 1080x2130'
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
            token: token,
            "User-Agent": 'Redmi Note 8(Android/9) (com.zanqzan.app/1.2.21) Weex/0.26.0 1080x2130'
        }
    })
    
    if(res.statusCode == 200){
        var obj = res.body.json();

        log(obj)
    
    
        host = obj.data.host;
    
        key = obj.data.dir+"/"+obj.data.prefix+obj.data.expire+".png";
    
        OSSAccessKeyId = obj.data.accessid;
    
        signature = obj.data.signature;
    
        imgName = ".ss.android.ugc.aweme.jpg"
    
    
    }
}
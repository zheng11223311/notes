
var url = "http://zcore.zqzan.com/app/douyin/do/oauth"
var token = "c5e57ad2-7a90-4ee6-8b74-17c81b864646"

var shot_img = host+"/"+key+format;

var short_url = "https://v.douyin.com/JRMQTWA/";


var res = http.post(url,{
    "shot_img": shot_img,
    "short_url": short_url
},{
    headers: {
        "Token": token
    }
})

if(res.statusCode == 200){
    log(res.body.json())
}

// { code: 0,  msg: '操作成功',  data:    { sign_douyin_sample: 'https://zqzan.oss-cn-shanghai.aliyuncs.com/sample/dy_sign.jpg@!fwidth',     dyin_status: 0 } }

toast("123")









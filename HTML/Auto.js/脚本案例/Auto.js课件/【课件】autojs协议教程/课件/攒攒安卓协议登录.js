//攒攒安卓协议登录

var url = "http://zcore.zqzan.com/app/account/raw/login";
var username = "你的用户名";
var password = "你的密码";


var res = http.post(url, {
    "username": username,
    "loginpw": password
});

if(res.statusCode == 200){
    log(res.body.json())
}

// { code: 0,  msg: '操作成功',  data: { token: '5c28cbfb-3f40-4413-9267-deed320ca0c5' } }
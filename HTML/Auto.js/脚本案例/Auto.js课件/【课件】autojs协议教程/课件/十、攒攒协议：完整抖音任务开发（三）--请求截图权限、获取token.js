





//获取截图权限

//请求截图
if(!requestScreenCapture()){
    toast("请求截图失败");
    exit();
}

//captureScreen("/sdcard/123.png");


//获取token

function login(username,password){

    //攒攒安卓协议登录

    // { code: 0,  msg: '操作成功',  data: { token: '5c28cbfb-3f40-4413-9267-deed320ca0c5' } }

    var getToken = "";
    var url = "http://zcore.zqzan.com/app/account/raw/login";
    var username = "你的用户名";
    var password = "你的密码";


    var res = http.post(url, {
        "username": username,
        "loginpw": password
    });

    if(res.statusCode == 200){
        log(res.body.json())
        getToken = res.body.json().data.token
    }

    return getToken;

}










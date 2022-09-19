





var token = "3456c83e-a9ed-4c60-abe6-18ddd7168b7c"

if(是否签到()) {

    log("已经签到")

}else {

    log("还未签到")

}



function 是否签到(){
    
    var url = "http://zcore.zqzan.com/app/douyin/mine/my/info"

    // var token = "3456c83e-a9ed-4c60-abe6-18ddd7168b7c"
    var res = http.post(url,{},{
        headers: {
            "Token": token
        }
    })
    
    if(res.statusCode == 200){
        var obj = res.body.json();
        
        var is_signed = obj.data.is_signed;
    
        return is_signed
    }
}








var aweme_id;
var anchor_id;
var id;
var type;
var token = "3456c83e-a9ed-4c60-abe6-18ddd7168b7c"

if(抖音任务(true,7)){
    if(type == 2){
        log("这是一个关注任务")
    }
}

function 抖音任务(bool,num) {
    

    var res = 获取任务(bool,num)

    if(res.statusCode == 200){
        var obj = res.body.json()

        aweme_id = obj.data.aweme_id
        anchor_id = obj.data.anchor_id
        id = obj.data.id
        type = obj.data.type

        return true;
    }
}



//获取抖音任务
function 获取任务(bool,num){

    var url = "http://zcore.zqzan.com/app/douyin/pull/one"
    
    var res = http.post(url,{
        "b_discount": bool,
        "access": num,
        "exam_status": 0
    },{
        headers: {
            "Token": token
        }
    })

    return res;
}















//勾选点赞
// b_discount=false & access=1 & exam_status=0
// b_discount=false & access=2 & exam_status=0
// b_discount=false & access=4 & exam_status=0


var url = "http://zcore.zqzan.com/app/douyin/pull/one"
var token = "7eacb6f8-c4b1-4fbe-9676-1a8d4db86073"

var res = 获取任务(true,4)

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
            "Token": token
        }
    })

    return res;
}

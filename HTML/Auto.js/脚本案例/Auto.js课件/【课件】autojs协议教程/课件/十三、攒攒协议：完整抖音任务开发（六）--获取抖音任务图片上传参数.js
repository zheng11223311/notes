



  
var token = "3456c83e-a9ed-4c60-abe6-18ddd7168b7c"

var host;
var key;
var OSSAccessKeyId;
var signature;
var imgName;



shot_img();


log(host+"----"+key+"----"+OSSAccessKeyId+"----"+signature)

function shot_img(){

    var url = "http://zcore.zqzan.com/app/oss/shot_img"

    var res = http.post(url,{},{
        headers: {
            "Token": token
        }
    })
    
    if(res.statusCode == 200){
        var obj = res.body.json();
    
    
        host = obj.data.host;
    
        key = obj.data.dir+"/"+obj.data.prefix+obj.data.expire+".png";
    
        OSSAccessKeyId = obj.data.accessid;
    
        signature = obj.data.signature;
    
        imgName = ".ss.android.ugc.aweme.jpg"
    
    
    }
}






// var d=new Date()
// var url = host

// var res = http.postMultipart(url, {
//     key: dir+"/"+prefix+expire+".png",
//     policy: policy,
//     OSSAccessKeyId: accessid,
//     signature: signature,
//     success_action_status: "200",
//     file: open("/sdcard/"+d.getTime().toString()+imgName)
// });









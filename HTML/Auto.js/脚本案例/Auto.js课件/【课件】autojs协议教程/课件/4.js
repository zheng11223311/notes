



  
var token = "9afbdeaa-b658-41c0-b8db-84b9f0e8b3fd"

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
            "Token": token
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









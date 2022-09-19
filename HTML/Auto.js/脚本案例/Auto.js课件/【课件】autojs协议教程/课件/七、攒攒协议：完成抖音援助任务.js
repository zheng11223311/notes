


//打开个人主页

// var anchorId = "4265743143675532";
// app.startActivity({ 
//     action: "android.intent.action.VIEW", 
//     data:"snssdk1128://user/profile/" + anchorId, 
//     packageName: "com.ss.android.ugc.aweme", 
// });



//打开视频页

// var awemeId = "6840346038461615375";
// app.startActivity({ 
//     action: "android.intent.action.VIEW", 
//     data:"snssdk1128://aweme/detail/" + awemeId, 
//     packageName: "com.ss.android.ugc.aweme", 
// });


//跳转

//请求截图
// if(!requestScreenCapture()){
//     toast("请求截图失败");
//     exit();
// }

// sleep(1500)

// var anchorId = "4265743143675532";
// app.startActivity({ 
//     action: "android.intent.action.VIEW", 
//     data:"snssdk1128://user/profile/" + anchorId, 
//     packageName: "com.ss.android.ugc.aweme", 
// });

if(!requestScreenCapture()){
    toast("请求截图失败");
    exit();
}

sleep(5000)

captureScreen("/sdcard/111.png");
















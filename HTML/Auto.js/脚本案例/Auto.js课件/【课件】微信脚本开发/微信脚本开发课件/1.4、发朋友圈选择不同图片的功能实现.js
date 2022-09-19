



//第一场景：知道图片的数量,正序选择

// id('com.tencent.mm:id/dm0').waitFor();
// sleep(1000);

// var picNum = 4;

// id('com.tencent.mm:id/dm0').find().forEach((child,index) => {
//     if(index < picNum){
//         child.click();
//         sleep(500);
//     }
// });


//第二场景：知道图片的数量,倒序选择


// id('com.tencent.mm:id/dm0').waitFor();
// sleep(1000);

// var picNum = 4;

// for(var i = 0;i < picNum; i++){

//     id('com.tencent.mm:id/dm0').find().get(picNum - 1 - i).click()
//     sleep(500)

// }

//第三场景：不知道图片数量，正序和倒序

text('图片和视频').waitFor();
sleep(1000);

click('图片和视频');

text('palmchat').waitFor();
sleep(500);

click('palmchat');

while(true){
    if(text('图片和视频').exists()){
        sleep(500);
    }else{
        break;
    }
}

var picNum = id('com.tencent.mm:id/dm0').find().size();

//正序
// id('com.tencent.mm:id/dm0').find().forEach((child,index) => {
//     if(index < picNum){
//         child.click();
//         sleep(500);
//     }
// });

//倒序
// for(var i = 0;i < picNum; i++){

//     id('com.tencent.mm:id/dm0').find().get(picNum - 1 - i).click()
//     sleep(500)

// }













toast('阿涛 QQ/微信：656206105')




var fun = {

    //等待出现，文本
    wait: function (str) {
        text(str).waitFor()
        sleep(1000)
    },

    //等待id出现，id
    waitId: function (str) {
    id(str).waitFor()
    sleep(1000)
    },


    //点击文本
    点击文本: function (文本) {
    
        var weight = text(文本).findOne().bounds();
    
        click(weight.centerX(),weight.centerY())
    },

    //点击id，id
    点击id: function (a) {

        var weight = id(a).findOne().bounds();

        click(weight.centerX(),weight.centerY())

    },

    //向上滑动，像素 
    向上滑动: function (pixel) {

        swipe(device.width/2,device.height/2,device.width/2,device.height/2 - pixel,500)

        sleep(1000)

    },

    //向上滑动，像素
    向下滑动: function (pixel) {

        swipe(device.width/2,device.height/2,device.width/2,device.height/2 + pixel,800)

        sleep(1000)

    }

}

//抖音版本：11.5.1

//点赞功能

// var weight = descStartsWith("未选中").findOne().bounds()

// log(weight.centerX(),weight.centerY())
// // click(996,1316)

// // 996 1316


//完成获取坐标并保存

var storage = storages.create("抖音数据");

var douyin = {}

douyin.坐标验证 = function(weight){
    var left = weight.left;
    
    var right = weight.right;

    var top = weight.top;

    var bottom = weight.bottom;

    if(left > 0 && right > 0 && top> 0&&bottom >0){
        return true;
    }else {
        return false;
    }
}

douyin.获取坐标 = function(){

    toast("开始获取坐标，请到指定页面")

    var point = [];

    desc("关注").waitFor();
    sleep(1000)

    toast("正在获取坐标，请稍后")

    //获取关注坐标
    var weight = desc("关注").findOne().bounds();
    
    if(this.坐标验证(weight)){
        point.push(weight) 
    }
    //获取点赞坐标
    weight = descStartsWith("未选中").findOne().bounds();

    if(this.坐标验证(weight)){
        point.push(weight)
        
    }
    //获取评论坐标
    weight = descStartsWith("评论").findOne().bounds();

    if(this.坐标验证(weight)){
        point.push(weight) 
    }

    return point;
}



// var point = douyin.获取坐标()

// storage.put("point", point);

// toast("获取坐标完成")

// 拿取
var getPoint = storage.get("point",[]);
log(getPoint[1])

// 抖音点赞(getPoint[1])

// 抖音评论(getPoint[2],"sendText")



function 抖音关注(){

    var weight = text("#  关注").findOne().bounds()
    
    var x = weight.centerX();
    var y = weight.centerY();
    
    log(x,y)
    sleep(1000)
    click(x,y)
    sleep(1500)
}

function 抖音点赞(weight){
    
    var x = (weight.right -weight.left) / 2 +weight.left;
    var y = (weight.bottom -weight.top) / 2 +weight.top;
    
    log(x,y)
    
    descStartsWith("未选中").waitFor()
    sleep(1500)
    toast("开始点赞")
    
    click(x,y)
    sleep(1500)
}

function 抖音评论(weight,sendText){

    var x = weight.centerX();
    var y = weight.centerY();
    
    log(x,y)

    fun.wait("留下你的精彩评论吧")

    fun.点击文本("留下你的精彩评论吧")
    sleep(1000)
    setText(sendText)
    sleep(1000)
    fun.点击id("com.ss.android.ugc.aweme:id/abr")
    sleep(1000)
}






// toast("123")









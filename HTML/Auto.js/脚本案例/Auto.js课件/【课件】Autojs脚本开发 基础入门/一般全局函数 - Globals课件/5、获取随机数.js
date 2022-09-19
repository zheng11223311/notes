




// log(random())


// var r = random(0, 100);

// log(r)


var 控件集合 = id('com.miui.home:id/icon_icon').find();

var 控件数量 = 控件集合.size();

var r = random(0, 控件数量 - 1);

var 坐标集合 = 控件集合.get(r).bounds();

click(坐标集合.centerX(),坐标集合.centerY())









toast('阿涛QQ/微信：656206105')

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
//---------------------------------------------
home();
sleep(300);
//桌面Activity
var homeActivity = currentActivity();
//---------------------------------------------
var myUtils = initUtil();

myUtils.quartz(jingoal,8,5);
myUtils.quartz(jingoal,22,1);

exit();

function jingoal() {
    log("今目标打卡开始！");
    launchPackage("com.jingoal.mobile.android.jingoal");
    log("打开应用");
    myUtils.initMain("com.jingoal.mobile.android.ui.mainframe.activity.MainFrame");
    myUtils.clickBtnById("main_item_apps");
    myUtils.clickBtn("考勤");
    sleep(15000);
    if (!text("重新签退").find().empty()) {
        myUtils.clickBtn("重新签退");
    } else if (text("签退").find().empty()) {
        myUtils.clickBtn("签到");
    } else {
        myUtils.clickBtn("签退");
    }
    sleep(3000);
    myUtils.closeApp();
    log("今目标打卡结束！");
}


//------------------- util function -----------------------
function initUtil(){
	var utils = new Object();

	utils.closeApp = function(){
		sleep(500);
		while(currentActivity()!=homeActivity){
			back();
			sleep(1000);
		}
		log("关闭应用成功！");
	}
	//定时执行函数
	utils.quartz = function(fn,hh,mm){    
	    while(true){
		    var d = new Date();
		    var h = d.getHours();
		    var m = d.getMinutes();
		    log(d+"|||||"+hh+","+mm);
		    if(hh==h && mm==m){
		    	fn.apply(this);
		    }
		    sleep(1000*60);
	    }      
	}

	//等待主页面打开
	utils.initMain = function(mainName){
		sleep(500);
		while(currentActivity()!=mainName){
			log("activity:"+currentActivity());
			sleep(1000);
		}
		sleep(500);
	}

	utils.clickBtnById = function(btnId){
		return clickBtn(null,btnId);
	}

	utils.isNullText = function(text){
		return text(text).find().empty();
	}

	utils.isNullDesc = function(text){
		return desc(text).find().empty();
	}

	//按钮点击
	utils.clickBtn = function(btnName,btnId){
		log("点击"+btnName+","+btnId);
		sleep(200);
		var btn = null;
		if(!!btnId){
			btn = id(btnId).findOne();			
		}else if(!text(btnName).find().empty()){
			btn = text(btnName).findOne();	
		}else if(!desc(btnName).find().empty()){		
			btn = desc(btnName).findOne();	
		}
		//log(btn);
		if(!!btn){
			var xy = btn.bounds();
			//log(xy);
	        while(!click(xy.centerX(), xy.centerY()));
	        sleep(5000);
			return true;
		} 	
		log("按钮【"+btnName+"】没有找到");
		return false;	
	}

	return utils;
}

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

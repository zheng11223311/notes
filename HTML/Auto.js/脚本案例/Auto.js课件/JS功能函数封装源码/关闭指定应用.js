/*
 *调整应用设置页面，结束程序，免root模式下课用，
 *基本适用大部分设备，若不适用，请检查代码15到19行，以及变量forcedStopStr是否包含该设备结束控件的文本；
 */

killApp("水立方尝鲜版");//结束QQ应用测试
function killApp(name) {   
    let forcedStopStr = ["停", "强", "结束"];  
    let packageName = app.getPackageName(name);
    if (packageName) {  
        app.openAppSetting(packageName); 
        text(name).waitFor();  
        for (var i = 0; i < forcedStopStr.length; i++) {    
            if (textContains(forcedStopStr[i]).exists()) {      
                let forcedStop = textContains(forcedStopStr[i]).findOne();      
                if (forcedStop.enabled()) {        
                    forcedStop.click();        
                    text("确定").findOne().click();        
                    toastLog(name + "已结束运行");        
                    sleep(800);
                    back();
                    break;      
                } else {       
                    toastLog(name + "不在后台运行！");        
                    back();
                    break;
                }    
            }  
        }
    } else {
        toastLog("应用不存在");
    }
}
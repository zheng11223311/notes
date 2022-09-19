
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
﻿"auto";
//autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
//1群:168196007 
//2群:830810438 
//3群:571854376 
//4群:63732194
//5群:592916456

device.keepScreenOn();//保持屏幕常亮
var 开始 = 0;
var 域名 = "a.ewmtool.com";
var 手机名字 = "vbnm0147";
var url = "http://a.ewmtool.com/tp/index.php";
var 群发文档 = http.get(url+"/wxcx/wx_xcx?mod=qun_name&wx_hao="+ 手机名字);
log(url+"/wxcx/wx_xcx?mod=qun_name&wx_hao="+ 手机名字);
var 群名 = "";
var 一轮延迟 = "";
var 从第几个开始 = "";
var 找到搜索框 = false;
if(群发文档.statusCode == 200){
    var 源码 = 群发文档.body.string();
	群名 = 源码;
	log(群名);
}

log("当前微信版本："+ getPackageVersion("com.tencent.mm"));
log("当前脚本适配微信版本：7.0.12");
var 群名=群名.split("<|O|>");


var qxone = files.exists("/sdcard/qxone.ini");
if(qxone == false){
    alert("【公告】\n不要 更新 微信！\n不要 更新 微信！\n不要 更新 微信！\n\n重要的事说三遍！\n\n\n微信版本必须为：7.0.12");
    alert("【公告】\n不可卸载的软件：\n1、微信\n2、Auto.js\n3、MT管理器");
    dialogs.build({
        title: "提示",
        content: "可否能理解 ?",
        positive: "理解",
        negative: "我是大笨蛋"
    }).on("positive",()=>{
        //
    }).on("negative",()=>{
        alert("那就联系你的专属客服。找他教你！！");
    }).show();
    files.create("/sdcard/qxone.ini");
}

循环发送();



var 是否点击发送 = false;
function 循环发送(){
	
	try{
		var 群发数量 = http.get(url+"/wxcx/wx_xcx?mod=qu_shu&wx_hao="+ 手机名字);
	    if(群发数量.statusCode == 200){
		    var i = 群发数量.body.string();
	    }
	}catch(e){
		console.log("网络异常2："+e)
	}
	
	
	
	
	log("i="+i);
	log("length="+群名.length);
	
	if(i == 群名.length){
		log("归零");
		toast("归零");
		http.get(url+"/wxcx/wx_xcx?mod=0&wx_hao="+ 手机名字);
		confirm("群发完毕！");//对话框
	}else{
		开始转发(i);
	}
}

var xml_txt = "";
var 第一次的名字 = "";
function 开始转发(i){
	找到搜索框 = false;
	log("进入for->群名："+群名[i]);
	if(群名[i] != "" && 群名[i] != null && 群名[i] != "undeflned"){
		toast("正在群发->>>第："+i+" 个群");
		是否点击发送 = false;
		var xml = idContains("ajp").classNameContains("FrameLayout").longClickable(true).findOne(9999);
		if(xml){
			sleep(2222);
			log("新的__找到了xml卡片--文章");
			log("xml:" + xml);
			var xml_text = idContains("aj9").classNameContains("TextView").findOne(555);
			if(xml_text != null && xml_text != "null"){
				log("xml_text:" +xml_text);
			    xml_txt = xml_text.text();
			    log("xml_text.text():" +xml_txt);
			}
			if(寻找文本(xml_txt,"邀请你加入群聊",0) != -1){//找到邀请进群  则
				同意进群(xml);
			}
			xml.longClick();//长按
			log("新的__长按了卡片文章");
			sleep(2222);
			while(!click("发送给朋友"));
			log("发送给朋友");
			if(idContains("b1f").textContains("创建新聊天").findOne(9999)){
				if(idContains("c1_").text("搜索").findOne(9999)){
					sleep(2222);
					idContains("c1_").text("搜索").findOne(9999).parent().parent().click();
					if(classNameContains("EditText").idContains("bem").text("搜索").findOne(9999)){
						sleep(2222);
						找到搜索框 = true;
					}
				}
			}
		}
	}
	if(找到搜索框 == true){
		var 搜索框 = classNameContains("EditText").idContains("bem").findOne(8888);//粘贴
		log("搜索框:"+ 搜索框);
		if(搜索框 != "" && 搜索框 != null && 搜索框 != "undeflned"){
			搜索框.setText(群名[i].trim());
			log("粘贴了：群名");
			toast("粘贴了：群名");
			if(idContains("g2t").textContains(群名[i].trim()).findOne(8888)){
				sleep(2222);
				while(!click(群名[i].trim()));
				//idContains("qm").textContains(群名[i].trim()).findOne(8888).parent().parent().parent().parent().parent().clickable(true).click();
				log("点击了：群名");
				toast("点击了：群名");
				var an = idContains("dj6").text("发送").clickable(true).findOne(8888);
				log("发送按钮："+an);
				if(an != "" && an != null && an != "undeflned"){
					sleep(2222);
					an.click();
					//idContains("b00").textContains("发送").findOne(8888).clickable(true).click();
					
					
					try{
						真正成功的次数 = 真正成功的次数 + 1;
						http.get(url+"/wxcx/wx_xcx?mod=shu&wx_hao="+ 手机名字);
					}catch(e){
						失败 = true;
						console.log("网络异常03："+e)
					}
					if(失败 == true){
						失败 = false
						try{
							真正成功的次数 = 真正成功的次数 + 1;
							http.get(url+"/wxcx/wx_xcx?mod=shu&wx_hao="+ 手机名字);
						}catch(e){
							console.log("网络异常3："+e)
						}
					}
					
					//##################################################
					try{
						if(开始 == 0){
							http.get("http://"+域名+"/wx-xcx/php/tj.php?mod=t&wx_hao="+ 手机名字 +"&xml_txt="+ encodeURI(xcx_txt));
						}else{
							http.get("http://"+域名+"/wx-xcx/php/tj.php?mod=t&wx_hao="+ 手机名字 +"&xml_txt=");
						}
					}catch(e){
						失败 = true;
						console.log("网络异常4："+e)
					}
					if(失败 == true){
						失败 = false
						try{
							if(开始 == 0){
								http.get("http://"+域名+"/wx-xcx/php/tj.php?mod=t&wx_hao="+ 手机名字 +"&xml_txt="+ encodeURI(xcx_txt));
							}else{
								http.get("http://"+域名+"/wx-xcx/php/tj.php?mod=t&wx_hao="+ 手机名字 +"&xml_txt=");
							}
						}catch(e){
							失败 = true;
							console.log("网络异常4："+e)
						}
					}
					是否点击发送 = true;
					log("发送了：文章");
					开始 = 1;
				}
			}
		}
	}
	if(是否点击发送 == false){
		var 是否存在问题 = false;
		if(idContains("dwt").textContains("没有找到").findOne(8888)){
			是否存在问题 = true;
		}
		if(群名[i].length > 10){
			是否存在问题 = true;
		}
		if(第一次的名字 == 群名[i]){
			log("2次没找到："+群名[i]+"-->>>跳过本群");
			是否存在问题 = true;
		}
		第一次的名字 = 群名[i];
		if(是否存在问题 == true){
			try{
				http.get(url+"/wxcx/wx_xcx?mod=shu&wx_hao="+ 手机名字);
			}catch(e){
				console.log("网络异常6："+e)
			}
			延迟();
		}
	}else{
		log("真正成功的次数："+ 真正成功的次数);
	    延迟();
	}
}
function 同意进群(xml){
	var 是否找到加入群聊 = false;
	var 是否找到更多功能 = false;
	var 是否找到你已接受邀请 = false;
	xml.click();//点击进群
	sleep(555);
	
	if(classNameContains("TextView").idContains("text1").textContains("群聊邀请").findOne(6666)){
		sleep(555);
		if(textContains("你已接受邀请").findOne(666)){
		    是否找到你已接受邀请 = true;
	    }
		sleep(555);
		if(textContains("加入群聊").findOne(666)){
			是否找到加入群聊 = true;
		    log("是否找到加入群聊 == true");
		}
	}
	
	
	if(是否找到你已接受邀请 == false && 是否找到加入群聊 == true){
		log("开始：加入群聊");
		while(!click("加入群聊"));
		if(idContains("aja").descContains("更多功能").findOne(1000)){
			是否找到更多功能 = true;
		}
		if(是否找到更多功能 == true){//进群成功
			while(true){//返回
				if(classNameContains("TextView").idContains("text1").textContains("微信(").findOne(600)){
					break;
				}
				sleep(888);
				back();
			}
			if(textContains("拉人进群号").findOne(2222)){
				sleep(666);
				while(!click("拉人进群号"));
				if(idContains("aja").descContains("更多功能").findOne(1111)){
					sleep(666);
					xml.longClick();//长按
					sleep(666);
					while(!click("删除"));
				}
			}
		}
	}
	while(true){//返回
		if(classNameContains("TextView").idContains("text1").textContains("微信(").findOne(600)){
			break;
		}
		sleep(888);
		back();
	}
	if(textContains("拉人进群号").findOne(2222)){
		sleep(666);
		while(!click("拉人进群号"));
		if(idContains("aja").descContains("更多功能").findOne(1111)){
			sleep(666);
			xml.longClick();//长按
			sleep(666);
			while(!click("删除"));
			sleep(666);
			while(!click("删除"));
		}
	}
	同意进群(xml);
}



function 延迟(){
	switch(random(1,3)){
		case 1:
			for(var y=30;y>=0;y--){
				if(random(1,3)==2){
					if(y%2==0){
					    
						toast("还剩->>>"+ y +" 秒");
					}
				}
				sleep(1000);//1000=1秒
			}
			break;
		case 2:
			for(var y=35;y>=0;y--){
				if(random(1,3)==2){
					if(y%2==0){
					    
						toast("还剩->>>"+ y +" 秒");
					}
				}
				sleep(1000);//1000=1秒
			}
			break;
		case 3:
			for(var y=40;y>=0;y--){
				if(random(1,3)==2){
					if(y%2==0){
					    
						toast("还剩->>>"+ y +" 秒");
					}
				}
				sleep(1000);//1000=1秒
			}
			break;
	}
	log("y:"+y);
	if(y==-1){
		循环发送();
	}
}



function 检测异常(){
    if(text("异常退出").exists()){
        log("异常检测：屏幕上存在：异常退出");
        shell("am force-stop com.taobao.taobao",true);//强制结束应用程序
        sleep(1000);
        shell("am start -n com.taobao.taobao/com.taobao.tao.msgcenter.activity.MsgCenterGroupListActivity",true);//跳转到群列表
    }
    if(descContains("我们马上回来").exists()){
        log("检测速度过快：屏幕上存在：休息会呗，坐下来喝口水");
        shell("am force-stop com.taobao.taobao",true);//强制结束应用程序
        sleep(1000);
        shell("am start -n com.taobao.taobao/com.taobao.tao.msgcenter.activity.MsgCenterGroupListActivity",true);//跳转到群列表
    }
}
function 寻找文本(被搜寻的文本,欲寻找的文本,起始位置){
    if((起始位置 < 0) || (起始位置 > 被搜寻的文本.length) || ("".equals(被搜寻的文本)) || ("".equals(欲寻找的文本))){
        return -1;
    }
    return 被搜寻的文本.indexOf(欲寻找的文本, 起始位置);
}
function 子文本替换(待操作文本,欲被替换的子文本,用作替换的子文本){
    return 待操作文本.replace(欲被替换的子文本, 用作替换的子文本);
}
function 取群名文本(待取文本,左边文本,右边文本){
    var wba = 待取文本.indexOf(左边文本);
    var wbb = 待取文本.indexOf(右边文本);
    return 待取文本.substring(wba + 1,wbb);
}
function 取转义文本(待取文本,左边文本,右边文本){
    return 待取文本.substring(待取文本.indexOf(左边文本)+4, 待取文本.lastIndexOf(右边文本));
}
function 取指定文本(待取文本,左边文本,右边文本){
    var pattern = new RegExp(左边文本 + "(.*?)" + 右边文本,"g");
    var result = new Array(0);
    while (pattern.exec(待取文本) != null){
        result.push(RegExp.$1);
    }
    return result;
}
function 取指定文本2(待取文本,左边文本,右边文本){
    var pattern = new RegExp(左边文本 + "(.*?)" + 右边文本,"g");
    var result = new Array(0);
    while (pattern.exec(待取文本) != null){
        result.push(RegExp.$1);
    }
    return result[0];
}
function 获取时间(){
    var today=new Date();
    return today.getHours();
}
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

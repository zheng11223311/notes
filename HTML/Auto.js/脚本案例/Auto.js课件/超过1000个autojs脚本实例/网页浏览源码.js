
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
//源码提取,加密打包,代码解密,还原.微信:zxkj6898 或zx033245 或QQ168196007
"ui";
ui.statusBarColor("#ff555555");
ui.layout(
<frame background="#ff555555">
<vertical align="top" margin="0">
 <linear>
<input id="awz" w="302" bg="#ffffff" h="45" hint="输入网址。"></input>
<button h="55" w="60" id="aok" text="浏览" />
 </linear>
 <linear>
<input id="text" size="8" bg="#ffffff" w="176" h="176" margin="0 1" hint="网页代码区"/>
<webview w="176" h="176" size="6" id="webview" margin="0 1"/>
 </linear>
<text id="axzts" text="..."/>
 <linear>
<input id="ajg" margin="0 1" w="150" bg="#ffffff" h="45" hint="头"></input>
<input id="ajg2" w="150" bg="#ffffff" h="45" hint="尾"/>
<button h="55" w="60" id="ass" text="检索" ></button>
 </linear>  
<input id="ajg0" size="8" bg="#ffffff" hint="检索结果" text="..."/>

</vertical>
</frame>
);
ui.awz.setText("http://www.autojs.org");
ui.ajg.text("href=\"");
ui.ajg2.text("\"");
function awy(url) {
  threads.start(function() {
    try {
      res = http.get(url);
      if (res.statusCode == 200) {
        atext = (res.body.string());
      } else {
        atext = ("请求失败:" + res.statusMessage);
      }
    } catch (e) {
      atext = "请求不到";
    }
    atext0 = 1;
  });
}
atext0 = 0;
ui.aok.click(() => {
  if (atext0 != 2) {
    atext0 = 2;
    url = ui.awz.text();
    ui.webview.loadUrl(url);
    awy(url);
    downloadId = setInterval(() => {
      if (atext0 == 1) {
        atext0 = 0;
        ui.text.text(atext);
        clearInterval(downloadId);
        return;
      }
    }, 10);
  } else {
    ui.text.text("上次获取还没结束，要等待");
  }
});

function cutstr(a, b, c) {
  a = a.split(b);var d="";
  for (i = 1; i < a.length; i++) {
    tmp = a[i].split(c);
    if (tmp.length > 1) {
     d+=tmp[0]+"\n";
    }
  }return d;
}
function actss(){
threads.start(function() {
        at0 =cutstr(atext,ui.ajg.text(),ui.ajg2.text());
          atext0=3;
});
}
ui.ass.click(() => {
  if (atext0 != 2) {
    atext0 = 2;
    url = ui.awz.text();
    awy(url);
    downloadId = setInterval(() => {
      if (atext0 == 1) {
        atext0 = 0;
        actss();
         }
        if(atext0==3){
        ui.ajg0.text(at0);
        clearInterval(downloadId);
        return;
      }
    }, 10);
  } else {
    ui.axzts.text("上次下载还没结束，要等待");
  }
});
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

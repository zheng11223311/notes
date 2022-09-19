
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"ui";
ui.statusBarColor("#ff009688");
ui.layout(
<frame background="#ff009688">
<vertical align="top" margin="5">
<input id="ayuanma" h="60" bg="#ffffff" hint="原代码。"/>
<input id="akey" color="#ffffff" h="50" text="6" hint="密码"></input>
<input id="text" h="315" bg="#ffffff" margin="0 0 0 0" hint="结果代码区"/>
<linear>
<vertical w="170">
<button margin="15 0 0 4" h="160" w="160" id="ajiami" text="运算" size="55"></button>
</vertical>
<vertical>
<linear> 
<button h="60" w="60" id="afuzhi" text="复制结果" ></button>
<button margin="0 0 0 0" h="60" w="60" id="ashang" text="运行输入"></button>
</linear>
<linear>
<button h="60" w="60" id="azuo" text="清空输入" ></button>
<button h="60" w="60" id="aok" text="保存结果" ></button>
<button h="60" w="60" id="ayou" text="清空结果" ></button>
</linear>
<linear>
<button margin="0 0 0 60" h="60" w="60" id="axia" text="运行结果" ></button>
</linear>
</vertical>
</linear>
</vertical>
</frame>
);
c2="";
ui.ayuanma.text("openConsole();//显示控制台,拜见宫主大人 \nconsole.info(\"这是绿色\");//显示");
ui.ashang.click(() => {
try {
engines.execScript("输入代码", "" + ui.ayuanma.text());
} catch (e) {
toast("运行失败");
}
});
ui.ayou.click(() => {
ui.text.text("");
});
ui.afuzhi.click(() => {
setClip(ui.text.text());
toast("拜见宫主大人提示你 复制成功");
});
ui.axia.click(() => {
try {
engines.execScript("结果代码",code());
} catch (e) {
toast("运行失败");
}
});
ui.azuo.click(() => {
ui.ayuanma.text("");
});
ui.aok.click(() => {
path = "/sdcard/脚本/密码是"+ui.akey.text()+"的脚本.js";
file = open(path, "w");
file.write(code());
file.close();
toast("已生成脚本放在：" + path + "");
});
ui.ajiami.click(() => {
c2=encode(ui.ayuanma.text()+"",ui.akey.text()+"");
ui.text.text(c2+"");
});


function code(){
return 'try{code=decode("'+c2+'",prompt("输入密码才能继续"));engines.execScript("已解密",code);}catch(e){alert("密码错误!");}'+decode+md5+randomx;
}//生成代码
function encode(content,password){
content=randomx(4)+content;
var key = javax.crypto.spec.SecretKeySpec(md5(password), "AES");
var cipher = javax.crypto.Cipher.getInstance("AES/CBC/PKCS5Padding");
var byteContent = java.lang.String(content).getBytes();
cipher.init(javax.crypto.Cipher.ENCRYPT_MODE, key,javax.crypto.spec.IvParameterSpec(md5(password.length)));
var result = java.lang.String(android.util.Base64.encode(cipher.doFinal(byteContent),0));
return result.replace('\n', '');
}//加密

function decode(content,password){
var key = javax.crypto.spec.SecretKeySpec(md5(password), "AES");
var cipher = javax.crypto.Cipher.getInstance("AES/CBC/PKCS5Padding");
var byteContent =android.util.Base64.decode(content,0);
cipher.init(javax.crypto.Cipher.DECRYPT_MODE, key,javax.crypto.spec.IvParameterSpec(md5(password.length)));               
var result =java.lang.String(cipher.doFinal(byteContent));
return result.substring(4,result.length());
}//解密
function md5(str){
var md5 = java.security.MessageDigest.getInstance("MD5");
md5.update(java.lang.String(str).getBytes());
return md5.digest();
}
function randomx(n){
var str="";
for(var i=0;i<n;i++){
str+=String.fromCharCode(random(0,65535));
}
return str;
}//随机字符串
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

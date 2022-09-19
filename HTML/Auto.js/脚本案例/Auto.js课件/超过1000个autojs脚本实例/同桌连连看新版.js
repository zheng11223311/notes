
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
requestScreenCapture();
n=0;v=0;
var window = floaty.window(
    <frame>
        <button id="action" text="快连" w="90" h="40" color="#ffffff" bg="#77000000"/>
    </frame>
);
akz=0;jiaqun();jqyz=0;
setInterval(()=>{
if(jqyz==0){
    ui.run(function(){
    window.action.setText('请稍等');
    });
n=device.width/1080;
v=device.height/1920;
    jiaqun();jqyz=1;
ui.run(function(){
    window.action.setText('快连');
});
}
if(akz==0){
     ui.run(function(){
    window.action.setText('快连');akz=1;});
}
}, 100);

var execution = null;

//记录按键被按下时的触摸坐标
var x = 0, y = 0;
//记录按键被按下时的悬浮窗位置
var windowX, windowY;
//记录按键被按下的时间以便判断长按等动作
var downTime;
window.action.setOnTouchListener(function(view, event){
      switch(event.getAction()){
        case event.ACTION_DOWN:
            x = event.getRawX();
            y = event.getRawY();
            windowX = window.getX();
            windowY = window.getY();
            downTime = new Date().getTime();
            return true;
        case event.ACTION_MOVE:
            //移动手指时调整悬浮窗位置
            window.setPosition(windowX + (event.getRawX() - x),
                windowY + (event.getRawY() - y));
            
            return true;
        case event.ACTION_UP:
            //手指弹起时如果偏移很小则判断为点击
            if(Math.abs(event.getRawY() - y) < 5 && Math.abs(event.getRawX() - x) < 5){
                
   if(window.action.text()=="快连"){ 
       window.action.setText('消除中');
       threads.start(function(){
    pa();
    });
   }
                
            
            }
            return true;
         }      
    return true;
});








function pa(){
acs();
main();akz=0;
function ꕔ() {
while (true) {
if (ꕕ = captureScreen()) {
return ꕕ;
break;
}
}
}
function ꕙ() {
for (ꕖ = 0; ꕖ <= a0l; ꕖ++) {
for (ꕘ = 0; ꕘ <= a1l; ꕘ++) {
ꕚ = -10523472;
ꕛ = ꕞ[ꕖ][ꕘ];
if (Math.abs(colors.red(ꕚ) - colors.red(ꕛ)) < ꕒ && Math.abs(colors.green(ꕚ) - colors.green(ꕛ)) < ꕒ && Math.abs(colors.blue(ꕚ) - colors.blue(ꕛ)) < ꕒ) {
ꕟ[ꕖ][ꕘ] = 0;
}
}
}
}
function ꕦ(ꕠ, ꕡ, ꕢ, ꕤ) {
if (ꕠ == ꕢ) {
ꕣ = (ꕡ - ꕤ) / (Math.abs(ꕡ - ꕤ));
for (ꕥ = ꕤ + ꕣ; ꕥ != ꕡ; ꕥ += ꕣ) {
if (ꕟ[ꕠ][ꕥ] != 0) {
return false;
}
}
}
if (ꕡ == ꕤ) {
ꕣ = (ꕠ - ꕢ) / (Math.abs(ꕠ - ꕢ));
for (ꕥ = ꕢ + ꕣ; ꕥ != ꕠ; ꕥ += ꕣ) {
if (ꕟ[ꕥ][ꕡ] != 0) {
return false;
}
}
}
if (ꕠ != ꕢ && ꕡ != ꕤ) {
return false;
}
return true;
}
function ꕧ(ꕧ1, ꕧ2, ꕧ3, ꕧ4) {
if (ꕟ[ꕧ1][ꕧ4] == 0) {
if (ꕦ(ꕧ1, ꕧ4, ꕧ1, ꕧ2) && ꕦ(ꕧ1, ꕧ4, ꕧ3, ꕧ4)) {
return true;
}
}
if (ꕟ[ꕧ3][ꕧ2] == 0) {
if (ꕦ(ꕧ3, ꕧ2, ꕧ1, ꕧ2) && ꕦ(ꕧ3, ꕧ2, ꕧ3, ꕧ4)) {
return true;
}
}
return false;
}
function ꕨ(ꕨ1, ꕨ2, ꕨ3, ꕨ4) {
if (ꕨ1 == 0 && ꕨ3 == 0) {
return true;
}
if (ꕨ1 == a0l && ꕨ3 == a0l) {
return true;
}
if (ꕨ2 == 0 && ꕨ4 == 0) {
return true;
}
if (ꕨ2 == a1l && ꕨ4 == a1l) {
return true;
}
for (ꕨ5 = 0; ꕨ5 <= a0l; ꕨ5++) {
if (ꕟ[ꕨ5][ꕨ2] == 0 && ꕦ(ꕨ5, ꕨ2, ꕨ1, ꕨ2) && ꕧ(ꕨ5, ꕨ2, ꕨ3, ꕨ4)) {
return true;
}
}
for (ꕨ5 = 0; ꕨ5 <= a1l; ꕨ5++) {
if (ꕟ[ꕨ1][ꕨ5] == 0 && ꕦ(ꕨ1, ꕨ5, ꕨ1, ꕨ2) && ꕧ(ꕨ1, ꕨ5, ꕨ3, ꕨ4)) {
return true;
}
}
if (ꕟ[0][ꕨ2] == 0 && ꕟ[0][ꕨ4] == 0 && ꕦ(0, ꕨ2, ꕨ1, ꕨ2) && ꕦ(0, ꕨ4, ꕨ3, ꕨ4)) {
return true;
}
if (ꕟ[a0l][ꕨ2] == 0 && ꕟ[a0l][ꕨ4] == 0 && ꕦ(a0l, ꕨ2, ꕨ1, ꕨ2) && ꕦ(a0l, ꕨ4, ꕨ3, ꕨ4)) {
return true;
}
if (ꕟ[ꕨ1][0] == 0 && ꕟ[ꕨ3][0] == 0 && ꕦ(ꕨ1, 0, ꕨ1, ꕨ2) && ꕦ(ꕨ3, 0, ꕨ3, ꕨ4)) {
return true;
}
if (ꕟ[ꕨ1][a1l] == 0 && ꕟ[ꕨ3][a1l] == 0 && ꕦ(ꕨ1, a1l, ꕨ1, ꕨ2) && ꕦ(ꕨ3, a1l, ꕨ3, ꕨ4)) {
return true;
}
return false;
}
function ꕩ(ꕩ1, ꕩ2, ꕩ3, ꕩ4) {
if (ꕦ(ꕩ1, ꕩ2, ꕩ3, ꕩ4) || ꕧ(ꕩ1, ꕩ2, ꕩ3, ꕩ4) || ꕨ(ꕩ1, ꕩ2, ꕩ3, ꕩ4)) {
return true;
}
}
function abs(a7, a8, a9, a10) {
a11 = ꕞ[a7][a8];
a12 = ꕞ[a9][a10];
if (Math.abs(colors.red(a11) - colors.red(a12)) < ꕒ && Math.abs(colors.green(a11) - colors.green(a12)) < ꕒ && Math.abs(colors.blue(a11) - colors.blue(a12)) < ꕒ) {
return true;
} else {
return false;
}
}
function acs(){
ꕒ = 30;
ꕓ = 1;
a0 = [113,255,397,539,681,823,966];
a1 = [306,445,585,725,865,1004,1144,1284,1424,1564];
a0l=a0.length-1;
a1l=a1.length-1;
for (ꕖ = 0; ꕖ <= a0l; ꕖ++) {
    a0[ꕖ]=a0[ꕖ]*n;
}
for (ꕘ = 0; ꕘ <= a1l; ꕘ++) {
a1[ꕘ]=a1[ꕘ]*v;
}
ꕞ = new Array();
ꕟ = new Array();
for (ꕖ = 0; ꕖ <= a0l; ꕖ++) {
ꕞ[ꕖ] = new Array();
ꕟ[ꕖ] = new Array();
}}
function f0(f1){
for (ꕖ = 0; ꕖ <= a0l; ꕖ++) {
for (ꕘ = 0; ꕘ <= a1l; ꕘ++) {
if (ꕟ[ꕖ][ꕘ] != 0) {
for (ꕪ = 0; ꕪ <= a0l; ꕪ++) {
for (ꕫ = 0; ꕫ <= a1l; ꕫ++) {
if ((ꕖ != ꕪ || ꕘ != ꕫ) && ꕟ[ꕖ][ꕘ] == ꕟ[ꕪ][ꕫ] && ꕟ[ꕖ][ꕘ] != 0) {
if (eval(f1)) {
press(a0[ꕖ], a1[ꕘ], ꕓ);
press(a0[ꕪ], a1[ꕫ], ꕓ);
ae++;e++;
ꕟ[ꕖ][ꕘ] = 0;
ꕟ[ꕪ][ꕫ] = 0;
}
}
}
}
}
}
}
}
function main(){
apc=ꕔ();
ae=0;
for (ꕖ = 0; ꕖ <= a0l; ꕖ++) {
for (ꕘ = 0; ꕘ <= a1l; ꕘ++) {
ꕞ[ꕖ][ꕘ] = images.pixel(apc, a0[ꕖ], a1[ꕘ])
}
}
b0 = 1;
for (ꕖ = 0; ꕖ <= a0l; ꕖ++) {
for (ꕘ = 0; ꕘ <= a1l; ꕘ++) {
if (ꕟ[ꕖ][ꕘ] == null) {
ꕟ[ꕖ][ꕘ] = b0;
b0++;
for (ꕪ = 0; ꕪ <= a0l; ꕪ++) {
for (ꕫ = 0; ꕫ <= a1l; ꕫ++) {
if (abs(ꕖ, ꕘ, ꕪ, ꕫ)) {
ꕟ[ꕪ][ꕫ] = ꕟ[ꕖ][ꕘ];
}
}
}
}
}
}
//ꕙ();
while (true) {
e = 0;
f0("ꕦ(ꕖ, ꕘ, ꕪ, ꕫ)");
if (e == 0) {
f0("ꕧ(ꕖ, ꕘ, ꕪ, ꕫ)");
}
if (e == 0) {
f0("ꕨ(ꕖ, ꕘ, ꕪ, ꕫ)");
}
if (e == 0) {
break;
}
}
}
function qs(i0,i1){
return images.pixel(ꕔ(), i0, i1)
}


}


function jiaqun(){
app.startActivity({
    action: "android.intent.action.VIEW",
    data:"mqqapi://card/show_pslcard?uin=3194096648",
    packageName: "com.tencent.mobileqq",
});

while(true){
var c=packageName("com.tencent.mobileqq").className("android.widget.FrameLayout").id("name").descEndsWith("点击可赞").find();
sleep(100);
if(c.empty()){
  
   var c=packageName("com.tencent.mobileqq").className("android.widget.FrameLayout").id("name").descEndsWith("你已赞过").find();
if(c.empty()){}else{
    log("今天已赞过");
break;
}
}else{
log("帮我点赞中");
for(i=0;i<10;i++){
while(!c.click());
}
   break;
}
}

app.startActivity({
    action: "android.intent.action.VIEW",
    data:"mqqapi://card/show_pslcard?card_type=group&uin=679039516",
    packageName: "com.tencent.mobileqq",
});//打开qq群名片

while(true){
sleep(100);
var c=packageName("com.tencent.mobileqq").className("android.widget.Button").id("name").text("申请加群").find();
if(c.empty()){
c=packageName("com.tencent.mobileqq").className("android.widget.Button").id("name").text("发消息").find();
if(c.empty()){}else{
c.click();break;
}
}else{
c.click();break;
}
}

}


//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

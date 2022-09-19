
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
requestScreenCapture();

function ꕔ() {
  while (true) {
    if (ꕕ = captureScreen()) {
      return ꕕ;
    }
  }
}

function akzt() {
  new java.lang.Thread(function() {
    packageName("com.stardust.scriptdroid").className("android.widget.EditText").setText("80");
  }).start();
  atime = console.rawInput("点击确定开始执行\nQQ:787067033", "");
}

function qs(i0, i1, p) {
  return images.pixel(p, i0, i1);
}
function apd(y,i){
if(qs(848,y,p)!=-986896){
    b0x[i]=299;
}
if(qs(299,y,p)!=-986896){
    b0x[i]=848;
}
}

while (true) {
  akzt();
b0x = new Array();
for (i = 0; i < 300; i++) {
  b0x[i] = 0;
}
p=ꕔ();
apd(918,0);
apd(516,1);
apd(115,2);
  a0 = 0;
  a1 = 0;
  a2 = 3;
ai=0;
while(qs(770, 747, ꕔ()) != -986896);
while(ai<200){  
p = ꕔ();
      if (qs(848, 243, p) != -986896) { //非白
          if (a0 != 1) { //上次是白
          a0 = 1;
          b0x[a2] = 299;
          a2++;
        }
      } else {
        a0 = 0;
      } //右边上取色判断
      if (qs(299, 243, p) != -986896) { //非白
        if (a1 != 1) { //上次是白
          a1 = 1;
          b0x[a2] = 848;
          a2++;
        }
      } else {
        a1 = 0;
      } //左边上取色判断
    if (qs(484, 401, p) != -986896) {
    break;
    }//结束
if(b0x[ai]!=0){
press(b0x[ai],1250,1);ai++;}
}
}
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

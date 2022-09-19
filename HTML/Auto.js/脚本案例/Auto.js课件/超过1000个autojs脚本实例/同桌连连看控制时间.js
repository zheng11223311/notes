
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

requestScreenCapture();
ꕒ = 30;
ꕓ = 1;
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
a0 = [113,255,397,539,681,823,966];
a1 = [306,445,585,725,865,1004,1144,1284,1424,1564];
a0l=a0.length-1;
a1l=a1.length-1;
ꕞ = new Array();
ꕟ = new Array();
for (ꕖ = 0; ꕖ <= a0l; ꕖ++) {
ꕞ[ꕖ] = new Array();
ꕟ[ꕖ] = new Array();
}}
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
for (ꕖ = 0; ꕖ <= a0l; ꕖ++) {
for (ꕘ = 0; ꕘ <= a1l; ꕘ++) {
if (ꕟ[ꕖ][ꕘ] != 0) {
for (ꕪ = 0; ꕪ <= a0l; ꕪ++) {
for (ꕫ = 0; ꕫ <= a1l; ꕫ++) {
if ((ꕖ != ꕪ || ꕘ != ꕫ) && ꕟ[ꕖ][ꕘ] == ꕟ[ꕪ][ꕫ] && ꕟ[ꕖ][ꕘ] != 0) {
if (ꕩ(ꕖ, ꕘ, ꕪ, ꕫ)) {
swipe(a0[ꕖ], a1[ꕘ], a0[ꕖ], a1[ꕘ], ꕓ);
swipe(a0[ꕪ], a1[ꕫ], a0[ꕪ], a1[ꕫ], ꕓ);
ae++;
if(ae==34){while((new Date()).getTime()-e0<atime);}e++;
ꕟ[ꕖ][ꕘ] = 0;
ꕟ[ꕪ][ꕫ] = 0;
}
}
}
}
}
}
}
if (e == 0) {
break;
}
}
}
function akzt() {
new java.lang.Thread(function() {
packageName("com.stardust.scriptdroid").className("android.widget.EditText").setText("14040");
}).start();
atime=console.rawInput("点击确定开始执行\nQQ:787067033", "")-180;
}
function qs(i0,i1){
return images.pixel(ꕔ(), i0, i1)
}
while(true){
akzt();
acs();
while(qs(467,958)!=-4399631);

e0=(new Date()).getTime();
main();
e1=(new Date()).getTime();
console.info("用时:"+(e1-e0)+"毫秒");
}
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

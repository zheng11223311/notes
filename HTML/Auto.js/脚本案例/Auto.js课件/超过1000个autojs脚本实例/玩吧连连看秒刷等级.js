
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

requestScreenCapture();
ꕒ = 20;
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
for (ꕖ = 0; ꕖ <= 6; ꕖ++) {
for (ꕘ = 0; ꕘ <= 9; ꕘ++) {
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
if (ꕨ1 == 6 && ꕨ3 == 6) {
return true;
}
if (ꕨ2 == 0 && ꕨ4 == 0) {
return true;
}
if (ꕨ2 == 9 && ꕨ4 == 9) {
return true;
}
for (ꕨ5 = 0; ꕨ5 <= 6; ꕨ5++) {
if (ꕟ[ꕨ5][ꕨ2] == 0 && ꕦ(ꕨ5, ꕨ2, ꕨ1, ꕨ2) && ꕧ(ꕨ5, ꕨ2, ꕨ3, ꕨ4)) {
return true;
}
}
for (ꕨ5 = 0; ꕨ5 <= 9; ꕨ5++) {
if (ꕟ[ꕨ1][ꕨ5] == 0 && ꕦ(ꕨ1, ꕨ5, ꕨ1, ꕨ2) && ꕧ(ꕨ1, ꕨ5, ꕨ3, ꕨ4)) {
return true;
}
}
if (ꕟ[0][ꕨ2] == 0 && ꕟ[0][ꕨ4] == 0 && ꕦ(0, ꕨ2, ꕨ1, ꕨ2) && ꕦ(0, ꕨ4, ꕨ3, ꕨ4)) {
return true;
}
if (ꕟ[6][ꕨ2] == 0 && ꕟ[6][ꕨ4] == 0 && ꕦ(6, ꕨ2, ꕨ1, ꕨ2) && ꕦ(6, ꕨ4, ꕨ3, ꕨ4)) {
return true;
}
if (ꕟ[ꕨ1][0] == 0 && ꕟ[ꕨ3][0] == 0 && ꕦ(ꕨ1, 0, ꕨ1, ꕨ2) && ꕦ(ꕨ3, 0, ꕨ3, ꕨ4)) {
return true;
}
if (ꕟ[ꕨ1][9] == 0 && ꕟ[ꕨ3][9] == 0 && ꕦ(ꕨ1, 9, ꕨ1, ꕨ2) && ꕦ(ꕨ3, 9, ꕨ3, ꕨ4)) {
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
function main(){
a0 = [108,250,393,535,678,820,963];
a1 = [530, 672, 815, 958, 1100, 1243, 1386, 1528, 1671, 1814];
ꕞ = new Array();
ꕟ = new Array();
for (ꕖ = 0; ꕖ <= 6; ꕖ++) {
ꕞ[ꕖ] = new Array();
ꕟ[ꕖ] = new Array();
for (ꕘ = 0; ꕘ <= 9; ꕘ++) {
ꕞ[ꕖ][ꕘ] = images.pixel(ꕔ(), a0[ꕖ], a1[ꕘ])
}
}
b0 = 1;
for (ꕖ = 0; ꕖ <= 6; ꕖ++) {
for (ꕘ = 0; ꕘ <= 9; ꕘ++) {
if (ꕟ[ꕖ][ꕘ] == null) {
ꕟ[ꕖ][ꕘ] = b0;
b0++;
for (ꕪ = 0; ꕪ <= 6; ꕪ++) {
for (ꕫ = 0; ꕫ <= 9; ꕫ++) {
if (abs(ꕖ, ꕘ, ꕪ, ꕫ)) {
ꕟ[ꕪ][ꕫ] = ꕟ[ꕖ][ꕘ];
}
}
}
}
}
}
ꕙ();
while (true) {
e = 0;
for (ꕖ = 0; ꕖ <= 6; ꕖ++) {
for (ꕘ = 0; ꕘ <= 9; ꕘ++) {
if (ꕟ[ꕖ][ꕘ] != 0) {
for (ꕪ = 0; ꕪ <= 6; ꕪ++) {
for (ꕫ = 0; ꕫ <= 9; ꕫ++) {
if ((ꕖ != ꕪ || ꕘ != ꕫ) && ꕟ[ꕖ][ꕘ] == ꕟ[ꕪ][ꕫ] && ꕟ[ꕖ][ꕘ] != 0) {
if (ꕩ(ꕖ, ꕘ, ꕪ, ꕫ)) {
swipe(a0[ꕖ], a1[ꕘ], a0[ꕖ], a1[ꕘ], ꕓ);
swipe(a0[ꕪ], a1[ꕫ], a0[ꕪ], a1[ꕫ], ꕓ);
e++;
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
function capturescreen() {
while (true) {
if (a0 = captureScreen()) {
return a0;
break;
}
}
}
function qs(i0,i1){
return images.pixel(capturescreen(), i0, i1)
}
while(true){
packageName("com.wodi.who").id("game_title").text("一起连连看").findOne().parent().click();
packageName("com.wodi.who").id("begin_match_btn").click();
while(true){
sleep(100);
if(qs(608,934)==-12926225){log("就是这里");break;}
}
main();
while(true){
sleep(100);
if(qs(547,733)==-2692097){log("其他游戏");break;}
}
click(298,1515);
bounds(0,54,168,198).findOne().click();
bounds(753,1080,849,1145).findOne().click();
}

//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

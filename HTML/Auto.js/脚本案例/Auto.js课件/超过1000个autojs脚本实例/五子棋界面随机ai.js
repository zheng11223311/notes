
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
"ui";
aacs();
ui.statusBarColor("#009900");
ui.layout(
    <frame background="#009900">
    <vertical align="top" margin="5">
		
       <text id="text" gravity="center" bg="#ffffff" h="430"color="#111111" size="10"></text>
     <linear>
    <vertical w="170">
   
    </vertical>
    <vertical>
    <linear> 
    <button margin="0 0 0 60" h="60" w="60" id="ashang" text="上"></button>
    </linear>
          <linear>
    <button h="60" w="60" id="azuo" text="左"></button>
    <button h="60" w="60" id="aok" text="ok"></button>
    <button h="60" w="60" id="ayou" text="右"></button>
    </linear>
        <linear>
    <button margin="0 0 0 60" h="60" w="60" id="axia" text="下"></button>
    </linear>
          </vertical>
    </linear>
    </vertical>
    </frame>
);
ui.text.text(aahz());
ui.ashang.click(() => {abcz(2);ui.text.text(aahz());});
ui.ayou.click(() => {abcz(6);ui.text.text(aahz());});
ui.axia.click(() => {abcz(8);ui.text.text(aahz());});
ui.azuo.click(() => {abcz(4);ui.text.text(aahz());});
ui.aok.click(() => {
            b0wo();   
});
function aacs(){
aa0=new Array();
aa1=30;
aa2=30;
ab1=15;
ab2=15;
for(i0=0;i0<=aa1;i0++){
aa0[i0]=new Array();
for(i1=0;i1<=aa2;i1++){
aa0[i0][i1]="┼";
}
}
aab="◎";
}//初始化棋盘
function aahz(){
aa3="";
for(i0=0;i0<=aa2;i0++){
for(i1=0;i1<=aa1;i1++){
if(i1==ab1&&i0==ab2){
if(aa0[i1][i0]=="┼"){
aab="◎";
}else if(aa0[i1][i0]=="●"){
aab="◉";
}else if(aa0[i1][i0]=="○"){
aab="☯";
}
aa3=aa3+aab;
aab="┼";
}else{
aa3=aa3+aa0[i1][i0];}
}
aa3=aa3+"\n";
}
return aa3;
}//返回整张棋盘数据
function abcz(ab0){
if(ab0==2){
if(ab2>0){ab2--;}
}
if(ab0==6){
if(ab1<aa1){ab1++;}
}
if(ab0==8){
if(ab2<aa2){ab2++;}
}
if(ab0==4){
if(ab1>0){ab1--;}
    }
if(ab0==5){
if(aa0[ab1][ab2]=="┼"){aa0[ab1][ab2]="○";aab="◌";return true;}
}
if(ab0==1){
if(aa0[ab1][ab2]=="┼"){aa0[ab1][ab2]="●";aab="◉";return true;}
}
if(ab0==3){
setClip(aahz());return true;
}
return false;
}//操作◌○◉●
function b0wo(){
if(abcz(1)){ui.text.text(aahz());
c0=setInterval(()=>{
b0ai();
    clearInterval(c0);return;
    }, 10);  }

}
function b0ai(){
while(true){
d0=random(0,aa1);d1=random(0,aa2);
if(aa0[d0][d1]=="┼"){d2=ab1;d3=ab2;ab1=d0;ab2=d1;abcz(5);ui.text.text(aahz());ab1=d2;ab2=d3;break;}}
}
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

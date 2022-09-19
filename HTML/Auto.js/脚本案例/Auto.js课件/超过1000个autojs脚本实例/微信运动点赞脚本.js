
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
//微信6.6.1 运动点赞 autojs3.0   
//可设置最低步数1月1日

"auto";
//===========微信版本不同可能id不同===用了5个id==//
a我的名次id="b14";
a排行榜id="b0z"
a红心灰心id="b12";//提取的范围包含了红心的个数
a邀请朋友id="b0r";//最底端的条件
alist_id="b0u";//listview的id可以滑动
a步数="azt";
//===========下面不用修改。。开始//============微信打开到点赞页即可=======//
launchApp("微信");
sleep(4000);
id我的名次=id(a我的名次id).findOne();//第n名
var str=id我的名次.text();
var bushu=0;
 //从存储中读取系数
    var storage = storages.create("org.autojs.wxyundong");
    bushu = storage.get("bushu", bushu);
    //让用户输入系数
    bushu = dialogs.input("设置最低步数", bushu);
    storage.put("bushu", bushu); 
//int我的名次=str.substring(1,str.length()-1);

toast("开始点赞");

while(1)
{
排行榜=id(a排行榜id).find();//排行榜的名次id

排行榜.each(function(o){ 
if(o.text()!="" && (("第"+parseInt(o.text())+"名")!=str) )

{
点赞= o.parent().parent().parent().findOne(id(a红心灰心id));//点赞红心id
步数= o.parent().parent().parent().findOne(id(a步数));
    
  if(步数.text()>10000) {
      if(点赞!=null)点赞.click();
  }
  else
        {
            toast("点赞完成");
            exit();
         }
}

});

//id("b0e").scrollForward();
sleep(20);
if(id(a邀请朋友id).text("邀请朋友").exists()){//最下面的字邀请朋友的id
toast("点赞完成");
break;

}

sleep(200);
id(alist_id).scrollForward();
sleep(600);

}


//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

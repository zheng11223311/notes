
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
//auto();//不太好用
//autojs交流群,脚本代码还原,代码加密，脚本破解，代码分享,脚本定制！
//1群:168196007 
//2群:830810438 
//3群:571854376 
//4群:63732194
//5群:592916456
auto. waitFor();
var pinglun=["可爱","真好看","女神","好好看","好美","真美","可爱的小姐姐","我爱你","好美腻", 
            "小姐姐","娶你","喜欢你","老婆","喜欢","太美了","我爱你","爱了","美女","这女的挺好看的"];
 var indexcount=0;
 sleep(1000);
var packname=app.getPackageName("快手极速版");
launch(packname);
sleep(2000);
while(true)
{
    jiayou();
      sleep(16*1000);
        swipe(506,1751,506,247,400);
     var chongbo=text("点击重播"). findOne(300);
     if(chongbo)
     {
         chongbo.click();
          swipe(506,1751,506,247,400);
        }
    var rand=random(0,100);
    if(random>10)
    {
     var zan=id("like_button"). className("android.widget.LinearLayout").find();
     if(zan[1]. selected()==false)
     {
       zan[1]. click();
     }
    }
    // var hongbao=id("redFloat").findOne();
     // hongbao. click();
      //sleep(1000);
      //id("left_btn"). className("android.widget.FrameLayout"). findOne(). click();
   indexcount++;
   if(indexcount>=20)
   {
       indexcount=0;
       className("android.view.View"). clickable(true). focusable(true). selected(true). findOne().click();
      }
  }
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

  function jiayou()
  {
     let count=0,index=-1;
     var point=id("comment_button"). className("android.widget.LinearLayout").find();
     if(point. length>0)
     {
     point[1].click();//评论的按钮
     sleep(500);
    }
    let txtview=text("仅作者关注的人可评论"). findOne(250);
    if(txtview)
    { 
          id("comment_header"). className("android.widget.RelativeLayout"). findOne().click();
          return;
       }
    while(count<3)
    {
     var txts=id("comment").className("android.widget.TextView"). find();
     txts.forEach((Id)=>{
         let txt=Id.text();
         for(let i=0;i<pinglun. length;i++)
         {
             sleep(10);
             if(index==-1)
             { 
                 index=txt.indexOf(pinglun[i]);
              }
           }
         });

      if(index!=-1)
      {break;}
         swipe(538,2012,594,986,500);
         count++;
         sleep(600);
      }
      sleep(400);
       let xiala=id("comment_header"). className("android.widget.RelativeLayout").findOne(300);
        if(xiala)
        {xiala. click();sleep(390);}
      if(index!=-1)
      {
          let guanzhu=id("nebula_thanos_bottom_follow_button_layout").className("android.widget.RelativeLayout"). find();
     
          if(guanzhu.length>0)
          {
              guanzhu[1].click();
            }
        }
   }
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

//auto();//不太好用
auto. waitFor();
var pinglun=["可爱","真好看","女神","好好看","好美","真美","可爱的小姐姐","我爱你","好美腻", 
            "小姐姐","娶你","喜欢你","老婆","喜欢","太美了","我爱你","爱了","美女","这女的挺好看的"];
 var indexcount=0;
 sleep(1000);
var packname=app.getPackageName("快手极速版");
launch(packname);
sleep(2000);
while(true)
{
    jiayou();
      sleep(16*1000);
        swipe(506,1751,506,247,400);
     var chongbo=text("点击重播"). findOne(300);
     if(chongbo)
     {
         chongbo.click();
          swipe(506,1751,506,247,400);
        }
    var rand=random(0,100);
    if(random>10)
    {
     var zan=id("like_button"). className("android.widget.LinearLayout").find();
     if(zan[1]. selected()==false)
     {
       zan[1]. click();
     }
    }
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!

    // var hongbao=id("redFloat").findOne();
     // hongbao. click();
      //sleep(1000);
      //id("left_btn"). className("android.widget.FrameLayout"). findOne(). click();
   indexcount++;
   if(indexcount>=20)
   {
       indexcount=0;
       className("android.view.View"). clickable(true). focusable(true). selected(true). findOne().click();
      }
  }

  function jiayou()
  {
     let count=0,index=-1;
     var point=id("comment_button"). className("android.widget.LinearLayout").find();
     if(point. length>0)
     {
     point[1].click();//评论的按钮
     sleep(500);
    }
    let txtview=text("仅作者关注的人可评论"). findOne(250);
    if(txtview)
    { 
          id("comment_header"). className("android.widget.RelativeLayout"). findOne().click();
          return;
       }
    while(count<3)
    {
     var txts=id("comment").className("android.widget.TextView"). find();
     txts.forEach((Id)=>{
         let txt=Id.text();
         for(let i=0;i<pinglun. length;i++)
         {
             sleep(10);
             if(index==-1)
             { 
                 index=txt.indexOf(pinglun[i]);
              }
           }
         });

      if(index!=-1)
      {break;}
         swipe(538,2012,594,986,500);
         count++;
         sleep(600);
      }
      sleep(400);
       let xiala=id("comment_header"). className("android.widget.RelativeLayout").findOne(300);
        if(xiala)
        {xiala. click();sleep(390);}
      if(index!=-1)
      {
          let guanzhu=id("nebula_thanos_bottom_follow_button_layout").className("android.widget.RelativeLayout"). find();
     
          if(guanzhu.length>0)
          {
              guanzhu[1].click();
            }
        }
   }
//autojs交流群,脚本代码还原,代码分享！群号:168196007 脚本分享高级群:1036477155 此群为收费群!
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

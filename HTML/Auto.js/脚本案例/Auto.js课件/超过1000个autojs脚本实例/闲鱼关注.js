
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

/**
 * 作者: 布衣
 * QQ:   313118583
 * 功能: 闲鱼关注引流
 * 
 * 仅供交流学习 请勿用于非法用途

   */
"auto";
requestScreenCapture();
while(true){
//////////遍历商品标题
var uc = id("avatar").boundsInside(0, id("fake_condition_tab_view").findOne(800).bounds().bottom, device.width,className("android.widget.RelativeLayout").depth(5).findOne().bounds().bottom ).find();
for(var i = 1; i <uc.length-1 ; i++){
    var tv = uc[i];
    if(tv){
    click(random(tv.bounds().left,tv.bounds().centerX()),random(tv.bounds().top,tv.bounds().bottom))
        sleep(random(2500,3500))
        var  淘宝直通车=text("快递: 免运费").findOne(800)
        if(淘宝直通车){
            toastLog("进入淘宝广告了返回")
            back()
        sleep(random(2500,3500))
        }else{
            点击发布人头像()
            判断关注()
        }
    }
}

滑动下一页()

}
//////////////////滑动下一页
function 滑动下一页(){
    var x1=parseInt(random(device.width/3,device.width/1.5));
    var y1=parseInt(random(device.height/1.16,device.height/1.1));
    var x2=parseInt(random(device.width/3,device.width/1.5));
    var y2=parseInt(random(device.height/13,device.height/12)) ;
    sml_move(x1,y1 , x2,y2 ,random(800,1500) )
    toastLog("滑动下一页")
    sleep(random(2500,3500))
    }
    //////////////////点击发布人头像
    function 点击发布人头像(){
        var  头像=textContains("发布于").findOne(800)
        toastLog("点击"+头像.text().split("\n")[0]+"头像")
        var x1=头像.bounds().left
        var x2=头像.bounds().centerX()
        var y1=头像.bounds().top
        var y2=头像.bounds().bottom
        click(random(x1,x2),random(y1,y2))
        sleep(random(2500,3500))
    }
    ///////////////////判断是否关注
    function 判断关注(){
        var img = images.read("./关注.png");
        //截图并找图
        var p = findImage(captureScreen(), img, {
            threshold: 0.8
        });
        if(p){
            toastLog("未关注点击关注")
            log(p.x,p.y)
            click(p.x+random(0,5),p.y+random(0,5))
            sleep(random(2500,3500))
        }else{
            toast("已关注返回商品列表");
        }
            
        back()
        sleep(random(2500,3500))
        back()
        sleep(random(2500,3500))
    }
    
    
    
    
    
    
    
    
    //////////////////滑动函数////////////////////////
    
    function bezier_curves(cp, t) {
        cx = 3.0 * (cp[1].x - cp[0].x); 
        bx = 3.0 * (cp[2].x - cp[1].x) - cx; 
        ax = cp[3].x - cp[0].x - cx - bx; 
        cy = 3.0 * (cp[1].y - cp[0].y); 
        by = 3.0 * (cp[2].y - cp[1].y) - cy; 
        ay = cp[3].y - cp[0].y - cy - by; 
    
        tSquared = t * t; 
        tCubed = tSquared * t; 
        result = {
            "x": 0,
            "y": 0
        }
        result.x = (ax * tCubed) + (bx * tSquared) + (cx * t) + cp[0].x; 
        result.y = (ay * tCubed) + (by * tSquared) + (cy * t) + cp[0].y; 
        return result; 
    } 
    
    
    
     function sml_move(qx, qy, zx, zy, time) {
        var xxy = [time];
        var point = [];
        var dx0 = {
            "x": qx,
            "y": qy
        }
    
        var dx1 = {
            "x": random(qx - 100, qx + 100),
            "y": random(qy , qy + 50)
        }
        var dx2 = {
            "x": random(zx - 100, zx + 100),
            "y": random(zy , zy + 50),
        }
        var dx3 = {
            "x": zx,
            "y": zy
        }
        for (var i = 0; i < 4; i++) {
    
            eval("point.push(dx" + i + ")");
    
        }
    
        for (let i = 0; i < 1; i += 0.08) {
            xxyy = [parseInt(bezier_curves(point, i).x), parseInt(bezier_curves(point, i).y)]
    
            xxy.push(xxyy);
    
        }
    
        gesture.apply(null, xxy);
    }


  


//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

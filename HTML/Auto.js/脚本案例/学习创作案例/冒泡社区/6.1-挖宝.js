// // 原理:根据细微点得差异
// 挖宝需要从新的开始挖,已经挖过需要点击继续挖宝,重新开始
//存在问题
// 挖错 
// 挖宝点击过快,导致没有被点击   //v
// 出现代金券时,位置变化,思路:可以根据上方分割线是否下移来确定位置变化

////手动设置兼容不同手机的比例  ////
//  1080 1920   1 1
// 1080 2400    1 0.8
function adaption(){
    let w = device.width
    let h = device.height
    // console.log(w,h);
    // 比例 ratio
    // 获取宽度比例 
    w_ratio=1080/w
    // 获取高度比例
    h_ratio=1920/h
    // 返回当前手机适配比例
    // console.log(w_ratio,h_ratio);
    return [w_ratio,h_ratio]
}

let W_H_ratio=adaption()
// console.log(W_H_ratio);
////手动设置兼容不同手机的比例  ////

if(!requestScreenCapture()){
    toast("请求截图失败")
    exit()
}

// // 截图需要时间
sleep(1000)
// // 每场战斗的时间间隔>20s,设置为22s 之后战斗
// let time=new Date().getTime()
// // 战斗胜利,是否可以进入下一局战斗
// var isNextFight=false

// //截图是否正在被使用,避免没有使用完被其他截图使用而导致本截图被销毁
// // false 为异常检测使用,true 为战斗使用
// let noPort=false
// // 是否正常登入
// let isNorlogin=true
// var screen=images.captureScreen()
// // 自动攻击点
// // console.log(colors.toString(images.pixel(screen, 900/W_H_ratio[0], 747/W_H_ratio[1])));
// var color=images.findColorInRegion(screen, "#ffffff",302.7/W_H_ratio[0],532.7/W_H_ratio[1],4, 1, 4)
// console.log(color);




// 抓取井的上一横中间
// #ff6b71ff   蓝色
// 4,1
// 坐标:X:377.65  Y:865.55  ARGB:#fff2f3ff 
// 3,1
// 坐标:X:377.65  Y:758.6 #fff2f3ff
// 3,2
// 坐标:X:569.47  Y:758.6 ARGB:#fff2f3ff    xxxx
// 3,3
// 坐标:X:764.29  Y:758.6 ARGB:#fff2f3ff    xxxx
// 1,1
// 坐标:X:377.65  Y:546.7 ARGB:#fff2f3ff   第一行 yyy
// 1,2
// 坐标:X:569.47  Y:546.7 #fff2f3ff
// 1,3
// 坐标:X:764.29  Y:546.7 #fff2f3ff     第三列  xxx
// 2,1
// 坐标:X:377.65   Y:652.66  ARGB:#fff2f3ff  
// 2,2
// 坐标:X:569.47  Y:652.66  ARGB:#fff2f3ff   第二列 xxx
// 2,3
// 坐标:X:764.29   Y:652.66  ARGB:#fff2f3ff   











// ui 界面
var w = floaty.window(
    <vertical id='box'  bg="#ffffffff">
        <button id="back" >结束挖宝</button>
        <button id="start">开始挖宝</button>
        <button id="over">结束脚本</button>
        <text text=" 脚本制作: " textColor="black"/>
        <text text="踏破盛世得烟火 QQ:2404243334" textColor="black"/>
    </vertical>
);

// 可移动
w.setAdjustEnabled(true)
w.setSize(300,420)

//是否结束挖宝
let isEnd=false
//是否允许点击下一个
let isAllowClickNext=false
w.back.on('click',()=>{
    isEnd=true
})
w.start.on('click',()=>{
    isEnd=false
})
w.over.on('click',()=>{
   engines.stopAll()
})


// 第一行 y 546.7   (1,1.2.3)
// 是否点击过
 var c11=
c12=
c13=
c21=
c22=
c23=
c31=
c32=
c33=
c41=0
// 一次挖宝的次数,当达到9个时,为以挖完
var i=0
while(true){
    if(isEnd){
        i=0;
        toast('需要重新的一局开始')
        continue
    }
            var screen=images.captureScreen() 
            var color11=images.findColorInRegion(screen, "#ff7379ff",377.65/W_H_ratio[0],546.7/W_H_ratio[1],1, 1, 4)
            var color12=images.findColorInRegion(screen, "#ff7379ff",569.47/W_H_ratio[0],546.7/W_H_ratio[1],1, 1, 4)
            var color13=images.findColorInRegion(screen, "#ff7379ff",764.29/W_H_ratio[0],546.7/W_H_ratio[1],1, 1, 4)
            // console.log(color11);
            
            var color21=images.findColorInRegion(screen, "#ff7379ff",377.65/W_H_ratio[0],652.66/W_H_ratio[1],1, 1, 4)
            var color22=images.findColorInRegion(screen, "#ff7379ff",569.47/W_H_ratio[0],652.66/W_H_ratio[1],1, 1, 4)
            var color23=images.findColorInRegion(screen, "#ff7379ff",764.29/W_H_ratio[0],652.66/W_H_ratio[1],1, 1, 4)
            
            var color31=images.findColorInRegion(screen, "#ff7379ff",377.65/W_H_ratio[0],758.6/W_H_ratio[1],1, 1, 4)
            var color32=images.findColorInRegion(screen, "#ff7379ff",569.47/W_H_ratio[0],758.6/W_H_ratio[1],1, 1, 4)
            var color33=images.findColorInRegion(screen, "#ff7379ff",764.29/W_H_ratio[0],758.6/W_H_ratio[1],1, 1, 4)
            
            var color41=images.findColorInRegion(screen, "#ff7379ff",377.65/W_H_ratio[0],863.55/W_H_ratio[1],1, 1, 4)
            
            var colornext=images.findColorInRegion(screen, "#fff70000",410.6/W_H_ratio[0],1004.47/W_H_ratio[1],1, 1, 4)
            // 挖到代金,上方横线位置下移
            var colorgold=images.findColorInRegion(screen, "#ffbcbfbc",520.5/W_H_ratio[0],495.74/W_H_ratio[1],1, 1, 4)
            //发现战斗
            var colorattack=images.findColorInRegion(screen, "#ff636163",888/W_H_ratio[0],1333/W_H_ratio[1],10, 10, 4)

            screen.recycle()
           
            if(colorattack){
                // 战斗中,退出挖宝
                // continue
            //    break
            // exit()
                engines.stopAll()
            }
            // console.log(colorgold);
            if(colorgold=='null'){toast ('存在代金'); continue}
            // console.log(colors.toString(images.pixel(screen, 377.65/W_H_ratio[0], 546.7/W_H_ratio[1])));
                if(i>=9){
                    // 以挖完,停止点击,寻找继续挖宝按钮
                    console.log(i);
                    toast('挖宝结束,等待2s')
                    sleep(2000)
                    if(colornext){
                        // 已挖完
                        i=0
                        toast('以挖完,开始下一次')
                        click(colornext.x,colornext.y)
                    }
                }else{
                    if(color11) {
                        if(c11) break
                        //如果存在没有被点击
                        while (color11) {
                            click(color11.x,color11.y)
                            var screen=images.captureScreen() 
                            var color11=images.findColorInRegion(screen, "#ff7379ff",377.65/W_H_ratio[0],546.7/W_H_ratio[1],1, 1, 4)
                            screen.recycle()
                            console.log(color11);
                            // 不允许点击下一个
                            // isAllowClickNext=false
                        }
                        c11=1
                        i+=1
                        console.log('点击11');
                        // 需要休眠时间.过快会取色点击不准
                        sleep(500)
                        
                    }
                    if(color12) {
                        if(c12) break
                        while (color12) {
                            click(color12.x,color12.y)
                            var screen=images.captureScreen() 
                            var color12=images.findColorInRegion(screen, "#ff7379ff",569.47/W_H_ratio[0],546.7/W_H_ratio[1],1, 1, 4)
                            screen.recycle()
                            
                        }
                        sleep(500)
                        c12=1
                        i+=1
                        console.log('点击12');
                    }
                    if(color13) {
                        if(c13) break
                        while (color13) {
                            click(color13.x,color13.y)
                            var screen=images.captureScreen() 
                            var color13=images.findColorInRegion(screen, "#ff7379ff",764.29/W_H_ratio[0],546.7/W_H_ratio[1],1, 1, 4)
                            screen.recycle()
                        }
                        sleep(500)
                        c13=1
                        i+=1
                        console.log('点击13');
                    }
                    if(color21) {
                        if(c21) break
                        while (color21) {
                            click(color21.x,color21.y)
                            var screen=images.captureScreen() 
                            var color21=images.findColorInRegion(screen, "#ff7379ff",377.65/W_H_ratio[0],652.66/W_H_ratio[1],1, 1, 4)
                            screen.recycle()
                            
                        }
                        sleep(500)
                        c21=1
                        i+=1
                        console.log('点击21');
                    }
                    if(color22) {
                        if(c22) break
                        while (color22) {
                            click(color22.x,color22.y)
                            var screen=images.captureScreen() 
                            var color22=images.findColorInRegion(screen, "#ff7379ff",569.47/W_H_ratio[0],652.66/W_H_ratio[1],1, 1, 4)
                            screen.recycle()
                           
                        }
                        sleep(500)
                        c22=1
                        i+=1
                        console.log('点击22');
                    }
                    if(color23) {
                        if(c23) break
                        while (color23) {
                            click(color23.x,color23.y)
                            var screen=images.captureScreen() 
                            var color23=images.findColorInRegion(screen, "#ff7379ff",764.29/W_H_ratio[0],652.66/W_H_ratio[1],1, 1, 4)
                            screen.recycle()
                            
                        }
                
                        sleep(500)
                        c23=1
                        i+=1
                        console.log('点击23');
                    }
                    if(color31) {
                        if(c31) break
                        while (color31) {
                            click(color31.x,color31.y)
                            var screen=images.captureScreen() 
                            var color31=images.findColorInRegion(screen, "#ff7379ff",377.65/W_H_ratio[0],758.6/W_H_ratio[1],1, 1, 4)
                            screen.recycle()
                            
                        }
                        sleep(500)
                        c31=1
                        i+=1
                        console.log('点击31');
                    }
                    if(color32) {
                        if(c32) break
                        while (color32) {
                            click(color32.x,color32.y)
                            var screen=images.captureScreen() 
                            var color32=images.findColorInRegion(screen, "#ff7379ff",569.47/W_H_ratio[0],758.6/W_H_ratio[1],1, 1, 4)
                            screen.recycle()
                            
                        }
                        sleep(500)
                        c32=1
                        i+=1
                        console.log('点击32');
                    }
                    if(color33) {
                        if(c33) break
                        while (color33) {
                            click(color33.x,color33.y)
                            var screen=images.captureScreen() 
                            var color33=images.findColorInRegion(screen, "#ff7379ff",764.29/W_H_ratio[0],758.6/W_H_ratio[1],1, 1, 4)
                            screen.recycle()
                           
                        }
                        sleep(500)
                        c33=1
                        i+=1
                        console.log('点击33');
                    }
                    if(color41) {
                        if(c41) break
                        while (color41) {
                            click(color41.x,color41.y)
                            var screen=images.captureScreen() 
                            var color41=images.findColorInRegion(screen, "#ff7379ff",377.65/W_H_ratio[0],863.55/W_H_ratio[1],1, 1, 4)
                            screen.recycle()
                        }
                        sleep(500)
                        c41=1
                        i+=1
                        console.log('点击41');
                    }
                    if(
                        c11=
                        c12=
                        c13=
                        c21=
                        c22=
                        c23=
                        c31=
                        c32=
                        c33=
                        c41=1
                    ){
                        c11=
                        c12=
                        c13=
                        c21=
                        c22=
                        c23=
                        c31=
                        c32=
                        c33=
                        c41=0
                    }
                    
                }
               
                sleep(700)
    // console.log(1);
}

//  2,1  出错
//  2,3  出错
//  1,3  出错
//  3,2  出错
// 配置:
// 鑫能设置 4核 高 ,才能找色成功
// 请求截图需要模拟器性能显卡模式渲染选择增强型openGL+

// 需要解决的问题:
// 1.游戏会蓝屏,网络异常,弹出游戏
// 2.游戏会弹出到选择角色界面

// 功能:
// 1.自动回血/回精力
// 2.自动打怪
// 3.只支持无副将参战
// 4.适用分辨率1080x1920
/////////////////////////////////////////////////

    // 适配 adaption
////手动设置兼容不同手机的比例  ////
function adaption(){
    let w = device.width
    let h = device.height
    // 比例 ratio
    // 获取宽度比例 
    w_ratio=1080/w
    // 获取高度比例
    h_ratio=1920/h
    // 返回当前手机适配比例
    return [w_ratio,h_ratio]
}

let W_H_ratio=adaption()
// console.log(W_H_ratio);
////手动设置兼容不同手机的比例  ////


if(!requestScreenCapture()){
    toast("请求截图失败")
    exit()
}

// 定义战斗时恢复血量/精力的函数
// 参数:
// 1. 物品 选项,
// 2.被点过一次的 物品 选项(这两个都不需要修改)
// 3.血药/精力药 位置,选项 1,2,3,4,5  表示第几行
function fightHPAndHV(goods,goodsClicked,hpOrHvIndex){
      // 选择物品
      if(goods||goodsClicked){
        while(!click(goods.x,goods.y)){
            toast('寻找物品选项')
        }
        sleep(1000)
        let isExistColor=true
        while(isExistColor){
         var Medicine=images.captureScreen()
            switch (hpOrHvIndex) {
                case 1:
                    // 第一个 药瓶 (药瓶的名称长度,导致选项往后推多少) 要长距离选择药瓶点击选项 max 697
                    // 返回点的位置 {x:11,y:11}
                    var HpMedicine=images.findColorInRegion(Medicine, "#ffd65100",403/W_H_ratio[0],499/W_H_ratio[1],200, 10, 4)
                    isExistColor=!HpMedicine
                        console.log('1药瓶位置:'+HpMedicine);
                    break;
                case 2:
                    // 第二个 药瓶 
                    var HpMedicine=images.findColorInRegion(Medicine, "#ffd65100",406/W_H_ratio[0],622/W_H_ratio[1],200, 10, 4)
                    isExistColor=!HpMedicine
                        console.log('2药瓶位置:'+HpMedicine);
                    break;
                case 3:
                    // 第三个 药瓶 
                    var HpMedicine=images.findColorInRegion(Medicine, "#ffd65100",406/W_H_ratio[0],722/W_H_ratio[1],200, 10, 4)
                    isExistColor=!HpMedicine
                        console.log('3药瓶位置:'+HpMedicine);
                    break;
                case 4:
                    // 第四个 药瓶
                    var HpMedicine=images.findColorInRegion(Medicine, "#ffd65100",406/W_H_ratio[0],851/W_H_ratio[1],200, 10, 4)
                    isExistColor=!HpMedicine
                        console.log('4药瓶位置:'+HpMedicine);
                    break;
                case 5:
                    // 第无个 药瓶
                    // var HpMedicine=images.findColorInRegion(Medicine, "#ffd65100",387.5693664550781,802,430, 10, 4)
                    break;
                case 6:
                    // 第6个 药瓶
                    // var HpMedicine=images.findColorInRegion(Medicine, "#ffd65100",387.5693664550781,902,430, 10, 4)
                    break;
                case 7:
                    // 第7个 药瓶
                    // var HpMedicine=images.findColorInRegion(Medicine, "#ffd65100",387.5693664550781,902,997, 10, 4)
                    break;
                
                default:
                    toast('暂时没有超过7的选项')
                    break;
            }
     }
        console.log(HpMedicine);
        if(HpMedicine){
             // 点击药瓶
             sleep(1000)
             while(!click(HpMedicine.x,HpMedicine.y))
             sleep(1000)
            // 默认角色吃药
            while(!click(544,794.5))
            toast('吃药瓶成功')
        }else{
            // 返回重新点击
            toast('没有检测到药品,返回重新获取药瓶')
             // null 时继续找色
             while(!HpMedicine){
                toast('重新获取药瓶位置')
                HpMedicine=images.findColorInRegion(Medicine, "#ffd65100",387.5693664550781,417,330, 10, 4)
            }
            while(!click(HpMedicine.x,HpMedicine.y))
            sleep(1000)
        }

    }else{
        toast('没有找到物品选项')
    }
}
// 定义攻击第几行怪
function fightLine(line){
    // 选择人物栏
    // while(!click(865/W_H_ratio[0],186/W_H_ratio[1]))
    switch (line) {
        case 1:
              // 点击第一排 战斗
            while(!click(865/W_H_ratio[0],241/W_H_ratio[1]))
            break;
        case 2:
            // 点击第二排 战斗
            while(!click(998/W_H_ratio[0],341/W_H_ratio[1]))
            console.log('第二行');
            break;
        case 3:
            // 点击第三排 战斗
            while(!click(865/W_H_ratio[0],390/W_H_ratio[1]))
           
            break;
        case 4:
             // 点击第四排 战斗
             while(!click(987/W_H_ratio[0],483/W_H_ratio[1]))
            break;
        case 5:
            toast('攻击第五行怪')
            while(!click(865/W_H_ratio[0],600/W_H_ratio[1]))
            break;
        case 6:
            toast('还没有写')
            break;
    
        default:
            break;
    }
}


sleep(1000)
// 每场战斗的时间间隔>20s,设置为22s 之后战斗
var zdtimer=0


function oneStartFight(){
    while(true){
        var screen=images.captureScreen()
            // 自动攻击点
            var color=images.findColorInRegion(screen, "#ff636163",888/W_H_ratio[0],1333/W_H_ratio[1],10, 10, 4)
            // 战斗胜利点
            var color1=images.findColorInRegion(screen, "#ffb10000",868/W_H_ratio[0],1758/W_H_ratio[1],10, 10, 4)
            // 战斗失败点
            // var 
             // 判断是否正在战斗中,上方战斗提示
            //  var isfight=images.findColorInRegion(screen, "#ff210839",201,342,1, 1, 4)
             // 是否是低血量状态
            //  var Hp=images.findColorInRegion(screen, "#ff000000",910/W_H_ratio[0],745/W_H_ratio[1],1, 5, 4)
             var Hp=images.findColorInRegion(screen, "#ff000000",910/W_H_ratio[0],748/W_H_ratio[1],1, 5, 4)
             // 是否是低精力状态
            //  var Hv=images.findColorInRegion(screen, "#ff000000",894/W_H_ratio[0],772/W_H_ratio[1],1, 1, 4)
             var Hv=images.findColorInRegion(screen, "#ff000000",894/W_H_ratio[0],775/W_H_ratio[1],1, 1, 4)
             // 物品 选项
             
             var goods=images.findColorInRegion(screen, "#ffffcf00",613.4/W_H_ratio[0],861.5/W_H_ratio[1],10, 10, 4)
             // 物品 选项被点击后的颜色,也需要点击
             var goodsClicked=images.findColorInRegion(screen,"#ffff0000",593/W_H_ratio[0],928/W_H_ratio[1],10, 10, 4)
            // console.log("自动:"+color);
            // console.log("胜利:"+color1);
            // console.log("血条:"+Hp);
            // console.log("精力:"+Hv);
            // console.log("物品颜色:"+goods);
            // console.log("物品颜色1:"+goodsClicked);
            // return
            //  进入战斗
            if(color){
                if(Hp){
                    // 是低血量,停止循环^
                    // loop=false
                    toast('需要补充血量')
                    console.log('需要补充血量');
                    // 恢复血量函数
                    fightHPAndHV(goods,goodsClicked,1)
                    sleep(5000)
                    
                }else if(Hv){
                    // 是低精力,停止循环^
                    // loop=false
                    toast('需要补充精力')
                    console.log('需要补充精力');
                    // 恢复精力函数
                    fightHPAndHV(goods,goodsClicked,4)
                    sleep(5000)
                    
                }else{
                    // 血量/精力正常,正常攻击
                    console.log('血量/精力正常,自动攻击');
                    toast('血量/精力正常,自动攻击')
                    click(color.x,color.y)
                }

                
            }else if(color1){
                toast('战斗结束,等待间隔结束')
                if(zdtimer>22){
                    zdtimer=0
                    // 判断是否有消息弹出
        
                    sleep(2500)
                    while(!click(204/W_H_ratio[0],716/W_H_ratio[1]))
                    sleep(100)
                    while(!click(204/W_H_ratio[0],716/W_H_ratio[1]))
                    sleep(100)
                    while(!click(204/W_H_ratio[0],716/W_H_ratio[1]))
                    // toast('确定弹出的信息框')
                    toast('再次战斗')
                    // 切换到人物栏
                    sleep(1500)
                    while(!click(31/W_H_ratio[0],1130/W_H_ratio[1]))
                    toast('人物栏')
        
                    sleep(1500)
                    // 选择攻击行数 1,2,3,4,5,6
                    fightLine(4)      
                    toast('战斗')
                }
            }else{
                // toast('没有进入到战斗状态')
            }
            sleep(1000)
            zdtimer+=1
            
        }

}
// 这里再try 里面放到函数上面先调用会报错,
oneStartFight()



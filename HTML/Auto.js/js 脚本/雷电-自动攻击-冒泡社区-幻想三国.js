// 需要解决的问题
// 1.游戏会蓝屏,网络异常,弹出游戏
// 2.游戏会弹出到选择角色界面





if(!requestScreenCapture()){
    toast("请求截图失败")
    exit()
}
// 设置本机的比例,以匹配其他手机
// setScreenMetrics(width, height)

// 定义战斗时恢复血量的函数
function fightHP(isfight,goods,goodsClicked){
    // 判断是否正在战斗中,上方战斗提示
    // var isfight=images.findColorInRegion(screen, "#ff210839",201,342,1, 1, 4)
    // // 某点血量状态
    // var Hp=images.findColorInRegion(screen, "#ff000000",743,635,1, 1, 4)
    // // 物品 选项
    // var goods=images.findColorInRegion(screen, "#ffffff19",506,741,1, 1, 4)
    // // 物品被点击后的颜色,也需要点击
    // var goodsClicked=images.findColorInRegion(screen, "#ffffbd00",517,718,1, 1, 4)
    
    // if(Hp){
    //     // alert("血量过低!!")
    //     //回血操作
    //     if(isfight){
    //         alert('战斗中....')
    //     }else{
    //         toast('选择思考中...')
    //     }
    // }else{
    //     toast('血量正常')
    // }


      // 选择物品
      if(goods||goodsClicked){
        while(!click(506,741)){
            toast('寻找物品选项')
        }
        sleep(1000)
        var Medicine=images.captureScreen()
        // 第一个 药瓶 (药瓶的名称长度,导致选项往后推多少) 要长距离选择药瓶点击选项 max 697
        // 返回点的位置 {x:11,y:11}
        var HpMedicine=images.findColorInRegion(Medicine, "#ffd65100",387.5693664550781,417,330, 10, 4)
       
        console.log(HpMedicine);
        if(HpMedicine){
             // 点击药瓶
             sleep(1000)
             while(!click(HpMedicine.x+2,HpMedicine.y+2))
             sleep(1000)
            // 默认角色吃药
            while(!click(450,742))
            toast('吃第一个药瓶成功')
        }else{
            // 返回重新点击
            toast('没有检测到药品,返回重新获取药瓶')
             // null 时继续找色
             while(!HpMedicine){
                toast('重新获取药瓶位置')
                HpMedicine=images.findColorInRegion(Medicine, "#ffd65100",387.5693664550781,417,330, 10, 4)
                while(!click(HpMedicine.x+2,HpMedicine.y+2))
                sleep(1000)
            }
            sleep(1000)
        }

    }else{
        toast('没有找到物品选项')
    }
}
// 定义攻击第几行怪
function fightLine(line){
    switch (line) {
        case 1:
              // 点击第一排 战斗
            while(!click(733,224))
            break;
        case 2:
            // 点击第二排 战斗
            while(!click(819,306))

            break;
        case 3:
            // 点击第三排 战斗
            while(!click(731,390))
           
            break;
        case 4:
             // 点击第四排 战斗
            while(!click(819,468))
            break;
        case 5:
            toast('攻击第五行怪')
            while(!click(726,547))
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
// 是否继续while 循环
var loop=true
// startFight(loop)
startFight()
function startFight(loop){
    while(true){
        var screen=images.captureScreen()
            // 自动攻击点
            var color=images.findColorInRegion(screen, "#ff636163",746,1142,10, 10, 4)
            // 战斗胜利点
            var color1=images.findColorInRegion(screen, "#ffdeba73",720,1487,10, 10, 4)
            // 战斗失败点
            // var 
             // 判断是否正在战斗中,上方战斗提示
             var isfight=images.findColorInRegion(screen, "#ff210839",201,342,1, 1, 4)
             // 是否是低血量状态
             var Hp=images.findColorInRegion(screen, "#ff000000",743,635,1, 1, 4)
             // 物品 选项
             var goods=images.findColorInRegion(screen, "#ffffff19",506,741,1, 1, 4)
             // 物品被点击后的颜色,也需要点击
             var goodsClicked=images.findColorInRegion(screen, "#ffffbd00",517,718,1, 1, 4)
            //  进入战斗
            if(color){
                if(Hp){
                    // 是低血量,停止循环^
                    // loop=false
                    toast('需要补充血量')
                    // 恢复血量函数
                    fightHP(isfight,goods,goodsClicked)
                    sleep(5000)
                    
                }else{
                    // 血量正常,正常攻击
                    toast('自动攻击')
                    click(746,1142)
                }

                
            }else if(color1){
                toast('战斗结束,等待间隔结束')
                if(zdtimer>22){
                    zdtimer=0
                    // 判断是否有消息弹出
        
        
                    sleep(2500)
                    while(!click(141,679))
                    sleep(100)
                    while(!click(141,679))
                    sleep(100)
                    while(!click(141,679))
                    // toast('确定弹出的信息框')
                    toast('再次战斗')
                    // 切换到人物栏
                    sleep(1500)
                    // setScreenMetrics(1080,2400)
                    while(!click(128,994))
                    toast('人物栏')
        
                    sleep(1500)-
                    // 选择攻击行数 1,2,3,4,5,6
                    fightLine(3)      
                   
                    toast('战斗')
                }
            }else{
                // toast('没有进入到战斗状态')
            }
            sleep(1000)
            zdtimer+=1
            
        }

}

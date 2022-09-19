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


sleep(1000)
// 每场战斗的时间间隔>20s,设置为22s 之后战斗
var zdtimer=0
// 战斗胜利,是否可以进入下一局战斗
var isNextFight=false

function oneStartFight(){
    while(true){
        var screen=images.captureScreen()
            // 自动攻击点
            // console.log(colors.toString(images.pixel(screen, 900/W_H_ratio[0], 747/W_H_ratio[1])));
            var color=images.findColorInRegion(screen, "#ff636163",888/W_H_ratio[0],1333/W_H_ratio[1],10, 10, 4)
            // 低血点
            var lowhp=images.findColorInRegion(screen, "#ff000000",900/W_H_ratio[0],747/W_H_ratio[1],5, 9, 4)
            // 低精力
            var lowhv=images.findColorInRegion(screen, "#ff000000",910/W_H_ratio[0],773/W_H_ratio[1],5, 7, 4)
            // 战斗胜利
            var victory=images.findColorInRegion(screen, "#DEBA73",800/W_H_ratio[0],1689/W_H_ratio[1],5, 9, 4)
            // 战斗失败
            var fail
            // =images.findColorInRegion(screen, "#DEBA73",800/W_H_ratio[0],1689/W_H_ratio[1],5, 9, 4)
            //物品选项
            var goods=images.findColorInRegion(screen, "#FFD702",590/W_H_ratio[0],854/W_H_ratio[1],50, 100, 4)

            // 准备攻击
            if(color){
                toast('准备攻击')
                isNextFight=false
                //   console.log(color);
                if(lowhp){
                    toast('需要补充血')
                    // 恢复血量/精力函数
                    fightHPAndHV(goods,1)
                    sleep(5000)
                    
                }else if(lowhv){
                    toast('需要补精力')
                   
                    // 恢复血量/精力函数
                    fightHPAndHV(goods,3)
                    sleep(5000)
                }else{
                    toast('正常攻击')
                    click(color.x,color.y)
                }
                
            }else if(victory){
                toast('战斗胜利,等待冷却时间结束,此处请不要随意点击')
                sleep(500)
                isNextFight=true
                while(!click(200/W_H_ratio[0],733/W_H_ratio[1]))
                sleep(500)
                while(!click(200/W_H_ratio[0],733/W_H_ratio[1]))
                sleep(500)
                while(!click(200/W_H_ratio[0],733/W_H_ratio[1]))
                sleep(500)
               
            }else if(fail){
                toast('战斗失败')
            }else if(isNextFight){
                toast('准备下一次战斗');    
                if(zdtimer>24){
                    // 进入下一次战斗
                    console.log('现在时间:'+zdtimer);
                    zdtimer=0
                    fightLine(2)
                    isNextFight=false
                }
            }else{
                // 蓝屏/退出
            }
            sleep(1000)
            zdtimer+=1
            
        }

}

oneStartFight()
// 恢复血量/精力
function fightHPAndHV(goods,index){
    // 点击物品
    while (!click(goods.x,goods.y)){
        toast('寻找物品选项')
    }
    sleep(1000)
    let isExistColor=true
    while(isExistColor){
        var findMedicine=images.captureScreen() 
        sleep(500)
        switch (index) {
            case 1:
                // 第一个药
                var HpMedicine=images.findColorInRegion(findMedicine, "#D65100",403/W_H_ratio[0],491/W_H_ratio[1],400, 60, 4)
                isExistColor=!HpMedicine
                console.log('1药瓶位置:'+HpMedicine);
                break;
            case 2:
                var HpMedicine=images.findColorInRegion(findMedicine, "#D65100",403/W_H_ratio[0],607/W_H_ratio[1],400, 60, 4)
                isExistColor=!HpMedicine
                console.log('2药瓶位置:'+HpMedicine);
                break;
            case 3:
                var HpMedicine=images.findColorInRegion(findMedicine, "#D65100",403/W_H_ratio[0],725/W_H_ratio[1],400, 60, 4)
                isExistColor=!HpMedicine
                console.log('3药瓶位置:'+HpMedicine);
                break;
            case 4:
                var HpMedicine=images.findColorInRegion(findMedicine, "#D65100",403/W_H_ratio[0],847/W_H_ratio[1],400, 60, 4)
                isExistColor=!HpMedicine
                console.log('4药瓶位置:'+HpMedicine);
                break;
            case 5:
                var HpMedicine=images.findColorInRegion(findMedicine, "#D65100",403/W_H_ratio[0],967/W_H_ratio[1],400, 60, 4)
                isExistColor=!HpMedicine
                console.log('5药瓶位置:'+HpMedicine);
                break;
            case 6:
                var HpMedicine=images.findColorInRegion(findMedicine, "#D65100",403/W_H_ratio[0],1079/W_H_ratio[1],400, 60, 4)
                isExistColor=!HpMedicine
                console.log('6药瓶位置:'+HpMedicine);
                break;
            case 7:
                // 未设置
                var HpMedicine=images.findColorInRegion(findMedicine, "#D65100",403/W_H_ratio[0],491/W_H_ratio[1],400, 60, 4)
                isExistColor=!HpMedicine
                console.log('7药瓶位置:'+HpMedicine);
                break;
            case 8:
                var HpMedicine=images.findColorInRegion(findMedicine, "#D65100",403/W_H_ratio[0],491/W_H_ratio[1],400, 60, 4)
                isExistColor=!HpMedicine
                console.log('8药瓶位置:'+HpMedicine);
                break;
        
            default:
                break;
        }
        if(HpMedicine){
            while (!click(HpMedicine.x,HpMedicine.y)) {
                toast('要吃药药~')
            }
            // 选择人物,默认主角
             //物品选项
             var selectRole=images.captureScreen() 
             sleep(500)
             var isRole=images.findColorInRegion(selectRole, "#AC31F1",412/W_H_ratio[0],1171/W_H_ratio[1],200, 60, 4)
             console.log('isRole'+isRole);
            while(!isRole){
                var selectRole=images.captureScreen() 
                sleep(500)
                isRole=images.findColorInRegion(selectRole, "#AC31F1",412/W_H_ratio[0],1171/W_H_ratio[1],200, 60, 4)
                toast('正在选择角色')
            }
            click(isRole.x,isRole.y - 400/W_H_ratio[1])
        }
    }
}

// 定义攻击第几行怪
function fightLine(line){
    console.log('战斗');
    // 选择人物栏
    var screen=images.captureScreen()
    var role=images.findColorInRegion(screen, "#DCBEB9",0/W_H_ratio[0],1171/W_H_ratio[1],255, 80, 6)
    while(!role){
        toast('查找人物栏')
        var screen=images.captureScreen()
        var role=images.findColorInRegion(screen, "#DCBEB9",0/W_H_ratio[0],1171/W_H_ratio[1],255, 80, 6)
    }
    sleep(1000)
    while(!click(role.x,role.y))
    console.log('人物');
    switch (line) {
        case 1:
              // 点击第一排 战斗
            while(!click(863/W_H_ratio[0],249/W_H_ratio[1]))
            break;
        case 2:
            // 点击第二排 战斗
            while(!click(981/W_H_ratio[0],353/W_H_ratio[1]))
            console.log('第二行');
            break;
        case 3:
            // 点击第三排 战斗
            while(!click(857/W_H_ratio[0],449/W_H_ratio[1]))
           
            break;
        case 4:
             // 点击第四排 战斗
             while(!click(979/W_H_ratio[0],548/W_H_ratio[1]))
            break;
        case 5:
            // 未设置
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


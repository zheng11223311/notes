// 关闭所有脚本,后续代码无法执行
// 因为本次脚本也被停止
// engines.stopAll()

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

// 截图需要时间
sleep(1000)
// 每场战斗的时间间隔>20s,设置为22s 之后战斗
let time=new Date().getTime()
// 战斗胜利,是否可以进入下一局战斗
var isNextFight=false

//截图是否正在被使用,避免没有使用完被其他截图使用而导致本截图被销毁
// false 为异常检测使用,true 为战斗使用
let noPort=false
// 是否正常登入
let isNorlogin=true

// 攻击第几行怪
let attackEmey=4;
//第几个回血药瓶
let recoverHP=1;
//第几个回精力药瓶
let recoverHV=4;


while(true){
    // console.log('检测是否异常登出');
    if(noPort){
        // toast('截图工具正在被使用')
    }else{
        // console.log(isNorlogin);
        var screen1=images.captureScreen()
        // 判断弹出登入
        var popRole=images.findColorInRegion(screen1, "#0000BB",365/W_H_ratio[0],434/W_H_ratio[1], 240,50, 4)
        // var popRole=false
        if(popRole){
            noPort=true
            isNorlogin=false
        }
        if(popRole){
             // 正常登入.战斗赋予截图权限
             noPort=true
            //登出界面
            toast('检测到异常登出,准备选择角色')
            log('检测到异常登出,准备选择角色')
           
            // 停止所有子线程
            threads.shutDownAll()
            // 开启新线程
            let thread=threads.start(function(){
                // 停止线程时,里面的定时器也会停止
                 // 选择登入第几个角色
                // 参数: 颜色,第几个角色
                sleep(2000)
                dealBugPopRole(popRole,1)
                
                oneStartFight()
                // 休眠2s,使登入角色,再次检测就没有异常登出
                // 保证函数只执行一次
                sleep(2000)
            })
        }else if(isNorlogin){
            // 正常登入.战斗赋予截图权限
            noPort=true
            // 只有一次是正常登入
            isNorlogin=false
            // 停止所有子线程
            threads.shutDownAll()
            // 开启新线程
            threads.start(function(){
                // 停止线程时,里面的定时器也会停止
                // console.log(noPort);
                oneStartFight()
                
            })
        }
    }
      
    sleep(2000)
    // toast('开启线程')
}


function oneStartFight(){
    console.log('进入战斗');
    while(true){
        // console.log("端口"+noPort);
        if(!noPort) return
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
            // 判断弹出登入
            var popRole=images.findColorInRegion(screen, "#0000BB",365/W_H_ratio[0],434/W_H_ratio[1], 240,50, 4)
            if(popRole){
                console.log('popRole:'+popRole);
                 // 结束截图端口占用,让查找异常继续循环
                noPort=false    
                return 
            }
                 // 准备攻击
                if(color){
                    toast('准备攻击')
                    isNextFight=false
                    //   console.log(color);
                    if(lowhp){
                        toast('需要补充血')
                        // 恢复血量/精力函数
                        fightHPAndHV(goods,recoverHP,popRole)
                        sleep(5000)
                        
                    }else if(lowhv){
                        toast('需要补精力')
                    
                        // 恢复血量/精力函数
                        fightHPAndHV(goods,recoverHV,popRole)
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
                    log('准备下一次战斗');  
                    // let time=new Date().getTime()+1000  
                    if(new Date().getTime()>time+21000){
                        // 进入下一次战斗
                        console.log('消耗时间: '+(new Date().getTime()-time)/1000);
                        time=new Date().getTime()
                        fightLine(attackEmey,popRole)
                        isNextFight=false
                    }
                }else{
                    // 蓝屏/退出
                }
                sleep(1000)
        }
       
                
}
// 恢复血量/精力
function fightHPAndHV(goods,index,popRole){
    // 点击物品
    while (!click(goods.x,goods.y)){
        toast('寻找物品选项')
    }
    sleep(1000)
    let isExistColor=true
    while(isExistColor){
        if(popRole){
            noPort=false
            return
        }
        var findMedicine=images.captureScreen() 
        // sleep(1000)
        switch (index) {
            case 1:
                // 第一个药
                var HpMedicine=images.findColorInRegion(findMedicine, "#D65100",403/W_H_ratio[0],491/W_H_ratio[1],400, 60, 4)
                isExistColor=HpMedicine?false:true
                // console.log('1药瓶位置:'+HpMedicine);
                break;
            case 2:
                var HpMedicine=images.findColorInRegion(findMedicine, "#D65100",403/W_H_ratio[0],607/W_H_ratio[1],400, 60, 4)
                isExistColor=HpMedicine?false:true
                // console.log('2药瓶位置:'+HpMedicine);
                break;
            case 3:
                var HpMedicine=images.findColorInRegion(findMedicine, "#D65100",403/W_H_ratio[0],725/W_H_ratio[1],400, 60, 4)
                isExistColor=HpMedicine?false:true
                // console.log('3药瓶位置:'+HpMedicine);
                break;
            case 4:
                var HpMedicine=images.findColorInRegion(findMedicine, "#D65100",403/W_H_ratio[0],847/W_H_ratio[1],400, 60, 4)
                isExistColor=HpMedicine?false:true
                // console.log('4药瓶位置:'+HpMedicine);
                break;
            case 5:
                var HpMedicine=images.findColorInRegion(findMedicine, "#D65100",403/W_H_ratio[0],967/W_H_ratio[1],400, 60, 4)
                isExistColor=HpMedicine?false:true
                // console.log('5药瓶位置:'+HpMedicine);
                break;
            case 6:
                var HpMedicine=images.findColorInRegion(findMedicine, "#D65100",403/W_H_ratio[0],1079/W_H_ratio[1],400, 60, 4)
                isExistColor=HpMedicine?false:true
                // console.log('6药瓶位置:'+HpMedicine);
                break;
            case 7:
                var HpMedicine=images.findColorInRegion(findMedicine, "#D65100",403/W_H_ratio[0],1193/W_H_ratio[1],400, 60, 4)
                isExistColor=HpMedicine?false:true
                // console.log('7药瓶位置:'+HpMedicine);
                break;
            case 8:
                var HpMedicine=images.findColorInRegion(findMedicine, "#D65100",403/W_H_ratio[0],1313/W_H_ratio[1],400, 60, 4)
                isExistColor=HpMedicine?false:true
                // console.log('8药瓶位置:'+HpMedicine);
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
            //  console.log('isRole'+isRole);
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
function fightLine(line,popRole){
    console.log('战斗');
    // 选择人物栏
    sleep(1000)
    var screen=images.captureScreen()
    // 没有选中时
    var role=images.findColorInRegion(screen, "#DCBEB9",0/W_H_ratio[0],1171/W_H_ratio[1],255, 80, 6)
    // 选中时
    var role1=images.findColorInRegion(screen, "#CEA000",0/W_H_ratio[0],1171/W_H_ratio[1],255, 80, 6)
    // 自动攻击点,如果存在则表示已经进入战斗中
    var attack_color=images.findColorInRegion(screen, "#ff636163",888/W_H_ratio[0],1333/W_H_ratio[1],10, 10, 4)
    while(!role&&!role1&&!attack_color){
        console.log("登出"+popRole);
        console.log(!popRole); 
        console.log(!role&&!role1&&!attack_color);
        console.log(role)
        console.log(role1);;
        console.log(attack_color);;
        // 如果是游戏中查找到登出,而不是在登出中查找到
        // popRole 为true 即游戏中检测到登出现象,将截图工具交予检测
        if(popRole){
            console.log('释放端口给检测:');
            noPort=false
            return
        }
        // toast('查找人物栏')
        log('查找人物栏-攻击')
        var screen=images.captureScreen()
        var role=images.findColorInRegion(screen, "#DCBEB9",0/W_H_ratio[0],1171/W_H_ratio[1],255, 80, 6)
        var role1=images.findColorInRegion(screen, "#CEA000",0/W_H_ratio[0],1171/W_H_ratio[1],255, 80, 6)
         // 自动攻击点,如果存在则表示已经进入战斗中
        var attack_color=images.findColorInRegion(screen, "#ff636163",888/W_H_ratio[0],1333/W_H_ratio[1],10, 10, 4)
    if(attack_color){
        console.log('存在战斗中');
        return 
    }
    }
    
    if(attack_color){
        console.log('存在战斗中');
        return 
    }
    sleep(1000)
   
    if(role){
        while(!click(role.x,role.y)){}
    }else{
        while(!click(role1.x,role1.y)){}
    }
    // console.log('人物');
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

// 游戏中弹出至选择角色方法
function dealBugPopRole(popRole,index){
   console.log('异常处理');
    switch (index) {
        case 1:
            while(!click(popRole.x,popRole.y))
             console.log(index);
            break;
        case 2:
            while(!click(popRole.x,popRole.y+450/W_H_ratio[1]))
            break;
        case 3:
            while(!click(popRole.x,popRole.y+900/W_H_ratio[1]))
            break;
    
        default:
            console.log('选择登入角色出错');
            break;
    }
     // 如果是登出时,进来的,有可能是在战斗中,需要确认弹出的对话框
    // 此时的popRole 为null
    if(popRole){
        // 确认弹窗
        sleep(1500)
        console.log('确认弹窗');
        while(!click(562/W_H_ratio[0],1032/W_H_ratio[1])){}
    }
    sleep(2000)
    // 进入游戏后继续战斗
    popRole=null
    fightLine(attackEmey,popRole)
    
}


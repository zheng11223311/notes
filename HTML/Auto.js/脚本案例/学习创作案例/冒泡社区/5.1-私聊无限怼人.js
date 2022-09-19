// 仅支持冒泡社区幻想三国
// 游戏都需要支持安卓7 及以上版本
// 目前只支持私聊怼人
// 时间: 2021 年 12 月 13 日
// 作者:归不归
// QQ : 2404243334
// 屏幕分辨率: 1080x1920
///////////////////////////////////////////////////


// console.log('当前设备宽度: '+device.width);
// console.log('当前设备高度: '+device.height);

// 适配 adaption
////手动设置兼容不同手机的比例  ////
    let w = device.width
    let h = device.height
    
    function adaption(w,h){
        // 比例 ratio
        // 获取宽度比例 
        w_ratio=1080/w
        // 获取高度比例
        h_ratio=1920/h
        // 返回当前手机适配比例
        return [w_ratio,h_ratio]
    }
////手动设置兼容不同手机的比例  ////

////循环请求怼人数据////
 // 敌人 enemy
 let enemy_name='买醉的夏天'
while(true){
    let url='https://api.shadiao.app/nmsl?level=min'
    let result=http.get(url).body.json().data.text
    // console.log(result);
    let w_h_ratio=adaption(w,h)
    // 适配比例   原机型的位置/比例=当前真正要点击现位置
    while(!click(202/w_h_ratio[0],701/w_h_ratio[1])) toast('发言: '+result)
    input(enemy_name+","+result)
    text('确定').waitFor()
    text('确定').click()
    // 休眠5s
    sleep(1000)
 click(222/w_h_ratio[0],824/w_h_ratio[1])
click(222/w_h_ratio[0],834/w_h_ratio[1])
click(222/w_h_ratio[0],850/w_h_ratio[1])
click(222/w_h_ratio[0],860/w_h_ratio[1])
click(222/w_h_ratio[0],870/w_h_ratio[1])
click(222/w_h_ratio[0],880/w_h_ratio[1])
click(222/w_h_ratio[0],900/w_h_ratio[1])
click(222/w_h_ratio[0],920/w_h_ratio[1])
click(222/w_h_ratio[0],940/w_h_ratio[1])
click(222/w_h_ratio[0],960/w_h_ratio[1])
click(222/w_h_ratio[0],980/w_h_ratio[1])
click(222/w_h_ratio[0],1000/w_h_ratio[1])
click(222/w_h_ratio[0],1020/w_h_ratio[1])
click(222/w_h_ratio[0],1040/w_h_ratio[1])
click(222/w_h_ratio[0],1060/w_h_ratio[1])
click(222/w_h_ratio[0],1080/w_h_ratio[1])
click(222/w_h_ratio[0],1100/w_h_ratio[1])
click(222/w_h_ratio[0],1140/w_h_ratio[1])
click(222/w_h_ratio[0],1160/w_h_ratio[1])
click(222/w_h_ratio[0],1180/w_h_ratio[1])
click(222/w_h_ratio[0],1200/w_h_ratio[1])
click(222/w_h_ratio[0],1220/w_h_ratio[1])
click(222/w_h_ratio[0],1240/w_h_ratio[1])
click(222/w_h_ratio[0],1260/w_h_ratio[1])
click(222/w_h_ratio[0],1280/w_h_ratio[1])
// 休眠5s
sleep(500)
}
////循环请求怼人数据////

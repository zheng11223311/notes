
"ui";

ui.layout(
    <vertical>
        <horizontal padding='50'>
            <text textSize="16sp">充值类型：</text>
            <spinner id="sp1" entries="小时卡|日卡|月卡|年卡" textColor="red"/>


        </horizontal>

        <button id="get" text="获取充值类型"></button>

    </vertical>
);

ui.get.click(function(){
    var index = ui.sp1.getSelectedItemPosition();

    // if(index == 0){
    //     toast("你选择的是小时卡");
    // }

    var d = new Date();

    var timestamp = d.valueOf();

    switch(index){
        case 0:
            toast("你选择的是小时卡");
            timestamp = timestamp + (60 * 60 * 1000)
            break;
        case 1:
            timestamp = timestamp + (24 * 60 * 60 * 1000)
            toast("你选择的是日卡");
            break;
        case 2:
            timestamp = timestamp + (31* 24 * 60 * 60 * 1000)
            toast("你选择的是月卡");
            break;   
        case 3:
            timestamp = timestamp + (365 * 24 * 60 * 60 * 1000)
            toast("你选择的是年卡");
            break;         
    }

    log(dateFormat(new Date(timestamp), 'yyyy年MM月dd日 hh:mm:ss'))

    // 2020年11月14日 12:08:01
    // 2020年12月14日 12:08:16
    // 2021年11月13日 12:08:29
    // 2020年11月13日 13:08:38
})

//格式化时间
function dateFormat(thisDate, fmt) {
    var o = {
        "M+": thisDate.getMonth() + 1,
        "d+": thisDate.getDate(),
        "h+": thisDate.getHours(),
        "m+": thisDate.getMinutes(),
        "s+": thisDate.getSeconds(),
        "q+": Math.floor((thisDate.getMonth() + 3) / 3),
        "S": thisDate.getMilliseconds()
    };
    if (/(y+)/.test(fmt))
        fmt = fmt.replace(RegExp.$1, (thisDate.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt))
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}









toast('123')
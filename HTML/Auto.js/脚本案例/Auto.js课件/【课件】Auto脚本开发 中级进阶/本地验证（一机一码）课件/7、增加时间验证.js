




//获取当前的时间对象

// var d = new Date();

// d.setDate(14)
// d.setFullYear(2021)

// Fri Nov 13 2020 10:02:18 GMT+0800 (GMT+08:00)

// log(dateFormat(d, 'yyyy年MM月dd日 hh:mm:ss'))
// 2020年11月13日 10:07:01
// 2020年11月14日 10:08:19
// 2021年11月13日 10:09:28

// 时间戳
var d = new Date();

var timestamp = parseInt(d.valueOf() / 1000)

log(timestamp)

// 1605233622028  (毫秒级)
// 1605233656.926
// 1605233740
// 1605233757


//一天的秒数
log(24 * 60 * 60)

//一个月的秒数
log(24 * 60 * 60 * 30)


var d2 = new Date((timestamp + 86400) * 1000)

log(d2)
log(dateFormat(d2, 'yyyy年MM月dd日 hh:mm:ss'))

// 1970年01月19日 21:55:20
// 2020年11月14日 10:20:54


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









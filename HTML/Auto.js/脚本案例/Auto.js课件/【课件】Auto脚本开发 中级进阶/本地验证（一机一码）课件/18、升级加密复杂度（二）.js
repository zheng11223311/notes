


//算法函数
function encrypt(machineCode,timestamp){

    var str1 = md5(machineCode+timestamp);

    var encryptTime = ((timestamp-0+10000)*903)/100000;

    var str2 = md5((md5("litikj" +str1 +"litikj")+"litikj") +encryptTime +md5(machineCode)+"112233");

    var activationCode = str1 + '&'+encryptTime + "&" + str2;

    return activationCode;

}

// 


var code = "523e8261608d5593f217672a533d80d7&14498550992.58195&eff2b3e0e3b74bdbec6ad70c349b499e"


//1、进行解密

var codeArr = code.split("&");

log(codeArr)
// [ '523e8261608d5593f217672a533d80d7',  '14498550992.58195',  'eff2b3e0e3b74bdbec6ad70c349b499e' ]

var str1 = codeArr[0];

var encryptTime = codeArr[1];

var str2 = codeArr[2];

var timestamp = (Number(encryptTime) * 100000) / 903 -10000;

if(str1 === md5(machineCode+timestamp) && str2 === md5((md5("litikj" +md5(machineCode+timestamp) +"litikj")+"litikj") +encryptTime +md5(machineCode)+"112233") && validTime(timestamp)){
    toast("激活成功")
}


// ((timestamp-0+10000)*903)/100000;

// 1605598106565
// log(dateFormat(new Date(1605598106565), 'yyyy年MM月dd日 hh:mm:ss'))
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
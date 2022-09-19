



var 加密字符串1 = md5(uuid+timestamp);

var 加密时间 = ((timestamp-0+10000)*903)/100000;

var 加密字符串2 = md5((md5("litikj" +加密字符串1 +"litikj")+"litikj") +加密时间 +md5(uuid)+"112233");


var 激活码 = 加密字符串1+"&"+加密时间+"&"+加密字符串2

//算法函数
function encrypt(machineCode,timestamp){

    var str1 = md5(machineCode+timestamp);

    var encryptTime = ((timestamp-0+10000)*903)/100000;

    var str2 = md5((md5("litikj" +str1 +"litikj")+"litikj") +encryptTime +md5(machineCode)+"112233");

    var activationCode = str1 + '&'+encryptTime + "&" + str2;

    return activationCode;

}
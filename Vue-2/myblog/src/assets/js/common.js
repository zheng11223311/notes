export default{
    //导出时间戳转换
//     使用方法:

// myDate(1591841249)   //返回2020-06-11

// myDate(1591841249,1) //返回 2020-06-11 10:10:10

// myDate(1591841249,2)   //返回2020年06月11日
myDate(value, type = 0){
      var time = new Date(value * 1000);
    var year = time.getFullYear();
    var month = time.getMonth() + 1;
    var date = time.getDate();
    var hour = time.getHours();
    var minute = time.getMinutes();
    var second = time.getSeconds();
    month = month < 10 ? "0" + month : month; 
    date = date < 10 ? "0" + date : date; 
    hour = hour < 10 ? "0" + hour : hour; 
    minute = minute < 10 ? "0" + minute : minute; 
    second = second < 10 ? "0" + second : second; 
    var arr = [ 
    year + "-" + month + "-" + date, 
    year + "-" + month + "-" + date + " " + hour + ":" + minute + ":" + second, 
    year + "年" + month + "月" + date, 
    year + "年" + month + "月" + date + " " + hour + ":" + minute + ":" + second, 
    hour + ":" + minute + ":" + second 
    ] 
    return arr[type]; 
}
    
}

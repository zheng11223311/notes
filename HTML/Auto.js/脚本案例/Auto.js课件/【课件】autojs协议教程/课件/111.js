
var arr = [];


for(var i=0;i<3;i++){
    arr.push(random(1000,9999).toString());
}


var obj = open('/sdcard/999.txt','w');

obj.writelines(arr)

obj.close()
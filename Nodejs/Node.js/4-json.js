var arr=['iss','sss','ijj','jjj']
console.log(arr);
var newarr=JSON.stringify(arr) //不改变原数组
console.log(newarr);


var obj={id:'1',name:'ljn',sex:'男'}
console.log(obj);
var newobj=JSON.stringify(obj)
console.log(newobj);

console.log('(--------------------------------------------)')
var jstr='{"id":"1","name":"ljn","sex":"男"}'; //json 的字符串
var objs=JSON.parse(jstr)
console.log(objs);
console.log(jstr);  
console.log(objs.name);
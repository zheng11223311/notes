
// engines.execScript(name, script[, config\])

// engines.execScript('jsname','toast("你好");',{
//     delay: 2000,
//     loopTimes: 3,
//     interval: 2000,
// });

// fun();

// log(fun.toString())


// engines.execScript('jsname','fun();\n'+fun.toString())

// function fun(){
//     toast('你好');
// }

//在新的脚本环境中执行 1 + 2
exec(add, {a: 2, b:2});

function exec(action, args){
    args = args || {};
    var tmp = action.toString();
    var re = /function\s*(\w*)/i;
    var matches = re.exec(tmp);//方法名
    var name=matches[1];
    engines.execScript(name, name + "(" + JSON.stringify(args) + ");\n" + action.toString());
}

// var tmp = ddd.toString();
// var re = /function\s*(\w*)/i;
// var matches = re.exec(tmp);//方法名
// var name=matches[1];
// log(name)


//要执行的函数，是一个简单的加法
function add(args){
    toast(args.a + args.b);
}






// toast('阿涛QQ/vx:656206105')


// engines.execScript('a','sleep(50000)')

// sleep(3000)  //如果没有延迟时间,不会捕捉到a 的运行,a 不会被停止
// 在开发工具中可以看到,a.js 正在运行,没有被停止
// engines.stopAllAndToast()  //停止所有脚本并提示



// console.log(engines.myEngine());  //返回当前脚本引擎对象
// ScriptEngine@e494198{id=451,source='[remote]28-脚本引擎控制方法.js',cwd='/storage/emulated/0/脚本'}


console.log(engines.all());  //返回一个数组,包含所有对象
// [ ScriptEngine@a0cd1e{id=452,source='[remote]28-脚本引擎控制方法.js',cwd='/storage/emulated/0/脚本'} ]



// 停止所有脚本引擎,包括这个运行的文件
// engines.stopAll()
// sleep 不会被运行,因为被停止了
sleep(5000)





toast('我是文件')
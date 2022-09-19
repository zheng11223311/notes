// 原生自带调用cmd 的模块child_process

import child_process from 'child_process'
const exec = child_process.exec
export function start() {
    // 任何你期望执行的cmd命令，ls,bat,exe 都可以
    //  let cmdStr1 = 'npm -v'
    // let cmdStr1 = 'chcp 65001 && tree ../../'
    // let cmdStr1 = 'echo 哈哈哈哈'
    // let cmdStr1 = 'tree ../'
    let cmdStr1 = 'D:\\学习\\wanye\\AutoHotKey\\脚本\\4-原神攻击快捷键.ahk'
    let cmdPath = './'
    // 子进程名称
    let workerProcess
    runExec(cmdStr1)

    function runExec(cmdStr) {
        //  { encoding: 'buffer' }
        //  { encoding: 'utf8' } 解决中文乱码,chcp 65001 设置中文还是乱码
        // { encoding: 'utf8' } 在exec 用中文执行
        // workerProcess = exec(cmdStr, {
        //     cwd: cmdPath
        // })

        // // 打印正常的后台可执行程序输出
        // workerProcess.stdout.on('data', function (data) {
        //     console.log('stdout: ' + data)
        // })
        // // 打印错误的后台可执行程序输出
        // workerProcess.stderr.on('data', function (data) {
        //     console.log('stderr: ' + data)
        // })
        // // 退出之后的输出
        // workerProcess.on('close', function (code) {
        //     console.log('out code：' + code)
        // })



        workerProcess = exec(cmdStr1, {
            encoding: 'utf8'
        }, (err, data) => {
            if(err){
                console.log(err);
                return
            }
            console.log(data);
            console.log(1);
        })
    }
}
start()
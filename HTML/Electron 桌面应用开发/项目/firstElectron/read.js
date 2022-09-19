const fs = require('fs');

// 在app 中使用view ->toggle Developer tools 调试工具

window.onload = function () {       //一定要写onload,否则获取不到
    var disk = this.document.querySelector('.disk')
    var btn = this.document.querySelector('button')
    console.log(disk, btn);
    console.log(this);
    btn.onclick = function () {
        fs.readFile("1.txt", (err, data) => {
            if (err) {
                console.log(err);
                return
            }
            console.log(data);
            disk.innerHTML = data
        })
    }
}
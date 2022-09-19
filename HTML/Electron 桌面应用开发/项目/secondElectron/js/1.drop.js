const fs = require('fs')


let fileshow = document.querySelector('.fileshow')
let showcontent = document.querySelector('.showcontent')
fileshow.addEventListener('drop', (e) => { //监听文件落下
    e.preventDefault(); //阻止默认事件
    e.stopPropagation() //阻止冒泡事件
    for (const file of e.dataTransfer.files) {
        console.log(file);
        console.log('文件路径: ' + file.path);
        fs.readFile(file.path, (err, data) => {
            if (err) {
                console.log(err);
                return
            }
            showcontent.innerHTML += `
            <p>文件名称: ${file.name}</p>
            <pre>${data}</pre>
            `
        })
    }
})

fileshow.addEventListener('dragover', (e) => {
    e.preventDefault(); //阻止默认事件
    e.stopPropagation() //阻止冒泡事件
})

const wv = document.querySelector('.wv')

// https://www.electronjs.org/zh/docs/latest/api/browser-view webview 操作文档
wv.addEventListener('did-start-loading', () => {
    console.log('正在加载...');
})
wv.addEventListener('did-stop-loading', () => {
    console.log('加载完毕...');
    console.log(wv); //显示其标签内容
    console.log([wv]); //将其放入数组中,以详细信息显示,不会打印出它的标签
    wv.insertCSS(`.user[data-v-b306024c]{background:red!important}`) //对webview 内的html 进行样式的设置
    setTimeout(() => {
        let input = document.querySelector('input')
        input.value = '沈园外'
    }, 2000)
    wv.executeJavaScript('alert("aaaaa")'); //执行自定义javascript 脚本,也可以使用path 库,导入指定路径中的脚本文件内容
    wv.executeJavaScript(`
                setTimeout(()=>{
                    let input=document.querySelector('input')
                    input.value='沈园外'
                },2000)
    `);
})
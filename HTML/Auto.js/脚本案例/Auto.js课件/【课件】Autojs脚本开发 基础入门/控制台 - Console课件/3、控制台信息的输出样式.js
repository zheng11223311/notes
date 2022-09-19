
console.show()

log('这是一段文字')

console.verbose('这是一段文字')

console.info('这是一段文字')

console.warn('这是一段文字')

console.error('这是一段文字')

var a = 1 + 2;

try {

    console.assert(a == 2, "加法出错啦");

} catch (error) {

    toast('出错了')
    exit()

}

sleep(3000)

log('运行到了这里')




// toast('阿涛QQ/微信：65620605')
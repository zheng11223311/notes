const path = require('path')
const WebSocket = require('ws')
// 创建WebSocket服务端的对象, 绑定的端口号是9998
const wss = new WebSocket.Server({
  port: 9998
})
// 服务端开启了监听
  // 对客户端的连接事件进行监听
  // client:代表的是客户端的连接socket对象
  wss.on('connection', client => {
    console.log('有客户端连接成功了...')
    // 对客户端的连接对象进行message事件的监听
    // msg: 由客户端发给服务端的数据
    client.on('message', msg => {
      console.log('客户端发送数据给服务端了: ' + msg)
        client.send(JSON.stringify(msg))
        // 原封不动的将所接收到的数据转发给每一个处于连接状态的客户端
        // wss.clients // 所有客户端的连接
        wss.clients.forEach(client => {
          // client.send(msg)
          client.send(1111)
      })
      // 由服务端往客户端发送数据
      // client.send('hello socket from backend')
    })
  })

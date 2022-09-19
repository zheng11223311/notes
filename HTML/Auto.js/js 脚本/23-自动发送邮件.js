
// 弹出选择框,选择邮件发送
app.sendEmail({
    email:['z32404243334@qq.com','111@qq.com'],  //收件人,可多个
    subject:'这是主题',
    text:'这是正文',
    attachment:'/sdcard/1/index.js'  //附件地址
})

toast ('启动服务器')
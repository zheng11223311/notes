let mysql=require('mysql')

let express=require('express')

let app=express()

app.get('/',(req,res)=>{
    res.send('这是首页')
})

app.get('/books/:bookid',(req,res)=>{
    res.send('这是books')
})

app.get('/xiaoshuowenxue',(req,res)=>{
    res.send('这是xiaoshuowenxue')
})


module.exports=app
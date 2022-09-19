import axios from 'axios'
let {
    get,
    post
} = axios

// 搜索书的信息
// word: 关键词
// page_id: 第几页
// count: 每页的数量
// start: 结果开始位置
// limit: 结果最大数量
// os: 手机系统
// appverion = app版本
export const searchBookMsg = (value,page=1,count=20) => get(`http://api.easou.com/api/bookapp/searchdzh.m?word=${value}&page_id=${page}&count=${count}&cid=eef_&os=ios&appverion=1049`)


// 搜索书的章节
// page  分页的第几页
// size 每页显示多少章节,没有传值默认100 章节
//  gid 书本的id
//  nid 关于本书章节的id
export const BookChapters = (gid,page=1,size=100,nid) => get(`https://book.easou.com/ta/listAjax.m?esid=3139HXIBSUm&gid=${gid}&nid=${nid}&order=0&page=${page}&size=${size}`)


// 搜索书的章节内容
// 充值部分无法获取
export const BookContent = (gid,charter=1) => get(`https://book.easou.com/ta/showAjax.m?gid=${gid}&st=${charter}&autoPay=1`)
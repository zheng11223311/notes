
var url = 'http://zcore.zqzan.com/app/douyin/submit/task';
var token = '6aa28070-9384-4732-866a-60936e5e38d5';

// doit_id=1291882588513361922&shot_img=https%3A%2F%2Fyun.zqzan.com%2Fapp%2F08_08%2F%2F1268807849981091841_159684386042016.png%40!fwidth

// app/08_08//1268807849981091841_1596848171617.png
var res = http.post(url,{
    doit_id: '1291938706992545794',
    shot_img: 'https://yun.zqzan.com/app/08_08//1268807849981091841_159685806376567.png@!fwidth',
},{
    headers: {
        token: token
    }
})
log(res.body.string())



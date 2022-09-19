




var d=new Date()
var url = 'https://yun.zqzan.com'

// https://yun.zqzan.com----app/08_08//1268807849981091841_1596858065568.png----LTAI4FwVNMW9yHsSHKW5mW3T----r0zJzLbyZRxASug6SHnbi+Jt+zk=

var d=new Date()
var akey = 'app/08_08//1268807849981091841_'+d.getTime().toString()+""+random(10,99)+'.png'
log(akey)
var res = http.postMultipart(url, {
    key: akey,
    policy: "eyJleHBpcmF0aW9uIjoiMjAyMC0wOC0wOFQwMzo1ODowMC4wMDBaIiwiY29uZGl0aW9ucyI6W1siY29udGVudC1sZW5ndGgtcmFuZ2UiLDAsMzE0NTcyODBdLFsic3RhcnRzLXdpdGgiLCIka2V5IiwiYXBwLzA4XzA4LyJdXX0=",
    OSSAccessKeyId: 'LTAI4FwVNMW9yHsSHKW5mW3T',
    signature: 'Hz6kaS59eS5Bqr8nsg0hBgwqNFg=',
    success_action_status: "200",
    file: open('/sdcard/1596857995923.ss.android.ugc.aweme.jpg')
});

log(res.statusCode)


var url = 'http://zcore.zqzan.com/app/douyin/submit/task';

// doit_id=1291882588513361922&shot_img=https%3A%2F%2Fyun.zqzan.com%2Fapp%2F08_08%2F%2F1268807849981091841_159684386042016.png%40!fwidth

// app/08_08//1268807849981091841_1596848171617.png
var res = http.post(url,{
    doit_id: '1291938706992545794',
    shot_img: 'https://yun.zqzan.com/'+akey+'@!fwidth',
},{
    headers: {
        token: token
    }
})
log(res.body.string())

// var url = 'http://zcore.zqzan.com/app/douyin/submit/task';

// // doit_id=1291882588513361922&shot_img=https%3A%2F%2Fyun.zqzan.com%2Fapp%2F08_08%2F%2F1268807849981091841_159684386042016.png%40!fwidth

// // app/08_08//1268807849981091841_1596848171617.png
// var res = http.post(url,{
//     doit_id: '1291914666361610242',
//     shot_img: 'https://yun.zqzan.com/'+akey+'@!fwidth',
// },{
//     headers: {
//         "Token": token
//     }
// })
// log(res.body.string())
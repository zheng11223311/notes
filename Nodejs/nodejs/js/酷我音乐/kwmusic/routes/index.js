var express = require('express');
var router = express.Router();
var axios = require('axios');
/* GET home page. */
router.get('/', function(req, res, next) {
  console.log(req.query.data);
  console.log(req.query.songNum);
  //歌曲名称,encodeURIComponent  进行url 编码
  var song=encodeURIComponent (req.query.data);
  // 自定义搜索歌曲数目
  var songNum=req.query.songNum>0?req.query.songNum:20
  axios.get(`http://search.kuwo.cn/r.s?SONGNAME=${song}&ft=music&rformat=json&encoding=utf8&rn=${songNum}&callback=song&vipver=MUSIC_8.0.3.1`)
  .then(res1=>{
  function song(data){
    // console.log(data.abslist);
    var arrlist=[]
    var aNum=[]
    for(i of data.abslist){
      // console.log('歌曲名称：'+i.SONGNAME);
      // console.log('歌手：'+i.ARTIST);
      // console.log('歌曲ID：'+i.MUSICRID);
      // console.log('歌曲封面：'+i.hts_MVPIC);
      // console.log('歌曲专辑：'+i.ALBUM);
      //获取歌曲地址
        arrlist.push([i.SONGNAME,i.ARTIST,i.MUSICRID,i.ALBUM,i.hts_MVPIC])

    }

  
        async function axreq(){
          var a
          for(var j=0;j<arrlist.length;j++){
         a= axios.get(`http://kuwo.cn/url?format=mp3&rid=${arrlist[j][2]}&type=convert_url3`)
        .then(res1=>{
          // console.log(res1.data.url);
          aNum.push(res1.data.url)
          // console.log(aNum);
          return aNum
        })
        
      }
    await  a.then(res2=>{
        console.log(res2);
        console.log(res2.length);
        res.render('index', { title: '酷我音乐-无损音质正版在线试听网站' ,arrlist,res2});
      })
      
   }
   axreq()
  
    
  }
  function jsonError(data){
    console.log(data);
  }
    console.log(eval(res1.data))
    
  })
 
  
});

module.exports = router;

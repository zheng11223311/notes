import axios from 'axios'

//粗略搜索歌曲
let searchMusic=(key)=>axios.get(`http://search.kuwo.cn/r.s?all=${key}&ft=music&newsearch=1&alflac=1&itemset=web_2013&client=kt&cluster=0&pn=0&rn=100&vermerge=1&rformat=json&encoding=utf8&show_copyright_off=1&pcmp4=1&ver=mbox&vipver=MUSIC_8.7.6.0_BDS4&plat=pc&devid=0`)

// 请求歌词与歌曲
let searchMusicUrl=(musicId)=>axios.get(`http://m.kuwo.cn/newh5app/api/mobile/v1/music/src/${musicId}`)

let searchMusicLrc=(musicId)=>axios.get(`http://m.kuwo.cn/newh5app/api/mobile/v1/music/info/${musicId}`)

// 并发请求 歌词与歌曲
let searchMusicAndLrc=(musicId)=>axios.all([searchMusicUrl(musicId),searchMusicLrc(musicId)])

// 请求MP4
let searchMP4=(mvId)=>axios.get(`http://www.kuwo.cn/mvplay/${mvId}`)

// 请求热门评论
let searchHotComment=(musicId,page=1)=>axios.get(`http://comment.kuwo.cn/com.s?type=get_rec_comment&uid=170920140&digest=15&sid=${musicId}&page=${page}&rows=10&f=web&prod=MUSIC_8.7.6.0_BDS4&devid=0`)

// 请求最新评论
let searchNewComment=(musicId,page=1)=>axios.get(`http://comment.kuwo.cn/com.s?type=get_comment&uid=170920140&digest=15&sid=${musicId}&page=${page}&rows=20&f=web&prod=MUSIC_8.7.6.0_BDS4&devid=0`)

// 请求搜索的MV
let searchMv=(key,page=0)=>axios.get(`http://search.kuwo.cn/r.s?all=${key}&ft=music&newsearch=1&itemset=web_2013&client=kt&cluster=0&pn=${page}&rn=80&rformat=json&hasmkv=1&encoding=utf8&show_copyright_off=1&pcmp4=1&ver=mbox&vipver=MUSIC_8.7.6.0_BDS4&plat=pc&devid=0`)

// 请求搜索的歌单
let searchSong=(key,page=0)=>axios.get(`http://search.kuwo.cn/r.s?all=${key}&pn=${page}&rn=100&ft=playlist&encoding=utf8&rformat=json&pay=0&needliveshow=0&ver=mbox&vipver=MUSIC_8.7.6.0_BDS4&plat=pc&devid=0`)

// 请求歌单对应的音乐歌单列表
let searchSongList=(playListId,page=0)=>axios.get(`http://nplserver.kuwo.cn/pl.svc?op=getlistinfo&pid=${playListId}&pn=${page}&rn=100&callback=playGeDanMusic&encode=utf-8&keyset=pl2012&identity=kuwo&pcmp4=1&vipver=MUSIC_8.7.6.0_BDS4&_=1650122624674`)

export default{
    searchMusic,
    searchMusicAndLrc,
    searchMP4,
    searchHotComment,
    searchNewComment,
    searchMv,
    searchSong,
    searchSongList,
}

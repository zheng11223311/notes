
//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 
openConsole();
qs=console.rawInput("输入开始QQ号");
log(qs);
js=9999999999;//console.rawInput("输入结束QQ号");
//log(js);

function stringToByte(str) {
  var bytes = new Array();
  var len, c;
  len = str.length;
  for (var i = 0; i < len; i++) {
    c = str.charCodeAt(i);
    if (c >= 0x010000 && c <= 0x10FFFF) {
      bytes.push(((c >> 18) & 0x07) | 0xF0);
      bytes.push(((c >> 12) & 0x3F) | 0x80);
      bytes.push(((c >> 6) & 0x3F) | 0x80);
      bytes.push((c & 0x3F) | 0x80);
    } else if (c >= 0x000800 && c <= 0x00FFFF) {
      bytes.push(((c >> 12) & 0x0F) | 0xE0);
      bytes.push(((c >> 6) & 0x3F) | 0x80);
      bytes.push((c & 0x3F) | 0x80);
    } else if (c >= 0x000080 && c <= 0x0007FF) {
      bytes.push(((c >> 6) & 0x1F) | 0xC0);
      bytes.push((c & 0x3F) | 0x80);
    } else {
      bytes.push(c & 0xFF);
    }
  }
  return bytes;
}

function byteToString(arr) {
  if (typeof arr === 'string') {
    return arr;
  }
  var str = '',
    _arr = arr;
  for (var i = 0; i < _arr.length; i++) {
    var one = _arr[i].toString(2),
      v = one.match(/^1+?(?=0)/);
    if (v && one.length == 8) {
      var bytesLength = v[0].length;
      var store = _arr[i].toString(2).slice(7 - bytesLength);
      for (var st = 1; st < bytesLength; st++) {
        store += _arr[st + i].toString(2).slice(2);
      }
      str += String.fromCharCode(parseInt(store, 2));
      i += bytesLength - 1;
    } else {
      str += String.fromCharCode(_arr[i]);
    }
  }
  return str;
}


importClass(android.util.Base64);
//var c = byteToString(Base64.decode("aHR0cDovL3d3dy5xcS5jb20v", 0));
//log(c);
//setClip(c);
for(qq=qs;qq<=js;qq++){
console.clear();
log(qs);
console.info(qq);
//log(js);
var e = byteToString(Base64.encode(stringToByte("https://"+qq+".qzone.qq.com"), 0));
log(e);
app.startActivity({
  action: "android.intent.action.VIEW",
  data: "mqqapi://forward/url?url_prefix="+e+"&souce=oicqzone.com&version=1&src_type=web",                       
  packageName: "com.tencent.mobileqq",
}); 
   sleep(5000);
}


//破解，源码出售，定制担保。诚信合作微信:zxkj6898 或zx033245   或QQ168196007 

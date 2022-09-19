var electron=require('electron')
const BrowserWindow=electron.remote.BrowserWindow

var newWin=null
window.onload = function () {       //一定要写onload,否则获取不到
    var btn = this.document.querySelector('button')
    btn.onclick = function () {
      newWin=new BrowserWindow({
          width:1300,
          height:600,
      })
      newWin.loadFile('newremote.html')
      newWin.on('close',()=>{
          console.log('程序关闭');
          newWin=null
      })
    }
}
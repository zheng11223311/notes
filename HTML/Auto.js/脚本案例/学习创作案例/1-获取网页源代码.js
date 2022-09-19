"ui";
ui.layout(
  <vertical>
    <webview id="webview">111</webview>
  </vertical>
);
// 获取到id 为webview 的控件
let webview = ui.webview;
// webview 的文档
// https://www.runoob.com/w3cnote/android-tutorial-webview.html
var client = android.webkit.WebViewClient;

var url = "https://www.baidu.com";
// 返回一个WebSettings对象,用来控制WebView的属性设置
var settings = webview.getSettings();
// console.log(settings);
console.info(settings);
// 设置请求头
// 设置WebView代理字符串，如果String为null或为空，将使用系统默认值
settings.setUserAgentString(
  "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36"
);
function 网页中获取网页源代码() {
  r = document.getElementsByTagName("html")[0].innerHTML;
  return r;
}
// 适配器模式（Adapter Pattern）是作为两个不兼容的接口之间的桥梁
// 将一个类的接口转换成客户希望的另外一个接口
var t = new JavaAdapter(client, {
    // onPageFinished 通知主程序,网页加载完毕
  onPageFinished: function (view, url) {
    console.log(url);
    // android通过WebView的evaluateJavascript()调用JS
    webview.evaluateJavascript(";" + 网页中获取网页源代码.toString() + ";网页中获取网页源代码();", function (s) {
      console.log('网页源代码长度: '+s.length);
      let 网页源代码filePath = "/sdcard/1.html";
      files.write(网页源代码filePath, s);
      console.log("网页源代码  写入文件  完毕");
    // viewFile  查看文件
      app.viewFile(网页源代码filePath);
    });
  },
});
// setWebViewClient 为WebView指定一个WebViewClient对象
// .WebViewClient可以辅助WebView处理各种通知,请求等事件。
webview.setWebViewClient(t);
//loadUrl 加载指定的Url
webview.loadUrl("https://www.baidu.com/");
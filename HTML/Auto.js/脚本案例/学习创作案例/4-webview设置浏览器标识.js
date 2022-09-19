"ui";
ui.layout(
  <vertical id="main" padding="10 10 10 30" bg="#ff1e90ff">
    <scroll>
      <webview id="webView" />
    </scroll>
  </vertical>
);
var webView = ui.webView;
var url = "https://www.baidu.com";

var settings = webView.getSettings();
settings.setUserAgentString(
  "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36"
);
// settings.setUserAgentString(
//   "Mozilla/5.0 (Linux; Android 5.0; SM-G900P Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Mobile Safari/537.36"
// );
webView.loadUrl(url);
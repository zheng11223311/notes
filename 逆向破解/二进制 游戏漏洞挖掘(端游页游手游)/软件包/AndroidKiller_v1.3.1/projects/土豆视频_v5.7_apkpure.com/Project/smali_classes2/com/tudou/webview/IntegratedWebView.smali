.class public Lcom/tudou/webview/IntegratedWebView;
.super Landroid/widget/LinearLayout;
.source "IntegratedWebView.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/webview/IntegratedWebView$OritationChangeActivity;,
        Lcom/tudou/webview/IntegratedWebView$TimeOutHanlder;
    }
.end annotation


# instance fields
.field private chromeClient:Landroid/webkit/WebChromeClient;

.field private context:Lcom/tudou/ui/activity/BuildInBrowserActivity;

.field private fragment:Lcom/tudou/ui/fragment/BuildInBrowserFragment;

.field private isSetUserAgent:Z

.field private mHandler:Lcom/tudou/webview/IntegratedWebView$TimeOutHanlder;

.field private oritationChangeActivity:Lcom/tudou/webview/IntegratedWebView$OritationChangeActivity;

.field private pb:Landroid/widget/ProgressBar;

.field refresh:Landroid/view/View$OnClickListener;

.field private tempUrl:Ljava/lang/String;

.field private timer:Ljava/util/Timer;

.field private tt:Ljava/util/TimerTask;

.field wb:Landroid/webkit/WebView;

.field private webviewNoResult:Lcom/youku/widget/HintView;


# direct methods
.method public constructor <init>(Lcom/tudou/ui/activity/BuildInBrowserActivity;Lcom/tudou/ui/fragment/BuildInBrowserFragment;Z)V
    .locals 1
    .param p1, "context"    # Lcom/tudou/ui/activity/BuildInBrowserActivity;
    .param p2, "fragment"    # Lcom/tudou/ui/fragment/BuildInBrowserFragment;
    .param p3, "isSetUserAgent"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/webview/IntegratedWebView;->isSetUserAgent:Z

    .line 302
    new-instance v0, Lcom/tudou/webview/IntegratedWebView$4;

    invoke-direct {v0, p0}, Lcom/tudou/webview/IntegratedWebView$4;-><init>(Lcom/tudou/webview/IntegratedWebView;)V

    iput-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->refresh:Landroid/view/View$OnClickListener;

    .line 347
    new-instance v0, Lcom/tudou/webview/IntegratedWebView$TimeOutHanlder;

    invoke-direct {v0, p0}, Lcom/tudou/webview/IntegratedWebView$TimeOutHanlder;-><init>(Lcom/tudou/webview/IntegratedWebView;)V

    iput-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->mHandler:Lcom/tudou/webview/IntegratedWebView$TimeOutHanlder;

    .line 56
    iput-object p2, p0, Lcom/tudou/webview/IntegratedWebView;->fragment:Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    .line 57
    iput-boolean p3, p0, Lcom/tudou/webview/IntegratedWebView;->isSetUserAgent:Z

    .line 58
    invoke-direct {p0, p1}, Lcom/tudou/webview/IntegratedWebView;->init(Lcom/tudou/ui/activity/BuildInBrowserActivity;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/webview/IntegratedWebView;)Lcom/tudou/ui/fragment/BuildInBrowserFragment;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/webview/IntegratedWebView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->fragment:Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tudou/webview/IntegratedWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/webview/IntegratedWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tudou/webview/IntegratedWebView;->tempUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tudou/webview/IntegratedWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/webview/IntegratedWebView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/tudou/webview/IntegratedWebView;->startTimer()V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/webview/IntegratedWebView;)Lcom/tudou/webview/IntegratedWebView$OritationChangeActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/webview/IntegratedWebView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->oritationChangeActivity:Lcom/tudou/webview/IntegratedWebView$OritationChangeActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/webview/IntegratedWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/webview/IntegratedWebView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/tudou/webview/IntegratedWebView;->cancelTimer()V

    return-void
.end method

.method static synthetic access$500(Lcom/tudou/webview/IntegratedWebView;)Lcom/tudou/webview/IntegratedWebView$TimeOutHanlder;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/webview/IntegratedWebView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->mHandler:Lcom/tudou/webview/IntegratedWebView$TimeOutHanlder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/webview/IntegratedWebView;)Lcom/tudou/ui/activity/BuildInBrowserActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/webview/IntegratedWebView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->context:Lcom/tudou/ui/activity/BuildInBrowserActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/webview/IntegratedWebView;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/webview/IntegratedWebView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->pb:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/webview/IntegratedWebView;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/webview/IntegratedWebView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->webviewNoResult:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method private cancelTimer()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 342
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->timer:Ljava/util/Timer;

    .line 345
    :cond_0
    return-void
.end method

.method private init(Lcom/tudou/ui/activity/BuildInBrowserActivity;)V
    .locals 8
    .param p1, "context"    # Lcom/tudou/ui/activity/BuildInBrowserActivity;

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 62
    iput-object p1, p0, Lcom/tudou/webview/IntegratedWebView;->context:Lcom/tudou/ui/activity/BuildInBrowserActivity;

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 64
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03004d

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 66
    .local v2, "wbContainer":Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/tudou/webview/IntegratedWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    const v3, 0x7f0c01ef

    invoke-virtual {p0, v3}, Lcom/tudou/webview/IntegratedWebView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    .line 70
    const v3, 0x7f0c01f0

    invoke-virtual {p0, v3}, Lcom/tudou/webview/IntegratedWebView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/youku/widget/HintView;

    iput-object v3, p0, Lcom/tudou/webview/IntegratedWebView;->webviewNoResult:Lcom/youku/widget/HintView;

    .line 71
    iget-object v3, p0, Lcom/tudou/webview/IntegratedWebView;->webviewNoResult:Lcom/youku/widget/HintView;

    iget-object v4, p0, Lcom/tudou/webview/IntegratedWebView;->refresh:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v3, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 74
    iget-object v3, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    new-instance v4, Lcom/tudou/laifeng/lfJsObj;

    invoke-direct {v4, p1}, Lcom/tudou/laifeng/lfJsObj;-><init>(Landroid/content/Context;)V

    const-string v5, "lfJsObj"

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v3, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    new-instance v4, Lcom/tudou/webview/WebViewJsObj;

    new-instance v5, Lcom/tudou/webview/IntegratedWebView$1;

    invoke-direct {v5, p0}, Lcom/tudou/webview/IntegratedWebView$1;-><init>(Lcom/tudou/webview/IntegratedWebView;)V

    invoke-direct {v4, p1, v5}, Lcom/tudou/webview/WebViewJsObj;-><init>(Landroid/app/Activity;Lcom/tudou/webview/WebViewJsObj$DoSomethingListener;)V

    const-string v5, "WebViewJsObj"

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v3, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    new-instance v4, Lcom/tudou/gamecenter/GameWebViewJSInterface;

    invoke-direct {v4}, Lcom/tudou/gamecenter/GameWebViewJSInterface;-><init>()V

    const-string v5, "gamecenter"

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v3, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 89
    const v3, 0x7f0c0154

    invoke-virtual {p0, v3}, Lcom/tudou/webview/IntegratedWebView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/tudou/webview/IntegratedWebView;->pb:Landroid/widget/ProgressBar;

    .line 90
    iget-object v3, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v3, v7}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 91
    iget-object v3, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 93
    iget-object v3, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 94
    iget-object v3, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 96
    iget-object v3, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 97
    iget-object v3, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 99
    iget-object v3, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 101
    .local v1, "setting":Landroid/webkit/WebSettings;
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 102
    const-wide/32 v4, 0x800000

    invoke-virtual {v1, v4, v5}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 103
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 106
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 107
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 108
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 109
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 110
    iget-boolean v3, p0, Lcom/tudou/webview/IntegratedWebView;->isSetUserAgent:Z

    if-eqz v3, :cond_0

    .line 111
    sget-object v3, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 113
    :cond_0
    iget-object v3, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v3, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 114
    iget-object v3, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    new-instance v4, Lcom/tudou/webview/IntegratedWebView$2;

    invoke-direct {v4, p0, p1}, Lcom/tudou/webview/IntegratedWebView$2;-><init>(Lcom/tudou/webview/IntegratedWebView;Lcom/tudou/ui/activity/BuildInBrowserActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 181
    iget-object v3, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->requestFocus()Z

    .line 182
    return-void
.end method

.method private startTimer()V
    .locals 4

    .prologue
    .line 314
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->timer:Ljava/util/Timer;

    .line 317
    :cond_0
    new-instance v0, Lcom/tudou/webview/IntegratedWebView$5;

    invoke-direct {v0, p0}, Lcom/tudou/webview/IntegratedWebView$5;-><init>(Lcom/tudou/webview/IntegratedWebView;)V

    iput-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->tt:Ljava/util/TimerTask;

    .line 331
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/tudou/webview/IntegratedWebView;->tt:Ljava/util/TimerTask;

    const-wide/32 v2, 0x88b8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :cond_1
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    .line 273
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copyLink()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->tempUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->tempUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/youku/util/Util;->copy(Ljava/lang/String;)V

    .line 284
    :cond_0
    return-void
.end method

.method public destroyWebView()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 245
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 247
    return-void
.end method

.method public getOritationChangeActivity()Lcom/tudou/webview/IntegratedWebView$OritationChangeActivity;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->oritationChangeActivity:Lcom/tudou/webview/IntegratedWebView$OritationChangeActivity;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 279
    :cond_0
    return-void
.end method

.method public goInBrowser(Landroid/app/Activity;)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->tempUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/youku/util/Util;->goSystemBrowser(Landroid/app/Activity;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 263
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/tudou/webview/IntegratedWebView;->removeView(Landroid/view/View;)V

    .line 264
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->chromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->chromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 268
    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/tudou/webview/IntegratedWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 230
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v3, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->stopLoading()V

    .line 234
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 235
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 236
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.android.browser.application_id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 259
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 253
    :cond_0
    return-void
.end method

.method public reloadUrl()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->webviewNoResult:Lcom/youku/widget/HintView;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->webviewNoResult:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->pb:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->pb:Landroid/widget/ProgressBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 299
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 300
    return-void
.end method

.method public setOritationChangeActivity(Lcom/tudou/webview/IntegratedWebView$OritationChangeActivity;)V
    .locals 0
    .param p1, "oritationChangeActivity"    # Lcom/tudou/webview/IntegratedWebView$OritationChangeActivity;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/tudou/webview/IntegratedWebView;->oritationChangeActivity:Lcom/tudou/webview/IntegratedWebView$OritationChangeActivity;

    .line 368
    return-void
.end method

.method public setVideoPlayerClient(Z)V
    .locals 3
    .param p1, "isScreenLandscape"    # Z

    .prologue
    .line 185
    new-instance v0, Lcom/tudou/webview/IntegratedWebView$3;

    invoke-direct {v0, p0, p1}, Lcom/tudou/webview/IntegratedWebView$3;-><init>(Lcom/tudou/webview/IntegratedWebView;Z)V

    iput-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->chromeClient:Landroid/webkit/WebChromeClient;

    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tudou/webview/IntegratedWebView;->chromeClient:Landroid/webkit/WebChromeClient;

    const-string v2, "VideoComplete"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/tudou/webview/IntegratedWebView;->wb:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tudou/webview/IntegratedWebView;->chromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 222
    return-void
.end method

.class public Lcom/tudou/ui/activity/WebViewActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "WebViewActivity.java"

# interfaces
.implements Lcom/youku/widget/WebViewPopManager$OnPopItemClickListener;


# static fields
.field private static final MESSAGE_TIME_OUT:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "WebViewActivity"

.field public static final TIME_OUT:J = 0x88b8L


# instance fields
.field private btn_try_load_webview:Landroid/widget/Button;

.field private jsInterface:Ljava/lang/Object;

.field private layout_load_webview_failed:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImgBack:Landroid/widget/ImageView;

.field private mImgMore:Landroid/widget/ImageView;

.field private mIsOld:Z

.field private mTxtTitleCenter:Landroid/widget/TextView;

.field private mTxtTitleLeft:Landroid/widget/TextView;

.field private mWebView:Landroid/webkit/WebView;

.field private progress:Landroid/widget/ProgressBar;

.field private timer:Ljava/util/Timer;

.field private tt:Ljava/util/TimerTask;

.field private url:Ljava/lang/String;

.field private wbManager:Lcom/youku/widget/WebViewPopManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    .line 57
    new-instance v0, Lcom/tudou/ui/activity/WebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/WebViewActivity$1;-><init>(Lcom/tudou/ui/activity/WebViewActivity;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->mHandler:Landroid/os/Handler;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->mIsOld:Z

    .line 371
    new-instance v0, Lcom/tudou/ui/activity/WebViewActivity$8;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/WebViewActivity$8;-><init>(Lcom/tudou/ui/activity/WebViewActivity;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->jsInterface:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/activity/WebViewActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/WebViewActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/activity/WebViewActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/WebViewActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->layout_load_webview_failed:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/activity/WebViewActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/WebViewActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->mImgMore:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/activity/WebViewActivity;)Lcom/youku/widget/WebViewPopManager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/WebViewActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->wbManager:Lcom/youku/widget/WebViewPopManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/activity/WebViewActivity;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/WebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/ui/activity/WebViewActivity;->loadWebView(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/tudou/ui/activity/WebViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/WebViewActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/tudou/ui/activity/WebViewActivity;->cancelTimer()V

    return-void
.end method

.method static synthetic access$600(Lcom/tudou/ui/activity/WebViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/WebViewActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/tudou/ui/activity/WebViewActivity;->startTimer()V

    return-void
.end method

.method static synthetic access$700(Lcom/tudou/ui/activity/WebViewActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/WebViewActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/activity/WebViewActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/WebViewActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelTimer()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 361
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->timer:Ljava/util/Timer;

    .line 364
    :cond_0
    return-void
.end method

.method private loadWebView(Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "getCookie"    # Z
    .param p3, "isNeedReTry"    # Z

    .prologue
    const/4 v6, 0x1

    .line 215
    if-eqz p1, :cond_4

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 217
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    invoke-static {p0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 222
    iget-object v3, p0, Lcom/tudou/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 223
    iget-object v3, p0, Lcom/tudou/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 224
    iget-object v3, p0, Lcom/tudou/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const-wide/32 v4, 0x800000

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 225
    iget-object v3, p0, Lcom/tudou/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 226
    iget-object v3, p0, Lcom/tudou/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/tudou/ui/activity/WebViewActivity;->jsInterface:Ljava/lang/Object;

    const-string/jumbo v5, "youku"

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object v3, p0, Lcom/tudou/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/tudou/ui/activity/WebViewActivity$5;

    invoke-direct {v4, p0}, Lcom/tudou/ui/activity/WebViewActivity$5;-><init>(Lcom/tudou/ui/activity/WebViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 284
    iget-object v3, p0, Lcom/tudou/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/tudou/ui/activity/WebViewActivity$6;

    invoke-direct {v4, p0}, Lcom/tudou/ui/activity/WebViewActivity$6;-><init>(Lcom/tudou/ui/activity/WebViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 299
    iget-object v3, p0, Lcom/tudou/ui/activity/WebViewActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 300
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 301
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 302
    if-eqz p2, :cond_1

    .line 303
    sget-object v3, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v3, ""

    sget-object v4, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 304
    sget-object v3, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "cookies":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 306
    aget-object v3, v1, v2

    invoke-virtual {v0, p1, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    .end local v1    # "cookies":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 311
    :cond_1
    const-string v3, "lelouch"

    invoke-static {v3, p1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v3, p0, Lcom/tudou/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 328
    .end local v0    # "cookieManager":Landroid/webkit/CookieManager;
    :goto_1
    return-void

    .line 315
    :cond_2
    if-eqz p3, :cond_3

    .line 316
    iget-object v3, p0, Lcom/tudou/ui/activity/WebViewActivity;->layout_load_webview_failed:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 317
    iget-object v3, p0, Lcom/tudou/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_1

    .line 319
    :cond_3
    const v3, 0x7f0d02c3

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(I)V

    .line 321
    invoke-virtual {p0}, Lcom/tudou/ui/activity/WebViewActivity;->finish()V

    goto :goto_1

    .line 325
    :cond_4
    const v3, 0x7f0d0478

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(I)V

    .line 326
    invoke-virtual {p0}, Lcom/tudou/ui/activity/WebViewActivity;->finish()V

    goto :goto_1
.end method

.method private setTitleModeOld(ZLjava/lang/String;)V
    .locals 4
    .param p1, "isOld"    # Z
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 196
    iput-boolean p1, p0, Lcom/tudou/ui/activity/WebViewActivity;->mIsOld:Z

    .line 197
    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->mTxtTitleLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->mTxtTitleCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->mTxtTitleCenter:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->mImgBack:Landroid/widget/ImageView;

    const v1, 0x7f0208e1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->mImgMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 212
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->mTxtTitleLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->mTxtTitleCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->mTxtTitleLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->mImgBack:Landroid/widget/ImageView;

    const v1, 0x7f0200a7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->mImgMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private startTimer()V
    .locals 4

    .prologue
    .line 331
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->timer:Ljava/util/Timer;

    .line 334
    :cond_0
    new-instance v0, Lcom/tudou/ui/activity/WebViewActivity$7;

    invoke-direct {v0, p0}, Lcom/tudou/ui/activity/WebViewActivity$7;-><init>(Lcom/tudou/ui/activity/WebViewActivity;)V

    iput-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->tt:Ljava/util/TimerTask;

    .line 350
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/tudou/ui/activity/WebViewActivity;->tt:Ljava/util/TimerTask;

    const-wide/32 v2, 0x88b8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :cond_1
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public copyLink()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/youku/util/Util;->copy(Ljava/lang/String;)V

    .line 393
    :cond_0
    return-void
.end method

.method public goInBrowser(Landroid/app/Activity;)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/youku/util/Util;->goSystemBrowser(Landroid/app/Activity;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 92
    iput-boolean v9, p0, Lcom/tudou/ui/activity/WebViewActivity;->mAjust:Z

    .line 93
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0, v9}, Lcom/tudou/ui/activity/WebViewActivity;->requestWindowFeature(I)Z

    .line 95
    const v7, 0x7f030066

    invoke-virtual {p0, v7}, Lcom/tudou/ui/activity/WebViewActivity;->setContentView(I)V

    .line 96
    iput-object p0, p0, Lcom/tudou/ui/activity/WebViewActivity;->mContext:Landroid/content/Context;

    .line 97
    invoke-static {p0}, Lcom/youku/widget/WebViewPopManager;->getInstance(Landroid/app/Activity;)Lcom/youku/widget/WebViewPopManager;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/ui/activity/WebViewActivity;->wbManager:Lcom/youku/widget/WebViewPopManager;

    .line 98
    iget-object v7, p0, Lcom/tudou/ui/activity/WebViewActivity;->wbManager:Lcom/youku/widget/WebViewPopManager;

    invoke-virtual {v7, p0}, Lcom/youku/widget/WebViewPopManager;->setOnPopItemClickListener(Lcom/youku/widget/WebViewPopManager$OnPopItemClickListener;)V

    .line 99
    const v7, 0x7f0c023e

    invoke-virtual {p0, v7}, Lcom/tudou/ui/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/webkit/WebView;

    iput-object v7, p0, Lcom/tudou/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 100
    const v7, 0x7f0c023b

    invoke-virtual {p0, v7}, Lcom/tudou/ui/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/tudou/ui/activity/WebViewActivity;->layout_load_webview_failed:Landroid/widget/RelativeLayout;

    .line 101
    const v7, 0x7f0c023d

    invoke-virtual {p0, v7}, Lcom/tudou/ui/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/tudou/ui/activity/WebViewActivity;->btn_try_load_webview:Landroid/widget/Button;

    .line 103
    const v7, 0x7f0c0094

    invoke-virtual {p0, v7}, Lcom/tudou/ui/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 104
    .local v4, "statusBarView":Landroid/view/View;
    invoke-static {v4}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 105
    const v7, 0x7f0c06b1

    invoke-virtual {p0, v7}, Lcom/tudou/ui/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/tudou/ui/activity/WebViewActivity;->mTxtTitleLeft:Landroid/widget/TextView;

    .line 106
    const v7, 0x7f0c0db6

    invoke-virtual {p0, v7}, Lcom/tudou/ui/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/tudou/ui/activity/WebViewActivity;->mTxtTitleCenter:Landroid/widget/TextView;

    .line 108
    const v7, 0x7f0c024f

    invoke-virtual {p0, v7}, Lcom/tudou/ui/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/tudou/ui/activity/WebViewActivity;->mImgBack:Landroid/widget/ImageView;

    .line 109
    iget-object v7, p0, Lcom/tudou/ui/activity/WebViewActivity;->mImgBack:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v7, p0, Lcom/tudou/ui/activity/WebViewActivity;->mImgBack:Landroid/widget/ImageView;

    new-instance v8, Lcom/tudou/ui/activity/WebViewActivity$2;

    invoke-direct {v8, p0}, Lcom/tudou/ui/activity/WebViewActivity$2;-><init>(Lcom/tudou/ui/activity/WebViewActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v7, 0x7f0c0d06

    invoke-virtual {p0, v7}, Lcom/tudou/ui/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/tudou/ui/activity/WebViewActivity;->mImgMore:Landroid/widget/ImageView;

    .line 119
    iget-object v7, p0, Lcom/tudou/ui/activity/WebViewActivity;->mImgMore:Landroid/widget/ImageView;

    new-instance v8, Lcom/tudou/ui/activity/WebViewActivity$3;

    invoke-direct {v8, p0}, Lcom/tudou/ui/activity/WebViewActivity$3;-><init>(Lcom/tudou/ui/activity/WebViewActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v7, 0x7f0c0154

    invoke-virtual {p0, v7}, Lcom/tudou/ui/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, p0, Lcom/tudou/ui/activity/WebViewActivity;->progress:Landroid/widget/ProgressBar;

    .line 127
    invoke-virtual {p0}, Lcom/tudou/ui/activity/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 129
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "from"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "from":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 131
    const-string/jumbo v7, "targetIntent"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "targetIntent":Ljava/lang/String;
    const-string/jumbo v7, "targetIntent"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "targetIntent"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "FeedBack"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 138
    const v7, 0x7f0d0263

    invoke-virtual {p0, v7}, Lcom/tudou/ui/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v9, v7}, Lcom/tudou/ui/activity/WebViewActivity;->setTitleModeOld(ZLjava/lang/String;)V

    .line 139
    const/4 v3, 0x1

    .line 172
    .end local v5    # "targetIntent":Ljava/lang/String;
    .local v3, "isNeedReTry":Z
    :goto_0
    const-string/jumbo v7, "url"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/ui/activity/WebViewActivity;->url:Ljava/lang/String;

    .line 173
    const-string v7, "getCookie"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 174
    .local v1, "getCookie":Z
    iget-object v7, p0, Lcom/tudou/ui/activity/WebViewActivity;->url:Ljava/lang/String;

    invoke-direct {p0, v7, v1, v3}, Lcom/tudou/ui/activity/WebViewActivity;->loadWebView(Ljava/lang/String;ZZ)V

    .line 175
    iget-object v7, p0, Lcom/tudou/ui/activity/WebViewActivity;->btn_try_load_webview:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tudou/ui/activity/WebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 176
    iget-object v7, p0, Lcom/tudou/ui/activity/WebViewActivity;->btn_try_load_webview:Landroid/widget/Button;

    new-instance v8, Lcom/tudou/ui/activity/WebViewActivity$4;

    invoke-direct {v8, p0, v1, v3}, Lcom/tudou/ui/activity/WebViewActivity$4;-><init>(Lcom/tudou/ui/activity/WebViewActivity;ZZ)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    return-void

    .line 140
    .end local v1    # "getCookie":Z
    .end local v3    # "isNeedReTry":Z
    .restart local v5    # "targetIntent":Ljava/lang/String;
    :cond_0
    const-string/jumbo v7, "targetIntent"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "targetIntent"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "About"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 144
    const v7, 0x7f0d0250

    invoke-virtual {p0, v7}, Lcom/tudou/ui/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v9, v7}, Lcom/tudou/ui/activity/WebViewActivity;->setTitleModeOld(ZLjava/lang/String;)V

    .line 145
    const/4 v3, 0x0

    .restart local v3    # "isNeedReTry":Z
    goto :goto_0

    .line 146
    .end local v3    # "isNeedReTry":Z
    :cond_1
    if-eqz v5, :cond_2

    const-string/jumbo v7, "upload"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 149
    const v7, 0x7f0d000d

    invoke-virtual {p0, v7}, Lcom/tudou/ui/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v9, v7}, Lcom/tudou/ui/activity/WebViewActivity;->setTitleModeOld(ZLjava/lang/String;)V

    .line 150
    const/4 v3, 0x0

    .restart local v3    # "isNeedReTry":Z
    goto :goto_0

    .line 151
    .end local v3    # "isNeedReTry":Z
    :cond_2
    if-eqz v5, :cond_3

    const-string/jumbo v7, "vipbuy"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 154
    const v7, 0x7f0d0471

    invoke-virtual {p0, v7}, Lcom/tudou/ui/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v9, v7}, Lcom/tudou/ui/activity/WebViewActivity;->setTitleModeOld(ZLjava/lang/String;)V

    .line 155
    const/4 v3, 0x0

    .restart local v3    # "isNeedReTry":Z
    goto :goto_0

    .line 156
    .end local v3    # "isNeedReTry":Z
    :cond_3
    if-eqz v5, :cond_4

    const-string v7, "find_password"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 157
    const v7, 0x7f0d0127

    invoke-virtual {p0, v7}, Lcom/tudou/ui/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v9, v7}, Lcom/tudou/ui/activity/WebViewActivity;->setTitleModeOld(ZLjava/lang/String;)V

    .line 158
    const/4 v3, 0x1

    .restart local v3    # "isNeedReTry":Z
    goto/16 :goto_0

    .line 162
    .end local v3    # "isNeedReTry":Z
    :cond_4
    const v7, 0x7f0d039b

    invoke-virtual {p0, v7}, Lcom/tudou/ui/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v9, v7}, Lcom/tudou/ui/activity/WebViewActivity;->setTitleModeOld(ZLjava/lang/String;)V

    .line 163
    const/4 v3, 0x0

    .restart local v3    # "isNeedReTry":Z
    goto/16 :goto_0

    .line 166
    .end local v3    # "isNeedReTry":Z
    .end local v5    # "targetIntent":Ljava/lang/String;
    :cond_5
    const-string/jumbo v7, "title"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, "title":Ljava/lang/String;
    invoke-direct {p0, v10, v6}, Lcom/tudou/ui/activity/WebViewActivity;->setTitleModeOld(ZLjava/lang/String;)V

    .line 170
    const/4 v3, 0x1

    .restart local v3    # "isNeedReTry":Z
    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/tudou/ui/activity/WebViewActivity;->cancelTimer()V

    .line 421
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onDestroy()V

    .line 422
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/tudou/ui/activity/WebViewActivity;->reloadUrl()V

    .line 398
    return-void
.end method

.method public reloadUrl()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 406
    iget-boolean v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->mIsOld:Z

    if-nez v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 408
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 413
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 415
    :cond_0
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/activity/WebViewActivity;->progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.class public Lcom/youku/player/ad/AdWebViewActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AdWebViewActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private countNumber:I

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mImageBackWrap:Landroid/widget/RelativeLayout;

.field private mImageUpdateWrap:Landroid/widget/RelativeLayout;

.field private mIsYouku:Z

.field private mTitle:Landroid/widget/TextView;

.field private mWebView:Landroid/webkit/WebView;

.field private mprogreBar:Landroid/widget/ProgressBar;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/youku/player/LogTag;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/youku/player/ad/AdWebViewActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/player/ad/AdWebViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->countNumber:I

    .line 46
    iput-object v1, p0, Lcom/youku/player/ad/AdWebViewActivity;->mTitle:Landroid/widget/TextView;

    .line 47
    iput-object v1, p0, Lcom/youku/player/ad/AdWebViewActivity;->mImageBackWrap:Landroid/widget/RelativeLayout;

    .line 48
    iput-object v1, p0, Lcom/youku/player/ad/AdWebViewActivity;->mImageUpdateWrap:Landroid/widget/RelativeLayout;

    .line 49
    iput-object v1, p0, Lcom/youku/player/ad/AdWebViewActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->mIsYouku:Z

    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/ad/AdWebViewActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/AdWebViewActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/player/ad/AdWebViewActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/AdWebViewActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/youku/player/ad/AdWebViewActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/player/ad/AdWebViewActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/AdWebViewActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->mprogreBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/player/ad/AdWebViewActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/AdWebViewActivity;

    .prologue
    .line 37
    iget v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->countNumber:I

    return v0
.end method

.method static synthetic access$408(Lcom/youku/player/ad/AdWebViewActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/youku/player/ad/AdWebViewActivity;

    .prologue
    .line 37
    iget v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->countNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/youku/player/ad/AdWebViewActivity;->countNumber:I

    return v0
.end method

.method static synthetic access$500(Lcom/youku/player/ad/AdWebViewActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/ad/AdWebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/youku/player/ad/AdWebViewActivity;->setWebViewTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/youku/player/ad/AdWebViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/AdWebViewActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->url:Ljava/lang/String;

    return-object v0
.end method

.method private setWebViewTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 333
    sget v0, Lcom/youku/android/player/R$id;->custom_title:I

    invoke-virtual {p0, v0}, Lcom/youku/player/ad/AdWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->mTitle:Landroid/widget/TextView;

    .line 334
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    :cond_0
    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    const-string/jumbo v0, "webview\u9875"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 296
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0, v6}, Lcom/youku/player/ad/AdWebViewActivity;->requestWindowFeature(I)Z

    .line 60
    sget v4, Lcom/youku/android/player/R$layout;->yp_ad_activity_webview:I

    invoke-virtual {p0, v4}, Lcom/youku/player/ad/AdWebViewActivity;->setContentView(I)V

    .line 61
    iput-object p0, p0, Lcom/youku/player/ad/AdWebViewActivity;->mContext:Landroid/content/Context;

    .line 63
    sget v4, Lcom/youku/android/player/R$id;->webview_container:I

    invoke-virtual {p0, v4}, Lcom/youku/player/ad/AdWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 64
    sget v4, Lcom/youku/android/player/R$id;->webView:I

    invoke-virtual {p0, v4}, Lcom/youku/player/ad/AdWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    iput-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 65
    sget v4, Lcom/youku/android/player/R$id;->progress:I

    invoke-virtual {p0, v4}, Lcom/youku/player/ad/AdWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mprogreBar:Landroid/widget/ProgressBar;

    .line 67
    invoke-virtual {p0}, Lcom/youku/player/ad/AdWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 68
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->url:Ljava/lang/String;

    .line 69
    const-string v4, "isYouku"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mIsYouku:Z

    .line 70
    const-string v4, "getCookie"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 71
    .local v0, "getCookie":Z
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->url:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string v4, ""

    iget-object v5, p0, Lcom/youku/player/ad/AdWebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 73
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 74
    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mContext:Landroid/content/Context;

    sget v5, Lcom/youku/android/player/R$string;->player_tips_use_3g:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/player/util/PlayerUtil;->showTips(Ljava/lang/String;)V

    .line 79
    :cond_0
    sget v4, Lcom/youku/android/player/R$id;->webview_custom_back_wrap:I

    invoke-virtual {p0, v4}, Lcom/youku/player/ad/AdWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mImageBackWrap:Landroid/widget/RelativeLayout;

    .line 80
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mImageBackWrap:Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/youku/player/ad/AdWebViewActivity$1;

    invoke-direct {v5, p0}, Lcom/youku/player/ad/AdWebViewActivity$1;-><init>(Lcom/youku/player/ad/AdWebViewActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    sget v4, Lcom/youku/android/player/R$id;->webview_custom_update_wrap:I

    invoke-virtual {p0, v4}, Lcom/youku/player/ad/AdWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mImageUpdateWrap:Landroid/widget/RelativeLayout;

    .line 89
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mImageUpdateWrap:Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/youku/player/ad/AdWebViewActivity$2;

    invoke-direct {v5, p0}, Lcom/youku/player/ad/AdWebViewActivity$2;-><init>(Lcom/youku/player/ad/AdWebViewActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 105
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_1

    .line 106
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 108
    :cond_1
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 109
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 110
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 111
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 114
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 116
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_2

    .line 117
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setEnableSmoothTransition(Z)V

    .line 120
    :cond_2
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 121
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 122
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 124
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/youku/player/ad/AdWebViewActivity$3;

    invoke-direct {v5, p0}, Lcom/youku/player/ad/AdWebViewActivity$3;-><init>(Lcom/youku/player/ad/AdWebViewActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 209
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/youku/player/ad/AdWebViewActivity$4;

    invoke-direct {v5, p0}, Lcom/youku/player/ad/AdWebViewActivity$4;-><init>(Lcom/youku/player/ad/AdWebViewActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 230
    new-instance v1, Landroid/os/Handler;

    new-instance v4, Lcom/youku/player/ad/AdWebViewActivity$5;

    invoke-direct {v4, p0}, Lcom/youku/player/ad/AdWebViewActivity$5;-><init>(Lcom/youku/player/ad/AdWebViewActivity;)V

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 240
    .local v1, "handler":Landroid/os/Handler;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/youku/player/ad/AdWebViewActivity$6;

    invoke-direct {v4, p0, v0, v1}, Lcom/youku/player/ad/AdWebViewActivity$6;-><init>(Lcom/youku/player/ad/AdWebViewActivity;ZLandroid/os/Handler;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 264
    .local v3, "temp":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->run()V

    .line 265
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mContext:Landroid/content/Context;

    sget v5, Lcom/youku/android/player/R$string;->player_webview_tip:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/player/util/PlayerUtil;->showTips(Ljava/lang/String;)V

    .line 277
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v3    # "temp":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 268
    :cond_3
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mContext:Landroid/content/Context;

    sget v5, Lcom/youku/android/player/R$string;->player_tips_no_network:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/player/util/PlayerUtil;->showTips(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/youku/player/ad/AdWebViewActivity;->finish()V

    goto :goto_0

    .line 273
    :cond_4
    iget-object v4, p0, Lcom/youku/player/ad/AdWebViewActivity;->mContext:Landroid/content/Context;

    sget v5, Lcom/youku/android/player/R$string;->player_webview_wrong_address:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/player/util/PlayerUtil;->showTips(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/youku/player/ad/AdWebViewActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 302
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 303
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 304
    iput-object v2, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 306
    :cond_0
    iput-object v2, p0, Lcom/youku/player/ad/AdWebViewActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 307
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 308
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 286
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 321
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 323
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 326
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 313
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 316
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/player/ad/AdWebViewActivity;->countNumber:I

    .line 317
    return-void
.end method

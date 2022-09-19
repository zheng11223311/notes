.class public Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;
.super Lcom/youku/player/ad/imagead/ImageAd;
.source "ImageAdYoukuHtml5.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;,
        Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;
    }
.end annotation


# instance fields
.field private closeBtn:Landroid/view/View;

.field private isOnClick:Z

.field private mADURL:Ljava/lang/String;

.field private mAdWeb:Landroid/webkit/WebView;

.field private mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

.field private mTimer:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;

.field private mTimerText:Landroid/widget/TextView;

.field private mTimerWrap:Landroid/widget/LinearLayout;

.field private mWebContainer:Landroid/widget/LinearLayout;

.field private mWebViewClient:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p4, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youku/player/ad/imagead/ImageAd;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    .line 32
    iput-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdWeb:Landroid/webkit/WebView;

    .line 33
    iput-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mWebViewClient:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->isOnClick:Z

    .line 45
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/android/player/R$layout;->yp_player_ad_image_youku_html5_container:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdView:Landroid/view/View;

    .line 46
    invoke-direct {p0}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->findView()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mTimerText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;)Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;
    .param p1, "x1"    # Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mTimerWrap:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mWebViewClient:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->isOnClick:Z

    return v0
.end method

.method static synthetic access$602(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->isOnClick:Z

    return p1
.end method

.method static synthetic access$700(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)Lcom/youku/player/goplay/AdvInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    return-object v0
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->plugin_full_ad_webview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mWebContainer:Landroid/widget/LinearLayout;

    .line 52
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->btn_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->closeBtn:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->closeBtn:Landroid/view/View;

    new-instance v1, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$1;

    invoke-direct {v1, p0}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$1;-><init>(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->image_ad_timer_wrap:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mTimerWrap:Landroid/widget/LinearLayout;

    .line 65
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->image_ad_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mTimerText:Landroid/widget/TextView;

    .line 67
    return-void
.end method

.method private startYoukuHtml5Ad()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 203
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdWeb:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mWebContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 205
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdWeb:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->disposeAdLoss(I)V

    .line 260
    :goto_0
    return-void

    .line 211
    :cond_2
    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdWeb:Landroid/webkit/WebView;

    .line 212
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdWeb:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 213
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdWeb:Landroid/webkit/WebView;

    invoke-virtual {v1, v3, v5}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 215
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdWeb:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 216
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mWebViewClient:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;

    if-nez v1, :cond_3

    .line 217
    new-instance v1, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;

    invoke-direct {v1, p0, v5}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;-><init>(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$1;)V

    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mWebViewClient:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;

    .line 219
    :cond_3
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mWebViewClient:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->access$202(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;Z)Z

    .line 220
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdWeb:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mWebViewClient:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 221
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdWeb:Landroid/webkit/WebView;

    new-instance v2, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$2;

    invoke-direct {v2, p0}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$2;-><init>(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 233
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 235
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdWeb:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mWebContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdWeb:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdWeb:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mADURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_1
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "start to show youku html5 ad"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget-object v1, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$3;

    invoke-direct {v2, p0}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$3;-><init>(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 239
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdWeb:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mWebContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 113
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 114
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdWeb:Landroid/webkit/WebView;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;->cancel()V

    .line 118
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->dismiss()V

    .line 124
    :cond_2
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    .line 126
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mSavedCount:I

    .line 127
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mWebViewClient:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;

    .line 128
    return-void
.end method

.method public isAutoPlayAfterClick()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->isOnClick:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->isDownLoadDialogNotShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaveOnOrientChange()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public isSaveOnResume()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public pauseTimer()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;->cancel()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;

    .line 136
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;->cancel()V

    .line 91
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->dismiss()V

    .line 97
    :cond_1
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mDownLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdWeb:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mWebContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 101
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 102
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdWeb:Landroid/webkit/WebView;

    .line 104
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mSavedCount:I

    .line 105
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mWebViewClient:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;

    .line 106
    iput-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    .line 107
    return-void
.end method

.method public setAutoPlayAfterClick(Z)V
    .locals 0
    .param p1, "autoPlay"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->isOnClick:Z

    .line 159
    return-void
.end method

.method public start(Lcom/youku/player/goplay/AdvInfo;Lcom/youku/player/ad/imagead/IImageAdCallback;)V
    .locals 3
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p2, "callback"    # Lcom/youku/player/ad/imagead/IImageAdCallback;

    .prologue
    const/4 v2, 0x0

    .line 71
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    .line 72
    iput-object p2, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    .line 73
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mADURL:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget v0, v0, Lcom/youku/player/goplay/AdvInfo;->AL:I

    iput v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mSavedCount:I

    .line 77
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mTimerText:Landroid/widget/TextView;

    iget v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mSavedCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mSavedCount:I

    if-lez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mTimerWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 83
    :goto_0
    iput-boolean v2, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->isOnClick:Z

    .line 84
    invoke-direct {p0}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->startYoukuHtml5Ad()V

    .line 85
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mTimerWrap:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public startTimer()V
    .locals 6

    .prologue
    .line 140
    iget v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mSavedCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isImageAdShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;

    iget v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mSavedCount:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;-><init>(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;JJ)V

    iput-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;

    .line 142
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mTimer:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$AdCountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 144
    :cond_0
    return-void
.end method

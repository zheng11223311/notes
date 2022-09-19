.class Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ImageAdYoukuHtml5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdWebViewClient"
.end annotation


# instance fields
.field private isGetFeedBack:Z

.field final synthetic this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;


# direct methods
.method private constructor <init>(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)V
    .locals 1

    .prologue
    .line 262
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->isGetFeedBack:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;
    .param p2, "x1"    # Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$1;

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;-><init>(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)V

    return-void
.end method

.method static synthetic access$200(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->isGetFeedBack:Z

    return v0
.end method

.method static synthetic access$202(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;
    .param p1, "x1"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->isGetFeedBack:Z

    return p1
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 267
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 268
    iget-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->isGetFeedBack:Z

    if-eqz v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient$1;

    invoke-direct {v1, p0}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient$1;-><init>(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 291
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 292
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdFailed()V

    .line 301
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->isGetFeedBack:Z

    .line 302
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 307
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u70b9\u51fb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    invoke-static {v0}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->access$600(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    invoke-static {v1}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->access$700(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)Lcom/youku/player/goplay/AdvInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/player/util/DisposableStatsUtils;->disposeCUM(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    invoke-static {v0}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->access$700(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)Lcom/youku/player/goplay/AdvInfo;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/youku/player/util/AdUtil;->isDownloadAPK(Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIDownloadApk:Lcom/youku/player/apiservice/IDownloadApk;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v1, v1, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->creatSelectDownloadDialog(Landroid/app/Activity;ZLjava/lang/String;)V

    .line 327
    :cond_1
    :goto_0
    return v3

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    invoke-static {v0, v3}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->access$602(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;Z)Z

    .line 319
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_3

    .line 320
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdDismiss()V

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoaded()V

    .line 323
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    invoke-static {v1}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->access$700(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)Lcom/youku/player/goplay/AdvInfo;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->onMoreInfoClicked(Ljava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V

    goto :goto_0
.end method

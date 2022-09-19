.class public Lcom/youku/player/plugin/PluginADPlay;
.super Lcom/youku/player/plugin/PluginVideoAd;
.source "PluginADPlay.java"

# interfaces
.implements Lcom/youku/player/apiservice/ILifeCycle;
.implements Lcom/youku/player/apiservice/IAdPlayerCallback;


# instance fields
.field protected TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p4, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youku/player/plugin/PluginVideoAd;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    .line 39
    const-string v0, "PluginADPlay"

    iput-object v0, p0, Lcom/youku/player/plugin/PluginADPlay;->TAG:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/plugin/PluginADPlay;Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginADPlay;
    .param p1, "x1"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/youku/player/plugin/PluginADPlay;->descripClick(Lcom/youku/player/goplay/VideoAdvInfo;)V

    return-void
.end method

.method private descripClick(Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 5
    .param p1, "adInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 448
    iget-object v2, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v2, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/AdvInfo;

    .line 453
    .local v0, "advInfo":Lcom/youku/player/goplay/AdvInfo;
    if-eqz v0, :cond_0

    .line 456
    iget-object v1, v0, Lcom/youku/player/goplay/AdvInfo;->CU:Ljava/lang/String;

    .line 457
    .local v1, "url":Ljava/lang/String;
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u70b9\u51fburl-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    if-lez v2, :cond_0

    .line 462
    iget-object v2, p0, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeCUM(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V

    .line 463
    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Lcom/youku/player/util/AdUtil;->isDownloadAPK(Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIDownloadApk:Lcom/youku/player/apiservice/IDownloadApk;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_2

    .line 466
    iget-object v2, p0, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v3

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/youku/player/plugin/PluginADPlay;->creatSelectDownloadDialog(Landroid/app/Activity;ZLjava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V

    goto :goto_0

    .line 469
    :cond_2
    iget-object v2, p0, Lcom/youku/player/plugin/PluginADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v2, v1, v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->onMoreInfoClicked(Ljava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V

    goto :goto_0
.end method

.method private startPlayByAdButton()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdvShowFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 89
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isAdvEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getAdPausedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->seekToPausedADShowing(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getAdvInfo()Lcom/youku/player/goplay/AdvInfo;
    .locals 3

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v1, v1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/goplay/AdvInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getVideoAdvInfo()Lcom/youku/player/goplay/VideoAdvInfo;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/youku/player/plugin/PluginVideoAd;->init(Landroid/content/Context;)V

    .line 49
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay;->play_adButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/youku/player/plugin/PluginADPlay$1;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginADPlay$1;-><init>(Lcom/youku/player/plugin/PluginADPlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method public onADCountUpdate(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    .line 424
    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getCurrentPosition()I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 425
    .local v0, "currentPosition":I
    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/youku/player/plugin/PluginADPlay$10;

    invoke-direct {v2, p0, p1, v0}, Lcom/youku/player/plugin/PluginADPlay$10;-><init>(Lcom/youku/player/plugin/PluginADPlay;II)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 432
    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isOfflinePrerollAd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v3, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getOfflinePrerollAd()Lcom/youdo/vo/XAdInstance;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/youku/player/util/DisposableStatsUtils;->disposeOfflineSU(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;ILcom/youdo/vo/XAdInstance;)V

    .line 438
    :goto_0
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginADPlay;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/youku/player/plugin/PluginADPlay;->isInteractiveAd(Lcom/youku/player/goplay/AdvInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginADPlay;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v1

    iget v1, v1, Lcom/youku/player/goplay/AdvInfo;->AL:I

    invoke-virtual {p0, v0, v1}, Lcom/youku/player/plugin/PluginADPlay;->setInteractiveAdPlayheadTime(II)V

    .line 441
    :cond_0
    return-void

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v1, v2, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeSU(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;I)V

    goto :goto_0
.end method

.method public onAdEnd(I)Z
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 375
    iget-object v2, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_0

    .line 376
    iget-object v2, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v5, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    .line 378
    :cond_0
    invoke-static {}, Lcom/youku/player/Track;->onAdEnd()V

    .line 379
    iget-object v2, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_1

    .line 381
    iget-object v2, p0, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/youku/player/util/AnalyticsWrapper;->adPlayEnd(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/AdvInfo;)V

    .line 386
    :cond_1
    iget-object v2, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isOfflinePrerollAd()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 387
    iget-object v2, p0, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v4}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getOfflinePrerollAd()Lcom/youdo/vo/XAdInstance;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/youku/player/util/DisposableStatsUtils;->disposeOfflineSUE(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Lcom/youdo/vo/XAdInstance;)V

    .line 396
    :goto_0
    iget-object v2, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->removePlayedAdv()V

    .line 397
    iget-object v2, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 398
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mICacheInfo:Lcom/youku/player/apiservice/ICacheInfo;

    .line 399
    .local v0, "download":Lcom/youku/player/apiservice/ICacheInfo;
    if-eqz v0, :cond_2

    .line 400
    iget-object v2, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/youku/player/apiservice/ICacheInfo;->isDownloadFinished(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 401
    iget-object v2, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/youku/player/apiservice/ICacheInfo;->getDownloadInfo(Ljava/lang/String;)Lcom/youku/player/module/VideoCacheInfo;

    move-result-object v1

    .line 403
    .local v1, "downloadInfo":Lcom/youku/player/module/VideoCacheInfo;
    sget-boolean v2, Lcom/youku/player/base/YoukuBasePlayerActivity;->isHighEnd:Z

    if-eqz v2, :cond_2

    .line 404
    iget-object v2, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/youku/player/module/VideoCacheInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "youku.m3u8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/player/util/PlayerUtil;->getM3u8File(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    .line 410
    .end local v0    # "download":Lcom/youku/player/apiservice/ICacheInfo;
    .end local v1    # "downloadInfo":Lcom/youku/player/module/VideoCacheInfo;
    :cond_2
    iget-object v2, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v2, :cond_3

    .line 411
    iget-object v2, p0, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/youku/player/plugin/PluginADPlay$9;

    invoke-direct {v3, p0}, Lcom/youku/player/plugin/PluginADPlay$9;-><init>(Lcom/youku/player/plugin/PluginADPlay;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 418
    :cond_3
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginADPlay;->dismissDownloadDialog()V

    .line 419
    return v5

    .line 391
    :cond_4
    iget-object v2, p0, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v2, v3}, Lcom/youku/player/util/DisposableStatsUtils;->disposeSUE(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;)V

    goto :goto_0
.end method

.method public onAdStart(I)Z
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 291
    invoke-super {p0, p1}, Lcom/youku/player/plugin/PluginVideoAd;->onAdStart(I)Z

    .line 292
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    sget-object v5, Lcom/youku/player/ad/AdState;->PREAD:Lcom/youku/player/ad/AdState;

    invoke-interface {v4, v5}, Lcom/youku/player/apiservice/IPlayerAdControl;->setAdState(Lcom/youku/player/ad/AdState;)V

    .line 293
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-static {v4, v5}, Lcom/youku/player/Track;->onAdStart(Landroid/content/Context;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 294
    const-string v3, ""

    .line 295
    .local v3, "vid":Ljava/lang/String;
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v4, :cond_0

    .line 297
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    .line 298
    :cond_0
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v4, v3, v5}, Lcom/youku/player/Track;->trackAdLoad(Landroid/content/Context;Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo;)V

    .line 299
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v4}, Lcom/youku/player/apiservice/IPlayerUiControl;->getYoukuPlayerView()Lcom/youku/player/base/YoukuPlayerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/player/base/YoukuPlayerView;->setPlayerBlackGone()V

    .line 300
    invoke-virtual {p0, v9}, Lcom/youku/player/plugin/PluginADPlay;->setInteractiveAdVisible(Z)V

    .line 301
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v4, :cond_6

    .line 302
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v8, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    .line 303
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v8, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdStartSended:Z

    .line 304
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v4, v4, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    if-eqz v4, :cond_6

    .line 306
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v4, v4, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v4, v4, Lcom/youku/player/goplay/VideoAdvInfo;->SKIP:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v4, v4, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v4, v4, Lcom/youku/player/goplay/VideoAdvInfo;->SKIP:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    sget v4, Lcom/youku/player/goplay/Profile;->PLANTFORM:I

    const/16 v5, 0x2712

    if-ne v4, v5, :cond_3

    .line 308
    :cond_2
    invoke-virtual {p0, v8}, Lcom/youku/player/plugin/PluginADPlay;->setSkipVisible(Z)V

    .line 310
    :cond_3
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v0

    .line 311
    .local v0, "advInfo":Lcom/youku/player/goplay/AdvInfo;
    if-eqz v0, :cond_6

    .line 312
    invoke-virtual {v0}, Lcom/youku/player/goplay/AdvInfo;->played()Z

    move-result v4

    if-nez v4, :cond_4

    .line 313
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x4

    sget-object v6, Lcom/youku/player/util/SessionUnitil;->playEvent_session:Ljava/lang/String;

    new-array v7, v8, [Lcom/youku/player/goplay/AdvInfo;

    aput-object v0, v7, v9

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/youku/player/util/DisposableStatsUtils;->disposeAdLossNew(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)V

    .line 318
    :cond_4
    invoke-virtual {v0, v8}, Lcom/youku/player/goplay/AdvInfo;->setPlayed(Z)V

    .line 319
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/player/goplay/AdvInfo;->RST:Ljava/lang/String;

    const-string v5, "hvideo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v4}, Lcom/youku/player/apiservice/IPlayerUiControl;->isOnPause()Z

    move-result v4

    if-nez v4, :cond_5

    .line 321
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginADPlay;->isInteractiveAdShow()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 322
    invoke-virtual {p0, v8}, Lcom/youku/player/plugin/PluginADPlay;->setInteractiveAdVisible(Z)V

    .line 333
    :cond_5
    :goto_0
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/youku/player/plugin/PluginADPlay;->isTrueViewAd(Lcom/youku/player/goplay/AdvInfo;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 334
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/youku/player/plugin/PluginADPlay;->showTrueViewAd(Lcom/youku/player/goplay/AdvInfo;)V

    .line 342
    .end local v0    # "advInfo":Lcom/youku/player/goplay/AdvInfo;
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v4, v8}, Lcom/youku/player/apiservice/IPlayerUiControl;->updatePlugin(I)V

    .line 343
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v4, :cond_7

    .line 344
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    new-instance v5, Lcom/youku/player/plugin/PluginADPlay$8;

    invoke-direct {v5, p0}, Lcom/youku/player/plugin/PluginADPlay$8;-><init>(Lcom/youku/player/plugin/PluginADPlay;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 351
    :cond_7
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v4, :cond_8

    .line 353
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v6, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/youku/player/util/AnalyticsWrapper;->adPlayStart(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/AdvInfo;)V

    .line 358
    :cond_8
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v4}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isOfflinePrerollAd()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 359
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v6, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v6}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getOfflinePrerollAd()Lcom/youdo/vo/XAdInstance;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/youku/player/util/DisposableStatsUtils;->disposeOfflineSUS(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Lcom/youdo/vo/XAdInstance;)V

    .line 370
    :cond_9
    :goto_2
    return v9

    .line 324
    .restart local v0    # "advInfo":Lcom/youku/player/goplay/AdvInfo;
    :cond_a
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v4, v4, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v4, v4, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/player/goplay/AdvInfo;

    iget-object v1, v4, Lcom/youku/player/goplay/AdvInfo;->BRS:Ljava/lang/String;

    .line 326
    .local v1, "brs":Ljava/lang/String;
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v4, v4, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v4, v4, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/player/goplay/AdvInfo;

    iget v2, v4, Lcom/youku/player/goplay/AdvInfo;->AL:I

    .line 328
    .local v2, "count":I
    invoke-virtual {p0, v1, v2}, Lcom/youku/player/plugin/PluginADPlay;->startInteractiveAd(Ljava/lang/String;I)V

    .line 329
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginADPlay;->showInteractiveAd()V

    goto/16 :goto_0

    .line 336
    .end local v1    # "brs":Ljava/lang/String;
    .end local v2    # "count":I
    :cond_b
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginADPlay;->hideTrueViewAd()V

    goto :goto_1

    .line 362
    .end local v0    # "advInfo":Lcom/youku/player/goplay/AdvInfo;
    :cond_c
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v4, v5}, Lcom/youku/player/util/DisposableStatsUtils;->disposeSUS(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;)V

    .line 364
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/player/goplay/AdvInfo;->VSC:Ljava/lang/String;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/player/goplay/AdvInfo;->VSC:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 367
    :cond_d
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v4}, Lcom/youku/player/util/DisposableStatsUtils;->disposeVC(Lcom/youku/player/module/VideoUrlInfo;)V

    goto :goto_2
.end method

.method public onBaseConfigurationChanged()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public onBaseResume()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/PluginADPlay;->onBaseResume(Z)V

    .line 125
    return-void
.end method

.method public onBaseResume(Z)V
    .locals 3
    .param p1, "isAutoPlay"    # Z

    .prologue
    const/4 v2, 0x1

    .line 128
    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-nez v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdvShowFinished()Z

    move-result v1

    if-nez v1, :cond_4

    .line 132
    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mAdType:I

    if-nez v1, :cond_3

    .line 133
    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v1, v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->updatePlugin(I)V

    .line 134
    if-nez p1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginADPlay;->showPlayIcon()V

    .line 136
    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlayLocalType()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x8

    .line 137
    .local v0, "visibility":I
    :goto_1
    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mSwitchParent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 136
    .end local v0    # "visibility":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mAdType:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->isImageAdShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->updatePlugin(I)V

    goto :goto_0

    .line 145
    :cond_4
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginADPlay;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginADPlay;->isCountUpdateVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    if-nez p1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginADPlay;->showPlayIcon()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 155
    invoke-super {p0}, Lcom/youku/player/plugin/PluginVideoAd;->onPause()V

    .line 156
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginADPlay;->getVideoAdvInfo()Lcom/youku/player/goplay/VideoAdvInfo;

    move-result-object v0

    .line 157
    .local v0, "adInfo":Lcom/youku/player/goplay/VideoAdvInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/youku/player/plugin/PluginADPlay$2;

    invoke-direct {v2, p0}, Lcom/youku/player/plugin/PluginADPlay$2;-><init>(Lcom/youku/player/plugin/PluginADPlay;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 174
    :cond_1
    return-void
.end method

.method public onPluginAdded()V
    .locals 3

    .prologue
    .line 184
    invoke-super {p0}, Lcom/youku/player/plugin/PluginVideoAd;->onPluginAdded()V

    .line 185
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginADPlay;->getVideoAdvInfo()Lcom/youku/player/goplay/VideoAdvInfo;

    move-result-object v0

    .line 186
    .local v0, "adInfo":Lcom/youku/player/goplay/VideoAdvInfo;
    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->ad_more:Landroid/widget/TextView;

    new-instance v2, Lcom/youku/player/plugin/PluginADPlay$3;

    invoke-direct {v2, p0, v0}, Lcom/youku/player/plugin/PluginADPlay$3;-><init>(Lcom/youku/player/plugin/PluginADPlay;Lcom/youku/player/goplay/VideoAdvInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mAdPageHolder:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/youku/player/plugin/PluginADPlay$4;

    invoke-direct {v2, p0, v0}, Lcom/youku/player/plugin/PluginADPlay$4;-><init>(Lcom/youku/player/plugin/PluginADPlay;Lcom/youku/player/goplay/VideoAdvInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mAdTrueViewSkipLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/youku/player/plugin/PluginADPlay$5;

    invoke-direct {v2, p0, v0}, Lcom/youku/player/plugin/PluginADPlay$5;-><init>(Lcom/youku/player/plugin/PluginADPlay;Lcom/youku/player/goplay/VideoAdvInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mAdTrueViewPlay:Landroid/widget/TextView;

    new-instance v2, Lcom/youku/player/plugin/PluginADPlay$6;

    invoke-direct {v2, p0, v0}, Lcom/youku/player/plugin/PluginADPlay$6;-><init>(Lcom/youku/player/plugin/PluginADPlay;Lcom/youku/player/goplay/VideoAdvInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay;->mAdPageHolder:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/youku/player/plugin/PluginADPlay$7;

    invoke-direct {v2, p0, v0}, Lcom/youku/player/plugin/PluginADPlay$7;-><init>(Lcom/youku/player/plugin/PluginADPlay;Lcom/youku/player/goplay/VideoAdvInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    :cond_0
    return-void
.end method

.method protected removeCurrentAdv()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->removePlayedAdv()V

    .line 120
    :cond_0
    return-void
.end method

.method protected startPlay()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdvShowFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginADPlay;->startPlayByAdButton()V

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    goto :goto_0
.end method

.class public Lcom/youku/player/request/LocalDownloadVideoRequest;
.super Lcom/youku/player/request/VideoRequest;
.source "LocalDownloadVideoRequest.java"


# direct methods
.method public constructor <init>(Lcom/youku/player/plugin/MediaPlayerDelegate;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p2, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/youku/player/request/VideoRequest;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;Landroid/support/v4/app/FragmentActivity;)V

    .line 30
    return-void
.end method


# virtual methods
.method public requestAdv(Lcom/youku/player/request/PlayRequest;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/IGetAdvCallBack;)V
    .locals 8
    .param p1, "playRequest"    # Lcom/youku/player/request/PlayRequest;
    .param p2, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;
    .param p3, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p4, "listener"    # Lcom/youku/player/goplay/IGetAdvCallBack;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/youku/player/request/LocalDownloadVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isUsingUMediaplyer()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/config/MediaPlayerConfiguration;->showPreAd()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/config/MediaPlayerConfiguration;->showOfflineAd()Z

    move-result v1

    if-nez v1, :cond_2

    .line 102
    :cond_0
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v2, "MediaPlayerDelegate -> playLocalVideoWithAdv   with null adv"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v1, Lcom/youku/player/util/MainThreadExecutor;

    invoke-direct {v1}, Lcom/youku/player/util/MainThreadExecutor;-><init>()V

    new-instance v2, Lcom/youku/player/request/LocalDownloadVideoRequest$1;

    invoke-direct {v2, p0, p4}, Lcom/youku/player/request/LocalDownloadVideoRequest$1;-><init>(Lcom/youku/player/request/LocalDownloadVideoRequest;Lcom/youku/player/goplay/IGetAdvCallBack;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Lcom/youku/player/util/MainThreadExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    const/4 v0, 0x0

    .line 113
    .local v0, "mAdvRequest":Lcom/youku/player/request/AdvRequest;
    sget-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IUserInfo;->isVip()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v7, 0x1

    .line 116
    .local v7, "isVip":Z
    :goto_1
    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/config/MediaPlayerConfiguration;->showOfflineAd()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v7, :cond_4

    .line 117
    new-instance v0, Lcom/youku/player/request/OfflineAdvRequest;

    .end local v0    # "mAdvRequest":Lcom/youku/player/request/AdvRequest;
    invoke-direct {v0}, Lcom/youku/player/request/OfflineAdvRequest;-><init>()V

    .line 124
    .restart local v0    # "mAdvRequest":Lcom/youku/player/request/AdvRequest;
    :goto_2
    if-eqz v0, :cond_1

    .line 125
    iget-object v2, p0, Lcom/youku/player/request/LocalDownloadVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, p0, Lcom/youku/player/request/LocalDownloadVideoRequest;->mActivity:Ljava/lang/ref/WeakReference;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/youku/player/request/AdvRequest;->requestAdv(Lcom/youku/player/request/PlayRequest;Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/ref/WeakReference;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/IGetAdvCallBack;)V

    goto :goto_0

    .line 113
    .end local v7    # "isVip":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 118
    .restart local v7    # "isVip":Z
    :cond_4
    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 119
    new-instance v0, Lcom/youku/player/request/OnlineAdvRequest;

    .end local v0    # "mAdvRequest":Lcom/youku/player/request/AdvRequest;
    invoke-direct {v0}, Lcom/youku/player/request/OnlineAdvRequest;-><init>()V

    .restart local v0    # "mAdvRequest":Lcom/youku/player/request/AdvRequest;
    goto :goto_2

    .line 121
    :cond_5
    new-instance v1, Lcom/youku/player/goplay/GoplayException;

    invoke-direct {v1}, Lcom/youku/player/goplay/GoplayException;-><init>()V

    invoke-interface {p4, v1}, Lcom/youku/player/goplay/IGetAdvCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    goto :goto_2
.end method

.method public requestVideo(Lcom/youku/player/request/PlayRequest;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/goplay/IVideoInfoCallBack;)V
    .locals 11
    .param p1, "playRequest"    # Lcom/youku/player/request/PlayRequest;
    .param p2, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;
    .param p3, "listener"    # Lcom/youku/player/goplay/IVideoInfoCallBack;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 34
    iget-object v5, p0, Lcom/youku/player/request/LocalDownloadVideoRequest;->mContext:Landroid/content/Context;

    iget-object v6, p2, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    const-string v7, "local"

    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->isLogin()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/youku/player/Track;->playRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 35
    new-instance v4, Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {v4}, Lcom/youku/player/module/VideoUrlInfo;-><init>()V

    .line 36
    .local v4, "videoInfo":Lcom/youku/player/module/VideoUrlInfo;
    iget-object v5, p2, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setVid(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Lcom/youku/player/module/PlayVideoInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    .line 38
    const-string v5, "local"

    iput-object v5, v4, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    .line 39
    invoke-virtual {v4, v10}, Lcom/youku/player/module/VideoUrlInfo;->setCached(Z)V

    .line 40
    invoke-virtual {p2}, Lcom/youku/player/module/PlayVideoInfo;->waterMark()Z

    move-result v5

    iput-boolean v5, v4, Lcom/youku/player/module/VideoUrlInfo;->isLocalWaterMark:Z

    .line 41
    iget-object v5, p0, Lcom/youku/player/request/LocalDownloadVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v5}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v5, v6, v9, v10}, Lcom/youku/player/apiservice/IPlayerUiControl;->initDanmakuManager(Ljava/lang/String;IZ)V

    .line 42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v5, 0x5

    if-ge v1, v5, :cond_0

    .line 43
    iget-object v5, v4, Lcom/youku/player/module/VideoUrlInfo;->waterMarkType:[I

    invoke-virtual {p2}, Lcom/youku/player/module/PlayVideoInfo;->getWaterMarkType()I

    move-result v6

    aput v6, v5, v1

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_0
    const/4 v2, 0x0

    .line 46
    .local v2, "resetProgress":Z
    sget-object v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->mICacheInfo:Lcom/youku/player/apiservice/ICacheInfo;

    if-eqz v5, :cond_1

    .line 47
    sget-object v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->mICacheInfo:Lcom/youku/player/apiservice/ICacheInfo;

    iget-object v6, p2, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/youku/player/apiservice/ICacheInfo;->getDownloadInfo(Ljava/lang/String;)Lcom/youku/player/module/VideoCacheInfo;

    move-result-object v3

    .line 48
    .local v3, "videoCacheInfo":Lcom/youku/player/module/VideoCacheInfo;
    if-eqz v3, :cond_1

    .line 49
    iget-object v5, v3, Lcom/youku/player/module/VideoCacheInfo;->showid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setShowId(Ljava/lang/String;)V

    .line 50
    iget v5, v3, Lcom/youku/player/module/VideoCacheInfo;->seconds:I

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setDurationMills(I)V

    .line 51
    iget-object v5, v3, Lcom/youku/player/module/VideoCacheInfo;->nextVid:Ljava/lang/String;

    iput-object v5, v4, Lcom/youku/player/module/VideoUrlInfo;->nextVideoId:Ljava/lang/String;

    .line 52
    iget v5, v3, Lcom/youku/player/module/VideoCacheInfo;->show_videoseq:I

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setShow_videoseq(I)V

    .line 53
    iget-object v5, v3, Lcom/youku/player/module/VideoCacheInfo;->language:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setVideoLanguage(Ljava/lang/String;)V

    .line 54
    iget v5, v3, Lcom/youku/player/module/VideoCacheInfo;->quality:I

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setCurrentVideoQuality(I)V

    .line 55
    iget-object v5, v3, Lcom/youku/player/module/VideoCacheInfo;->picUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setItem_img_16_9(Ljava/lang/String;)V

    .line 56
    iget-object v5, v3, Lcom/youku/player/module/VideoCacheInfo;->savePath:Ljava/lang/String;

    iput-object v5, v4, Lcom/youku/player/module/VideoUrlInfo;->savePath:Ljava/lang/String;

    .line 57
    iget-object v5, v3, Lcom/youku/player/module/VideoCacheInfo;->picUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setimgurl(Ljava/lang/String;)V

    .line 58
    iget-object v5, v3, Lcom/youku/player/module/VideoCacheInfo;->episodemode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setEpisodemode(Ljava/lang/String;)V

    .line 59
    iget-object v5, v3, Lcom/youku/player/module/VideoCacheInfo;->mMediaType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setMediaType(Ljava/lang/String;)V

    .line 60
    iget-boolean v5, v3, Lcom/youku/player/module/VideoCacheInfo;->isVerticalVideo:Z

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setVerticalVideo(Z)V

    .line 61
    iget-boolean v5, v3, Lcom/youku/player/module/VideoCacheInfo;->exclusiveLogo:Z

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setExclusiveLogo(Z)V

    .line 62
    invoke-virtual {v3}, Lcom/youku/player/module/VideoCacheInfo;->getAdPoints()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setAdPoints(Ljava/util/ArrayList;)V

    .line 63
    iget v5, p2, Lcom/youku/player/module/PlayVideoInfo;->point:I

    div-int/lit16 v5, v5, 0x3e8

    iget v6, v3, Lcom/youku/player/module/VideoCacheInfo;->seconds:I

    add-int/lit8 v6, v6, -0x3c

    if-le v5, v6, :cond_1

    .line 64
    const/4 v2, 0x1

    .line 65
    iput v9, p2, Lcom/youku/player/module/PlayVideoInfo;->point:I

    .line 70
    .end local v3    # "videoCacheInfo":Lcom/youku/player/module/VideoCacheInfo;
    :cond_1
    iget v5, p2, Lcom/youku/player/module/PlayVideoInfo;->point:I

    if-gtz v5, :cond_3

    sget-object v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIVideoHistoryInfo:Lcom/youku/player/apiservice/IVideoHistoryInfo;

    if-eqz v5, :cond_3

    if-nez v2, :cond_3

    .line 71
    sget-object v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIVideoHistoryInfo:Lcom/youku/player/apiservice/IVideoHistoryInfo;

    iget-object v6, p2, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/youku/player/apiservice/IVideoHistoryInfo;->getVideoHistoryInfo(Ljava/lang/String;)Lcom/youku/player/module/VideoHistoryInfo;

    move-result-object v0

    .line 73
    .local v0, "history":Lcom/youku/player/module/VideoHistoryInfo;
    if-eqz v0, :cond_2

    iget v5, v0, Lcom/youku/player/module/VideoHistoryInfo;->playTime:I

    if-le v5, v10, :cond_2

    .line 74
    iget v5, v0, Lcom/youku/player/module/VideoHistoryInfo;->playTime:I

    mul-int/lit16 v5, v5, 0x3e8

    iput v5, p2, Lcom/youku/player/module/PlayVideoInfo;->point:I

    .line 76
    :cond_2
    iget v5, p2, Lcom/youku/player/module/PlayVideoInfo;->point:I

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v6

    const v7, 0xea60

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_3

    .line 77
    iput v9, p2, Lcom/youku/player/module/PlayVideoInfo;->point:I

    .line 80
    .end local v0    # "history":Lcom/youku/player/module/VideoHistoryInfo;
    :cond_3
    iget v5, p2, Lcom/youku/player/module/PlayVideoInfo;->point:I

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 81
    invoke-virtual {p2}, Lcom/youku/player/module/PlayVideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setTitle(Ljava/lang/String;)V

    .line 83
    iget-object v5, p0, Lcom/youku/player/request/LocalDownloadVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-object v4, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 84
    iget-object v5, p0, Lcom/youku/player/request/LocalDownloadVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v5}, Lcom/youku/player/plugin/PluginManager;->onVideoInfoGetted()V

    .line 85
    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getAdPoints()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getAdPoints()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 87
    iget-object v5, p0, Lcom/youku/player/request/LocalDownloadVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v5}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerAdControl()Lcom/youku/player/apiservice/IPlayerAdControl;

    move-result-object v5

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getAdPoints()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/youku/player/apiservice/IPlayerAdControl;->setMidADInfo(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 90
    :cond_4
    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->isVerticalVideo()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/youku/player/request/LocalDownloadVideoRequest;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/youku/player/util/PlayerUtil;->isYoukuTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 91
    iget-object v5, p0, Lcom/youku/player/request/LocalDownloadVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v5}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v5

    invoke-interface {v5}, Lcom/youku/player/apiservice/IPlayerUiControl;->goVerticalFullScreen()V

    .line 92
    :cond_5
    iget-object v5, p0, Lcom/youku/player/request/LocalDownloadVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v5}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v5

    invoke-interface {v5}, Lcom/youku/player/apiservice/IPlayerUiControl;->setOrientionDisable()V

    .line 93
    iget-object v5, p0, Lcom/youku/player/request/LocalDownloadVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, p2, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/youku/player/plugin/MediaPlayerDelegate;->prepareSubtitle(Ljava/lang/String;)V

    .line 94
    invoke-interface {p3, v4}, Lcom/youku/player/goplay/IVideoInfoCallBack;->onSuccess(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 95
    return-void
.end method

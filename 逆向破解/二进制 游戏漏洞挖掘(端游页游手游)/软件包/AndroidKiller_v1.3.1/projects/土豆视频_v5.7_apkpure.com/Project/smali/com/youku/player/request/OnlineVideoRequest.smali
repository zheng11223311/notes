.class public Lcom/youku/player/request/OnlineVideoRequest;
.super Lcom/youku/player/request/VideoRequest;
.source "OnlineVideoRequest.java"


# direct methods
.method public constructor <init>(Lcom/youku/player/plugin/MediaPlayerDelegate;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p2, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/youku/player/request/VideoRequest;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;Landroid/support/v4/app/FragmentActivity;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/request/OnlineVideoRequest;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/drm/DRMTokenCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/request/OnlineVideoRequest;
    .param p1, "x1"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "x2"    # Lcom/youku/player/drm/DRMTokenCallback;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/youku/player/request/OnlineVideoRequest;->processDRMToken(Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/drm/DRMTokenCallback;)V

    return-void
.end method

.method private downloaded(Lcom/youku/player/module/PlayVideoInfo;)Z
    .locals 4
    .param p1, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;

    .prologue
    const/4 v0, 0x0

    .line 125
    sget-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mICacheInfo:Lcom/youku/player/apiservice/ICacheInfo;

    if-nez v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mICacheInfo:Lcom/youku/player/apiservice/ICacheInfo;

    iget-object v2, p1, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/youku/player/apiservice/ICacheInfo;->getDownloadInfo(Ljava/lang/String;)Lcom/youku/player/module/VideoCacheInfo;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mICacheInfo:Lcom/youku/player/apiservice/ICacheInfo;

    iget-object v2, p1, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    iget v3, p1, Lcom/youku/player/module/PlayVideoInfo;->videoStage:I

    invoke-interface {v1, v2, v3}, Lcom/youku/player/apiservice/ICacheInfo;->getDownloadInfo(Ljava/lang/String;I)Lcom/youku/player/module/VideoCacheInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private processDRMToken(Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/drm/DRMTokenCallback;)V
    .locals 2
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "callback"    # Lcom/youku/player/drm/DRMTokenCallback;

    .prologue
    .line 132
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/youku/player/request/OnlineVideoRequest$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/youku/player/request/OnlineVideoRequest$2;-><init>(Lcom/youku/player/request/OnlineVideoRequest;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/drm/DRMTokenCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    return-void
.end method


# virtual methods
.method public requestAdv(Lcom/youku/player/request/PlayRequest;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/IGetAdvCallBack;)V
    .locals 7
    .param p1, "playRequest"    # Lcom/youku/player/request/PlayRequest;
    .param p2, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;
    .param p3, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p4, "listener"    # Lcom/youku/player/goplay/IGetAdvCallBack;

    .prologue
    .line 102
    iget-boolean v1, p2, Lcom/youku/player/module/PlayVideoInfo;->noAdv:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/config/MediaPlayerConfiguration;->showPreAd()Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    :cond_0
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSuccessfullyGetVideoUrl return directly, due to noAdv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p2, Lcom/youku/player/module/PlayVideoInfo;->noAdv:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v1, Lcom/youku/player/goplay/GoplayException;

    invoke-direct {v1}, Lcom/youku/player/goplay/GoplayException;-><init>()V

    invoke-interface {p4, v1}, Lcom/youku/player/goplay/IGetAdvCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    .line 121
    :goto_0
    return-void

    .line 109
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get videoUrlInfo success --> refresh playVideoInfo.vid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  to  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p3}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    .line 114
    :cond_2
    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/config/MediaPlayerConfiguration;->showOfflineAd()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p2}, Lcom/youku/player/request/OnlineVideoRequest;->downloaded(Lcom/youku/player/module/PlayVideoInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IUserInfo;->isVip()Z

    move-result v1

    if-nez v1, :cond_3

    .line 117
    new-instance v0, Lcom/youku/player/request/OfflineAdvRequest;

    invoke-direct {v0}, Lcom/youku/player/request/OfflineAdvRequest;-><init>()V

    .line 120
    .local v0, "advRequest":Lcom/youku/player/request/AdvRequest;
    :goto_1
    iget-object v2, p0, Lcom/youku/player/request/OnlineVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, p0, Lcom/youku/player/request/OnlineVideoRequest;->mActivity:Ljava/lang/ref/WeakReference;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/youku/player/request/AdvRequest;->requestAdv(Lcom/youku/player/request/PlayRequest;Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/ref/WeakReference;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/IGetAdvCallBack;)V

    goto :goto_0

    .line 119
    .end local v0    # "advRequest":Lcom/youku/player/request/AdvRequest;
    :cond_3
    new-instance v0, Lcom/youku/player/request/OnlineAdvRequest;

    invoke-direct {v0}, Lcom/youku/player/request/OnlineAdvRequest;-><init>()V

    .restart local v0    # "advRequest":Lcom/youku/player/request/AdvRequest;
    goto :goto_1
.end method

.method public requestVideo(Lcom/youku/player/request/PlayRequest;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/goplay/IVideoInfoCallBack;)V
    .locals 21
    .param p1, "playRequest"    # Lcom/youku/player/request/PlayRequest;
    .param p2, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;
    .param p3, "listener"    # Lcom/youku/player/goplay/IVideoInfoCallBack;

    .prologue
    .line 38
    new-instance v4, Lcom/youku/player/goplay/MyGoplayManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/player/request/OnlineVideoRequest;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/youku/player/goplay/MyGoplayManager;-><init>(Landroid/content/Context;)V

    .line 39
    .local v4, "myGoplayManager":Lcom/youku/player/goplay/MyGoplayManager;
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/youku/player/module/PlayVideoInfo;->password:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/youku/player/module/PlayVideoInfo;->languageCode:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v8, v0, Lcom/youku/player/module/PlayVideoInfo;->videoStage:I

    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormat()I

    move-result v9

    move-object/from16 v0, p2

    iget v10, v0, Lcom/youku/player/module/PlayVideoInfo;->point:I

    move-object/from16 v0, p2

    iget-boolean v11, v0, Lcom/youku/player/module/PlayVideoInfo;->isCache:Z

    move-object/from16 v0, p2

    iget-boolean v12, v0, Lcom/youku/player/module/PlayVideoInfo;->noAdv:Z

    move-object/from16 v0, p2

    iget-boolean v13, v0, Lcom/youku/player/module/PlayVideoInfo;->isFromYouku:Z

    move-object/from16 v0, p2

    iget-boolean v14, v0, Lcom/youku/player/module/PlayVideoInfo;->isTudouAlbum:Z

    move-object/from16 v0, p2

    iget v15, v0, Lcom/youku/player/module/PlayVideoInfo;->tudouquality:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/youku/player/module/PlayVideoInfo;->playlistCode:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/youku/player/module/PlayVideoInfo;->playlistId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/youku/player/module/PlayVideoInfo;->albumID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/request/OnlineVideoRequest;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    move/from16 v19, v0

    new-instance v20, Lcom/youku/player/request/OnlineVideoRequest$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/youku/player/request/OnlineVideoRequest$1;-><init>(Lcom/youku/player/request/OnlineVideoRequest;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/goplay/IVideoInfoCallBack;)V

    invoke-virtual/range {v4 .. v20}, Lcom/youku/player/goplay/MyGoplayManager;->goplayer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/youku/player/goplay/IVideoInfoCallBack;)V

    .line 98
    return-void
.end method

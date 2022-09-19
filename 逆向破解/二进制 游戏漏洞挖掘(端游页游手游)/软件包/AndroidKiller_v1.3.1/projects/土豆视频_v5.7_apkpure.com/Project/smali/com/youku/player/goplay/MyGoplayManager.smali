.class public Lcom/youku/player/goplay/MyGoplayManager;
.super Ljava/lang/Object;
.source "MyGoplayManager.java"


# instance fields
.field albumID:Ljava/lang/String;

.field format:I

.field id:Ljava/lang/String;

.field isCache:Z

.field isFromYouku:Z

.field isTudouAlbum:Z

.field languageCode:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

.field password:Ljava/lang/String;

.field playlistCode:Ljava/lang/String;

.field playlistId:Ljava/lang/String;

.field point:I

.field tudouquality:I

.field videostage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {v0}, Lcom/youku/player/module/VideoUrlInfo;-><init>()V

    iput-object v0, p0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 37
    iput-object p1, p0, Lcom/youku/player/goplay/MyGoplayManager;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private getTudouVideoUrl(Ljava/lang/String;Ljava/lang/String;IILcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/youku/player/goplay/IVideoInfoCallBack;)V
    .locals 13
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "languageCode"    # Ljava/lang/String;
    .param p3, "videostage"    # I
    .param p4, "format"    # I
    .param p5, "mVideoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p6, "resetProgress"    # Z
    .param p7, "local_vid"    # Ljava/lang/String;
    .param p8, "local_time"    # Ljava/lang/String;
    .param p9, "local_history"    # Ljava/lang/String;
    .param p10, "isTudouAlbum"    # Z
    .param p11, "tudouquality"    # I
    .param p12, "call"    # Lcom/youku/player/goplay/IVideoInfoCallBack;

    .prologue
    .line 437
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "\u83b7\u53d6\u6b63\u7247\u4fe1\u606f getVideoUrl"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    new-instance v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;

    iget-object v1, p0, Lcom/youku/player/goplay/MyGoplayManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/youku/player/service/GetVideoUrlServiceTudou;-><init>(Landroid/content/Context;)V

    .local v0, "mGetVideoUrlTudou":Lcom/youku/player/service/GetVideoUrlServiceTudou;
    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    .line 440
    invoke-virtual/range {v0 .. v12}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->getVideoUrl(Ljava/lang/String;Ljava/lang/String;IILcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/youku/player/goplay/IVideoInfoCallBack;)V

    .line 443
    return-void
.end method

.method private getVideoUrl(Ljava/lang/String;Ljava/lang/String;IILcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/player/goplay/IVideoInfoCallBack;)V
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "languageCode"    # Ljava/lang/String;
    .param p3, "videostage"    # I
    .param p4, "format"    # I
    .param p5, "mVideoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p6, "resetProgress"    # Z
    .param p7, "local_vid"    # Ljava/lang/String;
    .param p8, "local_time"    # Ljava/lang/String;
    .param p9, "local_history"    # Ljava/lang/String;
    .param p10, "call"    # Lcom/youku/player/goplay/IVideoInfoCallBack;

    .prologue
    .line 382
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "\u83b7\u53d6\u6b63\u7247\u4fe1\u606f getVideoUrl"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;

    iget-object v1, p0, Lcom/youku/player/goplay/MyGoplayManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/youku/player/service/GetVideoUrlServiceYouku;-><init>(Landroid/content/Context;)V

    .local v0, "mGetVideoUrlYouku":Lcom/youku/player/service/GetVideoUrlServiceYouku;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 385
    invoke-virtual/range {v0 .. v10}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->getVideoUrl(Ljava/lang/String;Ljava/lang/String;IILcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/player/goplay/IVideoInfoCallBack;)V

    .line 388
    return-void
.end method

.method private playVideoFormNetTudou(Ljava/lang/String;Ljava/lang/String;IILcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILcom/youku/player/goplay/IVideoInfoCallBack;)V
    .locals 13
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "languageCode"    # Ljava/lang/String;
    .param p3, "videostage"    # I
    .param p4, "format"    # I
    .param p5, "mVideoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p6, "resetProgress"    # Z
    .param p7, "local_vid"    # Ljava/lang/String;
    .param p8, "local_time"    # Ljava/lang/String;
    .param p9, "local_history"    # Ljava/lang/String;
    .param p10, "noAdv"    # Z
    .param p11, "isTudouAlbum"    # Z
    .param p12, "tudouquality"    # I
    .param p13, "call"    # Lcom/youku/player/goplay/IVideoInfoCallBack;

    .prologue
    .line 419
    sget-boolean v0, Lcom/youku/player/goplay/Profile;->USE_SYSTEM_PLAYER:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v12, p13

    .line 420
    invoke-direct/range {v0 .. v12}, Lcom/youku/player/goplay/MyGoplayManager;->getTudouVideoUrl(Ljava/lang/String;Ljava/lang/String;IILcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/youku/player/goplay/IVideoInfoCallBack;)V

    .line 431
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v12, p13

    .line 426
    invoke-direct/range {v0 .. v12}, Lcom/youku/player/goplay/MyGoplayManager;->getTudouVideoUrl(Ljava/lang/String;Ljava/lang/String;IILcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/youku/player/goplay/IVideoInfoCallBack;)V

    goto :goto_0
.end method

.method private playVideoFormNetYouKu(Ljava/lang/String;Ljava/lang/String;IILcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/youku/player/goplay/IVideoInfoCallBack;)V
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "languageCode"    # Ljava/lang/String;
    .param p3, "videostage"    # I
    .param p4, "format"    # I
    .param p5, "mVideoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p6, "resetProgress"    # Z
    .param p7, "local_vid"    # Ljava/lang/String;
    .param p8, "local_time"    # Ljava/lang/String;
    .param p9, "local_history"    # Ljava/lang/String;
    .param p10, "noAdv"    # Z
    .param p11, "isFull"    # Z
    .param p12, "call"    # Lcom/youku/player/goplay/IVideoInfoCallBack;

    .prologue
    .line 349
    sget-boolean v0, Lcom/youku/player/goplay/Profile;->USE_SYSTEM_PLAYER:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p12

    .line 350
    invoke-direct/range {v0 .. v10}, Lcom/youku/player/goplay/MyGoplayManager;->getVideoUrl(Ljava/lang/String;Ljava/lang/String;IILcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/player/goplay/IVideoInfoCallBack;)V

    .line 359
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p12

    .line 356
    invoke-direct/range {v0 .. v10}, Lcom/youku/player/goplay/MyGoplayManager;->getVideoUrl(Ljava/lang/String;Ljava/lang/String;IILcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/player/goplay/IVideoInfoCallBack;)V

    goto :goto_0
.end method

.method private playVideoFromLocal(Lcom/youku/player/module/VideoUrlInfo;ZLcom/youku/player/goplay/IVideoInfoCallBack;)V
    .locals 9
    .param p1, "mVideoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "hasInternet"    # Z
    .param p3, "call"    # Lcom/youku/player/goplay/IVideoInfoCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/youku/player/CheckRecordException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x190

    .line 254
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mICacheInfo:Lcom/youku/player/apiservice/ICacheInfo;

    .line 255
    .local v0, "download":Lcom/youku/player/apiservice/ICacheInfo;
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/youku/player/apiservice/ICacheInfo;->getDownloadInfo(Ljava/lang/String;)Lcom/youku/player/module/VideoCacheInfo;

    move-result-object v1

    .line 257
    .local v1, "downloadInfo":Lcom/youku/player/module/VideoCacheInfo;
    if-nez v1, :cond_0

    .line 258
    iget-object v4, p0, Lcom/youku/player/goplay/MyGoplayManager;->id:Ljava/lang/String;

    iget v5, p0, Lcom/youku/player/goplay/MyGoplayManager;->videostage:I

    invoke-interface {v0, v4, v5}, Lcom/youku/player/apiservice/ICacheInfo;->getDownloadInfo(Ljava/lang/String;I)Lcom/youku/player/module/VideoCacheInfo;

    move-result-object v1

    .line 260
    :cond_0
    if-nez v1, :cond_3

    .line 261
    iget-object v4, p0, Lcom/youku/player/goplay/MyGoplayManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/youku/player/goplay/MyGoplayManager;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/youku/player/util/AnalyticsWrapper;->playRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance v2, Lcom/youku/player/goplay/GoplayException;

    invoke-direct {v2}, Lcom/youku/player/goplay/GoplayException;-><init>()V

    .line 264
    .local v2, "e":Lcom/youku/player/goplay/GoplayException;
    iget-boolean v4, p0, Lcom/youku/player/goplay/MyGoplayManager;->isCache:Z

    if-eqz v4, :cond_2

    .line 265
    const/16 v4, -0x6a

    invoke-virtual {v2, v4}, Lcom/youku/player/goplay/GoplayException;->setErrorCode(I)Lcom/youku/player/goplay/GoplayException;

    .line 269
    :cond_1
    :goto_0
    invoke-interface {p3, v2}, Lcom/youku/player/goplay/IVideoInfoCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    .line 327
    .end local v2    # "e":Lcom/youku/player/goplay/GoplayException;
    :goto_1
    return-void

    .line 266
    .restart local v2    # "e":Lcom/youku/player/goplay/GoplayException;
    :cond_2
    if-nez p2, :cond_1

    .line 267
    invoke-virtual {v2, v8}, Lcom/youku/player/goplay/GoplayException;->setErrorCode(I)Lcom/youku/player/goplay/GoplayException;

    goto :goto_0

    .line 272
    .end local v2    # "e":Lcom/youku/player/goplay/GoplayException;
    :cond_3
    if-eqz p2, :cond_6

    iget-boolean v4, p0, Lcom/youku/player/goplay/MyGoplayManager;->isCache:Z

    if-nez v4, :cond_6

    .line 273
    const-string v4, "net"

    invoke-virtual {p1, v4}, Lcom/youku/player/module/VideoUrlInfo;->setPlayType(Ljava/lang/String;)V

    .line 277
    :goto_2
    iget-object v4, v1, Lcom/youku/player/module/VideoCacheInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/youku/player/module/VideoUrlInfo;->setTitle(Ljava/lang/String;)V

    .line 278
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/youku/player/module/VideoUrlInfo;->setCached(Z)V

    .line 279
    invoke-static {p1}, Lcom/youku/player/util/PlayerUtil;->useUplayer(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/youku/player/module/VideoCacheInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "youku.m3u8"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/player/util/PlayerUtil;->getM3u8File(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    .line 285
    :goto_3
    iget v4, v1, Lcom/youku/player/module/VideoCacheInfo;->seconds:I

    int-to-double v4, v4

    invoke-virtual {p1, v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setDurationSecs(D)V

    .line 286
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 287
    iget v4, v1, Lcom/youku/player/module/VideoCacheInfo;->playTime:I

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {p1, v4}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 288
    invoke-static {p1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getRecordFromLocal(Lcom/youku/player/module/VideoUrlInfo;)Lcom/youku/player/module/VideoUrlInfo;

    move-result-object p1

    .line 290
    :cond_4
    iget-object v4, v1, Lcom/youku/player/module/VideoCacheInfo;->showid:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/youku/player/module/VideoUrlInfo;->setShowId(Ljava/lang/String;)V

    .line 291
    iget v4, v1, Lcom/youku/player/module/VideoCacheInfo;->show_videoseq:I

    invoke-virtual {p1, v4}, Lcom/youku/player/module/VideoUrlInfo;->setShow_videoseq(I)V

    .line 292
    iget-object v4, v1, Lcom/youku/player/module/VideoCacheInfo;->episodemode:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/youku/player/module/VideoUrlInfo;->setEpisodemode(Ljava/lang/String;)V

    .line 293
    iget-object v4, v1, Lcom/youku/player/module/VideoCacheInfo;->mMediaType:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/youku/player/module/VideoUrlInfo;->setMediaType(Ljava/lang/String;)V

    .line 294
    iget-object v4, v1, Lcom/youku/player/module/VideoCacheInfo;->registerNum:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/youku/player/module/VideoUrlInfo;->setRegisterNum(Ljava/lang/String;)V

    .line 295
    iget-object v4, v1, Lcom/youku/player/module/VideoCacheInfo;->licenseNum:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/youku/player/module/VideoUrlInfo;->setLicenseNum(Ljava/lang/String;)V

    .line 296
    iget-boolean v4, v1, Lcom/youku/player/module/VideoCacheInfo;->isVerticalVideo:Z

    invoke-virtual {p1, v4}, Lcom/youku/player/module/VideoUrlInfo;->setVerticalVideo(Z)V

    .line 297
    iget-boolean v4, v1, Lcom/youku/player/module/VideoCacheInfo;->exclusiveLogo:Z

    invoke-virtual {p1, v4}, Lcom/youku/player/module/VideoUrlInfo;->setExclusiveLogo(Z)V

    .line 298
    iget-object v4, p0, Lcom/youku/player/goplay/MyGoplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/player/goplay/MyGoplayManager;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->isLogin()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/youku/player/Track;->playRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 300
    iget-object v4, p0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v4

    iget v5, v1, Lcom/youku/player/module/VideoCacheInfo;->seconds:I

    mul-int/lit16 v5, v5, 0x3e8

    const v6, 0xea60

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_5

    .line 301
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 304
    :cond_5
    move-object v3, p1

    .line 306
    .local v3, "info":Lcom/youku/player/module/VideoUrlInfo;
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->isUrlOK()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 307
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/youku/player/goplay/MyGoplayManager$1;

    invoke-direct {v5, p0, p3, v3}, Lcom/youku/player/goplay/MyGoplayManager$1;-><init>(Lcom/youku/player/goplay/MyGoplayManager;Lcom/youku/player/goplay/IVideoInfoCallBack;Lcom/youku/player/module/VideoUrlInfo;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 275
    .end local v3    # "info":Lcom/youku/player/module/VideoUrlInfo;
    :cond_6
    const-string v4, "local"

    invoke-virtual {p1, v4}, Lcom/youku/player/module/VideoUrlInfo;->setPlayType(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 283
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/youku/player/module/VideoCacheInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "1.3gp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    goto/16 :goto_3

    .line 317
    .restart local v3    # "info":Lcom/youku/player/module/VideoUrlInfo;
    :cond_8
    new-instance v2, Lcom/youku/player/goplay/GoplayException;

    invoke-direct {v2}, Lcom/youku/player/goplay/GoplayException;-><init>()V

    .line 318
    .restart local v2    # "e":Lcom/youku/player/goplay/GoplayException;
    iget-boolean v4, p0, Lcom/youku/player/goplay/MyGoplayManager;->isCache:Z

    if-eqz v4, :cond_a

    .line 319
    const/16 v4, -0x3e4

    invoke-virtual {v2, v4}, Lcom/youku/player/goplay/GoplayException;->setErrorCode(I)Lcom/youku/player/goplay/GoplayException;

    .line 320
    const-string/jumbo v4, "\u672c\u5730\u6587\u4ef6\u5df2\u635f\u574f"

    invoke-virtual {v2, v4}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    .line 325
    :cond_9
    :goto_4
    invoke-interface {p3, v2}, Lcom/youku/player/goplay/IVideoInfoCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    goto/16 :goto_1

    .line 321
    :cond_a
    if-nez p2, :cond_9

    .line 322
    invoke-virtual {v2, v8}, Lcom/youku/player/goplay/GoplayException;->setErrorCode(I)Lcom/youku/player/goplay/GoplayException;

    goto :goto_4
.end method


# virtual methods
.method public getAdvUrl(Ljava/lang/String;ZLjava/lang/String;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/module/PlayVideoInfo;ZLcom/youku/player/goplay/IGetAdvCallBack;)V
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "isFull"    # Z
    .param p3, "adext"    # Ljava/lang/String;
    .param p4, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p5, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;
    .param p6, "isvert"    # Z
    .param p7, "advCallBack"    # Lcom/youku/player/goplay/IGetAdvCallBack;

    .prologue
    .line 363
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/youku/player/goplay/MyGoplayManager;->getAdvUrl(Ljava/lang/String;ZZLjava/lang/String;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/module/PlayVideoInfo;ZLcom/youku/player/goplay/IGetAdvCallBack;)V

    .line 364
    return-void
.end method

.method public getAdvUrl(Ljava/lang/String;ZZLjava/lang/String;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/module/PlayVideoInfo;ZLcom/youku/player/goplay/IGetAdvCallBack;)V
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "isFull"    # Z
    .param p3, "isOfflineAd"    # Z
    .param p4, "adext"    # Ljava/lang/String;
    .param p5, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p6, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;
    .param p7, "isvert"    # Z
    .param p8, "advCallBack"    # Lcom/youku/player/goplay/IGetAdvCallBack;

    .prologue
    .line 368
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v3, "\u83b7\u53d6\u64ad\u653e\u5e7f\u544a\u4fe1\u606f GetVideoAdvService"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v10, Lcom/youku/player/goplay/GetVideoAdvService;

    move-object/from16 v0, p5

    invoke-direct {v10, v0}, Lcom/youku/player/goplay/GetVideoAdvService;-><init>(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 370
    .local v10, "getVideoAdvService":Lcom/youku/player/goplay/GetVideoAdvService;
    new-instance v1, Lcom/youku/player/ad/AdGetInfo;

    const/4 v3, 0x7

    invoke-virtual/range {p6 .. p6}, Lcom/youku/player/module/PlayVideoInfo;->getSource()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p6

    iget-object v7, v0, Lcom/youku/player/module/PlayVideoInfo;->playlistId:Ljava/lang/String;

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-object/from16 v8, p5

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/youku/player/ad/AdGetInfo;-><init>(Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo;Z)V

    .line 371
    .local v1, "adGetInfo":Lcom/youku/player/ad/AdGetInfo;
    if-nez p4, :cond_0

    .line 372
    iget-object v2, p0, Lcom/youku/player/goplay/MyGoplayManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p8

    invoke-virtual {v10, v1, v2, v0}, Lcom/youku/player/goplay/GetVideoAdvService;->getVideoAdv(Lcom/youku/player/ad/AdGetInfo;Landroid/content/Context;Lcom/youku/player/goplay/IGetAdvCallBack;)V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/youku/player/goplay/MyGoplayManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p8

    invoke-virtual {v10, v1, v2, p4, v0}, Lcom/youku/player/goplay/GetVideoAdvService;->getVideoAdv(Lcom/youku/player/ad/AdGetInfo;Landroid/content/Context;Ljava/lang/String;Lcom/youku/player/goplay/IGetAdvCallBack;)V

    goto :goto_0
.end method

.method public goplayer(Ljava/lang/String;Ljava/lang/String;IIIZZZIZLcom/youku/player/goplay/IVideoInfoCallBack;)V
    .locals 14
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "languageCode"    # Ljava/lang/String;
    .param p3, "videostage"    # I
    .param p4, "format"    # I
    .param p5, "point"    # I
    .param p6, "isCache"    # Z
    .param p7, "isFromYouku"    # Z
    .param p8, "isTudouAlbum"    # Z
    .param p9, "tudouquality"    # I
    .param p10, "isFullscreen"    # Z
    .param p11, "call"    # Lcom/youku/player/goplay/IVideoInfoCallBack;

    .prologue
    .line 50
    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lcom/youku/player/goplay/MyGoplayManager;->goplayer(Ljava/lang/String;Ljava/lang/String;IIIZZZZILjava/lang/String;ZLcom/youku/player/goplay/IVideoInfoCallBack;)V

    .line 52
    return-void
.end method

.method public goplayer(Ljava/lang/String;Ljava/lang/String;IIIZZZZILjava/lang/String;ZLcom/youku/player/goplay/IVideoInfoCallBack;)V
    .locals 17
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "languageCode"    # Ljava/lang/String;
    .param p3, "videostage"    # I
    .param p4, "format"    # I
    .param p5, "point"    # I
    .param p6, "isCache"    # Z
    .param p7, "noAdv"    # Z
    .param p8, "isFromYouku"    # Z
    .param p9, "isTudouAlbum"    # Z
    .param p10, "tudouquality"    # I
    .param p11, "playlistCode"    # Ljava/lang/String;
    .param p12, "isFull"    # Z
    .param p13, "call"    # Lcom/youku/player/goplay/IVideoInfoCallBack;

    .prologue
    .line 85
    const/4 v2, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v15, p12

    move-object/from16 v16, p13

    invoke-virtual/range {v0 .. v16}, Lcom/youku/player/goplay/MyGoplayManager;->goplayer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/youku/player/goplay/IVideoInfoCallBack;)V

    .line 87
    return-void
.end method

.method public goplayer(Ljava/lang/String;Ljava/lang/String;Lcom/youku/player/goplay/IVideoInfoCallBack;)V
    .locals 17
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "adext"    # Ljava/lang/String;
    .param p3, "call"    # Lcom/youku/player/goplay/IVideoInfoCallBack;

    .prologue
    .line 223
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/player/goplay/MyGoplayManager;->id:Ljava/lang/String;

    .line 225
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/youku/player/goplay/MyGoplayManager;->videostage:I

    invoke-virtual {v2, v3}, Lcom/youku/player/module/VideoUrlInfo;->setVideoStage(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/youku/player/goplay/MyGoplayManager;->point:I

    invoke-virtual {v2, v3}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/youku/player/module/VideoUrlInfo;->setid(Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/player/goplay/MyGoplayManager;->password:Ljava/lang/String;

    iput-object v3, v2, Lcom/youku/player/module/VideoUrlInfo;->password:Ljava/lang/String;

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/youku/player/module/VideoUrlInfo;->setVid(Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/youku/player/goplay/MyGoplayManager;->isTudouAlbum:Z

    invoke-virtual {v2, v3}, Lcom/youku/player/module/VideoUrlInfo;->setAlbum(Z)V

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/player/goplay/MyGoplayManager;->playlistCode:Ljava/lang/String;

    iput-object v3, v2, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/player/goplay/MyGoplayManager;->playlistId:Ljava/lang/String;

    iput-object v3, v2, Lcom/youku/player/module/VideoUrlInfo;->playlistId:Ljava/lang/String;

    .line 233
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/player/goplay/MyGoplayManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/youku/player/goplay/Profile;->setVideoType_and_PlayerType(ILandroid/content/Context;)V

    .line 235
    const/4 v2, 0x1

    sput v2, Lcom/youku/player/goplay/Profile;->from:I

    .line 236
    sget v2, Lcom/youku/player/goplay/Profile;->PLANTFORM:I

    const/16 v3, 0x2711

    if-ne v2, v3, :cond_1

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/player/goplay/MyGoplayManager;->languageCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/youku/player/goplay/MyGoplayManager;->videostage:I

    const/4 v6, 0x5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v8, 0x0

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v12, p3

    invoke-direct/range {v2 .. v12}, Lcom/youku/player/goplay/MyGoplayManager;->getVideoUrl(Ljava/lang/String;Ljava/lang/String;IILcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/player/goplay/IVideoInfoCallBack;)V

    .line 243
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/player/goplay/MyGoplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->isLogin()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3, v4}, Lcom/youku/player/Track;->playRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 250
    :goto_1
    return-void

    .line 240
    :cond_1
    sget v2, Lcom/youku/player/goplay/Profile;->PLANTFORM:I

    const/16 v3, 0x2712

    if-ne v2, v3, :cond_0

    .line 241
    move-object/from16 v0, p0

    iget v5, v0, Lcom/youku/player/goplay/MyGoplayManager;->videostage:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/youku/player/goplay/MyGoplayManager;->format:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v8, 0x0

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/youku/player/goplay/MyGoplayManager;->isTudouAlbum:Z

    move-object/from16 v0, p0

    iget v13, v0, Lcom/youku/player/goplay/MyGoplayManager;->tudouquality:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v14, p3

    invoke-direct/range {v2 .. v14}, Lcom/youku/player/goplay/MyGoplayManager;->getTudouVideoUrl(Ljava/lang/String;Ljava/lang/String;IILcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/youku/player/goplay/IVideoInfoCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v15

    .line 246
    .local v15, "e":Ljava/lang/Exception;
    new-instance v16, Lcom/youku/player/goplay/GoplayException;

    invoke-direct/range {v16 .. v16}, Lcom/youku/player/goplay/GoplayException;-><init>()V

    .line 247
    .local v16, "ex":Lcom/youku/player/goplay/GoplayException;
    const/16 v2, 0x6b

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/youku/player/goplay/GoplayException;->setErrorCode(I)Lcom/youku/player/goplay/GoplayException;

    .line 248
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/youku/player/goplay/IVideoInfoCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    goto :goto_1
.end method

.method public goplayer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/youku/player/goplay/IVideoInfoCallBack;)V
    .locals 22
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "languageCode"    # Ljava/lang/String;
    .param p4, "videostage"    # I
    .param p5, "format"    # I
    .param p6, "point"    # I
    .param p7, "isCache"    # Z
    .param p8, "noAdv"    # Z
    .param p9, "isFromYouku"    # Z
    .param p10, "isTudouAlbum"    # Z
    .param p11, "tudouquality"    # I
    .param p12, "playlistCode"    # Ljava/lang/String;
    .param p13, "playlistId"    # Ljava/lang/String;
    .param p14, "albumID"    # Ljava/lang/String;
    .param p15, "isFull"    # Z
    .param p16, "call"    # Lcom/youku/player/goplay/IVideoInfoCallBack;

    .prologue
    .line 110
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/player/goplay/MyGoplayManager;->id:Ljava/lang/String;

    .line 111
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/player/goplay/MyGoplayManager;->password:Ljava/lang/String;

    .line 112
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/player/goplay/MyGoplayManager;->languageCode:Ljava/lang/String;

    .line 113
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/youku/player/goplay/MyGoplayManager;->videostage:I

    .line 114
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/youku/player/goplay/MyGoplayManager;->format:I

    .line 115
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/youku/player/goplay/MyGoplayManager;->point:I

    .line 116
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/youku/player/goplay/MyGoplayManager;->isCache:Z

    .line 117
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/youku/player/goplay/MyGoplayManager;->isFromYouku:Z

    .line 118
    move/from16 v0, p10

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/youku/player/goplay/MyGoplayManager;->isTudouAlbum:Z

    .line 119
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/youku/player/goplay/MyGoplayManager;->tudouquality:I

    .line 120
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/player/goplay/MyGoplayManager;->playlistCode:Ljava/lang/String;

    .line 121
    move-object/from16 v0, p13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/player/goplay/MyGoplayManager;->playlistId:Ljava/lang/String;

    .line 122
    move-object/from16 v0, p14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/player/goplay/MyGoplayManager;->albumID:Ljava/lang/String;

    .line 124
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/youku/player/module/VideoUrlInfo;->setVideoStage(I)V

    .line 125
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 126
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/youku/player/module/VideoUrlInfo;->setid(Ljava/lang/String;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/youku/player/module/VideoUrlInfo;->setRequestId(Ljava/lang/String;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/youku/player/module/VideoUrlInfo;->password:Ljava/lang/String;

    .line 129
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/youku/player/module/VideoUrlInfo;->setVid(Ljava/lang/String;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Lcom/youku/player/module/VideoUrlInfo;->setAlbum(Z)V

    .line 131
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v0, p12

    iput-object v0, v4, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    .line 132
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v0, p13

    iput-object v0, v4, Lcom/youku/player/module/VideoUrlInfo;->playlistId:Ljava/lang/String;

    .line 133
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v0, p14

    iput-object v0, v4, Lcom/youku/player/module/VideoUrlInfo;->albumID:Ljava/lang/String;

    .line 134
    invoke-static {}, Lcom/youku/player/base/YoukuBasePlayerActivity;->getCurrentFormat()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/player/goplay/MyGoplayManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/youku/player/goplay/Profile;->setVideoType_and_PlayerType(ILandroid/content/Context;)V

    .line 136
    const/4 v4, 0x1

    sput v4, Lcom/youku/player/goplay/Profile;->from:I

    .line 144
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v20

    .line 145
    .local v20, "hasInternet":Z
    if-nez p7, :cond_0

    if-nez v20, :cond_1

    .line 147
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p16

    invoke-direct {v0, v4, v1, v2}, Lcom/youku/player/goplay/MyGoplayManager;->playVideoFromLocal(Lcom/youku/player/module/VideoUrlInfo;ZLcom/youku/player/goplay/IVideoInfoCallBack;)V

    .line 204
    .end local v20    # "hasInternet":Z
    :goto_0
    return-void

    .line 150
    .restart local v20    # "hasInternet":Z
    :cond_1
    const-string v11, ""

    .line 151
    .local v11, "local_vid":Ljava/lang/String;
    const-string v12, ""

    .line 152
    .local v12, "local_time":Ljava/lang/String;
    const-string v13, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .local v13, "local_history":Ljava/lang/String;
    :try_start_1
    sget-object v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIVideoHistoryInfo:Lcom/youku/player/apiservice/IVideoHistoryInfo;

    if-eqz v4, :cond_2

    .line 156
    sget-object v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIVideoHistoryInfo:Lcom/youku/player/apiservice/IVideoHistoryInfo;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/youku/player/apiservice/IVideoHistoryInfo;->getVideoHistoryInfo(Ljava/lang/String;)Lcom/youku/player/module/VideoHistoryInfo;

    move-result-object v21

    .line 158
    .local v21, "hisVideoInfo":Lcom/youku/player/module/VideoHistoryInfo;
    if-eqz v21, :cond_2

    .line 159
    move-object/from16 v0, v21

    iget-object v11, v0, Lcom/youku/player/module/VideoHistoryInfo;->vid:Ljava/lang/String;

    .line 160
    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/youku/player/module/VideoHistoryInfo;->lastPlayTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 162
    move-object/from16 v0, v21

    iget v4, v0, Lcom/youku/player/module/VideoHistoryInfo;->playTime:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 170
    .end local v21    # "hisVideoInfo":Lcom/youku/player/module/VideoHistoryInfo;
    :cond_2
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->isLogin()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    if-nez p4, :cond_3

    .line 172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4, v11}, Lcom/youku/player/module/VideoUrlInfo;->setid(Ljava/lang/String;)V

    .line 173
    const/16 p10, 0x0

    .line 175
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string v5, "net"

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setPlayType(Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/player/goplay/MyGoplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->isLogin()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5, v6}, Lcom/youku/player/Track;->playRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 180
    if-eqz p9, :cond_5

    .line 181
    sget-object v4, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v5, "\u83b7\u53d6\u64ad\u653e\u4fe1\u606f playVideoFormNetYouKu"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getVideoStage()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez p6, :cond_4

    const/4 v10, 0x1

    :goto_2
    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move/from16 v8, p5

    move/from16 v14, p8

    move/from16 v15, p15

    move-object/from16 v16, p16

    invoke-direct/range {v4 .. v16}, Lcom/youku/player/goplay/MyGoplayManager;->playVideoFormNetYouKu(Ljava/lang/String;Ljava/lang/String;IILcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/youku/player/goplay/IVideoInfoCallBack;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 199
    .end local v11    # "local_vid":Ljava/lang/String;
    .end local v12    # "local_time":Ljava/lang/String;
    .end local v13    # "local_history":Ljava/lang/String;
    .end local v20    # "hasInternet":Z
    :catch_0
    move-exception v18

    .line 200
    .local v18, "e":Ljava/lang/Exception;
    new-instance v19, Lcom/youku/player/goplay/GoplayException;

    invoke-direct/range {v19 .. v19}, Lcom/youku/player/goplay/GoplayException;-><init>()V

    .line 201
    .local v19, "ex":Lcom/youku/player/goplay/GoplayException;
    const/16 v4, 0x6b

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/youku/player/goplay/GoplayException;->setErrorCode(I)Lcom/youku/player/goplay/GoplayException;

    .line 202
    move-object/from16 v0, p16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/youku/player/goplay/IVideoInfoCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    goto/16 :goto_0

    .line 166
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v19    # "ex":Lcom/youku/player/goplay/GoplayException;
    .restart local v11    # "local_vid":Ljava/lang/String;
    .restart local v12    # "local_time":Ljava/lang/String;
    .restart local v13    # "local_history":Ljava/lang/String;
    .restart local v20    # "hasInternet":Z
    :catch_1
    move-exception v18

    .line 167
    .restart local v18    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 182
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 187
    :cond_5
    sget-object v4, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v5, "\u83b7\u53d6\u64ad\u653e\u4fe1\u606f playVideoFormNetTudou"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getVideoStage()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez p6, :cond_6

    const/4 v10, 0x1

    :goto_3
    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move/from16 v8, p5

    move/from16 v14, p8

    move/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v17, p16

    invoke-direct/range {v4 .. v17}, Lcom/youku/player/goplay/MyGoplayManager;->playVideoFormNetTudou(Ljava/lang/String;Ljava/lang/String;IILcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILcom/youku/player/goplay/IVideoInfoCallBack;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_6
    const/4 v10, 0x0

    goto :goto_3
.end method

.method public playHls(Ljava/lang/String;Lcom/youku/player/goplay/IVideoInfoCallBack;)V
    .locals 3
    .param p1, "liveid"    # Ljava/lang/String;
    .param p2, "call"    # Lcom/youku/player/goplay/IVideoInfoCallBack;

    .prologue
    .line 446
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    iget-object v1, p0, Lcom/youku/player/goplay/MyGoplayManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/youku/player/goplay/MyGoplayManager;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/youku/player/apiservice/PlantformController;->playHLS(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Ljava/lang/String;Lcom/youku/player/goplay/IVideoInfoCallBack;)V

    .line 448
    return-void
.end method

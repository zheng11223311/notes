.class public Lcom/youku/player/service/GetVideoUrlServiceYouku;
.super Ljava/lang/Object;
.source "GetVideoUrlServiceYouku.java"

# interfaces
.implements Lcom/youku/player/service/NetService;


# instance fields
.field private format:Ljava/lang/String;

.field private h265:Z

.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mGetPlayListTime:J

.field private mListener:Lcom/youku/player/goplay/IVideoInfoCallBack;

.field private mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

.field private resetProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mGetPlayListTime:J

    .line 140
    new-instance v0, Lcom/youku/player/service/GetVideoUrlServiceYouku$1;

    invoke-direct {v0, p0}, Lcom/youku/player/service/GetVideoUrlServiceYouku$1;-><init>(Lcom/youku/player/service/GetVideoUrlServiceYouku;)V

    iput-object v0, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->handler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method public static URLEncoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 176
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    const-string p0, ""

    .line 183
    :goto_0
    return-object p0

    .line 179
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    goto :goto_0

    .line 180
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/youku/player/service/GetVideoUrlServiceYouku;)Lcom/youku/player/goplay/IVideoInfoCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/service/GetVideoUrlServiceYouku;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mListener:Lcom/youku/player/goplay/IVideoInfoCallBack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/player/service/GetVideoUrlServiceYouku;)Lcom/youku/player/module/VideoUrlInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/service/GetVideoUrlServiceYouku;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/player/service/GetVideoUrlServiceYouku;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/service/GetVideoUrlServiceYouku;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->sendTrack()V

    return-void
.end method

.method static synthetic access$300(Lcom/youku/player/service/GetVideoUrlServiceYouku;Lcom/youku/player/module/VideoUrlInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/service/GetVideoUrlServiceYouku;
    .param p1, "x1"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->getCachedVideoSuccessfully(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v0

    return v0
.end method

.method private getCachedVideoSuccessfully(Lcom/youku/player/module/VideoUrlInfo;)Z
    .locals 8
    .param p1, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    const/4 v5, 0x0

    .line 426
    sget-object v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mICacheInfo:Lcom/youku/player/apiservice/ICacheInfo;

    .line 428
    .local v2, "download":Lcom/youku/player/apiservice/ICacheInfo;
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, "vid":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-interface {v2, v4}, Lcom/youku/player/apiservice/ICacheInfo;->isDownloadFinished(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v5

    .line 435
    :cond_1
    invoke-interface {v2, v4}, Lcom/youku/player/apiservice/ICacheInfo;->getDownloadInfo(Ljava/lang/String;)Lcom/youku/player/module/VideoCacheInfo;

    move-result-object v3

    .line 437
    .local v3, "downloadInfo":Lcom/youku/player/module/VideoCacheInfo;
    sget-boolean v6, Lcom/youku/player/base/YoukuBasePlayerActivity;->isHighEnd:Z

    if-eqz v6, :cond_2

    .line 439
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/youku/player/module/VideoCacheInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "youku.m3u8"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/youku/player/util/PlayerUtil;->getM3u8File(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "cachedM3u8":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 446
    move-object v0, v1

    .line 452
    .end local v1    # "cachedM3u8":Ljava/lang/String;
    .local v0, "cachePath":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, p1, v3, v0}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->getVideoUrlInfoFromDownloadInfo(Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/module/VideoCacheInfo;Ljava/lang/String;)V

    .line 454
    const/4 v5, 0x1

    goto :goto_0

    .line 449
    .end local v0    # "cachePath":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/youku/player/module/VideoCacheInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1.3gp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "cachePath":Ljava/lang/String;
    goto :goto_1
.end method

.method private getLanguageInfo(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 699
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getLanguage()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 700
    const-string v4, "audiolang"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 701
    .local v3, "pointArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    .line 702
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 703
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 704
    .local v2, "languageObj":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 705
    new-instance v1, Lcom/youku/player/goplay/Language;

    invoke-direct {v1}, Lcom/youku/player/goplay/Language;-><init>()V

    .line 706
    .local v1, "lang":Lcom/youku/player/goplay/Language;
    const-string v4, "lang"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/player/goplay/Language;->lang:Ljava/lang/String;

    .line 707
    const-string/jumbo v4, "videoid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/player/goplay/Language;->vid:Ljava/lang/String;

    .line 708
    const-string v4, "isplay"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/youku/player/goplay/Language;->isDisplay:Z

    .line 709
    const-string v4, "langcode"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/player/goplay/Language;->langCode:Ljava/lang/String;

    .line 710
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getLanguage()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    .end local v1    # "lang":Lcom/youku/player/goplay/Language;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 713
    .end local v0    # "i":I
    .end local v2    # "languageObj":Lorg/json/JSONObject;
    :cond_1
    return-void
.end method

.method private getPointInfo(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 668
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setHasHead(Z)V

    .line 669
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setHasTail(Z)V

    .line 670
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getPoints()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 671
    const-string v4, "points"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 672
    .local v3, "pointArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_4

    .line 673
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 674
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 675
    .local v2, "point":Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    .line 676
    new-instance v1, Lcom/youku/player/goplay/Point;

    invoke-direct {v1}, Lcom/youku/player/goplay/Point;-><init>()V

    .line 677
    .local v1, "p":Lcom/youku/player/goplay/Point;
    const-string/jumbo v4, "start"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    iput-wide v4, v1, Lcom/youku/player/goplay/Point;->start:D

    .line 678
    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/player/goplay/Point;->type:Ljava/lang/String;

    .line 679
    const-string v4, "head"

    iget-object v5, v1, Lcom/youku/player/goplay/Point;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 680
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4, v8}, Lcom/youku/player/module/VideoUrlInfo;->setHasHead(Z)V

    .line 681
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-wide v6, v1, Lcom/youku/player/goplay/Point;->start:D

    double-to-int v5, v6

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setHeadPosition(I)V

    .line 683
    :cond_0
    const-string/jumbo v4, "tail"

    iget-object v5, v1, Lcom/youku/player/goplay/Point;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 684
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4, v8}, Lcom/youku/player/module/VideoUrlInfo;->setHasTail(Z)V

    .line 685
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-wide v6, v1, Lcom/youku/player/goplay/Point;->start:D

    double-to-int v5, v6

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setTailPosition(I)V

    .line 687
    :cond_1
    const-string/jumbo v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/player/goplay/Point;->title:Ljava/lang/String;

    .line 688
    const-string v4, "desc"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/player/goplay/Point;->desc:Ljava/lang/String;

    .line 689
    iget-object v4, v1, Lcom/youku/player/goplay/Point;->type:Ljava/lang/String;

    const-string/jumbo v5, "standard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 690
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getPoints()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    .end local v1    # "p":Lcom/youku/player/goplay/Point;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    .restart local v1    # "p":Lcom/youku/player/goplay/Point;
    :cond_3
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getAdPoints()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 696
    .end local v0    # "i":I
    .end local v1    # "p":Lcom/youku/player/goplay/Point;
    .end local v2    # "point":Lorg/json/JSONObject;
    :cond_4
    return-void
.end method

.method private getVideoUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 729
    return-object p1
.end method

.method private getVideoUrlInfoFromDownloadInfo(Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/module/VideoCacheInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "downloadInfo"    # Lcom/youku/player/module/VideoCacheInfo;
    .param p3, "cachePath"    # Ljava/lang/String;

    .prologue
    .line 459
    iget-object v0, p2, Lcom/youku/player/module/VideoCacheInfo;->videoid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/youku/player/module/VideoUrlInfo;->setVid(Ljava/lang/String;)V

    .line 460
    iget-object v0, p2, Lcom/youku/player/module/VideoCacheInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/youku/player/module/VideoUrlInfo;->setTitle(Ljava/lang/String;)V

    .line 461
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/youku/player/module/VideoUrlInfo;->setCached(Z)V

    .line 462
    iput-object p3, p1, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    .line 463
    iget-object v0, p2, Lcom/youku/player/module/VideoCacheInfo;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/youku/player/module/VideoUrlInfo;->setVideoLanguage(Ljava/lang/String;)V

    .line 464
    iget v0, p2, Lcom/youku/player/module/VideoCacheInfo;->playTime:I

    invoke-virtual {p1, v0}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 465
    iget-object v0, p2, Lcom/youku/player/module/VideoCacheInfo;->showid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/youku/player/module/VideoUrlInfo;->setShowId(Ljava/lang/String;)V

    .line 466
    iget-object v0, p2, Lcom/youku/player/module/VideoCacheInfo;->showname:Ljava/lang/String;

    iput-object v0, p1, Lcom/youku/player/module/VideoUrlInfo;->serialTitle:Ljava/lang/String;

    .line 467
    iget v0, p2, Lcom/youku/player/module/VideoCacheInfo;->show_videoseq:I

    invoke-virtual {p1, v0}, Lcom/youku/player/module/VideoUrlInfo;->setShow_videoseq(I)V

    .line 468
    iget v0, p2, Lcom/youku/player/module/VideoCacheInfo;->seconds:I

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setDurationSecs(D)V

    .line 469
    iget-object v0, p2, Lcom/youku/player/module/VideoCacheInfo;->nextVid:Ljava/lang/String;

    iput-object v0, p1, Lcom/youku/player/module/VideoUrlInfo;->nextVideoId:Ljava/lang/String;

    .line 470
    iget v0, p2, Lcom/youku/player/module/VideoCacheInfo;->quality:I

    invoke-virtual {p1, v0}, Lcom/youku/player/module/VideoUrlInfo;->setCurrentVideoQuality(I)V

    .line 471
    return-void
.end method

.method private parseAttachment(Lorg/json/JSONArray;)V
    .locals 12
    .param p1, "attachmentArray"    # Lorg/json/JSONArray;

    .prologue
    .line 739
    sget-object v9, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v10, "parseAttachment()"

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 743
    .local v1, "attachmentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/youku/player/subtitle/Attachment;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 745
    .local v2, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/subtitle/Attachment;>;"
    if-nez p1, :cond_1

    .line 746
    sget-object v9, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v10, "parseResponse : dataArray == null"

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 751
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 752
    .local v7, "object":Lorg/json/JSONObject;
    if-nez v7, :cond_3

    .line 750
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 756
    :cond_3
    const-string/jumbo v9, "type"

    invoke-static {v7, v9}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 758
    .local v8, "type":Ljava/lang/String;
    const-string/jumbo v9, "subtitle"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 759
    const-string v9, "lang"

    invoke-static {v7, v9}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 760
    .local v6, "lang":Ljava/lang/String;
    const-string v9, "attrachmenturl"

    invoke-static {v7, v9}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 762
    .local v3, "attrachmentUrl":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 763
    new-instance v9, Lcom/youku/player/subtitle/Attachment;

    invoke-direct {v9, v6, v3, v8}, Lcom/youku/player/subtitle/Attachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 768
    .end local v3    # "attrachmentUrl":Ljava/lang/String;
    .end local v6    # "lang":Ljava/lang/String;
    .end local v7    # "object":Lorg/json/JSONObject;
    .end local v8    # "type":Ljava/lang/String;
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 771
    const-string v9, "chs"

    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 772
    const-string v9, "chs"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    :cond_5
    const-string v9, "cht"

    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 776
    const-string v9, "cht"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    :cond_6
    const-string v9, "en"

    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 780
    const-string v9, "en"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/subtitle/Attachment;

    .line 784
    .local v0, "attachment":Lcom/youku/player/subtitle/Attachment;
    sget-object v9, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lang = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/youku/player/subtitle/Attachment;->lang:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/youku/player/subtitle/Attachment;->attrachmentUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/youku/player/subtitle/Attachment;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 787
    .end local v0    # "attachment":Lcom/youku/player/subtitle/Attachment;
    :cond_8
    iget-object v9, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9, v2}, Lcom/youku/player/module/VideoUrlInfo;->setAttachments(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private parseM3U8(Lorg/json/JSONObject;)Z
    .locals 9
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x0

    .line 631
    const-string v6, "m3u8_flv"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 632
    const-string v6, "m3u8_flv"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 633
    .local v0, "M3U8FLV":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 634
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 635
    .local v1, "M3U8FLVObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 636
    iget-object v6, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v7, "url"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/youku/player/module/VideoUrlInfo;->setM3u8SD(Ljava/lang/String;)V

    .line 637
    iget-object v6, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v7, "seconds"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/youku/player/module/VideoUrlInfo;->setM3u8SDDuration(I)V

    .line 642
    .end local v0    # "M3U8FLV":Lorg/json/JSONArray;
    .end local v1    # "M3U8FLVObject":Lorg/json/JSONObject;
    :cond_0
    const-string v6, "m3u8_mp4"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 643
    const-string v6, "m3u8_mp4"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 644
    .local v4, "M3U8MP4":Lorg/json/JSONArray;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 645
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 646
    .local v5, "M3U8MP4Object":Lorg/json/JSONObject;
    if-eqz v5, :cond_1

    .line 647
    iget-object v6, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v7, "url"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/youku/player/module/VideoUrlInfo;->setM3u8HD(Ljava/lang/String;)V

    .line 648
    iget-object v6, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v7, "seconds"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/youku/player/module/VideoUrlInfo;->setM3u8HDDuration(I)V

    .line 653
    .end local v4    # "M3U8MP4":Lorg/json/JSONArray;
    .end local v5    # "M3U8MP4Object":Lorg/json/JSONObject;
    :cond_1
    const-string v6, "m3u8_hd"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 654
    const-string v6, "m3u8_hd"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 655
    .local v2, "M3U8HD":Lorg/json/JSONArray;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 656
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 657
    .local v3, "M3U8HDObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 658
    iget-object v6, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v7, "url"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/youku/player/module/VideoUrlInfo;->setM3u8HD2(Ljava/lang/String;)V

    .line 659
    iget-object v6, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v7, "seconds"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/youku/player/module/VideoUrlInfo;->setM3u8HD2Duration(I)V

    .line 664
    .end local v2    # "M3U8HD":Lorg/json/JSONArray;
    .end local v3    # "M3U8HDObject":Lorg/json/JSONObject;
    :cond_2
    const/4 v6, 0x1

    return v6
.end method

.method private parseOther(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 6
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "videotpye"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 616
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 617
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 618
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 619
    .local v1, "videoObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 620
    iget-object v2, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->getVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/player/module/VideoUrlInfo;->setUrl(Ljava/lang/String;)V

    .line 621
    iget-object v2, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2, v4}, Lcom/youku/player/module/VideoUrlInfo;->setCached(Z)V

    .line 622
    iget-object v2, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v3, "seconds"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    int-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setDurationSecs(D)V

    .line 623
    iget-object v2, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string v3, "fileid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/youku/player/module/VideoUrlInfo;->fieldId:Ljava/lang/String;

    .line 626
    .end local v1    # "videoObject":Lorg/json/JSONObject;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private parseSeg(Lorg/json/JSONObject;Ljava/lang/String;IZ)Z
    .locals 10
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "format"    # I
    .param p4, "h265"    # Z

    .prologue
    .line 598
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 599
    .local v9, "segsArray":Lorg/json/JSONArray;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 600
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .local v8, "segs":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/goplay/ItemSeg;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 602
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 603
    .local v7, "segObject":Lorg/json/JSONObject;
    if-eqz v7, :cond_0

    .line 604
    new-instance v0, Lcom/youku/player/goplay/ItemSeg;

    const-string v1, "id"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "seconds"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->getVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "fileid"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/youku/player/goplay/ItemSeg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 609
    .end local v7    # "segObject":Lorg/json/JSONObject;
    :cond_1
    iget-object v0, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0, v8, p3, p4}, Lcom/youku/player/module/VideoUrlInfo;->addSegments(Ljava/util/List;IZ)V

    .line 610
    const/4 v0, 0x1

    .line 612
    .end local v6    # "i":I
    .end local v8    # "segs":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/goplay/ItemSeg;>;"
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private parseVideoInfo(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 560
    sget-boolean v8, Lcom/youku/player/goplay/Profile;->USE_SYSTEM_PLAYER:Z

    if-eqz v8, :cond_0

    .line 561
    invoke-direct {p0, p1}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->parseM3U8(Lorg/json/JSONObject;)Z

    .line 563
    :cond_0
    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormatName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "flv_hd"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormatName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mp4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormatName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "hd2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 566
    :cond_1
    const-string v6, "flvhd"

    .line 567
    .local v6, "formatSD":Ljava/lang/String;
    const-string v0, "mp4"

    .line 568
    .local v0, "formatHD":Ljava/lang/String;
    const-string v1, "hd2"

    .line 569
    .local v1, "formatHD2":Ljava/lang/String;
    const-string v3, "hd3"

    .line 570
    .local v3, "formatHD3":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->h265:Z

    if-eqz v8, :cond_6

    .line 571
    const-string v7, "mp5sd"

    .line 572
    .local v7, "formatSDH265":Ljava/lang/String;
    const-string v5, "mp5hd"

    .line 573
    .local v5, "formatHDH265":Ljava/lang/String;
    const-string v2, "mp5hd2"

    .line 574
    .local v2, "formatHD2H265":Ljava/lang/String;
    const-string v4, "mp5hd3"

    .line 575
    .local v4, "formatHD3H265":Ljava/lang/String;
    const/4 v8, 0x5

    const/4 v9, 0x1

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;IZ)Z

    move-result v8

    if-nez v8, :cond_2

    .line 576
    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-direct {p0, p1, v6, v8, v9}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;IZ)Z

    .line 577
    :cond_2
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct {p0, p1, v5, v8, v9}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;IZ)Z

    move-result v8

    if-nez v8, :cond_3

    .line 578
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, p1, v0, v8, v9}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;IZ)Z

    .line 579
    :cond_3
    const/4 v8, 0x7

    const/4 v9, 0x1

    invoke-direct {p0, p1, v2, v8, v9}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;IZ)Z

    move-result v8

    if-nez v8, :cond_4

    .line 580
    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-direct {p0, p1, v1, v8, v9}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;IZ)Z

    .line 581
    :cond_4
    const/16 v8, 0x8

    const/4 v9, 0x1

    invoke-direct {p0, p1, v4, v8, v9}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;IZ)Z

    move-result v8

    if-nez v8, :cond_5

    .line 582
    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-direct {p0, p1, v3, v8, v9}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;IZ)Z

    .line 589
    .end local v2    # "formatHD2H265":Ljava/lang/String;
    .end local v4    # "formatHD3H265":Ljava/lang/String;
    .end local v5    # "formatHDH265":Ljava/lang/String;
    .end local v7    # "formatSDH265":Ljava/lang/String;
    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->parseM3U8(Lorg/json/JSONObject;)Z

    .line 594
    .end local v0    # "formatHD":Ljava/lang/String;
    .end local v1    # "formatHD2":Ljava/lang/String;
    .end local v3    # "formatHD3":Ljava/lang/String;
    .end local v6    # "formatSD":Ljava/lang/String;
    :goto_1
    return-void

    .line 584
    .restart local v0    # "formatHD":Ljava/lang/String;
    .restart local v1    # "formatHD2":Ljava/lang/String;
    .restart local v3    # "formatHD3":Ljava/lang/String;
    .restart local v6    # "formatSD":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-direct {p0, p1, v6, v8, v9}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;IZ)Z

    .line 585
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, p1, v0, v8, v9}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;IZ)Z

    .line 586
    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-direct {p0, p1, v1, v8, v9}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;IZ)Z

    .line 587
    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-direct {p0, p1, v3, v8, v9}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;IZ)Z

    goto :goto_0

    .line 590
    .end local v0    # "formatHD":Ljava/lang/String;
    .end local v1    # "formatHD2":Ljava/lang/String;
    .end local v3    # "formatHD3":Ljava/lang/String;
    .end local v6    # "formatSD":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormatName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "m3u8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 591
    invoke-direct {p0, p1}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->parseM3U8(Lorg/json/JSONObject;)Z

    goto :goto_1

    .line 593
    :cond_8
    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormatName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->parseOther(Lorg/json/JSONObject;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private sendTrack()V
    .locals 4

    .prologue
    .line 134
    const-string v0, ""

    .line 135
    .local v0, "vid":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mGetPlayListTime:J

    invoke-static {v1, v2, v3, v0}, Lcom/youku/player/Track;->trackGetPlayList(Landroid/content/Context;JLjava/lang/String;)V

    .line 138
    return-void
.end method

.method private setPayInfo(Lcom/youku/player/module/PayInfo;Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "payInfo"    # Lcom/youku/player/module/PayInfo;
    .param p2, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 527
    const-string/jumbo v4, "trial"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 528
    .local v3, "trial_info":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 529
    new-instance v4, Lcom/youku/player/module/PayInfo$Trial;

    invoke-direct {v4}, Lcom/youku/player/module/PayInfo$Trial;-><init>()V

    iput-object v4, p1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    .line 530
    iget-object v4, p1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    const-string v5, "episodes"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/youku/player/module/PayInfo$Trial;->episodes:I

    .line 531
    iget-object v4, p1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    const-string/jumbo v5, "time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/youku/player/module/PayInfo$Trial;->time:I

    .line 532
    iget-object v4, p1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    .line 533
    iget-object v4, p1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    const-string/jumbo v5, "trial_str"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/youku/player/module/PayInfo$Trial;->trialStr:Ljava/lang/String;

    .line 534
    sget-object v4, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "payInfo.trail.episodes:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v6, v6, Lcom/youku/player/module/PayInfo$Trial;->episodes:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " payInfo.trail.time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v6, v6, Lcom/youku/player/module/PayInfo$Trial;->time:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " payInfo.trail.type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v6, v6, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " payInfo.trail.trialStr:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v6, v6, Lcom/youku/player/module/PayInfo$Trial;->trialStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_0
    const-string v4, "pay_info"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 537
    const-string v4, "pay_info"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 538
    .local v1, "pay_info":Lorg/json/JSONObject;
    const-string v4, "duration"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/youku/player/module/PayInfo;->duration:Ljava/lang/String;

    .line 539
    const-string v4, "oriprice"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/youku/player/module/PayInfo;->oriprice:Ljava/lang/String;

    .line 540
    const-string v4, "coprice"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/youku/player/module/PayInfo;->coprice:Ljava/lang/String;

    .line 541
    const-string v4, "play"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p1, Lcom/youku/player/module/PayInfo;->play:Z

    .line 542
    const-string v4, "paytype"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 543
    .local v2, "paytype":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p1, Lcom/youku/player/module/PayInfo;->payType:Ljava/util/ArrayList;

    .line 544
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 545
    iget-object v4, p1, Lcom/youku/player/module/PayInfo;->payType:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 548
    .end local v0    # "i":I
    .end local v1    # "pay_info":Lorg/json/JSONObject;
    .end local v2    # "paytype":Lorg/json/JSONArray;
    :cond_1
    const-string/jumbo v4, "showid"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 549
    const-string/jumbo v4, "showid"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/youku/player/module/PayInfo;->showid:Ljava/lang/String;

    .line 551
    :cond_2
    const-string/jumbo v4, "showname"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 552
    const-string/jumbo v4, "showname"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/youku/player/module/PayInfo;->showname:Ljava/lang/String;

    .line 554
    :cond_3
    const-string/jumbo v4, "vip"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 555
    const-string/jumbo v4, "vip"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/youku/player/module/PayInfo;->vip:Ljava/lang/String;

    .line 557
    :cond_4
    return-void
.end method

.method private setVideoUrlInfoFromJson(Lorg/json/JSONObject;)V
    .locals 42
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 214
    const/16 v24, -0x1

    .line 215
    .local v24, "response":I
    const-string/jumbo v38, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 216
    .local v29, "status":Ljava/lang/String;
    const-string/jumbo v38, "sid_data"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    .line 217
    .local v28, "sidData":Lorg/json/JSONObject;
    const-string/jumbo v38, "token"

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 218
    .local v34, "token":Ljava/lang/String;
    const-string v38, "oip"

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 219
    .local v21, "oip":Ljava/lang/String;
    const-string/jumbo v38, "sid"

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 220
    .local v27, "sid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/youku/player/module/VideoUrlInfo;->oip:Ljava/lang/String;

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setStatus(Ljava/lang/String;)V

    .line 224
    const-string v38, "code"

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v5

    .line 225
    .local v5, "code":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Lcom/youku/player/module/VideoUrlInfo;->setCode(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setHttpResponseCode(I)V

    .line 227
    const-string/jumbo v38, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 228
    .local v33, "title":Ljava/lang/String;
    if-eqz v33, :cond_0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v38

    if-lez v38, :cond_0

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setTitle(Ljava/lang/String;)V

    .line 232
    :cond_0
    const-string/jumbo v38, "streamlogos"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2

    .line 233
    const-string/jumbo v38, "streamlogos"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v31

    .line 234
    .local v31, "streamlogos":Lorg/json/JSONObject;
    if-eqz v31, :cond_2

    .line 235
    const-string v38, "mp4"

    const/16 v39, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v16

    .line 237
    .local v16, "isMp4WaterMark":I
    const-string v38, "hd3"

    const/16 v39, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v15

    .line 239
    .local v15, "isHd3WaterMark":I
    const-string v38, "hd2"

    const/16 v39, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v14

    .line 241
    .local v14, "isHd2WaterMark":I
    const-string v38, "flvhd"

    const/16 v39, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v38

    const-string v39, "flv"

    const/16 v40, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v39

    add-int v13, v38, v39

    .line 244
    .local v13, "isFlvWaterMark":I
    if-nez v13, :cond_1

    const-string v38, "3gphd"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1

    .line 245
    const-string v38, "3gphd"

    const/16 v39, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v13

    .line 247
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isWaterMark:[I

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput v14, v38, v39

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isWaterMark:[I

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aput v16, v38, v39

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isWaterMark:[I

    move-object/from16 v38, v0

    const/16 v39, 0x2

    aput v13, v38, v39

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isWaterMark:[I

    move-object/from16 v38, v0

    const/16 v39, 0x4

    aput v15, v38, v39

    .line 254
    .end local v13    # "isFlvWaterMark":I
    .end local v14    # "isHd2WaterMark":I
    .end local v15    # "isHd3WaterMark":I
    .end local v16    # "isMp4WaterMark":I
    .end local v31    # "streamlogos":Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string/jumbo v39, "siddecode"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setSiddecode(Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string/jumbo v39, "uid"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setUid(Ljava/lang/String;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string v39, "interact"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v39

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setInteract(Z)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string/jumbo v39, "video_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setVideoType(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string/jumbo v39, "viddecode"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setViddecode(Ljava/lang/String;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string v39, "ct"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setChannelId(Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string v39, "cs"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setSchannelid(Ljava/lang/String;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string v39, "piddecode"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setPiddecode(Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string v39, "pct"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setPlaylistchannelid(Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string v39, "pcs"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setSplaylistchannelid(Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string/jumbo v39, "sct"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setShowchannelid(Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string/jumbo v39, "scs"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setSshowchannelid(Ljava/lang/String;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string v39, "paystate"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setPaystate(Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string v39, "copyright"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setCopyright(Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string/jumbo v39, "trailers"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setTrailers(Ljava/lang/String;)V

    .line 272
    const-string v38, "look_ten"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    .line 273
    .local v18, "lookten":I
    const/16 v38, 0x1

    move/from16 v0, v18

    move/from16 v1, v38

    if-ne v0, v1, :cond_3

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setLookTen(I)V

    .line 276
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    new-instance v39, Lcom/youku/player/module/PayInfo;

    invoke-direct/range {v39 .. v39}, Lcom/youku/player/module/PayInfo;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->setPayInfo(Lcom/youku/player/module/PayInfo;Lorg/json/JSONObject;)V

    .line 279
    const-string/jumbo v38, "showid"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 280
    .local v26, "showid":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/youku/player/util/PlayerUtil;->isNull(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_4

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setShowId(Ljava/lang/String;)V

    .line 284
    :cond_4
    const-string/jumbo v38, "weburl"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 285
    .local v36, "weburl":Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Lcom/youku/player/util/PlayerUtil;->isNull(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_5

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setWeburl(Ljava/lang/String;)V

    .line 287
    :cond_5
    const-string v38, "img_hd"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 288
    .local v12, "img":Ljava/lang/String;
    invoke-static {v12}, Lcom/youku/player/util/PlayerUtil;->isNull(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_6

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v12}, Lcom/youku/player/module/VideoUrlInfo;->setimgurl(Ljava/lang/String;)V

    .line 290
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string v39, "lang"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setVideoLanguage(Ljava/lang/String;)V

    .line 292
    const-string/jumbo v38, "videoid"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 293
    .local v35, "videoid":Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Lcom/youku/player/util/PlayerUtil;->isNull(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setVid(Ljava/lang/String;)V

    .line 297
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string/jumbo v39, "totalseconds"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v39

    move/from16 v0, v39

    int-to-double v0, v0

    move-wide/from16 v40, v0

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/module/VideoUrlInfo;->setDurationSecs(D)V

    .line 299
    const-string v38, "point"

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v23

    .line 300
    .local v23, "point":I
    const-string/jumbo v38, "show_videoseq"

    const/16 v39, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v25

    .line 301
    .local v25, "show_videoseq":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setShow_videoseq(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string v39, "album_video_count"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setAlbumVideoCount(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v39, v0

    const-string v38, "1"

    const-string v40, "is_phone_stream"

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_c

    const/16 v38, 0x1

    :goto_0
    move-object/from16 v0, v39

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setVerticalVideo(Z)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->playlistId:Ljava/lang/String;

    move-object/from16 v38, v0

    if-nez v38, :cond_e

    .line 305
    if-eqz p1, :cond_d

    const-string v38, "next_video"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_d

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setHaveNext(I)V

    .line 307
    const-string v38, "next_video"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 308
    .local v20, "next":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string/jumbo v39, "videoid"

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/youku/player/module/VideoUrlInfo;->nextVideoId:Ljava/lang/String;

    .line 325
    .end local v20    # "next":Lorg/json/JSONObject;
    :goto_1
    const/16 v38, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_10

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 338
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v39

    sub-int v38, v38, v39

    const v39, 0xea60

    move/from16 v0, v38

    move/from16 v1, v39

    if-gt v0, v1, :cond_9

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 342
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string/jumbo v39, "webviewurl"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setWebViewUrl(Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v39, v0

    const-string v38, "paid"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v38

    const/16 v40, 0x1

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_12

    const/16 v38, 0x1

    :goto_3
    move/from16 v0, v38

    move-object/from16 v1, v39

    iput-boolean v0, v1, Lcom/youku/player/module/VideoUrlInfo;->paid:Z

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string/jumbo v39, "videoid_play"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/youku/player/module/VideoUrlInfo;->videoIdPlay:Ljava/lang/String;

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string v39, "drm_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setDrmType(Ljava/lang/String;)V

    .line 347
    const-string v38, "marlin"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->getDrmType()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_a

    .line 348
    const-string v38, "drm_token"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 349
    .local v9, "drmToken":Lorg/json/JSONObject;
    if-eqz v9, :cond_a

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string v39, "malin"

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setMarlinToken(Ljava/lang/String;)V

    .line 353
    .end local v9    # "drmToken":Lorg/json/JSONObject;
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->getPointInfo(Lorg/json/JSONObject;)V

    .line 355
    sget-object v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->mICacheInfo:Lcom/youku/player/apiservice/ICacheInfo;

    .line 356
    .local v7, "download":Lcom/youku/player/apiservice/ICacheInfo;
    if-eqz v7, :cond_1d

    .line 357
    move-object/from16 v0, v35

    invoke-interface {v7, v0}, Lcom/youku/player/apiservice/ICacheInfo;->isDownloadFinished(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1c

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-interface {v7, v0}, Lcom/youku/player/apiservice/ICacheInfo;->getDownloadInfo(Ljava/lang/String;)Lcom/youku/player/module/VideoCacheInfo;

    move-result-object v8

    .line 361
    .local v8, "downloadInfo":Lcom/youku/player/module/VideoCacheInfo;
    sget-boolean v38, Lcom/youku/player/base/YoukuBasePlayerActivity;->isHighEnd:Z

    if-eqz v38, :cond_1b

    .line 362
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/youku/player/module/VideoCacheInfo;->savePath:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "youku.m3u8"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/youku/player/util/PlayerUtil;->getM3u8File(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 365
    .local v4, "cacheM3u8":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_13

    .line 366
    invoke-direct/range {p0 .. p1}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->getLanguageInfo(Lorg/json/JSONObject;)V

    .line 367
    const-string/jumbo v38, "results"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_b

    .line 368
    const-string/jumbo v38, "results"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->parseVideoInfo(Lorg/json/JSONObject;)V

    .line 422
    .end local v4    # "cacheM3u8":Ljava/lang/String;
    .end local v8    # "downloadInfo":Lcom/youku/player/module/VideoCacheInfo;
    :cond_b
    :goto_4
    return-void

    .line 303
    .end local v7    # "download":Lcom/youku/player/apiservice/ICacheInfo;
    :cond_c
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 310
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setHaveNext(I)V

    goto/16 :goto_1

    .line 313
    :cond_e
    const-string v38, "playlist_next_video"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_f

    .line 314
    const-string v38, "playlist_next_video"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 316
    .local v22, "playlistNextVideoObject":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string v39, "next_videoid"

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/youku/player/module/VideoUrlInfo;->nextVideoId:Ljava/lang/String;

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const-string/jumbo v39, "title"

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/youku/player/module/VideoUrlInfo;->nextVideoTitle:Ljava/lang/String;

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setHaveNext(I)V

    goto/16 :goto_1

    .line 322
    .end local v22    # "playlistNextVideoObject":Lorg/json/JSONObject;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setHaveNext(I)V

    goto/16 :goto_1

    .line 329
    :cond_10
    if-lez v23, :cond_11

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 332
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getRecordFromLocal(Lcom/youku/player/module/VideoUrlInfo;)Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v32

    .line 333
    .local v32, "tempInfo":Lcom/youku/player/module/VideoUrlInfo;
    if-eqz v32, :cond_8

    .line 334
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    goto/16 :goto_2

    .line 343
    .end local v32    # "tempInfo":Lcom/youku/player/module/VideoUrlInfo;
    :cond_12
    const/16 v38, 0x0

    goto/16 :goto_3

    .line 372
    .restart local v4    # "cacheM3u8":Ljava/lang/String;
    .restart local v7    # "download":Lcom/youku/player/apiservice/ICacheInfo;
    .restart local v8    # "downloadInfo":Lcom/youku/player/module/VideoCacheInfo;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setCached(Z)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iput-object v4, v0, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    .line 378
    .end local v4    # "cacheM3u8":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    iget v0, v8, Lcom/youku/player/module/VideoCacheInfo;->quality:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setCurrentVideoQuality(I)V

    .line 390
    .end local v8    # "downloadInfo":Lcom/youku/player/module/VideoCacheInfo;
    :cond_14
    :goto_6
    const-string v38, "attachment"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_15

    .line 391
    const-string v38, "attachment"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->parseAttachment(Lorg/json/JSONArray;)V

    .line 393
    :cond_15
    const-string/jumbo v38, "stream_milliseconds"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_19

    .line 394
    const-string/jumbo v38, "stream_milliseconds"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v30

    .line 395
    .local v30, "streamJson":Lorg/json/JSONObject;
    sget-object v38, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "streamJson:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v38, "flvhd"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 397
    .local v10, "flvDuration":I
    if-eqz v10, :cond_16

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const/16 v39, 0x2

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v0, v1, v10}, Lcom/youku/player/module/VideoUrlInfo;->addStreamMilliseconds(II)V

    .line 399
    :cond_16
    const-string v38, "mp4"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    .line 400
    .local v19, "mp4Duration":I
    if-eqz v19, :cond_17

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/module/VideoUrlInfo;->addStreamMilliseconds(II)V

    .line 402
    :cond_17
    const-string v38, "hd2"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    .line 403
    .local v11, "hd2Duration":I
    if-eqz v11, :cond_18

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v0, v1, v11}, Lcom/youku/player/module/VideoUrlInfo;->addStreamMilliseconds(II)V

    .line 405
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->getStreamMilliseconds(I)I

    move-result v6

    .line 406
    .local v6, "currentQualityDuration":I
    if-eqz v6, :cond_19

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Lcom/youku/player/module/VideoUrlInfo;->setDurationMills(I)V

    .line 411
    .end local v6    # "currentQualityDuration":I
    .end local v10    # "flvDuration":I
    .end local v11    # "hd2Duration":I
    .end local v19    # "mp4Duration":I
    .end local v30    # "streamJson":Lorg/json/JSONObject;
    :cond_19
    const-string/jumbo v38, "youku_register_num"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 412
    .local v37, "youku_register_num":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_1a

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setYoukuRegisterNum(Ljava/lang/String;)V

    .line 417
    :cond_1a
    const-string v38, "license_num"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 418
    .local v17, "license_num":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_b

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setLicenseNum(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 375
    .end local v17    # "license_num":Ljava/lang/String;
    .end local v37    # "youku_register_num":Ljava/lang/String;
    .restart local v8    # "downloadInfo":Lcom/youku/player/module/VideoCacheInfo;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Lcom/youku/player/module/VideoUrlInfo;->setCached(Z)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v38, v0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/youku/player/module/VideoCacheInfo;->savePath:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "1.3gp"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    goto/16 :goto_5

    .line 380
    .end local v8    # "downloadInfo":Lcom/youku/player/module/VideoCacheInfo;
    :cond_1c
    invoke-direct/range {p0 .. p1}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->getLanguageInfo(Lorg/json/JSONObject;)V

    .line 381
    const-string/jumbo v38, "results"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_14

    .line 382
    const-string/jumbo v38, "results"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->parseVideoInfo(Lorg/json/JSONObject;)V

    goto/16 :goto_6

    .line 385
    :cond_1d
    invoke-direct/range {p0 .. p1}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->getLanguageInfo(Lorg/json/JSONObject;)V

    .line 386
    const-string/jumbo v38, "results"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_14

    .line 387
    const-string/jumbo v38, "results"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->parseVideoInfo(Lorg/json/JSONObject;)V

    goto/16 :goto_6
.end method


# virtual methods
.method public getVideoUrl(Ljava/lang/String;Ljava/lang/String;IILcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/player/goplay/IVideoInfoCallBack;)V
    .locals 15
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "languageCode"    # Ljava/lang/String;
    .param p3, "videostage"    # I
    .param p4, "format"    # I
    .param p5, "mVideoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p6, "resetProgress"    # Z
    .param p7, "local_vid"    # Ljava/lang/String;
    .param p8, "local_time"    # Ljava/lang/String;
    .param p9, "local_history"    # Ljava/lang/String;
    .param p10, "mListener"    # Lcom/youku/player/goplay/IVideoInfoCallBack;

    .prologue
    .line 83
    const/4 v14, 0x0

    .line 84
    .local v14, "url":Ljava/lang/String;
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->resetProgress:Z

    .line 85
    invoke-static/range {p2 .. p2}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 86
    sget-boolean v2, Lcom/youku/player/goplay/Profile;->USE_SYSTEM_PLAYER:Z

    if-eqz v2, :cond_1

    .line 87
    const-string v2, "6"

    iput-object v2, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->format:Ljava/lang/String;

    .line 96
    :goto_0
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/youku/player/module/VideoUrlInfo;->password:Ljava/lang/String;

    .line 97
    .local v3, "password":Ljava/lang/String;
    move-object/from16 v0, p5

    iget-object v10, v0, Lcom/youku/player/module/VideoUrlInfo;->playlistId:Ljava/lang/String;

    .line 99
    .local v10, "playlistId":Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 100
    iget-object v8, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->format:Ljava/lang/String;

    move-object/from16 v2, p1

    move-object/from16 v4, p8

    move/from16 v5, p3

    move-object/from16 v6, p7

    move-object/from16 v7, p2

    move-object/from16 v9, p9

    invoke-static/range {v2 .. v10}, Lcom/youku/player/util/URLContainer;->getMutilPayVideoPlayUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 108
    .local v11, "mUrlMoreYouku":Ljava/lang/String;
    move-object v14, v11

    .line 119
    .end local v11    # "mUrlMoreYouku":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/player/config/MediaPlayerConfiguration;->useH265()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/youku/uplayer/MediaPlayerProxy;->supportH265()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->h265:Z

    .line 120
    iget-boolean v2, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->h265:Z

    if-eqz v2, :cond_0

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&h265=1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 122
    :cond_0
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mListener:Lcom/youku/player/goplay/IVideoInfoCallBack;

    .line 123
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 124
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u8bf7\u6c42\u64ad\u653e\u5730\u5740 GetVideoUrlServiceYouku getVideoUrl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mGetPlayListTime:J

    .line 127
    new-instance v13, Lcom/youku/player/goplay/TaskGetVideoUrl;

    invoke-direct {v13, v14}, Lcom/youku/player/goplay/TaskGetVideoUrl;-><init>(Ljava/lang/String;)V

    .line 128
    .local v13, "taskGetVideoUrl":Lcom/youku/player/goplay/TaskGetVideoUrl;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lcom/youku/player/goplay/TaskGetVideoUrl;->setSuccess(I)V

    .line 129
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/youku/player/goplay/TaskGetVideoUrl;->setFail(I)V

    .line 130
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Handler;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->handler:Landroid/os/Handler;

    aput-object v5, v2, v4

    invoke-virtual {v13, v2}, Lcom/youku/player/goplay/TaskGetVideoUrl;->execute([Ljava/lang/Object;)Lcom/baseproject/network/YoukuAsyncTask;

    .line 131
    return-void

    .line 90
    .end local v3    # "password":Ljava/lang/String;
    .end local v10    # "playlistId":Ljava/lang/String;
    .end local v13    # "taskGetVideoUrl":Lcom/youku/player/goplay/TaskGetVideoUrl;
    :cond_1
    const/4 v2, 0x5

    move/from16 v0, p4

    if-ne v2, v0, :cond_2

    .line 91
    const-string v2, "1,5,6,7,8"

    iput-object v2, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->format:Ljava/lang/String;

    goto/16 :goto_0

    .line 93
    :cond_2
    const-string v2, "4"

    iput-object v2, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->format:Ljava/lang/String;

    goto/16 :goto_0

    .line 110
    .restart local v3    # "password":Ljava/lang/String;
    .restart local v10    # "playlistId":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->format:Ljava/lang/String;

    move-object/from16 v2, p1

    move-object/from16 v4, p8

    move-object/from16 v5, p7

    move-object/from16 v6, p2

    move-object/from16 v8, p9

    move-object v9, v10

    invoke-static/range {v2 .. v9}, Lcom/youku/player/util/URLContainer;->getOnePayVideoPlayUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 116
    .local v12, "mUrlOneYouku":Ljava/lang/String;
    move-object v14, v12

    goto/16 :goto_1

    .line 119
    .end local v12    # "mUrlOneYouku":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected setVideoUrlFailReason(Lcom/youku/player/goplay/GoplayException;)V
    .locals 7
    .param p1, "mResult"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 484
    const/4 v0, 0x0

    .line 485
    .local v0, "code":I
    :try_start_0
    invoke-static {}, Lcom/youku/player/goplay/VideoInfoReasult;->getResponseString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 486
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {}, Lcom/youku/player/goplay/VideoInfoReasult;->getResponseString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 488
    .local v3, "object":Lorg/json/JSONObject;
    const-string v5, "code"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 489
    iget-object v5, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5, v0}, Lcom/youku/player/module/VideoUrlInfo;->setCode(I)V

    .line 490
    const-string/jumbo v5, "webviewurl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/youku/player/goplay/GoplayException;->webUrl:Ljava/lang/String;

    .line 491
    invoke-virtual {p1, v0}, Lcom/youku/player/goplay/GoplayException;->setErrorCode(I)Lcom/youku/player/goplay/GoplayException;

    .line 492
    const-string v5, "err_desc"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    .line 493
    const/16 v5, -0x68

    if-ne v0, v5, :cond_1

    .line 494
    const-string/jumbo v5, "streamtypes"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 495
    const-string/jumbo v5, "streamtypes"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 497
    .local v4, "streamtypes":Lorg/json/JSONArray;
    if-eqz v4, :cond_2

    .line 498
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 499
    const-string v5, "3gphd"

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 500
    const-string/jumbo v5, "webviewurl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/youku/player/goplay/GoplayException;->webUrl:Ljava/lang/String;

    .line 498
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 505
    .end local v2    # "i":I
    .end local v4    # "streamtypes":Lorg/json/JSONArray;
    :cond_1
    const/16 v5, -0x70

    if-ne v0, v5, :cond_2

    .line 506
    new-instance v5, Lcom/youku/player/module/PayInfo;

    invoke-direct {v5}, Lcom/youku/player/module/PayInfo;-><init>()V

    iput-object v5, p1, Lcom/youku/player/goplay/GoplayException;->payInfo:Lcom/youku/player/module/PayInfo;

    .line 507
    iget-object v5, p1, Lcom/youku/player/goplay/GoplayException;->payInfo:Lcom/youku/player/module/PayInfo;

    invoke-direct {p0, v5, v3}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->setPayInfo(Lcom/youku/player/module/PayInfo;Lorg/json/JSONObject;)V

    .line 511
    .end local v3    # "object":Lorg/json/JSONObject;
    :cond_2
    iget-object v5, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 512
    iget-object v5, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mContext:Landroid/content/Context;

    sget v6, Lcom/youku/android/player/R$string;->player_error_native:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    .line 523
    :cond_3
    :goto_1
    return-void

    .line 514
    :cond_4
    invoke-virtual {p1}, Lcom/youku/player/goplay/GoplayException;->getErrorInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 515
    iget-object v5, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mContext:Landroid/content/Context;

    sget v6, Lcom/youku/android/player/R$string;->Player_error_f100:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 518
    :catch_0
    move-exception v1

    .line 519
    .local v1, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/youku/player/service/GetVideoUrlServiceYouku;->mContext:Landroid/content/Context;

    sget v6, Lcom/youku/android/player/R$string;->Player_error_f100:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    .line 521
    sget-object v5, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setVideoUrlInfo(Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 8
    .param p1, "mResult"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 198
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {}, Lcom/youku/player/goplay/VideoInfoReasult;->getResponseString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 200
    .local v4, "json":Lorg/json/JSONObject;
    const-string v6, "data"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 202
    .local v0, "bytes":[B
    new-instance v2, Ljava/lang/String;

    const-string v6, "qwer3as2jin4fdsa"

    invoke-static {v0, v6}, Lcom/youku/player/util/PlayerUtil;->decrypt([BLjava/lang/String;)[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 203
    .local v2, "decrypt":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 205
    .local v5, "object":Lorg/json/JSONObject;
    sget-object v6, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v7, "\u89e3\u6790\u670d\u52a1\u5668\u8fd4\u56de\u7684\u89c6\u9891\u4fe1\u606f setVideoUrlInfo"

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0, v5}, Lcom/youku/player/service/GetVideoUrlServiceYouku;->setVideoUrlInfoFromJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v0    # "bytes":[B
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "decrypt":Ljava/lang/String;
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "object":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v3

    .line 208
    .local v3, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v7, "\u89e3\u6790\u670d\u52a1\u5668\u8fd4\u56de\u7684\u89c6\u9891\u4fe1\u606f setVideoUrlInfo \u51fa\u9519"

    invoke-static {v6, v7, v3}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

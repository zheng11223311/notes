.class public Lcom/youku/player/service/GetVideoUrlServiceTudou;
.super Ljava/lang/Object;
.source "GetVideoUrlServiceTudou.java"

# interfaces
.implements Lcom/youku/player/service/NetService;


# instance fields
.field private format:Ljava/lang/String;

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
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mGetPlayListTime:J

    .line 133
    new-instance v0, Lcom/youku/player/service/GetVideoUrlServiceTudou$1;

    invoke-direct {v0, p0}, Lcom/youku/player/service/GetVideoUrlServiceTudou$1;-><init>(Lcom/youku/player/service/GetVideoUrlServiceTudou;)V

    iput-object v0, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->handler:Landroid/os/Handler;

    .line 57
    iput-object p1, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method public static URLEncoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 154
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    const-string p0, ""

    .line 161
    :goto_0
    return-object p0

    .line 157
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

    .line 159
    :catch_0
    move-exception v0

    goto :goto_0

    .line 158
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/youku/player/service/GetVideoUrlServiceTudou;)Lcom/youku/player/module/VideoUrlInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/service/GetVideoUrlServiceTudou;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/player/service/GetVideoUrlServiceTudou;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/service/GetVideoUrlServiceTudou;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->sendTrack()V

    return-void
.end method

.method static synthetic access$200(Lcom/youku/player/service/GetVideoUrlServiceTudou;)Lcom/youku/player/goplay/IVideoInfoCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/service/GetVideoUrlServiceTudou;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mListener:Lcom/youku/player/goplay/IVideoInfoCallBack;

    return-object v0
.end method

.method private getLanguageInfo(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 646
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getLanguage()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 647
    const-string v4, "audiolang"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 648
    .local v3, "pointArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    .line 649
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 650
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 651
    .local v2, "languageObj":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 652
    new-instance v1, Lcom/youku/player/goplay/Language;

    invoke-direct {v1}, Lcom/youku/player/goplay/Language;-><init>()V

    .line 653
    .local v1, "lang":Lcom/youku/player/goplay/Language;
    const-string v4, "lang"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/player/goplay/Language;->lang:Ljava/lang/String;

    .line 654
    const-string/jumbo v4, "videoid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/player/goplay/Language;->vid:Ljava/lang/String;

    .line 655
    const-string v4, "isplay"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/youku/player/goplay/Language;->isDisplay:Z

    .line 656
    const-string v4, "langcode"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/player/goplay/Language;->langCode:Ljava/lang/String;

    .line 657
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getLanguage()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    .end local v1    # "lang":Lcom/youku/player/goplay/Language;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
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

    .line 615
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setHasHead(Z)V

    .line 616
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setHasTail(Z)V

    .line 617
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getPoints()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 618
    const-string v4, "points"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 619
    .local v3, "pointArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_4

    .line 620
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 621
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 622
    .local v2, "point":Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    .line 623
    new-instance v1, Lcom/youku/player/goplay/Point;

    invoke-direct {v1}, Lcom/youku/player/goplay/Point;-><init>()V

    .line 624
    .local v1, "p":Lcom/youku/player/goplay/Point;
    const-string/jumbo v4, "start"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    iput-wide v4, v1, Lcom/youku/player/goplay/Point;->start:D

    .line 625
    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/player/goplay/Point;->type:Ljava/lang/String;

    .line 626
    const-string v4, "head"

    iget-object v5, v1, Lcom/youku/player/goplay/Point;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 627
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4, v8}, Lcom/youku/player/module/VideoUrlInfo;->setHasHead(Z)V

    .line 628
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-wide v6, v1, Lcom/youku/player/goplay/Point;->start:D

    double-to-int v5, v6

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setHeadPosition(I)V

    .line 630
    :cond_0
    const-string/jumbo v4, "tail"

    iget-object v5, v1, Lcom/youku/player/goplay/Point;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 631
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4, v8}, Lcom/youku/player/module/VideoUrlInfo;->setHasTail(Z)V

    .line 632
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-wide v6, v1, Lcom/youku/player/goplay/Point;->start:D

    double-to-int v5, v6

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setTailPosition(I)V

    .line 634
    :cond_1
    const-string/jumbo v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/player/goplay/Point;->title:Ljava/lang/String;

    .line 635
    const-string v4, "desc"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/player/goplay/Point;->desc:Ljava/lang/String;

    .line 636
    iget-object v4, v1, Lcom/youku/player/goplay/Point;->type:Ljava/lang/String;

    const-string/jumbo v5, "standard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 637
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getPoints()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    .end local v1    # "p":Lcom/youku/player/goplay/Point;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 639
    .restart local v1    # "p":Lcom/youku/player/goplay/Point;
    :cond_3
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getAdPoints()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 643
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
    .line 676
    return-object p1
.end method

.method private parseM3U8(Lorg/json/JSONObject;)Z
    .locals 9
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x0

    .line 578
    const-string v6, "m3u8_flv"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 579
    const-string v6, "m3u8_flv"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 580
    .local v0, "M3U8FLV":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 581
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 582
    .local v1, "M3U8FLVObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 583
    iget-object v6, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v7, "url"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/youku/player/module/VideoUrlInfo;->setM3u8SD(Ljava/lang/String;)V

    .line 584
    iget-object v6, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v7, "seconds"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/youku/player/module/VideoUrlInfo;->setM3u8SDDuration(I)V

    .line 589
    .end local v0    # "M3U8FLV":Lorg/json/JSONArray;
    .end local v1    # "M3U8FLVObject":Lorg/json/JSONObject;
    :cond_0
    const-string v6, "m3u8_mp4"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 590
    const-string v6, "m3u8_mp4"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 591
    .local v4, "M3U8MP4":Lorg/json/JSONArray;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 592
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 593
    .local v5, "M3U8MP4Object":Lorg/json/JSONObject;
    if-eqz v5, :cond_1

    .line 594
    iget-object v6, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v7, "url"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/youku/player/module/VideoUrlInfo;->setM3u8HD(Ljava/lang/String;)V

    .line 595
    iget-object v6, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v7, "seconds"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/youku/player/module/VideoUrlInfo;->setM3u8HDDuration(I)V

    .line 600
    .end local v4    # "M3U8MP4":Lorg/json/JSONArray;
    .end local v5    # "M3U8MP4Object":Lorg/json/JSONObject;
    :cond_1
    const-string v6, "m3u8_hd"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 601
    const-string v6, "m3u8_hd"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 602
    .local v2, "M3U8HD":Lorg/json/JSONArray;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 603
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 604
    .local v3, "M3U8HDObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 605
    iget-object v6, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v7, "url"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/youku/player/module/VideoUrlInfo;->setM3u8HD2(Ljava/lang/String;)V

    .line 606
    iget-object v6, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v7, "seconds"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/youku/player/module/VideoUrlInfo;->setM3u8HD2Duration(I)V

    .line 611
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
    const/4 v3, 0x0

    .line 560
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 561
    .local v1, "otherObject":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 573
    :goto_0
    return v3

    .line 563
    :cond_0
    const-string/jumbo v4, "segs"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 564
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 565
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 566
    .local v2, "videoObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 567
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v5, "url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setUrl(Ljava/lang/String;)V

    .line 568
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4, v3}, Lcom/youku/player/module/VideoUrlInfo;->setCached(Z)V

    .line 569
    iget-object v3, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v4, "seconds"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setDurationSecs(D)V

    .line 570
    iget-object v3, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string v4, "fileid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/player/module/VideoUrlInfo;->fieldId:Ljava/lang/String;

    .line 573
    .end local v2    # "videoObject":Lorg/json/JSONObject;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private parseSeg(Lorg/json/JSONObject;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "format"    # I

    .prologue
    const/4 v11, 0x0

    .line 539
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 540
    .local v10, "segsobject":Lorg/json/JSONObject;
    if-nez v10, :cond_0

    move v0, v11

    .line 556
    :goto_0
    return v0

    .line 542
    :cond_0
    const-string/jumbo v0, "segs"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 543
    .local v9, "segsArray":Lorg/json/JSONArray;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 544
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v8, "segs":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/goplay/ItemSeg;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 546
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 547
    .local v7, "segObject":Lorg/json/JSONObject;
    if-eqz v7, :cond_1

    .line 548
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

    invoke-direct {p0, v4}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->getVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "fileid"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/youku/player/goplay/ItemSeg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 553
    .end local v7    # "segObject":Lorg/json/JSONObject;
    :cond_2
    iget-object v0, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0, v8, p3, v11}, Lcom/youku/player/module/VideoUrlInfo;->addSegments(Ljava/util/List;IZ)V

    .line 554
    const/4 v0, 0x1

    goto :goto_0

    .end local v6    # "i":I
    .end local v8    # "segs":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/goplay/ItemSeg;>;"
    :cond_3
    move v0, v11

    .line 556
    goto :goto_0
.end method

.method private parseTudouVideoInfo(Lorg/json/JSONObject;)Z
    .locals 14
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v13, 0x7

    const/4 v8, 0x0

    const/4 v12, 0x5

    const/4 v9, 0x1

    .line 509
    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormatName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "flv_hd"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormatName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mp4"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormatName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "hd2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 512
    :cond_0
    const-string v10, "f4v_2"

    invoke-direct {p0, p1, v10, v12}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    move-result v0

    .line 513
    .local v0, "parseF4V256P":Z
    const-string v10, "f4v_4"

    invoke-direct {p0, p1, v10, v13}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    move-result v3

    .line 514
    .local v3, "parseF4V480P":Z
    const-string v10, "f4v_3"

    invoke-direct {p0, p1, v10, v9}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    move-result v1

    .line 516
    .local v1, "parseF4V360P":Z
    const/4 v4, 0x0

    .line 517
    .local v4, "parseF4V720P":Z
    iget-object v10, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v10}, Lcom/youku/player/module/VideoUrlInfo;->hasM3u8HD2()Z

    move-result v10

    if-nez v10, :cond_1

    .line 518
    const-string v10, "f4v_5"

    invoke-direct {p0, p1, v10, v13}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    move-result v4

    .line 521
    :cond_1
    const-string v10, "f4v_99"

    const/16 v11, 0x8

    invoke-direct {p0, p1, v10, v11}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    move-result v7

    .line 522
    .local v7, "parseF4VORIGINAL":Z
    const-string v10, "3gp"

    invoke-direct {p0, p1, v10, v12}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    move-result v2

    .line 523
    .local v2, "parseF4V3GP":Z
    const-string v10, "mp4"

    invoke-direct {p0, p1, v10, v9}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    move-result v6

    .line 524
    .local v6, "parseF4VMP4":Z
    const-string v10, "flv"

    invoke-direct {p0, p1, v10, v12}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    move-result v5

    .line 525
    .local v5, "parseF4VFLV":Z
    if-nez v2, :cond_2

    if-nez v6, :cond_2

    if-nez v5, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    if-eqz v7, :cond_3

    :cond_2
    move v8, v9

    .line 533
    .end local v0    # "parseF4V256P":Z
    .end local v1    # "parseF4V360P":Z
    .end local v2    # "parseF4V3GP":Z
    .end local v3    # "parseF4V480P":Z
    .end local v4    # "parseF4V720P":Z
    .end local v5    # "parseF4VFLV":Z
    .end local v6    # "parseF4VMP4":Z
    .end local v7    # "parseF4VORIGINAL":Z
    :cond_3
    :goto_0
    return v8

    .line 528
    :cond_4
    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormatName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "m3u8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 529
    invoke-direct {p0, p1}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->parseM3U8(Lorg/json/JSONObject;)Z

    move-result v8

    goto :goto_0

    .line 531
    :cond_5
    iget-object v9, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v10, Lcom/youku/android/player/R$string;->player_error_url_is_nul_tudou:I

    invoke-static {v9, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 533
    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormatName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->parseOther(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    goto :goto_0
.end method

.method private parseVideoInfo(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 364
    const-string/jumbo v4, "results"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 365
    const-string/jumbo v4, "type"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "type"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "youku"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 367
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    sget v5, Lcom/youku/player/module/VideoUrlInfo;->YOUKU_TYPE:I

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setType(I)V

    .line 368
    const-string/jumbo v4, "sid_data"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 369
    .local v2, "sidData":Lorg/json/JSONObject;
    const-string/jumbo v4, "token"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 370
    .local v3, "token":Ljava/lang/String;
    const-string v4, "oip"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "oip":Ljava/lang/String;
    const-string/jumbo v4, "sid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "sid":Ljava/lang/String;
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-object v3, v4, Lcom/youku/player/module/VideoUrlInfo;->token:Ljava/lang/String;

    .line 373
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-object v0, v4, Lcom/youku/player/module/VideoUrlInfo;->oip:Ljava/lang/String;

    .line 374
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-object v1, v4, Lcom/youku/player/module/VideoUrlInfo;->sid:Ljava/lang/String;

    .line 376
    const-string/jumbo v4, "results"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->parseYoukuVideoInfo(Lorg/json/JSONObject;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 377
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v5, Lcom/youku/android/player/R$string;->player_error_url_is_nul_tudou:I

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 392
    .end local v0    # "oip":Ljava/lang/String;
    .end local v1    # "sid":Ljava/lang/String;
    .end local v2    # "sidData":Lorg/json/JSONObject;
    .end local v3    # "token":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    sget v5, Lcom/youku/player/module/VideoUrlInfo;->TUDOU_TYPE:I

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setType(I)V

    .line 382
    sget-boolean v4, Lcom/youku/player/base/YoukuBasePlayerActivity;->isHighEnd:Z

    if-eqz v4, :cond_2

    .line 383
    const-string/jumbo v4, "results"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->parseTudouVideoInfo(Lorg/json/JSONObject;)Z

    goto :goto_0

    .line 385
    :cond_2
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v5, Lcom/youku/android/player/R$string;->player_error_url_is_nul_tudou:I

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private parseYoukuVideoInfo(Lorg/json/JSONObject;)Z
    .locals 7
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x1

    .line 490
    sget-boolean v5, Lcom/youku/player/goplay/Profile;->USE_SYSTEM_PLAYER:Z

    if-eqz v5, :cond_1

    .line 491
    invoke-direct {p0, p1}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->parseM3U8(Lorg/json/JSONObject;)Z

    move-result v4

    .line 505
    :cond_0
    :goto_0
    return v4

    .line 493
    :cond_1
    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormatName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "flv_hd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormatName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mp4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormatName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hd2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 496
    :cond_2
    const-string v5, "flvhd"

    const/4 v6, 0x5

    invoke-direct {p0, p1, v5, v6}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    move-result v0

    .line 497
    .local v0, "parseFLV":Z
    const-string v5, "mp4"

    invoke-direct {p0, p1, v5, v4}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    move-result v3

    .line 498
    .local v3, "parseMP4":Z
    const-string v5, "hd2"

    const/4 v6, 0x7

    invoke-direct {p0, p1, v5, v6}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    move-result v1

    .line 499
    .local v1, "parseHD2":Z
    const-string v5, "hd3"

    const/16 v6, 0x8

    invoke-direct {p0, p1, v5, v6}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->parseSeg(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    move-result v2

    .line 500
    .local v2, "parseHD3":Z
    invoke-direct {p0, p1}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->parseM3U8(Lorg/json/JSONObject;)Z

    .line 501
    if-nez v0, :cond_0

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 502
    .end local v0    # "parseFLV":Z
    .end local v1    # "parseHD2":Z
    .end local v2    # "parseHD3":Z
    .end local v3    # "parseMP4":Z
    :cond_3
    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormatName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "m3u8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 503
    invoke-direct {p0, p1}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->parseM3U8(Lorg/json/JSONObject;)Z

    move-result v4

    goto :goto_0

    .line 505
    :cond_4
    invoke-static {}, Lcom/youku/player/goplay/Profile;->getVideoFormatName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->parseOther(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    goto :goto_0
.end method

.method private pasreWaterMarkInfo(Lorg/json/JSONObject;)V
    .locals 13
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v12, 0x5

    .line 681
    const/4 v9, 0x5

    :try_start_0
    new-array v5, v9, [I

    .line 682
    .local v5, "isWaterMark":[I
    const/4 v9, 0x5

    new-array v8, v9, [I

    .line 683
    .local v8, "waterMarkType":[I
    const-string/jumbo v9, "streamlogos"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 684
    const-string/jumbo v9, "streamlogos"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 685
    .local v7, "streamlogos":Lorg/json/JSONObject;
    if-eqz v7, :cond_5

    .line 686
    const-string v9, "hd2"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 687
    const-string v9, "hd2"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 688
    .local v2, "hd2Info":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 689
    const/4 v9, 0x0

    const-string v10, "logo"

    const/4 v11, 0x0

    invoke-static {v2, v10, v11}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v10

    aput v10, v5, v9

    .line 691
    const/4 v9, 0x0

    const-string/jumbo v10, "type"

    const/4 v11, 0x0

    invoke-static {v2, v10, v11}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v10

    aput v10, v8, v9

    .line 696
    .end local v2    # "hd2Info":Lorg/json/JSONObject;
    :cond_0
    const-string v9, "mp4"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 697
    const-string v9, "mp4"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 698
    .local v6, "mp4Info":Lorg/json/JSONObject;
    if-eqz v6, :cond_1

    .line 699
    const/4 v9, 0x1

    const-string v10, "logo"

    const/4 v11, 0x0

    invoke-static {v6, v10, v11}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v10

    aput v10, v5, v9

    .line 701
    const/4 v9, 0x1

    const-string/jumbo v10, "type"

    const/4 v11, 0x0

    invoke-static {v6, v10, v11}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v10

    aput v10, v8, v9

    .line 706
    .end local v6    # "mp4Info":Lorg/json/JSONObject;
    :cond_1
    const-string v9, "flvhd"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 707
    const-string v9, "flvhd"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 709
    .local v1, "flvhdInfo":Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    .line 710
    const/4 v9, 0x3

    const-string v10, "logo"

    const/4 v11, 0x0

    invoke-static {v1, v10, v11}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v10

    aput v10, v5, v9

    .line 712
    const/4 v9, 0x3

    const-string/jumbo v10, "type"

    const/4 v11, 0x0

    invoke-static {v1, v10, v11}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v10

    aput v10, v8, v9

    .line 717
    .end local v1    # "flvhdInfo":Lorg/json/JSONObject;
    :cond_2
    const-string v9, "flv"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 718
    const-string v9, "flv"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 719
    .local v0, "flvInfo":Lorg/json/JSONObject;
    if-eqz v0, :cond_3

    .line 720
    const/4 v9, 0x2

    const-string v10, "logo"

    const/4 v11, 0x0

    invoke-static {v0, v10, v11}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x3

    aget v11, v5, v11

    add-int/2addr v10, v11

    aput v10, v5, v9

    .line 722
    const/4 v9, 0x2

    const-string/jumbo v10, "type"

    const/4 v11, 0x0

    invoke-static {v0, v10, v11}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v10

    aput v10, v8, v9

    .line 727
    .end local v0    # "flvInfo":Lorg/json/JSONObject;
    :cond_3
    const-string v9, "hd3"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 728
    const-string v9, "hd3"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 729
    .local v3, "hd3Info":Lorg/json/JSONObject;
    if-eqz v3, :cond_4

    .line 730
    const/4 v9, 0x4

    const-string v10, "logo"

    const/4 v11, 0x0

    invoke-static {v3, v10, v11}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v10

    aput v10, v5, v9

    .line 732
    const/4 v9, 0x4

    const-string/jumbo v10, "type"

    const/4 v11, 0x0

    invoke-static {v3, v10, v11}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v10

    aput v10, v8, v9

    .line 737
    .end local v3    # "hd3Info":Lorg/json/JSONObject;
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v12, :cond_5

    .line 738
    iget-object v9, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->isWaterMark:[I

    aget v10, v5, v4

    aput v10, v9, v4

    .line 739
    iget-object v9, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v9, v9, Lcom/youku/player/module/VideoUrlInfo;->waterMarkType:[I

    aget v10, v8, v4

    aput v10, v9, v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 743
    .end local v4    # "i":I
    .end local v5    # "isWaterMark":[I
    .end local v7    # "streamlogos":Lorg/json/JSONObject;
    .end local v8    # "waterMarkType":[I
    :catch_0
    move-exception v9

    .line 745
    :cond_5
    return-void
.end method

.method private sendTrack()V
    .locals 4

    .prologue
    .line 127
    const-string v0, ""

    .line 128
    .local v0, "vid":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mGetPlayListTime:J

    invoke-static {v1, v2, v3, v0}, Lcom/youku/player/Track;->trackGetPlayList(Landroid/content/Context;JLjava/lang/String;)V

    .line 131
    return-void
.end method

.method private setPayInfo(Lcom/youku/player/module/PayInfo;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "payInfo"    # Lcom/youku/player/module/PayInfo;
    .param p2, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 336
    const-string v4, "paid_info"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 337
    .local v1, "pay_info":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 338
    const-string v4, "duration"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/youku/player/module/PayInfo;->duration:Ljava/lang/String;

    .line 339
    const-string v4, "oriprice"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/youku/player/module/PayInfo;->oriprice:Ljava/lang/String;

    .line 340
    const-string v4, "coprice"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/youku/player/module/PayInfo;->coprice:Ljava/lang/String;

    .line 341
    const-string v4, "play"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p1, Lcom/youku/player/module/PayInfo;->play:Z

    .line 342
    const-string/jumbo v4, "showid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/youku/player/module/PayInfo;->showid:Ljava/lang/String;

    .line 343
    const-string v4, "paid_type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 344
    .local v2, "paytype":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p1, Lcom/youku/player/module/PayInfo;->payType:Ljava/util/ArrayList;

    .line 345
    if-eqz v2, :cond_0

    .line 346
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 347
    iget-object v4, p1, Lcom/youku/player/module/PayInfo;->payType:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    .end local v0    # "i":I
    :cond_0
    const-string v4, "paid_url"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/youku/player/module/PayInfo;->paid_url:Ljava/lang/String;

    .line 350
    const-string v4, "paid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Lcom/youku/player/module/PayInfo;->paid:I

    .line 351
    const-string/jumbo v4, "show_paid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Lcom/youku/player/module/PayInfo;->show_paid:I

    .line 352
    const-string/jumbo v4, "trial"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 353
    .local v3, "trial_info":Lorg/json/JSONObject;
    if-eqz v3, :cond_1

    .line 354
    new-instance v4, Lcom/youku/player/module/PayInfo$Trial;

    invoke-direct {v4}, Lcom/youku/player/module/PayInfo$Trial;-><init>()V

    iput-object v4, p1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    .line 355
    iget-object v4, p1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    const-string v5, "episodes"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/youku/player/module/PayInfo$Trial;->episodes:I

    .line 356
    iget-object v4, p1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    const-string/jumbo v5, "time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/youku/player/module/PayInfo$Trial;->time:I

    .line 357
    iget-object v4, p1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    .line 358
    iget-object v4, p1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    const-string/jumbo v5, "tip"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/youku/player/module/PayInfo$Trial;->tip:Ljava/lang/String;

    .line 361
    .end local v2    # "paytype":Lorg/json/JSONArray;
    .end local v3    # "trial_info":Lorg/json/JSONObject;
    :cond_1
    return-void
.end method


# virtual methods
.method public getVideoUrl(Ljava/lang/String;Ljava/lang/String;IILcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/youku/player/goplay/IVideoInfoCallBack;)V
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
    .param p10, "isTudouAlbum"    # Z
    .param p11, "tudouquality"    # I
    .param p12, "mListener"    # Lcom/youku/player/goplay/IVideoInfoCallBack;

    .prologue
    .line 77
    const/4 v14, 0x0

    .line 78
    .local v14, "url":Ljava/lang/String;
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->resetProgress:Z

    .line 79
    invoke-static/range {p2 .. p2}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 81
    const/4 v2, 0x5

    move/from16 v0, p4

    if-ne v2, v0, :cond_0

    .line 82
    const-string v2, "1,5,7,8"

    iput-object v2, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->format:Ljava/lang/String;

    .line 87
    :goto_0
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/youku/player/module/VideoUrlInfo;->password:Ljava/lang/String;

    .line 88
    .local v3, "password":Ljava/lang/String;
    move-object/from16 v0, p5

    iget-object v10, v0, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    .line 89
    .local v10, "playlistCode":Ljava/lang/String;
    move-object/from16 v0, p5

    iget-object v11, v0, Lcom/youku/player/module/VideoUrlInfo;->albumID:Ljava/lang/String;

    .line 91
    .local v11, "albumID":Ljava/lang/String;
    if-lez p3, :cond_1

    .line 92
    iget-object v8, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->format:Ljava/lang/String;

    move-object/from16 v2, p1

    move-object/from16 v4, p8

    move/from16 v5, p3

    move-object/from16 v6, p7

    move-object/from16 v7, p2

    move-object/from16 v9, p9

    invoke-static/range {v2 .. v11}, Lcom/youku/player/util/URLContainer;->getMutilVideoPlayUrlTudou(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 99
    .local v12, "mUrlMoreYouku":Ljava/lang/String;
    move-object v14, v12

    .line 115
    .end local v12    # "mUrlMoreYouku":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mListener:Lcom/youku/player/goplay/IVideoInfoCallBack;

    .line 116
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 117
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u8bf7\u6c42\u64ad\u653e\u5730\u5740 GetVideoUrlServiceTudou getVideoUrl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mGetPlayListTime:J

    .line 120
    new-instance v13, Lcom/youku/player/goplay/TaskGetVideoUrl;

    invoke-direct {v13, v14}, Lcom/youku/player/goplay/TaskGetVideoUrl;-><init>(Ljava/lang/String;)V

    .line 121
    .local v13, "taskGetVideoUrl":Lcom/youku/player/goplay/TaskGetVideoUrl;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lcom/youku/player/goplay/TaskGetVideoUrl;->setSuccess(I)V

    .line 122
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/youku/player/goplay/TaskGetVideoUrl;->setFail(I)V

    .line 123
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Handler;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->handler:Landroid/os/Handler;

    aput-object v5, v2, v4

    invoke-virtual {v13, v2}, Lcom/youku/player/goplay/TaskGetVideoUrl;->execute([Ljava/lang/Object;)Lcom/baseproject/network/YoukuAsyncTask;

    .line 124
    return-void

    .line 84
    .end local v3    # "password":Ljava/lang/String;
    .end local v10    # "playlistCode":Ljava/lang/String;
    .end local v11    # "albumID":Ljava/lang/String;
    .end local v13    # "taskGetVideoUrl":Lcom/youku/player/goplay/TaskGetVideoUrl;
    :cond_0
    const-string v2, "4"

    iput-object v2, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->format:Ljava/lang/String;

    goto :goto_0

    .line 102
    .restart local v3    # "password":Ljava/lang/String;
    .restart local v10    # "playlistCode":Ljava/lang/String;
    .restart local v11    # "albumID":Ljava/lang/String;
    :cond_1
    if-eqz p10, :cond_2

    .line 103
    iget-object v8, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->format:Ljava/lang/String;

    move-object/from16 v2, p1

    move-object/from16 v4, p8

    move/from16 v5, p3

    move-object/from16 v6, p7

    move-object/from16 v7, p2

    move-object/from16 v9, p9

    invoke-static/range {v2 .. v11}, Lcom/youku/player/util/URLContainer;->getMutilVideoPlayUrlTudou(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 107
    :cond_2
    iget-object v7, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->format:Ljava/lang/String;

    move-object/from16 v2, p1

    move-object/from16 v4, p8

    move-object/from16 v5, p7

    move-object/from16 v6, p2

    move-object/from16 v8, p9

    move/from16 v9, p11

    invoke-static/range {v2 .. v11}, Lcom/youku/player/util/URLContainer;->getOneVideoPlayUrlTudou(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_1
.end method

.method protected setVideoUrlFailReason(Lcom/youku/player/goplay/GoplayException;)V
    .locals 6
    .param p1, "mResult"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "code":I
    const/4 v2, 0x0

    .line 407
    .local v2, "object":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/youku/player/goplay/VideoInfoReasult;->getResponseString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 408
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {}, Lcom/youku/player/goplay/VideoInfoReasult;->getResponseString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .end local v2    # "object":Lorg/json/JSONObject;
    .local v3, "object":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "error_code"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 411
    if-nez v0, :cond_0

    .line 412
    const-string v4, "code"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 413
    :cond_0
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4, v0}, Lcom/youku/player/module/VideoUrlInfo;->setCode(I)V

    .line 414
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v5, "web_view_url"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setWebViewUrl(Ljava/lang/String;)V

    .line 415
    const-string v4, "itemCode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/youku/player/goplay/GoplayException;->itemCode:Ljava/lang/String;

    .line 416
    invoke-virtual {p1, v0}, Lcom/youku/player/goplay/GoplayException;->setErrorCode(I)Lcom/youku/player/goplay/GoplayException;

    .line 417
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v5, "vip_error"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setVipError(I)V

    .line 418
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string v5, "item_code"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setVid(Ljava/lang/String;)V

    .line 419
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const-string/jumbo v5, "tip"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/player/module/VideoUrlInfo;->setTip(Ljava/lang/String;)V

    .line 420
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    new-instance v5, Lcom/youku/player/module/PayInfo;

    invoke-direct {v5}, Lcom/youku/player/module/PayInfo;-><init>()V

    iput-object v5, v4, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    .line 421
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v4, v4, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    invoke-direct {p0, v4, v3}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->setPayInfo(Lcom/youku/player/module/PayInfo;Lorg/json/JSONObject;)V

    .line 422
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {p1, v4}, Lcom/youku/player/goplay/GoplayException;->setVideoUrlInfo(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 423
    const/16 v4, -0x68

    if-ne v0, v4, :cond_1

    .line 424
    const-string/jumbo v4, "web_view_url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/youku/player/goplay/GoplayException;->webUrl:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v2, v3

    .line 428
    .end local v3    # "object":Lorg/json/JSONObject;
    .restart local v2    # "object":Lorg/json/JSONObject;
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 429
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v5, Lcom/youku/android/player/R$string;->player_error_native:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    .line 487
    :goto_0
    return-void

    .line 432
    :cond_3
    sparse-switch v0, :sswitch_data_0

    .line 476
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v5, Lcom/youku/android/player/R$string;->Player_error_timeout:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 481
    :catch_0
    move-exception v1

    .line 483
    .local v1, "e":Lorg/json/JSONException;
    :goto_1
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v5, Lcom/youku/android/player/R$string;->Player_error_timeout:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    .line 485
    sget-object v4, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 434
    .end local v1    # "e":Lorg/json/JSONException;
    :sswitch_0
    :try_start_3
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v5, Lcom/youku/android/player/R$string;->player_error_f101:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto :goto_0

    .line 438
    :sswitch_1
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v5, Lcom/youku/android/player/R$string;->player_error_f102:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto :goto_0

    .line 442
    :sswitch_2
    const-string v4, "note"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto :goto_0

    .line 446
    :sswitch_3
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v5, Lcom/youku/android/player/R$string;->player_error_f105:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto :goto_0

    .line 450
    :sswitch_4
    if-eqz v2, :cond_4

    const-string/jumbo v4, "vip_error"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, -0x132

    if-ne v4, v5, :cond_4

    .line 451
    const-string v4, "note"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto :goto_0

    .line 453
    :cond_4
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v5, Lcom/youku/android/player/R$string;->player_error_f106:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto/16 :goto_0

    .line 457
    :sswitch_5
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v5, Lcom/youku/android/player/R$string;->player_error_f107:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto/16 :goto_0

    .line 461
    :sswitch_6
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v5, Lcom/youku/android/player/R$string;->player_error_url_is_nul:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto/16 :goto_0

    .line 465
    :sswitch_7
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v5, Lcom/youku/android/player/R$string;->Player_error_f100:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;

    goto/16 :goto_0

    .line 469
    :sswitch_8
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getVipError()I

    move-result v4

    const/16 v5, -0x12d

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getVipError()I

    move-result v4

    const/16 v5, -0x133

    if-ne v4, v5, :cond_6

    .line 470
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/youku/player/goplay/GoplayException;->setShowTip(Z)V

    goto/16 :goto_0

    .line 472
    :cond_6
    iget-object v4, p0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mContext:Landroid/content/Context;

    sget v5, Lcom/youku/android/player/R$string;->player_error_no_pay:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/youku/player/goplay/GoplayException;->setErrorInfo(Ljava/lang/String;)Lcom/youku/player/goplay/GoplayException;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 481
    .end local v2    # "object":Lorg/json/JSONObject;
    .restart local v3    # "object":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "object":Lorg/json/JSONObject;
    .restart local v2    # "object":Lorg/json/JSONObject;
    goto/16 :goto_1

    .line 432
    :sswitch_data_0
    .sparse-switch
        -0xca -> :sswitch_6
        -0x70 -> :sswitch_8
        -0x6b -> :sswitch_5
        -0x6a -> :sswitch_4
        -0x69 -> :sswitch_3
        -0x68 -> :sswitch_2
        -0x66 -> :sswitch_1
        -0x65 -> :sswitch_0
        -0x64 -> :sswitch_7
    .end sparse-switch
.end method

.method public setVideoUrlInfo(Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 22
    .param p1, "mResult"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 175
    const/4 v11, -0x1

    .line 176
    .local v11, "response":I
    :try_start_0
    invoke-static {}, Lcom/youku/player/goplay/VideoInfoReasult;->getResponseString()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_0

    .line 333
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-static {}, Lcom/youku/player/goplay/VideoInfoReasult;->getResponseString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 181
    .local v7, "object":Lorg/json/JSONObject;
    sget-object v19, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v20, "\u89e3\u6790\u670d\u52a1\u5668\u8fd4\u56de\u7684\u89c6\u9891\u4fe1\u606f setVideoUrlInfo"

    invoke-static/range {v19 .. v20}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string/jumbo v19, "status"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 184
    .local v14, "status":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/youku/player/module/VideoUrlInfo;->setStatus(Ljava/lang/String;)V

    .line 185
    const-string v19, "code"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v7, v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    .line 186
    .local v2, "code":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/youku/player/module/VideoUrlInfo;->setCode(I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/youku/player/module/VideoUrlInfo;->setHttpResponseCode(I)V

    .line 188
    const-string v19, "need_mark"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string v20, "need_mark"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/youku/player/module/VideoUrlInfo;->need_mark:Z

    .line 191
    :cond_1
    const-string/jumbo v19, "vitural_type"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string/jumbo v20, "vitural_type"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/youku/player/module/VideoUrlInfo;->vitural_type:Ljava/lang/String;

    .line 194
    :cond_2
    const-string/jumbo v19, "title_new"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 195
    .local v15, "title":Ljava/lang/String;
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_3

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/youku/player/module/VideoUrlInfo;->setTitle(Ljava/lang/String;)V

    .line 198
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->pasreWaterMarkInfo(Lorg/json/JSONObject;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string v20, "mediaType"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setMediaType(Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string v20, "item_img_16_9"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setItem_img_16_9(Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string v20, "album_title"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setAlbumTitle(Ljava/lang/String;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string v20, "item_subtitle"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setItemSubtitle(Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string v20, "channel_name"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setChannel_name(Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string/jumbo v20, "title_new_dl"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setTitle_new_dl(Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string/jumbo v20, "title_new_dl_sub"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setTitle_new_dl_sub(Ljava/lang/String;)V

    .line 208
    const-string v19, "albumid"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 209
    .local v13, "showid":Ljava/lang/String;
    invoke-static {v13}, Lcom/youku/player/util/PlayerUtil;->isNull(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/youku/player/module/VideoUrlInfo;->setShowId(Ljava/lang/String;)V

    .line 214
    :cond_4
    const-string v19, "item_url"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 215
    .local v18, "weburl":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/youku/player/util/PlayerUtil;->isNull(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setWeburl(Ljava/lang/String;)V

    .line 217
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string v20, "lang"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setVideoLanguage(Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string v20, "limit"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setLimit(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string v20, "item_img"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setimgurl(Ljava/lang/String;)V

    .line 221
    const-string v19, "itemCode"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Lcom/youku/player/util/PlayerUtil;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 222
    .local v16, "videoid":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/youku/player/util/PlayerUtil;->isNull(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setVid(Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/youku/player/module/VideoUrlInfo;->videoIdPlay:Ljava/lang/String;

    .line 226
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string v20, "item_desc"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setItemDesc(Ljava/lang/String;)V

    .line 227
    const-string v19, "playlist_code"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 228
    .local v9, "playlistCode":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v9, v0, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    .line 230
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string/jumbo v20, "show_videostage_title"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setShow_videostage_title(Ljava/lang/String;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    new-instance v20, Lcom/youku/player/module/PayInfo;

    invoke-direct/range {v20 .. v20}, Lcom/youku/player/module/PayInfo;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->setPayInfo(Lcom/youku/player/module/PayInfo;Lorg/json/JSONObject;)V

    .line 234
    const-string/jumbo v19, "vv_play_info"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 235
    .local v17, "vvPlayInfo":Lorg/json/JSONObject;
    if-eqz v17, :cond_8

    .line 236
    new-instance v8, Lcom/youku/player/module/VVPlayInfo;

    invoke-direct {v8}, Lcom/youku/player/module/VVPlayInfo;-><init>()V

    .line 237
    .local v8, "playInfo":Lcom/youku/player/module/VVPlayInfo;
    const-string v19, "album_id"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/youku/player/module/VVPlayInfo;->setAlbumID(Ljava/lang/String;)V

    .line 238
    const-string v19, "item_id"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/youku/player/module/VVPlayInfo;->setItemId(Ljava/lang/String;)V

    .line 239
    const-string v19, "album_item_length"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/youku/player/module/VVPlayInfo;->setAlbumItemLength(Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/youku/player/module/VideoUrlInfo;->setVVPlayInfo(Lcom/youku/player/module/VVPlayInfo;)V

    .line 244
    .end local v8    # "playInfo":Lcom/youku/player/module/VVPlayInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string v20, "is_fee_video"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setFeeVideo(Z)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string v20, "is_fee_view"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setFeeView(Z)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string v20, "is_trailer"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setIsTrailer(Z)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string/jumbo v20, "register_num"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setRegisterNum(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string v20, "license_num"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setLicenseNum(Ljava/lang/String;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string v20, "item_playtimes"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lcom/youku/player/module/VideoUrlInfo;->setItemPlayTimes(J)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string v20, "item_short_desc"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setItemShortDesc(Ljava/lang/String;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v20, v0

    const-string/jumbo v19, "vertical_player"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setVerticalVideo(Z)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v20, v0

    const-string v19, "exclusive_logo"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    const/16 v19, 0x1

    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setExclusiveLogo(Z)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string/jumbo v20, "totalseconds"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lcom/youku/player/module/VideoUrlInfo;->setDurationSecs(D)V

    .line 260
    const-string v19, "point"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v7, v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v10

    .line 261
    .local v10, "point":I
    const-string/jumbo v19, "show_videostage"

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v7, v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v12

    .line 263
    .local v12, "show_videoseq":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/youku/player/module/VideoUrlInfo;->setShow_videoseq(I)V

    .line 264
    if-eqz v7, :cond_e

    const-string v19, "next_video"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 265
    const-string v19, "next_video"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 266
    .local v6, "next":Lorg/json/JSONObject;
    const-string v19, "itemCode"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setHaveNext(I)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string v20, "itemCode"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/youku/player/module/VideoUrlInfo;->nextVideoId:Ljava/lang/String;

    .line 275
    .end local v6    # "next":Lorg/json/JSONObject;
    :goto_3
    const/16 v19, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 288
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v20

    sub-int v19, v19, v20

    const v20, 0xea60

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_a

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 292
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string/jumbo v20, "webviewurl"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setWebViewUrl(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->getPointInfo(Lorg/json/JSONObject;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const-string v20, "cid"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v7, v0, v1}, Lcom/youku/player/util/PlayerUtil;->getJsonInit(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setCid(I)V

    .line 296
    sget-object v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->mICacheInfo:Lcom/youku/player/apiservice/ICacheInfo;

    .line 297
    .local v3, "download":Lcom/youku/player/apiservice/ICacheInfo;
    if-eqz v3, :cond_13

    .line 298
    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/youku/player/apiservice/ICacheInfo;->isDownloadFinished(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setCached(Z)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Lcom/youku/player/apiservice/ICacheInfo;->getDownloadInfo(Ljava/lang/String;)Lcom/youku/player/module/VideoCacheInfo;

    move-result-object v4

    .line 303
    .local v4, "downloadInfo":Lcom/youku/player/module/VideoCacheInfo;
    sget-boolean v19, Lcom/youku/player/base/YoukuBasePlayerActivity;->isHighEnd:Z

    if-eqz v19, :cond_11

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v4, Lcom/youku/player/module/VideoCacheInfo;->savePath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "youku.m3u8"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/youku/player/util/PlayerUtil;->getM3u8File(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    .line 311
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    iget v0, v4, Lcom/youku/player/module/VideoCacheInfo;->quality:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setCurrentVideoQuality(I)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/youku/player/module/VideoCacheInfo;->picUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setItem_img_16_9(Ljava/lang/String;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/youku/player/module/VideoCacheInfo;->episodemode:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setEpisodemode(Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/youku/player/module/VideoCacheInfo;->mMediaType:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setMediaType(Ljava/lang/String;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/youku/player/module/VideoCacheInfo;->registerNum:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setRegisterNum(Ljava/lang/String;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/youku/player/module/VideoCacheInfo;->licenseNum:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setLicenseNum(Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    iget-boolean v0, v4, Lcom/youku/player/module/VideoCacheInfo;->isVerticalVideo:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setVerticalVideo(Z)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    iget-boolean v0, v4, Lcom/youku/player/module/VideoCacheInfo;->exclusiveLogo:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setExclusiveLogo(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 329
    .end local v2    # "code":I
    .end local v3    # "download":Lcom/youku/player/apiservice/ICacheInfo;
    .end local v4    # "downloadInfo":Lcom/youku/player/module/VideoCacheInfo;
    .end local v7    # "object":Lorg/json/JSONObject;
    .end local v9    # "playlistCode":Ljava/lang/String;
    .end local v10    # "point":I
    .end local v12    # "show_videoseq":I
    .end local v13    # "showid":Ljava/lang/String;
    .end local v14    # "status":Ljava/lang/String;
    .end local v15    # "title":Ljava/lang/String;
    .end local v16    # "videoid":Ljava/lang/String;
    .end local v17    # "vvPlayInfo":Lorg/json/JSONObject;
    .end local v18    # "weburl":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 330
    .local v5, "e":Lorg/json/JSONException;
    sget-object v19, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v20, "\u89e3\u6790\u670d\u52a1\u5668\u8fd4\u56de\u7684\u89c6\u9891\u4fe1\u606f setVideoUrlInfo \u51fa\u9519"

    invoke-static/range {v19 .. v20}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    sget-object v19, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v0, v5}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 253
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v2    # "code":I
    .restart local v7    # "object":Lorg/json/JSONObject;
    .restart local v9    # "playlistCode":Ljava/lang/String;
    .restart local v13    # "showid":Ljava/lang/String;
    .restart local v14    # "status":Ljava/lang/String;
    .restart local v15    # "title":Ljava/lang/String;
    .restart local v16    # "videoid":Ljava/lang/String;
    .restart local v17    # "vvPlayInfo":Lorg/json/JSONObject;
    .restart local v18    # "weburl":Ljava/lang/String;
    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 255
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 270
    .restart local v6    # "next":Lorg/json/JSONObject;
    .restart local v10    # "point":I
    .restart local v12    # "show_videoseq":I
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setHaveNext(I)V

    goto/16 :goto_3

    .line 273
    .end local v6    # "next":Lorg/json/JSONObject;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setHaveNext(I)V

    goto/16 :goto_3

    .line 278
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->resetProgress:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 279
    if-lez v10, :cond_10

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    mul-int/lit16 v0, v10, 0x3e8

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 282
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getRecordFromLocal(Lcom/youku/player/module/VideoUrlInfo;)Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    goto/16 :goto_4

    .line 308
    .restart local v3    # "download":Lcom/youku/player/apiservice/ICacheInfo;
    .restart local v4    # "downloadInfo":Lcom/youku/player/module/VideoCacheInfo;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/player/service/GetVideoUrlServiceTudou;->mVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v4, Lcom/youku/player/module/VideoCacheInfo;->savePath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "1.3gp"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    goto/16 :goto_5

    .line 320
    .end local v4    # "downloadInfo":Lcom/youku/player/module/VideoCacheInfo;
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->getLanguageInfo(Lorg/json/JSONObject;)V

    .line 321
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->parseVideoInfo(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 325
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->getLanguageInfo(Lorg/json/JSONObject;)V

    .line 326
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/youku/player/service/GetVideoUrlServiceTudou;->parseVideoInfo(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

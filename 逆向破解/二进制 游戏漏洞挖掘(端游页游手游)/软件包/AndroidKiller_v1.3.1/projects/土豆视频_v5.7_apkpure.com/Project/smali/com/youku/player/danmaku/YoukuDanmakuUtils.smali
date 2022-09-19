.class public Lcom/youku/player/danmaku/YoukuDanmakuUtils;
.super Ljava/lang/Object;
.source "YoukuDanmakuUtils.java"

# interfaces
.implements Lcom/youku/player/danmaku/DanmakuUtils;


# instance fields
.field private textSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x19

    iput v0, p0, Lcom/youku/player/danmaku/YoukuDanmakuUtils;->textSize:I

    return-void
.end method


# virtual methods
.method public addDanmaku(Ljava/lang/String;Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/danmaku/DanmakuManager;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "youkuPlayerView"    # Lcom/youku/player/base/YoukuPlayerView;
    .param p3, "danmakuManager"    # Lcom/youku/player/danmaku/DanmakuManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/youku/player/base/YoukuPlayerView;",
            "Lcom/youku/player/danmaku/DanmakuManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p4, "liveDanmakuInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;>;"
    if-eqz p2, :cond_0

    .line 166
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u589e\u52a0\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2, p1, p4}, Lcom/youku/player/base/YoukuPlayerView;->addDanmaku(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 169
    :cond_0
    return-void
.end method

.method public addDanmaku(Lorg/json/JSONObject;Lmaster/flame/danmaku/controller/IDanmakuView;Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;JLjava/util/ArrayList;)V
    .locals 14
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "danmakuView"    # Lmaster/flame/danmaku/controller/IDanmakuView;
    .param p3, "parser"    # Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .param p4, "currMillisecond"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lmaster/flame/danmaku/controller/IDanmakuView;",
            "Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p6, "liveDanmakuInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;>;"
    const-wide v8, 0x7fffffffffffffffL

    .line 54
    .local v8, "min":J
    const/4 v3, 0x0

    .line 55
    .local v3, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    const/4 v2, 0x0

    .line 56
    .local v2, "danmakus":Lmaster/flame/danmaku/danmaku/model/android/Danmakus;
    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->doParsed(Ljava/util/ArrayList;)Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    move-result-object v2

    .line 57
    if-nez v2, :cond_1

    .line 77
    :cond_0
    return-void

    .line 60
    :cond_1
    iget-object v4, v2, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->items:Ljava/util/Collection;

    .line 61
    .local v4, "items":Ljava/util/Collection;, "Ljava/util/Collection<Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 62
    .local v5, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 63
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    check-cast v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 64
    .restart local v3    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    iget-wide v10, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    cmp-long v7, v10, v8

    if-gez v7, :cond_2

    .line 65
    iget-wide v8, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    goto :goto_0

    .line 68
    :cond_3
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 69
    .local v6, "itrFinal":Ljava/util/Iterator;, "Ljava/util/Iterator<Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 70
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    check-cast v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 71
    .restart local v3    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    sget-object v7, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "text="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-wide v10, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    sub-long/2addr v10, v8

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    add-long v10, v10, p4

    iput-wide v10, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    .line 73
    sget-object v7, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "currMillisecond="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p4

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v7, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "time="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lmaster/flame/danmaku/controller/IDanmakuView;->addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    goto :goto_1
.end method

.method public beginDanmaku(Ljava/lang/String;ILcom/youku/player/danmaku/DanmakuManager;Lcom/youku/player/base/YoukuPlayerView;)V
    .locals 2
    .param p1, "jsonArray"    # Ljava/lang/String;
    .param p2, "beginTime"    # I
    .param p3, "danmakuManager"    # Lcom/youku/player/danmaku/DanmakuManager;
    .param p4, "youkuPlayerView"    # Lcom/youku/player/base/YoukuPlayerView;

    .prologue
    .line 88
    if-eqz p4, :cond_0

    .line 89
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u5f00\u59cb\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    int-to-long v0, p2

    invoke-virtual {p4, p1, v0, v1}, Lcom/youku/player/base/YoukuPlayerView;->beginDanmaku(Ljava/lang/String;J)V

    .line 92
    :cond_0
    return-void
.end method

.method public closeDanmaku(Landroid/content/Context;Lcom/youku/player/danmaku/IDanmakuManager;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "danmakuManager"    # Lcom/youku/player/danmaku/IDanmakuManager;

    .prologue
    .line 109
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-static {p1}, Lcom/youku/player/goplay/Profile;->getLiveDanmakuSwith(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u5173\u95ed\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x1

    const-string v1, "liveDanmakuSwith"

    invoke-interface {p2, v0, v1}, Lcom/youku/player/danmaku/IDanmakuManager;->setDanmakuPreferences(ZLjava/lang/String;)V

    .line 115
    invoke-interface {p2}, Lcom/youku/player/danmaku/IDanmakuManager;->hideDanmaku()V

    goto :goto_0
.end method

.method public createDanmakuLoader()Lmaster/flame/danmaku/danmaku/loader/ILoader;
    .locals 2

    .prologue
    .line 39
    sget-object v1, Lmaster/flame/danmaku/danmaku/loader/android/DanmakuLoaderFactory;->TAG_YOUKU:Ljava/lang/String;

    invoke-static {v1}, Lmaster/flame/danmaku/danmaku/loader/android/DanmakuLoaderFactory;->create(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/loader/ILoader;

    move-result-object v0

    .line 41
    .local v0, "loader":Lmaster/flame/danmaku/danmaku/loader/ILoader;
    return-object v0
.end method

.method public createDanmakuParser()Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/parser/android/YoukuDanmakuParser;-><init>()V

    return-object v0
.end method

.method public getCurrentMillisecond(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;J)J
    .locals 0
    .param p1, "parser"    # Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .param p2, "currMillisecond"    # J

    .prologue
    .line 82
    return-wide p2
.end method

.method public getDanmakuSendColor(I)I
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 224
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    return v0
.end method

.method public getFakeJSONArray()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "{\"data\":{\"1\": [{\"content\": {\"title\":\"hello0\"},\"pub_time\": -1, \"seq\": 82}]}}"

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/youku/player/danmaku/YoukuDanmakuUtils;->textSize:I

    return v0
.end method

.method public hideDanmaku(Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/danmaku/DanmakuManager;)V
    .locals 2
    .param p1, "youkuPlayerView"    # Lcom/youku/player/base/YoukuPlayerView;
    .param p2, "danmakuManager"    # Lcom/youku/player/danmaku/DanmakuManager;

    .prologue
    .line 139
    if-nez p2, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    if-eqz p1, :cond_0

    .line 143
    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuShow:Z

    if-nez v0, :cond_2

    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuHide:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuShow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuHide:Z

    if-nez v0, :cond_0

    .line 145
    :cond_3
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u9690\u85cf\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lcom/youku/player/base/YoukuPlayerView;->hideDanmaku()V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuShow:Z

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuHide:Z

    goto :goto_0
.end method

.method public hideDanmakuWhenRotate(Landroid/content/Context;Lcom/youku/player/danmaku/DanmakuManager;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "danmakuManager"    # Lcom/youku/player/danmaku/DanmakuManager;

    .prologue
    .line 183
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-static {p1}, Lcom/youku/player/goplay/Profile;->getLiveDanmakuSwith(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p2}, Lcom/youku/player/danmaku/DanmakuManager;->hideDanmaku()V

    goto :goto_0
.end method

.method public openDanmaku(Landroid/content/Context;Lcom/youku/player/danmaku/DanmakuManager;Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/String;I)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "danmakuManager"    # Lcom/youku/player/danmaku/DanmakuManager;
    .param p3, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p4, "currentVid"    # Ljava/lang/String;
    .param p5, "currentGolbalPosition"    # I

    .prologue
    .line 98
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-static {p1}, Lcom/youku/player/goplay/Profile;->getLiveDanmakuSwith(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    const-string v1, "liveDanmakuSwith"

    invoke-virtual {p2, v0, v1}, Lcom/youku/player/danmaku/DanmakuManager;->setDanmakuPreferences(ZLjava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Lcom/youku/player/danmaku/DanmakuManager;->showDanmaku()V

    goto :goto_0
.end method

.method public releaseDanmaku(Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 2
    .param p1, "youkuPlayerView"    # Lcom/youku/player/base/YoukuPlayerView;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u91ca\u653e\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Lcom/youku/player/base/YoukuPlayerView;->releaseDanmaku()V

    .line 160
    :cond_0
    return-void
.end method

.method public requestStarImage(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/controller/IDanmakuView;)V
    .locals 0
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "danmakuView"    # Lmaster/flame/danmaku/controller/IDanmakuView;

    .prologue
    .line 249
    return-void
.end method

.method public resetAndReleaseDanmakuInfo(Lcom/youku/player/danmaku/IDanmakuManager;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "danmakuManager"    # Lcom/youku/player/danmaku/IDanmakuManager;
    .param p2, "isHLS"    # Ljava/lang/Boolean;

    .prologue
    .line 206
    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-interface {p1}, Lcom/youku/player/danmaku/IDanmakuManager;->hideDanmaku()V

    .line 210
    invoke-interface {p1}, Lcom/youku/player/danmaku/IDanmakuManager;->resetDanmakuInfo()V

    .line 211
    sget-object v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/player/danmaku/YoukuDanmakuUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/youku/player/danmaku/YoukuDanmakuUtils$1;-><init>(Lcom/youku/player/danmaku/YoukuDanmakuUtils;Lcom/youku/player/danmaku/IDanmakuManager;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public sendDanmaku(IIILjava/lang/String;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/base/YoukuPlayerView;Landroid/content/Context;Lcom/youku/player/danmaku/DanmakuManager;)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "position"    # I
    .param p3, "color"    # I
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p6, "youkuPlayerView"    # Lcom/youku/player/base/YoukuPlayerView;
    .param p7, "ctx"    # Landroid/content/Context;
    .param p8, "danmakuManager"    # Lcom/youku/player/danmaku/DanmakuManager;

    .prologue
    .line 195
    invoke-static {p7}, Lcom/youku/player/goplay/Profile;->getLiveDanmakuSwith(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    if-eqz p6, :cond_0

    .line 198
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u53d1\u9001\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p6, p1, p2, p3, p4}, Lcom/youku/player/base/YoukuPlayerView;->sendDanmaku(IIILjava/lang/CharSequence;)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    goto :goto_0
.end method

.method public setDanmakuContextAndDrawable(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "danmakuContext"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 244
    return-void
.end method

.method public setTextSize(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;Landroid/content/Context;)V
    .locals 2
    .param p1, "parser"    # Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 229
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/android/player/R$dimen;->danmaku_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/youku/player/danmaku/YoukuDanmakuUtils;->textSize:I

    .line 233
    iget v0, p0, Lcom/youku/player/danmaku/YoukuDanmakuUtils;->textSize:I

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->setTextSize(I)V

    goto :goto_0
.end method

.method public showDanmaku(Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/danmaku/DanmakuManager;)V
    .locals 2
    .param p1, "youkuPlayerView"    # Lcom/youku/player/base/YoukuPlayerView;
    .param p2, "danmakuManager"    # Lcom/youku/player/danmaku/DanmakuManager;

    .prologue
    .line 122
    if-nez p2, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    if-eqz p1, :cond_0

    .line 126
    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuShow:Z

    if-nez v0, :cond_2

    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuHide:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuShow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuHide:Z

    if-eqz v0, :cond_0

    .line 128
    :cond_3
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u5c55\u793a\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lcom/youku/player/base/YoukuPlayerView;->showDanmaku()V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuShow:Z

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuHide:Z

    goto :goto_0
.end method

.method public showDanmakuWhenRotate(Landroid/content/Context;Lcom/youku/player/danmaku/DanmakuManager;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "danmakuManager"    # Lcom/youku/player/danmaku/DanmakuManager;

    .prologue
    .line 173
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-static {p1}, Lcom/youku/player/goplay/Profile;->getLiveDanmakuSwith(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p2}, Lcom/youku/player/danmaku/DanmakuManager;->showDanmaku()V

    goto :goto_0
.end method

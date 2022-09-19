.class public Lcom/youku/player/danmaku/MyGetDanmakuManager;
.super Ljava/lang/Object;
.source "MyGetDanmakuManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public goGetDanmakuStatus(Ljava/lang/String;ILcom/youku/player/danmaku/IDanmakuInfoCallBack;)V
    .locals 1
    .param p1, "iid"    # Ljava/lang/String;
    .param p2, "cid"    # I
    .param p3, "danmakuInfoCallBack"    # Lcom/youku/player/danmaku/IDanmakuInfoCallBack;

    .prologue
    .line 21
    new-instance v0, Lcom/youku/player/danmaku/GetDanmakuStatusService;

    invoke-direct {v0}, Lcom/youku/player/danmaku/GetDanmakuStatusService;-><init>()V

    .line 22
    .local v0, "getDanmakuStatusService":Lcom/youku/player/danmaku/GetDanmakuStatusService;
    invoke-virtual {v0, p1, p2, p3}, Lcom/youku/player/danmaku/GetDanmakuStatusService;->getDanmakuStatus(Ljava/lang/String;ILcom/youku/player/danmaku/IDanmakuInfoCallBack;)V

    .line 24
    return-void
.end method

.method public goGetDanmakuUrl(Ljava/lang/String;IILcom/youku/player/danmaku/IDanmakuInfoCallBack;)V
    .locals 1
    .param p1, "iid"    # Ljava/lang/String;
    .param p2, "minute_at"    # I
    .param p3, "minute_count"    # I
    .param p4, "danmakuInfoCallBack"    # Lcom/youku/player/danmaku/IDanmakuInfoCallBack;

    .prologue
    .line 14
    new-instance v0, Lcom/youku/player/danmaku/GetDanmakuUrlService;

    invoke-direct {v0}, Lcom/youku/player/danmaku/GetDanmakuUrlService;-><init>()V

    .line 15
    .local v0, "getDanmakuUrlService":Lcom/youku/player/danmaku/GetDanmakuUrlService;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/youku/player/danmaku/GetDanmakuUrlService;->getDanmakuUrl(Ljava/lang/String;IILcom/youku/player/danmaku/IDanmakuInfoCallBack;)V

    .line 17
    return-void
.end method

.method public submitDanmaku(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p1, "ver"    # Ljava/lang/String;
    .param p2, "iid"    # Ljava/lang/String;
    .param p3, "playat"    # Ljava/lang/String;
    .param p4, "propertis"    # Ljava/lang/String;
    .param p5, "content"    # Ljava/lang/String;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 28
    invoke-static {p1, p2, p3, p4, p5}, Lcom/youku/player/util/URLContainer;->submitDanmakuParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "url":Ljava/lang/String;
    sget-object v2, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "submitDanmakuUrl"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/youku/statistics/StatisticsTask;

    invoke-direct {v0, v1, p6, v5, v5}, Lcom/youku/statistics/StatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;ZZ)V

    .line 33
    .local v0, "statisticsTask":Lcom/youku/statistics/StatisticsTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/youku/statistics/StatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 34
    return-void
.end method

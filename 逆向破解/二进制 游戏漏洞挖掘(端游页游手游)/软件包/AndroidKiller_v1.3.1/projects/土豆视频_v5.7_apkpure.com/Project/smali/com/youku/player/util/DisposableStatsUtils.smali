.class public Lcom/youku/player/util/DisposableStatsUtils;
.super Ljava/lang/Object;
.source "DisposableStatsUtils.java"


# static fields
.field private static final FILENAME:Ljava/lang/String; = "DisposableStatsUtils"

.field public static final REQUEST_SUMARY:Ljava/lang/String; = "\u53d1\u9001\u5e7f\u544a\u7edf\u8ba1 "

.field public static final SDK_TAG:Ljava/lang/String; = "adv_sdk"

.field public static final SEND_BY_ADSDK:I = 0x9

.field public static final SEND_BY_ALIMM:I = 0x2

.field public static final SEND_BY_MMA:I = 0x1

.field public static final TAG:Ljava/lang/String;

.field public static final TYPE_CUM:Ljava/lang/String; = "CUM"

.field public static final TYPE_PAUSED_SUE:Ljava/lang/String; = "PAUSED_SUE"

.field public static final TYPE_PAUSED_SUS:Ljava/lang/String; = "PAUSED_SUS"

.field public static final TYPE_PAUSED_VC:Ljava/lang/String; = "PAUSED_VC"

.field public static final TYPE_SHU:Ljava/lang/String; = "SHU"

.field public static final TYPE_SKIP_IMP:Ljava/lang/String; = "SKIP_IMP"

.field public static final TYPE_SU:Ljava/lang/String; = "SU"

.field public static final TYPE_SUE:Ljava/lang/String; = "SUE"

.field public static final TYPE_SUS:Ljava/lang/String; = "SUS"

.field public static final TYPE_VC:Ljava/lang/String; = "VC"

.field public static final TYPE_VIEW_IMP:Ljava/lang/String; = "VIEW_IMP"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    sput-object v0, Lcom/youku/player/util/DisposableStatsUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static disposeAdLoss(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "step"    # I
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "at"    # Ljava/lang/String;

    .prologue
    .line 503
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://valf.atm.youku.com/mlog?lvs=1&step="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&os=android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&bt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/baseproject/utils/UIUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pad"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&bd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v2}, Lcom/youku/player/util/URLContainer;->getTextEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&avs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/youku/player/util/URLContainer;->verName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&at="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "url":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/player/util/DisposableStatsUtils;->disposeHttp(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .end local v0    # "url":Ljava/lang/String;
    :goto_1
    return-void

    .line 503
    :cond_0
    const-string v1, "phone"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 512
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static disposeAdLossNew(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "step"    # I
    .param p2, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/player/goplay/AdvInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "advInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/goplay/AdvInfo;>;"
    const/4 v7, 0x1

    .line 529
    const-string v3, ""

    .line 530
    .local v3, "p":Ljava/lang/String;
    const-string v2, ""

    .line 531
    .local v2, "ie":Ljava/lang/String;
    if-eqz p3, :cond_4

    .line 532
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/AdvInfo;

    .line 533
    .local v0, "advInfo":Lcom/youku/player/goplay/AdvInfo;
    iget v5, v0, Lcom/youku/player/goplay/AdvInfo;->PST:I

    if-eqz v5, :cond_1

    .line 534
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/youku/player/goplay/AdvInfo;->PST:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 535
    :cond_1
    iget-object v5, v0, Lcom/youku/player/goplay/AdvInfo;->IE:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/youku/player/goplay/AdvInfo;->IE:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 536
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/youku/player/goplay/AdvInfo;->IE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 538
    .end local v0    # "advInfo":Lcom/youku/player/goplay/AdvInfo;
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 539
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 540
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 541
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 544
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://count.atm.youku.com/mlog?lvs=2&sp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&st="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/player/config/MediaPlayerConfiguration;->getAdvPlatform()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&bt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/baseproject/utils/UIUtils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "0"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&os=1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&avs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/youku/player/util/URLContainer;->verName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&sid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&p="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&ie="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 549
    .local v4, "url":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/youku/player/util/DisposableStatsUtils;->disposeHttp(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    .end local v4    # "url":Ljava/lang/String;
    :goto_2
    return-void

    .line 544
    :cond_5
    const-string v5, "1"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 550
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public static disposeCUM(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 228
    const-string v0, "CUM"

    invoke-static {v0}, Lcom/youku/player/util/DisposableStatsUtils;->logDebug(Ljava/lang/String;)V

    .line 229
    const-string v0, "CUM"

    invoke-static {p0, p1, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeStat(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method private static disposeHttp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "requestSumary"    # Ljava/lang/String;

    .prologue
    .line 654
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 655
    new-instance v0, Lcom/youku/player/service/DisposableHttpTaskApache;

    sget-object v1, Lcom/youku/player/util/DisposableStatsUtils;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p1}, Lcom/youku/player/service/DisposableHttpTaskApache;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/youku/player/service/DisposableHttpTaskApache;->start()V

    .line 659
    :goto_0
    return-void

    .line 657
    :cond_0
    new-instance v0, Lcom/youku/player/service/DisposableHttpTask;

    sget-object v1, Lcom/youku/player/util/DisposableStatsUtils;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p1}, Lcom/youku/player/service/DisposableHttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/youku/player/service/DisposableHttpTask;->start()V

    goto :goto_0
.end method

.method public static disposeNotPlayedAd(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "step"    # I

    .prologue
    .line 517
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->isAdvEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 518
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v2, "lossAdvInfo":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/goplay/AdvInfo;>;"
    iget-object v3, p1, Lcom/youku/player/module/VideoUrlInfo;->videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v3, v3, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/AdvInfo;

    .line 520
    .local v0, "advInfo":Lcom/youku/player/goplay/AdvInfo;
    invoke-virtual {v0}, Lcom/youku/player/goplay/AdvInfo;->played()Z

    move-result v3

    if-nez v3, :cond_0

    .line 521
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 523
    .end local v0    # "advInfo":Lcom/youku/player/goplay/AdvInfo;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 524
    sget-object v3, Lcom/youku/player/util/SessionUnitil;->playEvent_session:Ljava/lang/String;

    invoke-static {p0, p2, v3, v2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeAdLossNew(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)V

    .line 526
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "lossAdvInfo":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/goplay/AdvInfo;>;"
    :cond_2
    return-void
.end method

.method public static disposeOfflinePausedSUS(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;Lcom/youdo/vo/XAdInstance;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p2, "instance"    # Lcom/youdo/vo/XAdInstance;

    .prologue
    .line 212
    const-string v0, "PAUSED_SUS"

    invoke-static {v0, p2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeOfflineStat(Ljava/lang/String;Lcom/youdo/vo/XAdInstance;)V

    .line 213
    const-string v0, "PAUSED_SUS"

    invoke-static {p0, p1, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeStat(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public static disposeOfflineSU(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;ILcom/youdo/vo/XAdInstance;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p2, "position"    # I
    .param p3, "instance"    # Lcom/youdo/vo/XAdInstance;

    .prologue
    .line 164
    const-string v0, "SU"

    invoke-static {v0, p2, p3}, Lcom/youku/player/util/DisposableStatsUtils;->disposeOfflineStat(Ljava/lang/String;ILcom/youdo/vo/XAdInstance;)V

    .line 165
    const-string v0, "SU"

    invoke-static {p0, p1, v0, p2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeStat(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;I)V

    .line 166
    return-void
.end method

.method public static disposeOfflineSU(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;ILcom/youdo/vo/XAdInstance;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "position"    # I
    .param p3, "instance"    # Lcom/youdo/vo/XAdInstance;

    .prologue
    .line 156
    const-string v0, "SU"

    invoke-static {v0, p2, p3}, Lcom/youku/player/util/DisposableStatsUtils;->disposeOfflineStat(Ljava/lang/String;ILcom/youdo/vo/XAdInstance;)V

    .line 157
    const-string v0, "SU"

    invoke-static {p0, p1, v0, p2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeStat(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Ljava/lang/String;I)V

    .line 158
    return-void
.end method

.method public static disposeOfflineSUE(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;Lcom/youdo/vo/XAdInstance;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p2, "instance"    # Lcom/youdo/vo/XAdInstance;

    .prologue
    .line 196
    const-string v0, "SUE"

    invoke-static {v0, p2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeOfflineStat(Ljava/lang/String;Lcom/youdo/vo/XAdInstance;)V

    .line 197
    const-string v0, "SUE"

    invoke-static {p0, p1, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeStat(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public static disposeOfflineSUE(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Lcom/youdo/vo/XAdInstance;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "instance"    # Lcom/youdo/vo/XAdInstance;

    .prologue
    .line 188
    const-string v0, "SUE"

    invoke-static {v0, p2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeOfflineStat(Ljava/lang/String;Lcom/youdo/vo/XAdInstance;)V

    .line 189
    const-string v0, "SUE"

    invoke-static {p0, p1, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeStat(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public static disposeOfflineSUS(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;Lcom/youdo/vo/XAdInstance;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p2, "instance"    # Lcom/youdo/vo/XAdInstance;

    .prologue
    .line 126
    const-string v0, "SUS"

    invoke-static {v0, p2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeOfflineStat(Ljava/lang/String;Lcom/youdo/vo/XAdInstance;)V

    .line 127
    const-string v0, "SUS"

    invoke-static {p0, p1, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeStat(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static disposeOfflineSUS(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Lcom/youdo/vo/XAdInstance;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "instance"    # Lcom/youdo/vo/XAdInstance;

    .prologue
    .line 118
    const-string v0, "SUS"

    invoke-static {v0, p2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeOfflineStat(Ljava/lang/String;Lcom/youdo/vo/XAdInstance;)V

    .line 119
    const-string v0, "SUS"

    invoke-static {p0, p1, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeStat(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method private static disposeOfflineStat(Ljava/lang/String;ILcom/youdo/vo/XAdInstance;)V
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "position"    # I
    .param p2, "instance"    # Lcom/youdo/vo/XAdInstance;

    .prologue
    .line 423
    if-eqz p2, :cond_0

    .line 424
    const-string v0, "SU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    sget-object v0, Lcom/youku/player/ad/OfflineAdSDK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdSDK -----> disposeOfflineSU : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/youdo/XNativeAdManager;->onXAdSlotPlayingAtCuepoint(Lcom/youdo/vo/XAdInstance;I)V

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    const-string v0, "SUS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    sget-object v0, Lcom/youku/player/ad/OfflineAdSDK;->TAG:Ljava/lang/String;

    const-string v1, "AdSDK -----> disposeOfflineSUS"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/youdo/XNativeAdManager;->onXAdSlotStart(Lcom/youdo/vo/XAdInstance;)V

    goto :goto_0

    .line 430
    :cond_2
    const-string v0, "SUE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 431
    sget-object v0, Lcom/youku/player/ad/OfflineAdSDK;->TAG:Ljava/lang/String;

    const-string v1, "AdSDK -----> disposeOfflineSUE"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/youdo/XNativeAdManager;->onXAdSlotEnd(Lcom/youdo/vo/XAdInstance;)V

    goto :goto_0

    .line 433
    :cond_3
    const-string v0, "PAUSED_SUS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    sget-object v0, Lcom/youku/player/ad/OfflineAdSDK;->TAG:Ljava/lang/String;

    const-string v1, "AdSDK -----> disposeOfflinePauseSUS"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-static {}, Lcom/youdo/XNativeAdManager;->getInstance()Lcom/youdo/XNativeAdManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/youdo/XNativeAdManager;->onXAdSlotStart(Lcom/youdo/vo/XAdInstance;)V

    goto :goto_0
.end method

.method private static disposeOfflineStat(Ljava/lang/String;Lcom/youdo/vo/XAdInstance;)V
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "instance"    # Lcom/youdo/vo/XAdInstance;

    .prologue
    .line 247
    const/4 v0, -0x1

    invoke-static {p0, v0, p1}, Lcom/youku/player/util/DisposableStatsUtils;->disposeOfflineStat(Ljava/lang/String;ILcom/youdo/vo/XAdInstance;)V

    .line 248
    return-void
.end method

.method public static disposePausedSUE(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 220
    const-string v0, "PAUSED_SUE"

    invoke-static {v0}, Lcom/youku/player/util/DisposableStatsUtils;->logDebug(Ljava/lang/String;)V

    .line 221
    const-string v0, "PAUSED_SUE"

    invoke-static {p0, p1, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeStat(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public static disposePausedSUS(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 204
    const-string v0, "PAUSED_SUS"

    invoke-static {v0}, Lcom/youku/player/util/DisposableStatsUtils;->logDebug(Ljava/lang/String;)V

    .line 205
    const-string v0, "PAUSED_SUS"

    invoke-static {p0, p1, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeStat(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public static disposePausedVC(Lcom/youku/player/goplay/AdvInfo;)V
    .locals 1
    .param p0, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 88
    const-string v0, "PAUSED_VC"

    invoke-static {v0}, Lcom/youku/player/util/DisposableStatsUtils;->logDebug(Ljava/lang/String;)V

    .line 90
    if-nez p0, :cond_0

    .line 91
    const-string v0, "PAUSED_VC \u5931\u8d25: advInfo \u4e3a\u7a7a!!"

    invoke-static {v0}, Lcom/youku/player/util/DisposableStatsUtils;->logError(Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v0, "PAUSED_VC"

    invoke-static {v0, p0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeVC(Ljava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V

    goto :goto_0
.end method

.method public static disposeSHU(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 134
    const-string v0, "SHU"

    invoke-static {v0}, Lcom/youku/player/util/DisposableStatsUtils;->logDebug(Ljava/lang/String;)V

    .line 135
    const-string v0, "SHU"

    invoke-static {p0, p1, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeStat(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public static disposeSU(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p2, "position"    # I

    .prologue
    .line 149
    const-string v0, "SU"

    invoke-static {p0, p1, v0, p2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeStat(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;I)V

    .line 150
    return-void
.end method

.method public static disposeSU(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "position"    # I

    .prologue
    .line 142
    const-string v0, "SU"

    invoke-static {p0, p1, v0, p2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeStat(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Ljava/lang/String;I)V

    .line 143
    return-void
.end method

.method public static disposeSUE(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 180
    const-string v0, "SUE"

    invoke-static {v0}, Lcom/youku/player/util/DisposableStatsUtils;->logDebug(Ljava/lang/String;)V

    .line 181
    const-string v0, "SUE"

    invoke-static {p0, p1, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeStat(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public static disposeSUE(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 172
    const-string v0, "SUE"

    invoke-static {v0}, Lcom/youku/player/util/DisposableStatsUtils;->logDebug(Ljava/lang/String;)V

    .line 173
    const-string v0, "SUE"

    invoke-static {p0, p1, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeStat(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public static disposeSUS(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 110
    const-string v0, "SUS"

    invoke-static {v0}, Lcom/youku/player/util/DisposableStatsUtils;->logDebug(Ljava/lang/String;)V

    .line 111
    const-string v0, "SUS"

    invoke-static {p0, p1, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeStat(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static disposeSUS(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 102
    const-string v0, "SUS"

    invoke-static {v0}, Lcom/youku/player/util/DisposableStatsUtils;->logDebug(Ljava/lang/String;)V

    .line 103
    const-string v0, "SUS"

    invoke-static {p0, p1, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeStat(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static disposeSkipIMP(Lcom/youku/player/goplay/AdvInfo;I)V
    .locals 2
    .param p0, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p1, "progress"    # I

    .prologue
    .line 561
    sget-object v0, Lcom/youku/player/LogTag;->TAG_TRUE_VIEW:Ljava/lang/String;

    const-string v1, "------> disposeSkipIMP()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v0, "SKIP_IMP"

    invoke-static {p0, p1, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeTrueViewStatIMP(Lcom/youku/player/goplay/AdvInfo;ILjava/lang/String;)V

    .line 563
    return-void
.end method

.method private static disposeStat(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeStat(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;I)V

    .line 238
    return-void
.end method

.method private static disposeStat(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "position"    # I

    .prologue
    .line 271
    if-nez p1, :cond_1

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u5931\u8d25: advInfo\u975e\u6cd5 !!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/player/util/DisposableStatsUtils;->logError(Ljava/lang/String;)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-static {p1, p2}, Lcom/youku/player/util/DisposableStatsUtils;->getStatListByType(Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 277
    .local v0, "statList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/goplay/Stat;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    invoke-static {p0, p1, v0, p2, p3}, Lcom/youku/player/util/DisposableStatsUtils;->disposeStat(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static disposeStat(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;Ljava/util/List;Ljava/lang/String;I)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/youku/player/goplay/AdvInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/player/goplay/Stat;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p2, "statlist":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/goplay/Stat;>;"
    new-instance v1, Ljava/util/ArrayList;

    const/4 v8, 0x5

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 294
    .local v1, "diposedlist":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/goplay/Stat;>;"
    const/4 v3, 0x0

    .line 296
    .local v3, "itemIndex":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/player/goplay/Stat;

    .line 298
    .local v4, "stat":Lcom/youku/player/goplay/Stat;
    add-int/lit8 v3, v3, 0x1

    .line 300
    if-nez v4, :cond_1

    .line 301
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u5931\u8d25: list\u4e2d stat \u5bf9\u8c61\u4e3a\u7a7a !!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/youku/player/util/DisposableStatsUtils;->logError(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_1
    iget-object v8, v4, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 306
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u5931\u8d25: stat \u5bf9\u8c61\u7684 url\u4e3a\u7a7a !!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/youku/player/util/DisposableStatsUtils;->logError(Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_2
    iget v8, v4, Lcom/youku/player/goplay/Stat;->SDK:I

    const/16 v9, 0x9

    if-ne v8, v9, :cond_3

    .line 311
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u5931\u8d25: stat \u5bf9\u8c61\u4e3a\u79bb\u7ebf\u5e7f\u544a\u68c0\u6d4b !!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/youku/player/util/DisposableStatsUtils;->logError(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_3
    const/4 v8, -0x1

    if-eq p4, v8, :cond_4

    iget-object v8, v4, Lcom/youku/player/goplay/Stat;->T:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v4, Lcom/youku/player/goplay/Stat;->T:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne p4, v8, :cond_0

    .line 317
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  \u7b2c"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u9879 (\u5171"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u9879) "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "detail":Ljava/lang/String;
    iget v8, v4, Lcom/youku/player/goplay/Stat;->SDK:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 322
    const-string v8, "CUM"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 323
    const-string v8, "adv_sdk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sdk\u53d1\u9001\u70b9\u51fbcum:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v8

    iget-object v9, v4, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcn/com/mma/mobile/tracking/api/Countly;->onClick(Ljava/lang/String;)V

    .line 404
    :cond_5
    :goto_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 325
    :cond_6
    const-string v8, "SU"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 326
    const-string v8, "adv_sdk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sdk\u53d1\u9001su:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v8

    iget-object v9, v4, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcn/com/mma/mobile/tracking/api/Countly;->onExpose(Ljava/lang/String;)V

    goto :goto_1

    .line 328
    :cond_7
    const-string v8, "SUS"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 329
    const-string v8, "adv_sdk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sdk\u53d1\u9001sus:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v8

    iget-object v9, v4, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcn/com/mma/mobile/tracking/api/Countly;->onExpose(Ljava/lang/String;)V

    goto :goto_1

    .line 331
    :cond_8
    const-string v8, "SUE"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 332
    const-string v8, "adv_sdk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sdk\u53d1\u9001sue:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v8

    iget-object v9, v4, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcn/com/mma/mobile/tracking/api/Countly;->onExpose(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 334
    :cond_9
    const-string v8, "PAUSED_SUS"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 335
    const-string v8, "adv_sdk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sdk\u53d1\u9001sus:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v8

    iget-object v9, v4, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcn/com/mma/mobile/tracking/api/Countly;->onExpose(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 337
    :cond_a
    const-string v8, "PAUSED_SUE"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 338
    const-string v8, "adv_sdk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sdk\u53d1\u9001sue:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v8

    iget-object v9, v4, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcn/com/mma/mobile/tracking/api/Countly;->onExpose(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 340
    :cond_b
    const-string v8, "SHU"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 341
    const-string v8, "adv_sdk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sdk\u53d1\u9001shu:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v8

    iget-object v9, v4, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcn/com/mma/mobile/tracking/api/Countly;->onExpose(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 344
    :cond_c
    iget v8, v4, Lcom/youku/player/goplay/Stat;->SDK:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    .line 397
    iget-object v5, v4, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    .line 398
    .local v5, "url":Ljava/lang/String;
    const-string v8, "##TS##"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 400
    .local v6, "time":J
    const-string v8, "##TS##"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 402
    .end local v6    # "time":J
    :cond_d
    invoke-static {v5, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeHttp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 409
    .end local v0    # "detail":Ljava/lang/String;
    .end local v4    # "stat":Lcom/youku/player/goplay/Stat;
    .end local v5    # "url":Ljava/lang/String;
    :cond_e
    const-string v8, "CUM"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 417
    :goto_2
    return-void

    .line 413
    :cond_f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/player/goplay/Stat;

    .line 414
    .restart local v4    # "stat":Lcom/youku/player/goplay/Stat;
    invoke-interface {p2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 416
    .end local v4    # "stat":Lcom/youku/player/goplay/Stat;
    :cond_10
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_2
.end method

.method private static disposeStat(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 233
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeStat(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Ljava/lang/String;I)V

    .line 234
    return-void
.end method

.method private static disposeStat(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "position"    # I

    .prologue
    .line 242
    invoke-static {p1}, Lcom/youku/player/util/DisposableStatsUtils;->getAdvInfo(Lcom/youku/player/module/VideoUrlInfo;)Lcom/youku/player/goplay/AdvInfo;

    move-result-object v0

    .line 243
    .local v0, "advInfo":Lcom/youku/player/goplay/AdvInfo;
    invoke-static {p0, v0, p2, p3}, Lcom/youku/player/util/DisposableStatsUtils;->disposeStat(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;I)V

    .line 244
    return-void
.end method

.method private static disposeTrueViewStatIMP(Lcom/youku/player/goplay/AdvInfo;ILjava/lang/String;)V
    .locals 10
    .param p0, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p1, "progress"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 604
    if-eqz p0, :cond_0

    iget-object v7, p0, Lcom/youku/player/goplay/AdvInfo;->EM:Lcom/youku/player/goplay/EventMonitor;

    if-eqz v7, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 605
    :cond_0
    sget-object v7, Lcom/youku/player/LogTag;->TAG_TRUE_VIEW:Ljava/lang/String;

    const-string v8, "disposeTrueViewStatIMP ----> advInfo.EM is null."

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :goto_0
    return-void

    .line 608
    :cond_1
    invoke-static {p0, p2}, Lcom/youku/player/util/DisposableStatsUtils;->getTrueViewStatListByType(Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 610
    .local v5, "statlist":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/goplay/Stat;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_3

    .line 611
    :cond_2
    sget-object v7, Lcom/youku/player/LogTag;->TAG_TRUE_VIEW:Ljava/lang/String;

    const-string v8, "disposeTrueViewStatIMP ----> statlist is null."

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 614
    :cond_3
    sget-object v7, Lcom/youku/player/LogTag;->TAG_TRUE_VIEW:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "disposeTrueViewStatIMP ----> progress : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const/4 v3, 0x0

    .line 617
    .local v3, "itemIndex":I
    new-instance v1, Ljava/util/ArrayList;

    const/4 v7, 0x5

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 618
    .local v1, "diposedlist":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/goplay/Stat;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/player/goplay/Stat;

    .line 619
    .local v4, "stat":Lcom/youku/player/goplay/Stat;
    add-int/lit8 v3, v3, 0x1

    .line 620
    if-eqz v4, :cond_4

    .line 624
    iget-object v7, v4, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 628
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  \u7b2c"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u9879 (\u5171"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u9879) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "detail":Ljava/lang/String;
    iget v7, v4, Lcom/youku/player/goplay/Stat;->SDK:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 632
    const-string v7, "SKIP_IMP"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 633
    sget-object v7, Lcom/youku/player/LogTag;->TAG_TRUE_VIEW:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sdk\u53d1\u9001skip.ipm:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v7

    iget-object v8, v4, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcn/com/mma/mobile/tracking/api/Countly;->onExpose(Ljava/lang/String;)V

    goto :goto_1

    .line 635
    :cond_5
    const-string v7, "VIEW_IMP"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 636
    sget-object v7, Lcom/youku/player/LogTag;->TAG_TRUE_VIEW:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sdk\u53d1\u9001view.imp:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v7

    iget-object v8, v4, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcn/com/mma/mobile/tracking/api/Countly;->onExpose(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 640
    :cond_6
    iget-object v6, v4, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    .line 641
    .local v6, "url":Ljava/lang/String;
    const-string v7, "##VE##"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 642
    const-string v7, "##VE##"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 644
    :cond_7
    sget-object v7, Lcom/youku/player/LogTag;->TAG_TRUE_VIEW:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "disposeTrueViewStatIMP ----> url : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-static {v6, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeHttp(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 650
    .end local v0    # "detail":Ljava/lang/String;
    .end local v4    # "stat":Lcom/youku/player/goplay/Stat;
    .end local v6    # "url":Ljava/lang/String;
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_0
.end method

.method public static disposeVC(Lcom/youku/player/goplay/AdvInfo;)V
    .locals 1
    .param p0, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 76
    const-string v0, "VC"

    invoke-static {v0}, Lcom/youku/player/util/DisposableStatsUtils;->logDebug(Ljava/lang/String;)V

    .line 80
    const-string v0, "VC"

    invoke-static {v0, p0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeVC(Ljava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V

    .line 81
    return-void
.end method

.method public static disposeVC(Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 2
    .param p0, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 64
    const-string v1, "VC"

    invoke-static {v1}, Lcom/youku/player/util/DisposableStatsUtils;->logDebug(Ljava/lang/String;)V

    .line 66
    invoke-static {p0}, Lcom/youku/player/util/DisposableStatsUtils;->getAdvInfo(Lcom/youku/player/module/VideoUrlInfo;)Lcom/youku/player/goplay/AdvInfo;

    move-result-object v0

    .line 68
    .local v0, "advInfo":Lcom/youku/player/goplay/AdvInfo;
    const-string v1, "VC"

    invoke-static {v1, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeVC(Ljava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V

    .line 69
    return-void
.end method

.method private static disposeVC(Ljava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 252
    if-nez p1, :cond_1

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5931\u8d25: advInfo \u4e3a\u7a7a!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/player/util/DisposableStatsUtils;->logError(Ljava/lang/String;)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    invoke-static {p0, p1}, Lcom/youku/player/util/DisposableStatsUtils;->isVC_Valid(Ljava/lang/String;Lcom/youku/player/goplay/AdvInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p1, Lcom/youku/player/goplay/AdvInfo;->VC:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeHttp(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v0, ""

    iput-object v0, p1, Lcom/youku/player/goplay/AdvInfo;->VT:Ljava/lang/String;

    .line 264
    const-string v0, ""

    iput-object v0, p1, Lcom/youku/player/goplay/AdvInfo;->VC:Ljava/lang/String;

    goto :goto_0
.end method

.method public static disposeViewIMP(Lcom/youku/player/goplay/AdvInfo;I)V
    .locals 2
    .param p0, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p1, "progress"    # I

    .prologue
    .line 571
    sget-object v0, Lcom/youku/player/LogTag;->TAG_TRUE_VIEW:Ljava/lang/String;

    const-string v1, "------> disposeViewIMP()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v0, "VIEW_IMP"

    invoke-static {p0, p1, v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposeTrueViewStatIMP(Lcom/youku/player/goplay/AdvInfo;ILjava/lang/String;)V

    .line 573
    return-void
.end method

.method private static getAdvInfo(Lcom/youku/player/module/VideoUrlInfo;)Lcom/youku/player/goplay/AdvInfo;
    .locals 1
    .param p0, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 467
    if-nez p0, :cond_0

    .line 468
    const-string v0, "getVideoInfo \u5931\u8d25\uff0cmediaPlayerDelegate.videoInfo = null !"

    invoke-static {v0}, Lcom/youku/player/util/DisposableStatsUtils;->logError(Ljava/lang/String;)V

    .line 469
    const/4 v0, 0x0

    .line 472
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private static getStatListByType(Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/player/goplay/AdvInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/youku/player/goplay/Stat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    const-string v0, "SUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PAUSED_SUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/youku/player/goplay/AdvInfo;->SUS:Ljava/util/ArrayList;

    .line 462
    :goto_0
    return-object v0

    .line 445
    :cond_1
    const-string v0, "SU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 446
    iget-object v0, p0, Lcom/youku/player/goplay/AdvInfo;->SU:Ljava/util/ArrayList;

    goto :goto_0

    .line 449
    :cond_2
    const-string v0, "SUE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "PAUSED_SUE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 450
    :cond_3
    iget-object v0, p0, Lcom/youku/player/goplay/AdvInfo;->SUE:Ljava/util/ArrayList;

    goto :goto_0

    .line 453
    :cond_4
    const-string v0, "CUM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 454
    iget-object v0, p0, Lcom/youku/player/goplay/AdvInfo;->CUM:Ljava/util/ArrayList;

    goto :goto_0

    .line 457
    :cond_5
    const-string v0, "SHU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 458
    iget-object v0, p0, Lcom/youku/player/goplay/AdvInfo;->SHU:Ljava/util/ArrayList;

    goto :goto_0

    .line 461
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5931\u8d25: getStatListByType\u4e0d\u652f\u6301\u6b64 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/player/util/DisposableStatsUtils;->logError(Ljava/lang/String;)V

    .line 462
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getTrueViewStatListByType(Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/player/goplay/AdvInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/youku/player/goplay/Stat;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 580
    const-string v1, "SKIP_IMP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 581
    iget-object v1, p0, Lcom/youku/player/goplay/AdvInfo;->EM:Lcom/youku/player/goplay/EventMonitor;

    iget-object v1, v1, Lcom/youku/player/goplay/EventMonitor;->SKIP:Lcom/youku/player/goplay/EMSkip;

    if-nez v1, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-object v0

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/youku/player/goplay/AdvInfo;->EM:Lcom/youku/player/goplay/EventMonitor;

    iget-object v0, v0, Lcom/youku/player/goplay/EventMonitor;->SKIP:Lcom/youku/player/goplay/EMSkip;

    iget-object v0, v0, Lcom/youku/player/goplay/EMSkip;->IMP:Ljava/util/ArrayList;

    goto :goto_0

    .line 587
    :cond_2
    const-string v1, "VIEW_IMP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 588
    iget-object v1, p0, Lcom/youku/player/goplay/AdvInfo;->EM:Lcom/youku/player/goplay/EventMonitor;

    iget-object v1, v1, Lcom/youku/player/goplay/EventMonitor;->VIEW:Lcom/youku/player/goplay/EMView;

    if-eqz v1, :cond_0

    .line 591
    iget-object v0, p0, Lcom/youku/player/goplay/AdvInfo;->EM:Lcom/youku/player/goplay/EventMonitor;

    iget-object v0, v0, Lcom/youku/player/goplay/EventMonitor;->VIEW:Lcom/youku/player/goplay/EMView;

    iget-object v0, v0, Lcom/youku/player/goplay/EMView;->IMP:Ljava/util/ArrayList;

    goto :goto_0

    .line 593
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u5931\u8d25: getTrueViewStatListByType\u4e0d\u652f\u6301\u6b64 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/player/util/DisposableStatsUtils;->logError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isVC_Valid(Ljava/lang/String;Lcom/youku/player/goplay/AdvInfo;)Z
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    const/4 v0, 0x0

    .line 477
    iget-object v1, p1, Lcom/youku/player/goplay/AdvInfo;->VT:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/youku/player/goplay/AdvInfo;->VT:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "2"

    iget-object v2, p1, Lcom/youku/player/goplay/AdvInfo;->VT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 489
    :cond_0
    :goto_0
    return v0

    .line 483
    :cond_1
    iget-object v1, p1, Lcom/youku/player/goplay/AdvInfo;->VC:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/youku/player/goplay/AdvInfo;->VC:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_0

    .line 489
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static logDebug(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 494
    return-void
.end method

.method public static logError(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 498
    return-void
.end method

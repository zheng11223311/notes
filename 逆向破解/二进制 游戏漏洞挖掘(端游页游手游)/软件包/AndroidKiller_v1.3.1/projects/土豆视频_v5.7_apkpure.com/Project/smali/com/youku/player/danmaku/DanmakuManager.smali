.class public Lcom/youku/player/danmaku/DanmakuManager;
.super Ljava/lang/Object;
.source "DanmakuManager.java"

# interfaces
.implements Lcom/youku/player/danmaku/IDanmakuManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;
    }
.end annotation


# static fields
.field public static final DANMAKUCLOSE:I = 0x0

.field public static final DANMAKUOPEN:I = 0x1

.field public static final DANMAKUPAUSE:I = 0x4

.field public static final DANMAKUPLAY:I = 0x2

.field public static danmakuHandler:Landroid/os/Handler;


# instance fields
.field public beginTime:I

.field private context:Landroid/content/Context;

.field private currentCid:I

.field public currentGolbalPosition:I

.field public currentPosition:I

.field public currentVid:Ljava/lang/String;

.field public danmakuFailedCount:I

.field public danmakuJsonArray:Ljava/lang/String;

.field public danmakuNoDataStatus:I

.field public danmakuProcessStatus:I

.field public danmakuRequest:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public danmakuRequestTimes:I

.field public danmakuStatus:Ljava/lang/String;

.field public danmakuSwith:Z

.field public danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

.field public isDanmakuHide:Z

.field public isDanmakuNoData:Z

.field public isDanmakuShow:Z

.field public isFirstOpen:Z

.field public isFullScreenDanmaku:Z

.field public isGetDanmakuStatus:Z

.field public isHLS:Z

.field public isPaused:Z

.field public isSmallScreenDanmaku:Z

.field public isUserShutUp:Z

.field public lastSeekTime:I

.field private mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field private mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

.field public prePosition:I

.field public starUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/youku/player/danmaku/DanmakuManager$1;

    invoke-direct {v0}, Lcom/youku/player/danmaku/DanmakuManager$1;-><init>()V

    sput-object v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/youku/player/base/YoukuPlayerView;
    .param p3, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p4, "vid"    # Ljava/lang/String;
    .param p5, "cid"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuRequest:Ljava/util/ArrayList;

    .line 35
    iput v2, p0, Lcom/youku/player/danmaku/DanmakuManager;->prePosition:I

    .line 42
    iput v2, p0, Lcom/youku/player/danmaku/DanmakuManager;->beginTime:I

    .line 43
    iput-boolean v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuNoData:Z

    .line 44
    iput-boolean v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->isFirstOpen:Z

    .line 45
    iput-boolean v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->isPaused:Z

    .line 46
    iput-boolean v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuShow:Z

    .line 47
    iput-boolean v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuHide:Z

    .line 48
    iput-boolean v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->isUserShutUp:Z

    .line 50
    iput-boolean v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->isHLS:Z

    .line 57
    iput v2, p0, Lcom/youku/player/danmaku/DanmakuManager;->lastSeekTime:I

    .line 63
    iput-object p1, p0, Lcom/youku/player/danmaku/DanmakuManager;->context:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    .line 65
    iput-object p3, p0, Lcom/youku/player/danmaku/DanmakuManager;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 66
    iput-object p4, p0, Lcom/youku/player/danmaku/DanmakuManager;->currentVid:Ljava/lang/String;

    .line 67
    iput p5, p0, Lcom/youku/player/danmaku/DanmakuManager;->currentCid:I

    .line 68
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->getDanmakuUtils()Lcom/youku/player/danmaku/DanmakuUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/danmaku/DanmakuManager;)Lcom/youku/player/plugin/MediaPlayerDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/danmaku/DanmakuManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/player/danmaku/DanmakuManager;Ljava/lang/String;IILcom/youku/player/danmaku/MyGetDanmakuManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/danmaku/DanmakuManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/youku/player/danmaku/MyGetDanmakuManager;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youku/player/danmaku/DanmakuManager;->handleSuccessfullGetDanmakuStatus(Ljava/lang/String;IILcom/youku/player/danmaku/MyGetDanmakuManager;)V

    return-void
.end method

.method static synthetic access$200(Lcom/youku/player/danmaku/DanmakuManager;)Lcom/youku/player/base/YoukuPlayerView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/danmaku/DanmakuManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/player/danmaku/DanmakuManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/danmaku/DanmakuManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method private handleSuccessfullGetDanmakuStatus(Ljava/lang/String;IILcom/youku/player/danmaku/MyGetDanmakuManager;)V
    .locals 1
    .param p1, "iid"    # Ljava/lang/String;
    .param p2, "minute_at"    # I
    .param p3, "minute_count"    # I
    .param p4, "myGetDanmakuManager"    # Lcom/youku/player/danmaku/MyGetDanmakuManager;

    .prologue
    .line 175
    new-instance v0, Lcom/youku/player/danmaku/DanmakuManager$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/youku/player/danmaku/DanmakuManager$3;-><init>(Lcom/youku/player/danmaku/DanmakuManager;II)V

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/youku/player/danmaku/MyGetDanmakuManager;->goGetDanmakuUrl(Ljava/lang/String;IILcom/youku/player/danmaku/IDanmakuInfoCallBack;)V

    .line 220
    return-void
.end method


# virtual methods
.method public addDanmaku(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/youku/player/danmaku/DanmakuManager;->addDanmaku(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 256
    return-void
.end method

.method public addDanmaku(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p2, "liveDanmakuInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;>;"
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    if-eqz v0, :cond_1

    .line 246
    if-nez p1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    invoke-interface {v0}, Lcom/youku/player/danmaku/DanmakuUtils;->getFakeJSONArray()Ljava/lang/String;

    move-result-object p1

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-interface {v0, p1, v1, p0, p2}, Lcom/youku/player/danmaku/DanmakuUtils;->addDanmaku(Ljava/lang/String;Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/danmaku/DanmakuManager;Ljava/util/ArrayList;)V

    .line 251
    :cond_1
    return-void
.end method

.method public beginDanmaku(Ljava/lang/String;I)V
    .locals 2
    .param p1, "jsonArray"    # Ljava/lang/String;
    .param p2, "beginTime"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-interface {v0, p1, p2, p0, v1}, Lcom/youku/player/danmaku/DanmakuUtils;->beginDanmaku(Ljava/lang/String;ILcom/youku/player/danmaku/DanmakuManager;Lcom/youku/player/base/YoukuPlayerView;)V

    .line 241
    :cond_0
    return-void
.end method

.method public closeCMSDanmaku()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getDanmakuSwith(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u5173\u95ed\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const/4 v0, 0x1

    const-string v1, "danmakuSwith"

    invoke-virtual {p0, v0, v1}, Lcom/youku/player/danmaku/DanmakuManager;->setDanmakuPreferences(ZLjava/lang/String;)V

    .line 386
    :cond_0
    return-void
.end method

.method public closeDanmaku()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->context:Landroid/content/Context;

    invoke-interface {v0, v1, p0}, Lcom/youku/player/danmaku/DanmakuUtils;->closeDanmaku(Landroid/content/Context;Lcom/youku/player/danmaku/IDanmakuManager;)V

    .line 378
    :cond_0
    return-void
.end method

.method public continueDanmaku()V
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->isPaused:Z

    if-eqz v0, :cond_1

    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->isPaused:Z

    .line 499
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getDanmakuSwith(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/youku/player/danmaku/DanmakuManager;->showDanmaku()V

    .line 502
    :cond_0
    invoke-virtual {p0}, Lcom/youku/player/danmaku/DanmakuManager;->resumeDanmaku()V

    .line 504
    :cond_1
    return-void
.end method

.method public getDanmakuCount(Ljava/lang/String;)I
    .locals 5
    .param p1, "danmakuInfo"    # Ljava/lang/String;

    .prologue
    .line 473
    const/4 v1, 0x0

    .line 475
    .local v1, "danmakuCount":I
    :try_start_0
    const-string v4, "count"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 476
    .local v0, "beginIndex":I
    const-string v4, ":"

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 477
    .local v3, "middleIndex":I
    const-string v4, ","

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 478
    .local v2, "endIndex":I
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 483
    .end local v0    # "beginIndex":I
    .end local v2    # "endIndex":I
    .end local v3    # "middleIndex":I
    :goto_0
    return v1

    .line 480
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public handleDanmakuEnable(Z)V
    .locals 1
    .param p1, "danmakuEnable"    # Z

    .prologue
    .line 620
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIDanmakuEnable:Lcom/youku/player/apiservice/IDanmakuEnable;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIDanmakuEnable:Lcom/youku/player/apiservice/IDanmakuEnable;

    invoke-interface {v0, p1}, Lcom/youku/player/apiservice/IDanmakuEnable;->handleDanmakuEnable(Z)V

    .line 623
    :cond_0
    return-void
.end method

.method public handleDanmakuInfo(Ljava/lang/String;II)V
    .locals 7
    .param p1, "iid"    # Ljava/lang/String;
    .param p2, "minute_at"    # I
    .param p3, "minute_count"    # I

    .prologue
    .line 80
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->hideDanmaku()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuRequest:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    :cond_0
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5206\u949f\u7684\u6570\u636e\u5df2\u7ecf\u88ab\u6dfb\u52a0\uff0c\u65e0\u9700\u518d\u6b21\u6dfb\u52a0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    new-instance v5, Lcom/youku/player/danmaku/MyGetDanmakuManager;

    invoke-direct {v5}, Lcom/youku/player/danmaku/MyGetDanmakuManager;-><init>()V

    .line 86
    .local v5, "myGetDanmakuManager":Lcom/youku/player/danmaku/MyGetDanmakuManager;
    iget-boolean v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->isGetDanmakuStatus:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 87
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuStatus:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuStatus:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_3

    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuStatus:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3

    .line 89
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/youku/player/danmaku/DanmakuManager;->handleSuccessfullGetDanmakuStatus(Ljava/lang/String;IILcom/youku/player/danmaku/MyGetDanmakuManager;)V

    goto :goto_0

    .line 92
    :cond_3
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u672c\u5206\u949f\u5185\u6ca1\u6709\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuRequest:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuJsonArray:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuStatus:Ljava/lang/String;

    if-eqz v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuStatus:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 96
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u7531\u4e8e\u89c6\u9891\u6ca1\u6709\u5f39\u5e55\uff0c\u6b63\u5728\u8bf7\u6c42\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5206\u949f\u6570\u636e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0, p3}, Lcom/youku/player/danmaku/DanmakuManager;->handleDanmakuInfo(Ljava/lang/String;II)V

    goto :goto_0

    .line 103
    :cond_4
    iget v6, p0, Lcom/youku/player/danmaku/DanmakuManager;->currentCid:I

    new-instance v0, Lcom/youku/player/danmaku/DanmakuManager$2;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/youku/player/danmaku/DanmakuManager$2;-><init>(Lcom/youku/player/danmaku/DanmakuManager;ILjava/lang/String;ILcom/youku/player/danmaku/MyGetDanmakuManager;)V

    invoke-virtual {v5, p1, v6, v0}, Lcom/youku/player/danmaku/MyGetDanmakuManager;->goGetDanmakuStatus(Ljava/lang/String;ILcom/youku/player/danmaku/IDanmakuInfoCallBack;)V

    goto :goto_0
.end method

.method public hideDanmaku()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-interface {v0, v1, p0}, Lcom/youku/player/danmaku/DanmakuUtils;->hideDanmaku(Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/danmaku/DanmakuManager;)V

    .line 405
    :cond_0
    return-void
.end method

.method public hideDanmakuAgain()V
    .locals 2

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->isPaused:Z

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    if-eqz v0, :cond_0

    .line 510
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u5207\u51fa\u53bb\uff0c\u518d\u56de\u6765\u65f6\uff0c\u591a\u8bbe\u7f6e\u4e00\u6b21\u9690\u85cf\u5f39\u5e55\uff0c\u9632\u6b62\u610f\u5916\u53d1\u751f"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->hideDanmaku()V

    .line 514
    :cond_0
    return-void
.end method

.method public hideDanmakuWhenOpen()V
    .locals 1

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->isPaused:Z

    .line 490
    invoke-virtual {p0}, Lcom/youku/player/danmaku/DanmakuManager;->hideDanmaku()V

    .line 491
    invoke-virtual {p0}, Lcom/youku/player/danmaku/DanmakuManager;->pauseDanmaku()V

    .line 493
    :cond_0
    return-void
.end method

.method public hideDanmakuWhenRotate()V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->context:Landroid/content/Context;

    invoke-interface {v0, v1, p0}, Lcom/youku/player/danmaku/DanmakuUtils;->hideDanmakuWhenRotate(Landroid/content/Context;Lcom/youku/player/danmaku/DanmakuManager;)V

    .line 469
    :cond_0
    return-void
.end method

.method public isDanmakuClosed()Z
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getDanmakuSwith(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isHls()Z
    .locals 1

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->isHLS:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 627
    iget-boolean v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->isPaused:Z

    return v0
.end method

.method public onPositionChanged(I)V
    .locals 5
    .param p1, "currentPosition"    # I

    .prologue
    const/4 v4, 0x1

    .line 552
    const v0, 0xea60

    div-int v0, p1, v0

    iput v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->currentGolbalPosition:I

    .line 553
    iput p1, p0, Lcom/youku/player/danmaku/DanmakuManager;->currentPosition:I

    .line 554
    iget v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    iget v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->prePosition:I

    iget v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->currentGolbalPosition:I

    if-eq v0, v1, :cond_0

    .line 558
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCurrentPositionUpdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/danmaku/DanmakuManager;->currentGolbalPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuRequestTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuRequestTimes:I

    .line 561
    iget v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->currentGolbalPosition:I

    iput v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->prePosition:I

    .line 562
    iget v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuRequestTimes:I

    if-ne v0, v4, :cond_4

    .line 563
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5f00\u59cb\u5f39\u5e55,currentPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuJsonArray:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/youku/player/danmaku/DanmakuManager;->beginDanmaku(Ljava/lang/String;I)V

    .line 565
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->showTudouPadDanmaku()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 570
    :cond_3
    sget-object v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 571
    sget-object v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/player/danmaku/DanmakuManager$5;

    invoke-direct {v1, p0}, Lcom/youku/player/danmaku/DanmakuManager$5;-><init>(Lcom/youku/player/danmaku/DanmakuManager;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 590
    :cond_4
    :goto_1
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6b63\u7247\u64ad\u653e\u4e2d\uff0c\u6b63\u5728\u8bf7\u6c42\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/danmaku/DanmakuManager;->currentGolbalPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5206\u949f\u6570\u636e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->currentVid:Ljava/lang/String;

    iget v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->currentGolbalPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1, v4}, Lcom/youku/player/danmaku/DanmakuManager;->handleDanmakuInfo(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 584
    :cond_5
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-nez v0, :cond_4

    .line 586
    iget v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    .line 587
    invoke-virtual {p0}, Lcom/youku/player/danmaku/DanmakuManager;->hideDanmaku()V

    goto :goto_1
.end method

.method public openDanmaku()V
    .locals 6

    .prologue
    .line 367
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/youku/player/danmaku/DanmakuManager;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, p0, Lcom/youku/player/danmaku/DanmakuManager;->currentVid:Ljava/lang/String;

    iget v5, p0, Lcom/youku/player/danmaku/DanmakuManager;->currentGolbalPosition:I

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lcom/youku/player/danmaku/DanmakuUtils;->openDanmaku(Landroid/content/Context;Lcom/youku/player/danmaku/DanmakuManager;Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/String;I)V

    .line 371
    :cond_0
    return-void
.end method

.method public pauseDanmaku()V
    .locals 2

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuNoData:Z

    if-eqz v0, :cond_1

    .line 275
    iget v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuNoDataStatus:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    if-eqz v0, :cond_0

    .line 277
    const/4 v0, 0x4

    iput v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuNoDataStatus:I

    .line 278
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->pauseDanmaku()V

    .line 279
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u6682\u505c\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    if-eqz v0, :cond_0

    .line 287
    const/4 v0, 0x5

    iput v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    .line 288
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->pauseDanmaku()V

    .line 289
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u6682\u505c\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releaseDanmaku()V
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v2, p0, Lcom/youku/player/danmaku/DanmakuManager;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-interface {v0, v1, v2}, Lcom/youku/player/danmaku/DanmakuUtils;->releaseDanmaku(Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 412
    :cond_0
    return-void
.end method

.method public releaseDanmakuWhenDestroy()V
    .locals 2

    .prologue
    .line 598
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->hideDanmaku()Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    invoke-virtual {p0}, Lcom/youku/player/danmaku/DanmakuManager;->releaseDanmaku()V

    .line 600
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    instance-of v0, v0, Lcom/youku/player/danmaku/TudouDanmakuUtils;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    check-cast v0, Lcom/youku/player/danmaku/TudouDanmakuUtils;

    iget-object v0, v0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->starHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 603
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    check-cast v0, Lcom/youku/player/danmaku/TudouDanmakuUtils;

    iget-object v0, v0, Lcom/youku/player/danmaku/TudouDanmakuUtils;->imgUrlHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 607
    :cond_0
    return-void
.end method

.method public resetAndReleaseDanmakuInfo()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    iget-boolean v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->isHLS:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/youku/player/danmaku/DanmakuUtils;->resetAndReleaseDanmakuInfo(Lcom/youku/player/danmaku/IDanmakuManager;Ljava/lang/Boolean;)V

    .line 548
    :cond_0
    return-void
.end method

.method public resetDanmakuInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 518
    iput-boolean v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->isGetDanmakuStatus:Z

    .line 519
    iput-object v3, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuStatus:Ljava/lang/String;

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuRequest:Ljava/util/ArrayList;

    .line 521
    iput v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuFailedCount:I

    .line 522
    iput-boolean v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuSwith:Z

    .line 523
    iput v2, p0, Lcom/youku/player/danmaku/DanmakuManager;->prePosition:I

    .line 524
    iput v2, p0, Lcom/youku/player/danmaku/DanmakuManager;->beginTime:I

    .line 525
    iput v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->currentGolbalPosition:I

    .line 526
    iput v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->currentPosition:I

    .line 527
    iput v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuRequestTimes:I

    .line 528
    iput-object v3, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuJsonArray:Ljava/lang/String;

    .line 529
    iput v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    .line 530
    iput-boolean v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuNoData:Z

    .line 531
    iput-boolean v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->isFirstOpen:Z

    .line 532
    iput-boolean v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->isPaused:Z

    .line 533
    iput-boolean v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuHide:Z

    .line 534
    iput-boolean v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuShow:Z

    .line 535
    iput-boolean v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->isUserShutUp:Z

    .line 536
    iput-boolean v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->isHLS:Z

    .line 537
    iput v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuNoDataStatus:I

    .line 538
    iput-boolean v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->isFullScreenDanmaku:Z

    .line 539
    iput-boolean v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->isSmallScreenDanmaku:Z

    .line 540
    iput v2, p0, Lcom/youku/player/danmaku/DanmakuManager;->lastSeekTime:I

    .line 541
    return-void
.end method

.method public resumeDanmaku()V
    .locals 2

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->isPaused:Z

    if-eqz v0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-boolean v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuNoData:Z

    if-eqz v0, :cond_2

    .line 300
    iget v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuNoDataStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x2

    iput v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuNoDataStatus:I

    .line 303
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->resumeDanmaku()V

    .line 304
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u7ee7\u7eed\u64ad\u653e\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_2
    iget v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    if-eqz v0, :cond_0

    .line 312
    const/4 v0, 0x3

    iput v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    .line 313
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->resumeDanmaku()V

    .line 314
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u7ee7\u7eed\u64ad\u653e\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public seekToDanmaku(I)V
    .locals 4
    .param p1, "ms"    # I

    .prologue
    const v3, 0xea60

    .line 321
    iget v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 323
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seek\u5230"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5206"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit16 v2, p1, 0x3e8

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seek\uff0c\u6b63\u5728\u8bf7\u6c42\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5206\u949f\u6570\u636e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->currentVid:Ljava/lang/String;

    div-int v1, p1, v3

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/youku/player/danmaku/DanmakuManager;->handleDanmakuInfo(Ljava/lang/String;II)V

    .line 327
    new-instance v0, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;

    invoke-direct {v0, p0, p1}, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;-><init>(Lcom/youku/player/danmaku/DanmakuManager;I)V

    invoke-virtual {v0}, Lcom/youku/player/danmaku/DanmakuManager$seekDanmakuRunnable;->run()V

    .line 330
    :cond_0
    return-void
.end method

.method public sendDanmaku(IIILjava/lang/String;)V
    .locals 9
    .param p1, "size"    # I
    .param p2, "position"    # I
    .param p3, "color"    # I
    .param p4, "content"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    iget-object v5, p0, Lcom/youku/player/danmaku/DanmakuManager;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v7, p0, Lcom/youku/player/danmaku/DanmakuManager;->context:Landroid/content/Context;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v8, p0

    invoke-interface/range {v0 .. v8}, Lcom/youku/player/danmaku/DanmakuUtils;->sendDanmaku(IIILjava/lang/String;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/base/YoukuPlayerView;Landroid/content/Context;Lcom/youku/player/danmaku/DanmakuManager;)V

    .line 228
    :cond_0
    return-void
.end method

.method public sendDanmaku(ILjava/lang/String;)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 232
    const/16 v0, 0x19

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/youku/player/danmaku/DanmakuManager;->sendDanmaku(IIILjava/lang/String;)V

    .line 233
    return-void
.end method

.method public setDanmakuEffect(I)V
    .locals 1
    .param p1, "effect"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0, p1}, Lcom/youku/player/base/YoukuPlayerView;->setDanmakuEffect(I)V

    .line 270
    :cond_0
    return-void
.end method

.method public setDanmakuPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0, p1}, Lcom/youku/player/base/YoukuPlayerView;->setDanmakuPosition(I)V

    .line 263
    :cond_0
    return-void
.end method

.method public setDanmakuPreferences(ZLjava/lang/String;)V
    .locals 2
    .param p1, "danmakuSwith"    # Z
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 416
    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 418
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 419
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 420
    return-void
.end method

.method public setDanmakuTextScale(Z)V
    .locals 1
    .param p1, "isFullScreenPlay"    # Z

    .prologue
    .line 611
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    instance-of v0, v0, Lcom/youku/player/danmaku/TudouDanmakuUtils;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    check-cast v0, Lcom/youku/player/danmaku/TudouDanmakuUtils;

    invoke-virtual {v0, p1, p0}, Lcom/youku/player/danmaku/TudouDanmakuUtils;->setDanmakuTextScale(ZLcom/youku/player/danmaku/DanmakuManager;)V

    .line 616
    :cond_0
    return-void
.end method

.method public setDanmakuVisibleWhenLive()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    if-eqz v0, :cond_0

    .line 452
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u8bbe\u7f6e\u5f39\u5e55\u53ef\u89c1"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->setDanmakuVisibleWhenLive()V

    .line 455
    :cond_0
    return-void
.end method

.method public setVid(Ljava/lang/String;I)V
    .locals 0
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "cid"    # I

    .prologue
    .line 73
    iput-object p1, p0, Lcom/youku/player/danmaku/DanmakuManager;->currentVid:Ljava/lang/String;

    .line 74
    iput p2, p0, Lcom/youku/player/danmaku/DanmakuManager;->currentCid:I

    .line 75
    return-void
.end method

.method public showDanmaku()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-interface {v0, v1, p0}, Lcom/youku/player/danmaku/DanmakuUtils;->showDanmaku(Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/danmaku/DanmakuManager;)V

    .line 398
    :cond_0
    return-void
.end method

.method public showDanmakuWhenRotate()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuUtils:Lcom/youku/player/danmaku/DanmakuUtils;

    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->context:Landroid/content/Context;

    invoke-interface {v0, v1, p0}, Lcom/youku/player/danmaku/DanmakuUtils;->showDanmakuWhenRotate(Landroid/content/Context;Lcom/youku/player/danmaku/DanmakuManager;)V

    .line 462
    :cond_0
    return-void
.end method

.method public startLiveDanmaku()V
    .locals 4

    .prologue
    .line 424
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/youku/player/goplay/Profile;->getDanmakuPosition(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/base/YoukuPlayerView;->setDanmakuPosition(I)V

    .line 431
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/youku/player/danmaku/DanmakuManager;->beginDanmaku(Ljava/lang/String;I)V

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->isHLS:Z

    .line 433
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getLiveDanmakuSwith(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 434
    sget-object v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 435
    sget-object v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/player/danmaku/DanmakuManager$4;

    invoke-direct {v1, p0}, Lcom/youku/player/danmaku/DanmakuManager$4;-><init>(Lcom/youku/player/danmaku/DanmakuManager;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 447
    :cond_1
    :goto_0
    return-void

    .line 444
    :cond_2
    invoke-virtual {p0}, Lcom/youku/player/danmaku/DanmakuManager;->hideDanmaku()V

    goto :goto_0
.end method

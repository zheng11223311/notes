.class public Lcn/com/iresearch/mvideotracker/IRVideo;
.super Ljava/lang/Object;
.source "IRVideo.java"


# static fields
.field public static final ACTION_END:I = 0x3

.field public static final ACTION_INIT:I = 0x0

.field public static final ACTION_PAUSE:I = 0x2

.field public static final ACTION_PLAY:I = 0x1

.field public static final ACTION_SEND_A:I = 0x5

.field public static final ACTION_SEND_B:I = 0x6

.field public static final ACTION_SEND_HISTORY:I = 0x4

.field private static final CUSTOM:Ljava/lang/String; = "vv_custom"

.field private static final DBNAME:Ljava/lang/String; = "vvtracker.db"

.field private static final END:Ljava/lang/String; = "end"

.field private static final INIT:Ljava/lang/String; = "init"

.field private static final PAUSE:Ljava/lang/String; = "pause"

.field private static final PLAY:Ljava/lang/String; = "play"

.field private static final SEND_LIMIT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "IRVideo"

.field protected static final THREAD_NAME:Ljava/lang/String; = "IRVideo"

.field private static final UAID:Ljava/lang/String; = "vv_uaid"

.field private static final YOUKU_TAG:Ljava/lang/String; = "IR_VV"

.field private static irVideo:Lcn/com/iresearch/mvideotracker/IRVideo;


# instance fields
.field private context:Landroid/content/Context;

.field private customVal:Ljava/lang/String;

.field private heartTimes:I

.field private lasVideoPlayInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/com/iresearch/mvideotracker/VideoPlayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private lastActionTime:J

.field private mActionHandler:Landroid/os/Handler;

.field private pauseCount:I

.field private playTime:J

.field private preActionTime:J

.field private sendHistoryInfoStart:Z

.field private uaid:Ljava/lang/String;

.field private videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

.field private vvtracker_db:Lcn/com/iresearch/mvideotracker/db/FinalDb;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v1, ""

    iput-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->uaid:Ljava/lang/String;

    .line 44
    iput v2, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->pauseCount:I

    .line 46
    iput-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->playTime:J

    .line 48
    iput v2, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->heartTimes:I

    .line 50
    iput-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->lastActionTime:J

    .line 52
    iput-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->preActionTime:J

    .line 54
    iput-boolean v2, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->sendHistoryInfoStart:Z

    .line 56
    const-string v1, ""

    iput-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->customVal:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->context:Landroid/content/Context;

    .line 80
    const-string/jumbo v1, "vvtracker.db"

    invoke-static {p1, v1, v2}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->create(Landroid/content/Context;Ljava/lang/String;Z)Lcn/com/iresearch/mvideotracker/db/FinalDb;

    move-result-object v1

    iput-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->vvtracker_db:Lcn/com/iresearch/mvideotracker/db/FinalDb;

    .line 81
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IRVideo"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "localHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 83
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->mActionHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcn/com/iresearch/mvideotracker/IRVideo;)Lcn/com/iresearch/mvideotracker/db/FinalDb;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->vvtracker_db:Lcn/com/iresearch/mvideotracker/db/FinalDb;

    return-object v0
.end method

.method static synthetic access$1(Lcn/com/iresearch/mvideotracker/IRVideo;Lcn/com/iresearch/mvideotracker/VideoPlayInfo;)V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcn/com/iresearch/mvideotracker/IRVideo;->deleteVideoPlayInfo(Lcn/com/iresearch/mvideotracker/VideoPlayInfo;)V

    return-void
.end method

.method private deleteVideoPlayInfo(Lcn/com/iresearch/mvideotracker/VideoPlayInfo;)V
    .locals 4
    .param p1, "videoPlayInfo"    # Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    .prologue
    .line 447
    :try_start_0
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->vvtracker_db:Lcn/com/iresearch/mvideotracker/db/FinalDb;

    invoke-virtual {v1, p1}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->delete(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    return-void

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IRVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u4fdd\u5b58\u89c6\u9891\u6570\u636e\u5230\u6570\u636e\u5e93\u5f02\u5e38"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private deleteVideoPlayInfoByWhere(Lcn/com/iresearch/mvideotracker/VideoPlayInfo;)V
    .locals 8
    .param p1, "videoPlayInfo"    # Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    .prologue
    .line 461
    :try_start_0
    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->vvtracker_db:Lcn/com/iresearch/mvideotracker/db/FinalDb;

    .line 462
    const-class v4, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    invoke-virtual {v3, v4}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 463
    .local v2, "videoPlayInfos":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/VideoPlayInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 474
    .end local v2    # "videoPlayInfos":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/VideoPlayInfo;>;"
    :goto_1
    return-void

    .line 463
    .restart local v2    # "videoPlayInfos":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/VideoPlayInfo;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    .line 464
    .local v1, "info":Lcn/com/iresearch/mvideotracker/VideoPlayInfo;
    invoke-virtual {p1}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->getVideoID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->getVideoID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 465
    invoke-virtual {p1}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->getLastActionTime()J

    move-result-wide v4

    .line 466
    invoke-virtual {v1}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->getLastActionTime()J

    move-result-wide v6

    .line 465
    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 467
    iget-object v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->vvtracker_db:Lcn/com/iresearch/mvideotracker/db/FinalDb;

    invoke-virtual {v4, v1}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->delete(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 470
    .end local v1    # "info":Lcn/com/iresearch/mvideotracker/VideoPlayInfo;
    .end local v2    # "videoPlayInfos":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/VideoPlayInfo;>;"
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "IRVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u4fdd\u5b58\u89c6\u9891\u6570\u636e\u5230\u6570\u636e\u5e93\u5f02\u5e38"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/com/iresearch/mvideotracker/IRVideo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    sget-object v0, Lcn/com/iresearch/mvideotracker/IRVideo;->irVideo:Lcn/com/iresearch/mvideotracker/IRVideo;

    if-nez v0, :cond_0

    .line 88
    const-class v1, Lcn/com/iresearch/mvideotracker/IRVideo;

    monitor-enter v1

    .line 89
    :try_start_0
    new-instance v0, Lcn/com/iresearch/mvideotracker/IRVideo;

    invoke-direct {v0, p0}, Lcn/com/iresearch/mvideotracker/IRVideo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/com/iresearch/mvideotracker/IRVideo;->irVideo:Lcn/com/iresearch/mvideotracker/IRVideo;

    .line 88
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    sget-object v0, Lcn/com/iresearch/mvideotracker/IRVideo;->irVideo:Lcn/com/iresearch/mvideotracker/IRVideo;

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private saveVideoPlayInfo(Lcn/com/iresearch/mvideotracker/VideoPlayInfo;)V
    .locals 11
    .param p1, "videoPlayInfo"    # Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    .prologue
    const/16 v10, 0xa

    .line 383
    :try_start_0
    iget-object v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->vvtracker_db:Lcn/com/iresearch/mvideotracker/db/FinalDb;

    .line 384
    const-class v5, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    invoke-virtual {v4, v5}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 385
    .local v3, "videoPlayInfos":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/VideoPlayInfo;>;"
    const/4 v2, 0x0

    .line 386
    .local v2, "isHave":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 393
    if-nez v2, :cond_4

    .line 394
    const-string v4, "IRVideo"

    const-string/jumbo v5, "\u4fdd\u5b58\u89c6\u9891\u6570\u636e"

    invoke-static {v4, v5}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v10, :cond_1

    .line 396
    const/16 v4, 0xa

    .line 397
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 396
    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 398
    const-string v4, "IRVideo"

    .line 399
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u6570\u636e\u5e93\u4e2d\u6570\u636e\u592a\u591a\u79fb\u9664\u591a\u4f59\u6570\u636e\u6570\u76ee:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 398
    invoke-static {v4, v5}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 404
    :cond_1
    const-string v4, "IRVideo"

    invoke-virtual {p1}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcn/com/iresearch/mvideotracker/IRVideo;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->setUid(Ljava/lang/String;)V

    .line 406
    iget-object v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->vvtracker_db:Lcn/com/iresearch/mvideotracker/db/FinalDb;

    invoke-virtual {v4, p1}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->save(Ljava/lang/Object;)V

    .line 415
    .end local v2    # "isHave":Z
    .end local v3    # "videoPlayInfos":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/VideoPlayInfo;>;"
    :goto_2
    return-void

    .line 386
    .restart local v2    # "isHave":Z
    .restart local v3    # "videoPlayInfos":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/VideoPlayInfo;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    .line 387
    .local v1, "info":Lcn/com/iresearch/mvideotracker/VideoPlayInfo;
    invoke-virtual {p1}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->getVideoID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->getVideoID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 388
    invoke-virtual {p1}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->getLastActionTime()J

    move-result-wide v6

    .line 389
    invoke-virtual {v1}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->getLastActionTime()J

    move-result-wide v8

    .line 388
    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 390
    const/4 v2, 0x1

    goto :goto_0

    .line 400
    .end local v1    # "info":Lcn/com/iresearch/mvideotracker/VideoPlayInfo;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    .line 401
    .restart local v1    # "info":Lcn/com/iresearch/mvideotracker/VideoPlayInfo;
    invoke-direct {p0, v1}, Lcn/com/iresearch/mvideotracker/IRVideo;->deleteVideoPlayInfo(Lcn/com/iresearch/mvideotracker/VideoPlayInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 410
    .end local v1    # "info":Lcn/com/iresearch/mvideotracker/VideoPlayInfo;
    .end local v2    # "isHave":Z
    .end local v3    # "videoPlayInfos":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/VideoPlayInfo;>;"
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "IRVideo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u4fdd\u5b58\u89c6\u9891\u6570\u636e\u5230\u6570\u636e\u5e93\u5f02\u5e38"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 408
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "isHave":Z
    .restart local v3    # "videoPlayInfos":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/VideoPlayInfo;>;"
    :cond_4
    :try_start_1
    invoke-direct {p0, p1}, Lcn/com/iresearch/mvideotracker/IRVideo;->updateVideoPlayInfo(Lcn/com/iresearch/mvideotracker/VideoPlayInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private updateVideoPlayInfo(Lcn/com/iresearch/mvideotracker/VideoPlayInfo;)V
    .locals 6
    .param p1, "videoPlayInfo"    # Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    .prologue
    .line 424
    if-nez p1, :cond_0

    .line 438
    :goto_0
    return-void

    .line 427
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->vvtracker_db:Lcn/com/iresearch/mvideotracker/db/FinalDb;

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "videoID=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->getVideoID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 430
    const-string v3, " and lastActionTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 431
    invoke-virtual {p1}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->getPreActionTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 429
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 427
    invoke-virtual {v1, p1, v2}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->update(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IRVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u66f4\u65b0\u89c6\u9891\u6570\u636e\u5f02\u5e38"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clearVideoPlayInfo()V
    .locals 2

    .prologue
    .line 480
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/com/iresearch/mvideotracker/IRVideo$1;

    invoke-direct {v1, p0}, Lcn/com/iresearch/mvideotracker/IRVideo$1;-><init>(Lcn/com/iresearch/mvideotracker/IRVideo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 500
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 501
    return-void
.end method

.method public getCustomVal()Ljava/lang/String;
    .locals 2

    .prologue
    .line 512
    const-string v0, ""

    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->customVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->customVal:Ljava/lang/String;

    .line 515
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->context:Landroid/content/Context;

    const-string/jumbo v1, "vv_custom"

    invoke-static {v0, v1}, Lcn/com/iresearch/mvideotracker/VVUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUaid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 504
    const-string v0, ""

    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->uaid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->uaid:Ljava/lang/String;

    .line 507
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->context:Landroid/content/Context;

    const-string/jumbo v1, "vv_uaid"

    invoke-static {v0, v1}, Lcn/com/iresearch/mvideotracker/VVUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 520
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 521
    .local v0, "version":I
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 522
    const-string v1, ""

    .line 524
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->context:Landroid/content/Context;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcn/com/iresearch/mapptracker/util/DataProvider;->getVVUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uaid"    # Ljava/lang/String;
    .param p2, "customVal"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string v0, "IRVideo"

    const-string/jumbo v1, "\u521d\u59cb\u5316\u5f00\u59cb"

    invoke-static {v0, v1}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->uaid:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->customVal:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->context:Landroid/content/Context;

    const-string/jumbo v1, "vv_uaid"

    invoke-static {v0, v1, p1}, Lcn/com/iresearch/mvideotracker/VVUtil;->saveSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->context:Landroid/content/Context;

    const-string/jumbo v1, "vv_custom"

    invoke-static {v0, v1, p2}, Lcn/com/iresearch/mvideotracker/VVUtil;->saveSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "IRVideo"

    const-string/jumbo v1, "\u521d\u59cb\u5316\u7ed3\u675f"

    invoke-static {v0, v1}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public newVideoPlay(Ljava/lang/String;JLjava/lang/Boolean;)V
    .locals 8
    .param p1, "videoID"    # Ljava/lang/String;
    .param p2, "videoLength"    # J
    .param p4, "isPlay"    # Ljava/lang/Boolean;

    .prologue
    .line 113
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcn/com/iresearch/mvideotracker/VVThread;

    sget-object v1, Lcn/com/iresearch/mvideotracker/IRVideo;->irVideo:Lcn/com/iresearch/mvideotracker/IRVideo;

    const/4 v2, 0x0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    .line 114
    invoke-direct/range {v0 .. v6}, Lcn/com/iresearch/mvideotracker/VVThread;-><init>(Lcn/com/iresearch/mvideotracker/IRVideo;ILjava/lang/String;JLjava/lang/Boolean;)V

    .line 113
    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 114
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 115
    return-void
.end method

.method public newVideoPlayThread(Ljava/lang/String;JLjava/lang/Boolean;)V
    .locals 6
    .param p1, "videoID"    # Ljava/lang/String;
    .param p2, "videoLength"    # J
    .param p4, "isPlay"    # Ljava/lang/Boolean;

    .prologue
    .line 119
    sget-object v2, Lcn/com/iresearch/mvideotracker/VVThread;->lock:[B

    monitor-enter v2

    .line 121
    :try_start_0
    const-string v1, ""

    invoke-virtual {p0}, Lcn/com/iresearch/mvideotracker/IRVideo;->getUaid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "IRVideo"

    const-string/jumbo v3, "\u672a\u521d\u59cb\u5316!"

    invoke-static {v1, v3}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :goto_0
    return-void

    .line 125
    :cond_0
    :try_start_2
    const-string v1, "IRVideo"

    const-string/jumbo v3, "\u521b\u5efa\u89c6\u9891\u6570\u636estart"

    invoke-static {v1, v3}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v1, 0x0

    iput v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->pauseCount:I

    .line 127
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->playTime:J

    .line 128
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->lastActionTime:J

    .line 129
    iget-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->lastActionTime:J

    iput-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->preActionTime:J

    .line 130
    new-instance v1, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    invoke-direct {v1}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;-><init>()V

    iput-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    .line 131
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    invoke-virtual {v1, p1}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->setVideoID(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    iget v3, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->pauseCount:I

    invoke-virtual {v1, v3}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->setPauseCount(I)V

    .line 133
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    iget-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->playTime:J

    invoke-virtual {v1, v4, v5}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->setPlayTime(J)V

    .line 134
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    iget-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->lastActionTime:J

    invoke-virtual {v1, v4, v5}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->setLastActionTime(J)V

    .line 135
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    iget v3, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->heartTimes:I

    invoke-virtual {v1, v3}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->setHeartTime(I)V

    .line 136
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    invoke-virtual {v1, p2, p3}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->setVideoLength(J)V

    .line 137
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    const-string v3, "init"

    invoke-virtual {v1, v3}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->setAction(Ljava/lang/String;)V

    .line 138
    iget-boolean v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->sendHistoryInfoStart:Z

    if-nez v1, :cond_1

    .line 139
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->sendHistoryInfoStart:Z

    .line 140
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->mActionHandler:Landroid/os/Handler;

    new-instance v3, Lcn/com/iresearch/mvideotracker/VVThread;

    sget-object v4, Lcn/com/iresearch/mvideotracker/IRVideo;->irVideo:Lcn/com/iresearch/mvideotracker/IRVideo;

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lcn/com/iresearch/mvideotracker/VVThread;-><init>(Lcn/com/iresearch/mvideotracker/IRVideo;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    :cond_1
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    invoke-direct {p0, v1}, Lcn/com/iresearch/mvideotracker/IRVideo;->saveVideoPlayInfo(Lcn/com/iresearch/mvideotracker/VideoPlayInfo;)V

    .line 143
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    invoke-virtual {p0}, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlay()V

    .line 146
    :cond_2
    const-string v1, "IRVideo"

    const-string/jumbo v3, "\u521b\u5efa\u89c6\u9891\u6570\u636eend"

    invoke-static {v1, v3}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :goto_1
    :try_start_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "IRVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u521b\u5efa\u89c6\u9891\u6570\u636e\u5f02\u5e38"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public sendAVideoInfo(Ljava/lang/String;)V
    .locals 5
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 324
    :try_start_0
    const-string v2, "IR_VV"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "A\u70b9\u6570\u636e\u53d1\u9001,"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->context:Landroid/content/Context;

    invoke-static {v2, p1}, Lcn/com/iresearch/mvideotracker/VVUtil;->urlGet(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 326
    .local v1, "status":I
    if-nez v1, :cond_0

    .line 327
    const-string v2, "IR_VV"

    const-string v3, "A\u70b9\u6570\u636e\u53d1\u9001\u5931\u8d25\uff01"

    invoke-static {v2, v3}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .end local v1    # "status":I
    :goto_0
    return-void

    .line 329
    .restart local v1    # "status":I
    :cond_0
    const-string v2, "IR_VV"

    const-string v3, "A\u70b9\u6570\u636e\u53d1\u9001\u6210\u529f\uff01"

    invoke-static {v2, v3}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    .end local v1    # "status":I
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IRVideo"

    const-string v3, "A\u70b9\u6570\u636e\u53d1\u9001\u5f02\u5e38\uff01"

    invoke-static {v2, v3}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendBVideoInfo(Lcn/com/iresearch/mvideotracker/VideoPlayInfo;)V
    .locals 12
    .param p1, "videoPlayInfo"    # Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    .prologue
    .line 344
    const/4 v1, 0x0

    .line 345
    .local v1, "flag":Z
    :try_start_0
    iget-object v6, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->vvtracker_db:Lcn/com/iresearch/mvideotracker/db/FinalDb;

    .line 346
    const-class v7, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    invoke-virtual {v6, v7}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 347
    .local v5, "videoPlayInfos":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/VideoPlayInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 353
    if-nez v1, :cond_1

    .line 354
    const-string v6, "IR_VV"

    const-string v7, "B\u70b9\u6570\u636e\u5df2\u7ecf\u7531C\u70b9\u6570\u636e\u5df2\u7ecf\u53d1\u9001\u8fc7\u4e86"

    invoke-static {v6, v7}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_1
    if-eqz v1, :cond_2

    .line 357
    iget-object v6, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->context:Landroid/content/Context;

    .line 358
    const-string v7, "B-0-0"

    .line 357
    invoke-static {v6, p1, v7}, Lcn/com/iresearch/mvideotracker/VVUtil;->getUrl(Landroid/content/Context;Lcn/com/iresearch/mvideotracker/VideoPlayInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 360
    .local v4, "urlString":Ljava/lang/String;
    const-string v6, "IR_VV"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "B\u70b9\u6570\u636e\u53d1\u9001,"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v6, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->context:Landroid/content/Context;

    invoke-static {v6, v4}, Lcn/com/iresearch/mvideotracker/VVUtil;->urlGet(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 362
    .local v3, "status":I
    if-nez v3, :cond_4

    .line 363
    const-string v6, "IR_VV"

    const-string v7, "B\u70b9\u6570\u636e\u53d1\u9001\u5931\u8d25\uff01"

    invoke-static {v6, v7}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .end local v3    # "status":I
    .end local v4    # "urlString":Ljava/lang/String;
    .end local v5    # "videoPlayInfos":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/VideoPlayInfo;>;"
    :cond_2
    :goto_1
    return-void

    .line 347
    .restart local v5    # "videoPlayInfos":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/VideoPlayInfo;>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    .line 348
    .local v2, "info":Lcn/com/iresearch/mvideotracker/VideoPlayInfo;
    invoke-virtual {v2}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->getLastActionTime()J

    move-result-wide v8

    invoke-virtual {p1}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->getLastActionTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 349
    const-string v7, "IR_VV"

    const-string v8, "B\u70b9\u6b63\u5e38\u53d1\u9001"

    invoke-static {v7, v8}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/4 v1, 0x1

    goto :goto_0

    .line 365
    .end local v2    # "info":Lcn/com/iresearch/mvideotracker/VideoPlayInfo;
    .restart local v3    # "status":I
    .restart local v4    # "urlString":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1}, Lcn/com/iresearch/mvideotracker/IRVideo;->deleteVideoPlayInfoByWhere(Lcn/com/iresearch/mvideotracker/VideoPlayInfo;)V

    .line 366
    const-string v6, "IR_VV"

    const-string v7, "B\u70b9\u6570\u636e\u53d1\u9001\u6210\u529f\uff01"

    invoke-static {v6, v7}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 369
    .end local v3    # "status":I
    .end local v4    # "urlString":Ljava/lang/String;
    .end local v5    # "videoPlayInfos":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/VideoPlayInfo;>;"
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "IRVideo"

    const-string v7, "B\u70b9\u6570\u636e\u53d1\u9001\u5f02\u5e38\uff01"

    invoke-static {v6, v7}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public sendHistoryInfo()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 280
    :try_start_0
    iget-object v5, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->context:Landroid/content/Context;

    invoke-static {v5}, Lcn/com/iresearch/mvideotracker/VVUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 281
    const-string v5, "IRVideo"

    const-string/jumbo v6, "\u7f51\u7edc\u4e0d\u7545\u901a\uff01"

    invoke-static {v5, v6}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->sendHistoryInfoStart:Z

    .line 317
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v5, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->vvtracker_db:Lcn/com/iresearch/mvideotracker/db/FinalDb;

    .line 286
    const-class v6, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    invoke-virtual {v5, v6}, Lcn/com/iresearch/mvideotracker/db/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 287
    .local v4, "videoPlayInfos":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/VideoPlayInfo;>;"
    const-string v5, "IR_VV"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "C\u70b9\u9057\u7559\u6570\u636e\u6570\u76ee\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-nez v6, :cond_2

    .line 316
    .end local v4    # "videoPlayInfos":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/VideoPlayInfo;>;"
    :goto_2
    iput-boolean v9, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->sendHistoryInfoStart:Z

    goto :goto_0

    .line 288
    .restart local v4    # "videoPlayInfos":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/VideoPlayInfo;>;"
    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 290
    .local v1, "info":Lcn/com/iresearch/mvideotracker/VideoPlayInfo;
    :try_start_2
    const-string v6, "end"

    invoke-virtual {v1}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 291
    const-string v6, "IR_VV"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "C\u70b9\u6570\u636e\u53d1\u9001\u5f02\u5e38,\u9057\u7559\u6570\u636e\u6570\u76ee\u51cf1\uff1aaction="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v1}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 291
    invoke-static {v6, v7}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "IRVideo"

    const-string/jumbo v7, "\u53d1\u9001\u9057\u7559\u6570\u636e\u53d1\u9001\u5f02\u5e38\uff01"

    invoke-static {v6, v7}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "info":Lcn/com/iresearch/mvideotracker/VideoPlayInfo;
    .end local v4    # "videoPlayInfos":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/VideoPlayInfo;>;"
    :catch_1
    move-exception v0

    .line 313
    .restart local v0    # "e":Ljava/lang/Exception;
    iput-boolean v9, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->sendHistoryInfoStart:Z

    .line 314
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 295
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "info":Lcn/com/iresearch/mvideotracker/VideoPlayInfo;
    .restart local v4    # "videoPlayInfos":Ljava/util/List;, "Ljava/util/List<Lcn/com/iresearch/mvideotracker/VideoPlayInfo;>;"
    :cond_3
    :try_start_4
    const-string v6, "end"

    invoke-virtual {v1}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 296
    iget-object v6, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->context:Landroid/content/Context;

    .line 297
    const-string v7, "C-0-0"

    .line 296
    invoke-static {v6, v1, v7}, Lcn/com/iresearch/mvideotracker/VVUtil;->getUrl(Landroid/content/Context;Lcn/com/iresearch/mvideotracker/VideoPlayInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "urlString":Ljava/lang/String;
    const-string v6, "IR_VV"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "C\u70b9\u6570\u636e\u53d1\u9001\uff1a"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v6, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->context:Landroid/content/Context;

    invoke-static {v6, v3}, Lcn/com/iresearch/mvideotracker/VVUtil;->urlGet(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 300
    .local v2, "status":I
    const/4 v6, 0x1

    if-ne v2, v6, :cond_4

    .line 301
    invoke-direct {p0, v1}, Lcn/com/iresearch/mvideotracker/IRVideo;->deleteVideoPlayInfo(Lcn/com/iresearch/mvideotracker/VideoPlayInfo;)V

    .line 302
    const-string v6, "IR_VV"

    const-string v7, "C\u70b9\u6570\u636e\u53d1\u9001\u6210\u529f\uff01"

    invoke-static {v6, v7}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 303
    :cond_4
    if-nez v2, :cond_1

    .line 304
    const-string v6, "IR_VV"

    const-string v7, "C\u70b9\u6570\u636e\u53d1\u9001\u5931\u8d25\uff01"

    invoke-static {v6, v7}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1
.end method

.method public videoEnd()V
    .locals 4

    .prologue
    .line 234
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/com/iresearch/mvideotracker/VVThread;

    sget-object v2, Lcn/com/iresearch/mvideotracker/IRVideo;->irVideo:Lcn/com/iresearch/mvideotracker/IRVideo;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcn/com/iresearch/mvideotracker/VVThread;-><init>(Lcn/com/iresearch/mvideotracker/IRVideo;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 235
    return-void
.end method

.method public videoEndThread()V
    .locals 10

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "action":Ljava/lang/String;
    sget-object v3, Lcn/com/iresearch/mvideotracker/VVThread;->lock:[B

    monitor-enter v3

    .line 241
    :try_start_0
    const-string v2, "IRVideo"

    const-string/jumbo v4, "videoEnding"

    invoke-static {v2, v4}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 243
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :goto_0
    return-void

    .line 245
    :cond_0
    :try_start_2
    const-string v2, "IRVideo"

    const-string/jumbo v4, "videoEnding in first breakpoint"

    invoke-static {v2, v4}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->lastActionTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    .line 247
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    invoke-direct {p0, v2}, Lcn/com/iresearch/mvideotracker/IRVideo;->deleteVideoPlayInfoByWhere(Lcn/com/iresearch/mvideotracker/VideoPlayInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 250
    :cond_1
    :try_start_4
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    invoke-virtual {v2}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 251
    const-string v2, "pause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "play"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 252
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 254
    :cond_2
    :try_start_6
    const-string v2, "IRVideo"

    const-string/jumbo v4, "videoEnding in second breakpoint"

    invoke-static {v2, v4}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v2, "play"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 256
    iget-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->playTime:J

    invoke-static {}, Lcn/com/iresearch/mvideotracker/VVUtil;->getUnixTimeStamp()J

    move-result-wide v6

    iget-wide v8, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->lastActionTime:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->playTime:J

    .line 257
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    iget-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->playTime:J

    invoke-virtual {v2, v4, v5}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->setPlayTime(J)V

    .line 259
    :cond_3
    invoke-static {}, Lcn/com/iresearch/mvideotracker/VVUtil;->getUnixTimeStamp()J

    move-result-wide v4

    iput-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->lastActionTime:J

    .line 260
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    iget-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->lastActionTime:J

    invoke-virtual {v2, v4, v5}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->setLastActionTime(J)V

    .line 261
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    iget-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->preActionTime:J

    invoke-virtual {v2, v4, v5}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->setPreActionTime(J)V

    .line 262
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    const-string v4, "end"

    invoke-virtual {v2, v4}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->setAction(Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    invoke-direct {p0, v2}, Lcn/com/iresearch/mvideotracker/IRVideo;->updateVideoPlayInfo(Lcn/com/iresearch/mvideotracker/VideoPlayInfo;)V

    .line 264
    iget-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->lastActionTime:J

    iput-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->preActionTime:J

    .line 265
    iget-object v2, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->mActionHandler:Landroid/os/Handler;

    new-instance v4, Lcn/com/iresearch/mvideotracker/VVThread;

    sget-object v5, Lcn/com/iresearch/mvideotracker/IRVideo;->irVideo:Lcn/com/iresearch/mvideotracker/IRVideo;

    const/4 v6, 0x6

    .line 266
    iget-object v7, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    invoke-direct {v4, v5, v6, v7}, Lcn/com/iresearch/mvideotracker/VVThread;-><init>(Lcn/com/iresearch/mvideotracker/IRVideo;ILcn/com/iresearch/mvideotracker/VideoPlayInfo;)V

    .line 265
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 267
    const-string v2, "IRVideo"

    const-string/jumbo v4, "videoEnded"

    invoke-static {v2, v4}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 239
    :goto_1
    :try_start_7
    monitor-exit v3

    goto/16 :goto_0

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "IRVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u66f4\u65b0\u89c6\u9891B\u70b9\u6570\u636e\u5f02\u5e38"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public videoPause()V
    .locals 4

    .prologue
    .line 196
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/com/iresearch/mvideotracker/VVThread;

    sget-object v2, Lcn/com/iresearch/mvideotracker/IRVideo;->irVideo:Lcn/com/iresearch/mvideotracker/IRVideo;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcn/com/iresearch/mvideotracker/VVThread;-><init>(Lcn/com/iresearch/mvideotracker/IRVideo;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 197
    return-void
.end method

.method public videoPauseThread()V
    .locals 10

    .prologue
    .line 200
    sget-object v2, Lcn/com/iresearch/mvideotracker/VVThread;->lock:[B

    monitor-enter v2

    .line 202
    :try_start_0
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 203
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    :goto_0
    return-void

    .line 205
    :cond_0
    :try_start_2
    const-string v1, "play"

    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    invoke-virtual {v3}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 206
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 208
    :cond_1
    :try_start_4
    iget-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->lastActionTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 209
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    invoke-direct {p0, v1}, Lcn/com/iresearch/mvideotracker/IRVideo;->deleteVideoPlayInfoByWhere(Lcn/com/iresearch/mvideotracker/VideoPlayInfo;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 210
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 212
    :cond_2
    :try_start_6
    iget-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->playTime:J

    invoke-static {}, Lcn/com/iresearch/mvideotracker/VVUtil;->getUnixTimeStamp()J

    move-result-wide v6

    iget-wide v8, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->lastActionTime:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->playTime:J

    .line 213
    invoke-static {}, Lcn/com/iresearch/mvideotracker/VVUtil;->getUnixTimeStamp()J

    move-result-wide v4

    iput-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->lastActionTime:J

    .line 214
    iget v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->pauseCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->pauseCount:I

    .line 215
    const-string v1, "IR_VV"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u6682\u505c\u6b21\u6570\u662f"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->pauseCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    const-string v3, "pause"

    invoke-virtual {v1, v3}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->setAction(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    iget-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->lastActionTime:J

    invoke-virtual {v1, v4, v5}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->setLastActionTime(J)V

    .line 218
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    iget-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->preActionTime:J

    invoke-virtual {v1, v4, v5}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->setPreActionTime(J)V

    .line 219
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    iget-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->playTime:J

    invoke-virtual {v1, v4, v5}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->setPlayTime(J)V

    .line 220
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    iget v3, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->pauseCount:I

    invoke-virtual {v1, v3}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->setPauseCount(I)V

    .line 221
    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    invoke-direct {p0, v1}, Lcn/com/iresearch/mvideotracker/IRVideo;->updateVideoPlayInfo(Lcn/com/iresearch/mvideotracker/VideoPlayInfo;)V

    .line 222
    iget-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->lastActionTime:J

    iput-wide v4, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->preActionTime:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 200
    :goto_1
    :try_start_7
    monitor-exit v2

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IRVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u66f4\u65b0\u89c6\u9891\u6682\u505c\u6570\u636e\u5f02\u5e38"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public videoPlay()V
    .locals 4

    .prologue
    .line 158
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/com/iresearch/mvideotracker/VVThread;

    sget-object v2, Lcn/com/iresearch/mvideotracker/IRVideo;->irVideo:Lcn/com/iresearch/mvideotracker/IRVideo;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcn/com/iresearch/mvideotracker/VVThread;-><init>(Lcn/com/iresearch/mvideotracker/IRVideo;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    return-void
.end method

.method public videoPlayThread()V
    .locals 8

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "action":Ljava/lang/String;
    sget-object v4, Lcn/com/iresearch/mvideotracker/VVThread;->lock:[B

    monitor-enter v4

    .line 165
    :try_start_0
    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 166
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :goto_0
    return-void

    .line 168
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    invoke-virtual {v3}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string v3, "pause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "init"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 170
    :try_start_3
    monitor-exit v4

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 172
    :cond_1
    :try_start_4
    invoke-static {}, Lcn/com/iresearch/mvideotracker/VVUtil;->getUnixTimeStamp()J

    move-result-wide v6

    iput-wide v6, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->lastActionTime:J

    .line 173
    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    const-string v5, "play"

    invoke-virtual {v3, v5}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->setAction(Ljava/lang/String;)V

    .line 174
    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    iget-wide v6, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->lastActionTime:J

    invoke-virtual {v3, v6, v7}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->setLastActionTime(J)V

    .line 175
    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    iget-wide v6, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->preActionTime:J

    invoke-virtual {v3, v6, v7}, Lcn/com/iresearch/mvideotracker/VideoPlayInfo;->setPreActionTime(J)V

    .line 176
    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    invoke-direct {p0, v3}, Lcn/com/iresearch/mvideotracker/IRVideo;->updateVideoPlayInfo(Lcn/com/iresearch/mvideotracker/VideoPlayInfo;)V

    .line 177
    iget-object v3, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->context:Landroid/content/Context;

    iget-object v5, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->videoPlayInfo:Lcn/com/iresearch/mvideotracker/VideoPlayInfo;

    .line 178
    const-string v6, "A-0-0"

    .line 177
    invoke-static {v3, v5, v6}, Lcn/com/iresearch/mvideotracker/VVUtil;->getUrl(Landroid/content/Context;Lcn/com/iresearch/mvideotracker/VideoPlayInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "urlString":Ljava/lang/String;
    const-string v3, "init"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 180
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 181
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcn/com/iresearch/mvideotracker/VVThread;

    sget-object v6, Lcn/com/iresearch/mvideotracker/IRVideo;->irVideo:Lcn/com/iresearch/mvideotracker/IRVideo;

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v2}, Lcn/com/iresearch/mvideotracker/VVThread;-><init>(Lcn/com/iresearch/mvideotracker/IRVideo;ILjava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 182
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 184
    :cond_2
    iget-wide v6, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->lastActionTime:J

    iput-wide v6, p0, Lcn/com/iresearch/mvideotracker/IRVideo;->preActionTime:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 163
    .end local v2    # "urlString":Ljava/lang/String;
    :goto_1
    :try_start_5
    monitor-exit v4

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "IRVideo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u5b58\u653e\u89c6\u9891A\u70b9\u6570\u636e\u5230\u6570\u636e\u5e93\u5f02\u5e38"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/com/iresearch/mvideotracker/VVUtil;->vv_Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

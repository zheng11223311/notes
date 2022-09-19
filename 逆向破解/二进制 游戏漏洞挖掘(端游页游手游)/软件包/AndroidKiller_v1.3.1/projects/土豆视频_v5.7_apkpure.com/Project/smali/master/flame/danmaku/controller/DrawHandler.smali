.class public Lmaster/flame/danmaku/controller/DrawHandler;
.super Landroid/os/Handler;
.source "DrawHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/controller/DrawHandler$Callback;
    }
.end annotation


# static fields
.field private static final CLEAR_DANMAKUS_ON_SCREEN:I = 0xd

.field private static final HIDE_DANMAKUS:I = 0x9

.field private static final INDEFINITE_TIME:J = 0x989680L

.field private static final MAX_RECORD_SIZE:I = 0x1f4

.field private static final NOTIFY_DISP_SIZE_CHANGED:I = 0xa

.field private static final NOTIFY_RENDERING:I = 0xb

.field private static final PAUSE:I = 0x7

.field public static final PREPARE:I = 0x5

.field private static final QUIT:I = 0x6

.field public static final RESUME:I = 0x3

.field public static final SEEK_POS:I = 0x4

.field private static final SHOW_DANMAKUS:I = 0x8

.field public static final START:I = 0x1

.field public static final UPDATE:I = 0x2

.field private static final UPDATE_WHEN_PAUSED:I = 0xc


# instance fields
.field public drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

.field private mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

.field private mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field private mCordonTime:J

.field private mCordonTime2:J

.field private mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

.field private mDanmakusVisible:Z

.field private mDesireSeekingTime:J

.field private mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

.field private mDrawTimes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameUpdateRate:J

.field private mIdleSleep:Z

.field private mInSeekingAction:Z

.field private mInSyncAction:Z

.field private mInWaitingState:Z

.field private mLastDeltaTime:J

.field private mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

.field private mReady:Z

.field private mRemainingTime:J

.field private final mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

.field private mThread:Lmaster/flame/danmaku/controller/UpdateThread;

.field private mThresholdTime:J

.field private mTimeBase:J

.field private final mUpdateInNewThread:Z

.field private pausedPosition:J

.field private quitFlag:Z

.field private timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lmaster/flame/danmaku/controller/IDanmakuViewController;Z)V
    .locals 6
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "view"    # Lmaster/flame/danmaku/controller/IDanmakuViewController;
    .param p3, "danmakuVisibile"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 137
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->pausedPosition:J

    .line 83
    iput-boolean v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    .line 91
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .line 99
    iput-boolean v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    .line 103
    new-instance v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    .line 107
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    .line 113
    const-wide/16 v4, 0x1e

    iput-wide v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime:J

    .line 115
    const-wide/16 v4, 0x3c

    iput-wide v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime2:J

    .line 117
    const-wide/16 v4, 0x10

    iput-wide v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    .line 138
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mUpdateInNewThread:Z

    .line 139
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->isProblemBoxDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mIdleSleep:Z

    .line 140
    invoke-direct {p0, p2}, Lmaster/flame/danmaku/controller/DrawHandler;->bindView(Lmaster/flame/danmaku/controller/IDanmakuViewController;)V

    .line 141
    if-eqz p3, :cond_2

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->showDanmakus(Ljava/lang/Long;)V

    .line 146
    :goto_1
    iput-boolean p3, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    .line 147
    return-void

    :cond_1
    move v0, v2

    .line 138
    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p0, v2}, Lmaster/flame/danmaku/controller/DrawHandler;->hideDanmakus(Z)J

    goto :goto_1
.end method

.method static synthetic access$0(Lmaster/flame/danmaku/controller/DrawHandler;Z)V
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mReady:Z

    return-void
.end method

.method static synthetic access$1(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/controller/DrawHandler$Callback;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    return-object v0
.end method

.method static synthetic access$10(Lmaster/flame/danmaku/controller/DrawHandler;J)V
    .locals 1

    .prologue
    .line 622
    invoke-direct {p0, p1, p2}, Lmaster/flame/danmaku/controller/DrawHandler;->waitRendering(J)V

    return-void
.end method

.method static synthetic access$11(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    return-object v0
.end method

.method static synthetic access$12(Lmaster/flame/danmaku/controller/DrawHandler;)Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mIdleSleep:Z

    return v0
.end method

.method static synthetic access$13(Lmaster/flame/danmaku/controller/DrawHandler;)V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->notifyRendering()V

    return-void
.end method

.method static synthetic access$14(Lmaster/flame/danmaku/controller/DrawHandler;)V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->initRenderingConfigs()V

    return-void
.end method

.method static synthetic access$15(Lmaster/flame/danmaku/controller/DrawHandler;)V
    .locals 0

    .prologue
    .line 594
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->redrawIfNeeded()V

    return-void
.end method

.method static synthetic access$2(Lmaster/flame/danmaku/controller/DrawHandler;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    return v0
.end method

.method static synthetic access$3(Lmaster/flame/danmaku/controller/DrawHandler;)J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    return-wide v0
.end method

.method static synthetic access$4(Lmaster/flame/danmaku/controller/DrawHandler;J)J
    .locals 3

    .prologue
    .line 414
    invoke-direct {p0, p1, p2}, Lmaster/flame/danmaku/controller/DrawHandler;->syncTimer(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/controller/IDanmakuViewController;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    return-object v0
.end method

.method static synthetic access$6(Lmaster/flame/danmaku/controller/DrawHandler;)J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime2:J

    return-wide v0
.end method

.method static synthetic access$7(Lmaster/flame/danmaku/controller/DrawHandler;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    return-object v0
.end method

.method static synthetic access$8(Lmaster/flame/danmaku/controller/DrawHandler;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$9(Lmaster/flame/danmaku/controller/DrawHandler;)Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    return v0
.end method

.method private bindView(Lmaster/flame/danmaku/controller/IDanmakuViewController;)V
    .locals 0
    .param p1, "view"    # Lmaster/flame/danmaku/controller/IDanmakuViewController;

    .prologue
    .line 150
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    .line 151
    return-void
.end method

.method private createDrawTask(ZLmaster/flame/danmaku/danmaku/model/DanmakuTimer;Landroid/content/Context;IIZLmaster/flame/danmaku/controller/IDrawTask$TaskListener;)Lmaster/flame/danmaku/controller/IDrawTask;
    .locals 6
    .param p1, "useDrwaingCache"    # Z
    .param p2, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "isHardwareAccelerated"    # Z
    .param p7, "taskListener"    # Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    .prologue
    .line 510
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->getDisplayer()Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    move-result-object v2

    iput-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    .line 511
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v2, p4, p5}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setSize(II)V

    .line 512
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 513
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 514
    iget v5, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 513
    invoke-virtual {v2, v3, v4, v5}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setDensities(FIF)V

    .line 515
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget v3, v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->scaleTextSize:F

    invoke-virtual {v2, v3}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->resetSlopPixel(F)V

    .line 516
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v2, p6}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setHardwareAccelerated(Z)V

    .line 517
    if-eqz p1, :cond_0

    .line 518
    new-instance v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    const/high16 v3, 0x100000

    invoke-static {p3}, Lmaster/flame/danmaku/danmaku/util/AndroidUtils;->getMemoryClass(Landroid/content/Context;)I

    move-result v4

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    invoke-direct {v1, p2, v2, p7, v3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;-><init>(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;I)V

    .line 520
    .local v1, "task":Lmaster/flame/danmaku/controller/IDrawTask;
    :goto_0
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    invoke-interface {v1, v2}, Lmaster/flame/danmaku/controller/IDrawTask;->setParser(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;)V

    .line 521
    invoke-interface {v1}, Lmaster/flame/danmaku/controller/IDrawTask;->prepare()V

    .line 522
    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmaster/flame/danmaku/controller/DrawHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 523
    return-object v1

    .line 519
    .end local v1    # "task":Lmaster/flame/danmaku/controller/IDrawTask;
    :cond_0
    new-instance v1, Lmaster/flame/danmaku/controller/DrawTask;

    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-direct {v1, p2, v2, p7}, Lmaster/flame/danmaku/controller/DrawTask;-><init>(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;)V

    goto :goto_0
.end method

.method private declared-synchronized getAverageRenderingTime()J
    .locals 8

    .prologue
    .line 654
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 655
    .local v2, "frames":I
    if-gtz v2, :cond_0

    .line 656
    const-wide/16 v4, 0x0

    .line 658
    :goto_0
    monitor-exit p0

    return-wide v4

    .line 657
    :cond_0
    :try_start_1
    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 658
    .local v0, "dtime":J
    int-to-long v4, v2

    div-long v4, v0, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 654
    .end local v0    # "dtime":J
    .end local v2    # "frames":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private initRenderingConfigs()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xf

    const/high16 v6, 0x40200000    # 2.5f

    .line 459
    const-wide/16 v0, 0x10

    .line 460
    .local v0, "averageFrameConsumingTime":J
    const-wide/16 v2, 0x21

    long-to-float v4, v0

    mul-float/2addr v4, v6

    float-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime:J

    .line 461
    iget-wide v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime:J

    long-to-float v2, v2

    mul-float/2addr v2, v6

    float-to-long v2, v2

    iput-wide v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime2:J

    .line 462
    const-wide/16 v2, 0x10

    div-long v4, v0, v8

    mul-long/2addr v4, v8

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    .line 463
    iget-wide v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mThresholdTime:J

    .line 466
    return-void
.end method

.method private notifyRendering()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 601
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInWaitingState:Z

    if-nez v0, :cond_0

    .line 620
    :goto_0
    return-void

    .line 604
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDrawTask;->requestClear()V

    .line 607
    :cond_1
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mUpdateInNewThread:Z

    if-eqz v0, :cond_2

    .line 608
    monitor-enter p0

    .line 609
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 608
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    monitor-enter v1

    .line 612
    :try_start_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 611
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 619
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInWaitingState:Z

    goto :goto_0

    .line 608
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 611
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 615
    :cond_2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 616
    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 617
    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private prepare(Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 469
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-nez v0, :cond_0

    .line 470
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->isDanmakuDrawingCacheEnabled()Z

    move-result v1

    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .line 471
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->getWidth()I

    move-result v4

    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->getHeight()I

    move-result v5

    .line 472
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->isHardwareAccelerated()Z

    move-result v6

    new-instance v7, Lmaster/flame/danmaku/controller/DrawHandler$3;

    invoke-direct {v7, p0, p1}, Lmaster/flame/danmaku/controller/DrawHandler$3;-><init>(Lmaster/flame/danmaku/controller/DrawHandler;Ljava/lang/Runnable;)V

    move-object v0, p0

    .line 470
    invoke-direct/range {v0 .. v7}, Lmaster/flame/danmaku/controller/DrawHandler;->createDrawTask(ZLmaster/flame/danmaku/danmaku/model/DanmakuTimer;Landroid/content/Context;IIZLmaster/flame/danmaku/controller/IDrawTask$TaskListener;)Lmaster/flame/danmaku/controller/IDrawTask;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    .line 499
    :goto_0
    return-void

    .line 497
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private quitUpdateThread()V
    .locals 4

    .prologue
    .line 321
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mThread:Lmaster/flame/danmaku/controller/UpdateThread;

    if-eqz v2, :cond_0

    .line 322
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mThread:Lmaster/flame/danmaku/controller/UpdateThread;

    .line 323
    .local v1, "thread":Lmaster/flame/danmaku/controller/UpdateThread;
    const/4 v2, 0x0

    iput-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mThread:Lmaster/flame/danmaku/controller/UpdateThread;

    .line 324
    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    monitor-enter v3

    .line 325
    :try_start_0
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 324
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    invoke-virtual {v1}, Lmaster/flame/danmaku/controller/UpdateThread;->quit()V

    .line 329
    :try_start_1
    invoke-virtual {v1}, Lmaster/flame/danmaku/controller/UpdateThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 334
    .end local v1    # "thread":Lmaster/flame/danmaku/controller/UpdateThread;
    :cond_0
    :goto_0
    return-void

    .line 324
    .restart local v1    # "thread":Lmaster/flame/danmaku/controller/UpdateThread;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized recordRenderingTime()V
    .locals 5

    .prologue
    .line 662
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 663
    .local v2, "lastTime":J
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 664
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 665
    .local v0, "frames":I
    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    .line 666
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    const/16 v0, 0x1f4

    .line 669
    :cond_0
    monitor-exit p0

    return-void

    .line 662
    .end local v0    # "frames":I
    .end local v2    # "lastTime":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private redrawIfNeeded()V
    .locals 1

    .prologue
    .line 595
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    if-eqz v0, :cond_0

    .line 596
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 598
    :cond_0
    return-void
.end method

.method private final syncTimer(J)J
    .locals 15
    .param p1, "startMS"    # J

    .prologue
    .line 415
    iget-boolean v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInSeekingAction:Z

    if-nez v10, :cond_0

    iget-boolean v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInSyncAction:Z

    if-eqz v10, :cond_1

    .line 416
    :cond_0
    const-wide/16 v4, 0x0

    .line 449
    :goto_0
    return-wide v4

    .line 418
    :cond_1
    const/4 v10, 0x1

    iput-boolean v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInSyncAction:Z

    .line 419
    const-wide/16 v4, 0x0

    .line 420
    .local v4, "d":J
    iget-wide v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mTimeBase:J

    sub-long v8, p1, v10

    .line 421
    .local v8, "time":J
    iget-boolean v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    if-eqz v10, :cond_2

    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-boolean v10, v10, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    if-nez v10, :cond_2

    iget-boolean v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInWaitingState:Z

    if-eqz v10, :cond_4

    .line 422
    :cond_2
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-virtual {v10, v8, v9}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 423
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRemainingTime:J

    .line 445
    :goto_1
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    if-eqz v10, :cond_3

    .line 446
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    iget-object v11, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-interface {v10, v11}, Lmaster/flame/danmaku/controller/DrawHandler$Callback;->updateTimer(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)V

    .line 448
    :cond_3
    const/4 v10, 0x0

    iput-boolean v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInSyncAction:Z

    goto :goto_0

    .line 425
    :cond_4
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v10, v10, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long v6, v8, v10

    .line 426
    .local v6, "gapTime":J
    iget-wide v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->getAverageRenderingTime()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 427
    .local v2, "averageTime":J
    const-wide/16 v10, 0x7d0

    cmp-long v10, v6, v10

    if-gtz v10, :cond_5

    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-wide v10, v10, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->consumingTime:J

    iget-wide v12, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime:J

    cmp-long v10, v10, v12

    if-gtz v10, :cond_5

    iget-wide v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime:J

    cmp-long v10, v2, v10

    if-lez v10, :cond_6

    .line 428
    :cond_5
    move-wide v4, v6

    .line 429
    const-wide/16 v6, 0x0

    .line 441
    :goto_2
    iput-wide v6, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRemainingTime:J

    .line 442
    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-virtual {v10, v4, v5}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->add(J)J

    goto :goto_1

    .line 431
    :cond_6
    iget-wide v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    div-long v10, v6, v10

    add-long v4, v2, v10

    .line 432
    iget-wide v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 433
    iget-wide v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime:J

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 434
    iget-wide v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mLastDeltaTime:J

    sub-long v0, v4, v10

    .line 435
    .local v0, "a":J
    const-wide/16 v10, 0x3

    cmp-long v10, v0, v10

    if-lez v10, :cond_7

    const-wide/16 v10, 0x8

    cmp-long v10, v0, v10

    if-gez v10, :cond_7

    iget-wide v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mLastDeltaTime:J

    iget-wide v12, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    cmp-long v10, v10, v12

    if-ltz v10, :cond_7

    iget-wide v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mLastDeltaTime:J

    iget-wide v12, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime:J

    cmp-long v10, v10, v12

    if-gtz v10, :cond_7

    .line 436
    iget-wide v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mLastDeltaTime:J

    .line 438
    :cond_7
    sub-long/2addr v6, v4

    .line 439
    iput-wide v4, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mLastDeltaTime:J

    goto :goto_2
.end method

.method private syncTimerIfNeeded()V
    .locals 2

    .prologue
    .line 453
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInWaitingState:Z

    if-eqz v0, :cond_0

    .line 454
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->syncTimer(J)J

    .line 456
    :cond_0
    return-void
.end method

.method private updateInCurrentThread()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    .line 337
    iget-boolean v6, p0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    if-eqz v6, :cond_0

    .line 369
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 341
    .local v4, "startMS":J
    invoke-direct {p0, v4, v5}, Lmaster/flame/danmaku/controller/DrawHandler;->syncTimer(J)J

    move-result-wide v0

    .line 342
    .local v0, "d":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_1

    .line 343
    invoke-virtual {p0, v10}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 344
    const-wide/16 v6, 0x3c

    sub-long/2addr v6, v0

    invoke-virtual {p0, v10, v6, v7}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 347
    :cond_1
    iget-object v6, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    invoke-interface {v6}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->drawDanmakus()J

    move-result-wide v0

    .line 348
    invoke-virtual {p0, v10}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 349
    iget-wide v6, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCordonTime2:J

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    .line 350
    iget-object v6, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-virtual {v6, v0, v1}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->add(J)J

    .line 351
    iget-object v6, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->clear()V

    .line 353
    :cond_2
    iget-boolean v6, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    if-nez v6, :cond_3

    .line 354
    const-wide/32 v6, 0x989680

    invoke-direct {p0, v6, v7}, Lmaster/flame/danmaku/controller/DrawHandler;->waitRendering(J)V

    goto :goto_0

    .line 356
    :cond_3
    iget-object v6, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-boolean v6, v6, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mIdleSleep:Z

    if-eqz v6, :cond_4

    .line 357
    iget-object v6, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-wide v6, v6, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v8, v8, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long v2, v6, v8

    .line 358
    .local v2, "dTime":J
    const-wide/16 v6, 0x1f4

    cmp-long v6, v2, v6

    if-lez v6, :cond_4

    .line 359
    const-wide/16 v6, 0xa

    sub-long v6, v2, v6

    invoke-direct {p0, v6, v7}, Lmaster/flame/danmaku/controller/DrawHandler;->waitRendering(J)V

    goto :goto_0

    .line 364
    .end local v2    # "dTime":J
    :cond_4
    iget-wide v6, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    cmp-long v6, v0, v6

    if-gez v6, :cond_5

    .line 365
    iget-wide v6, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mFrameUpdateRate:J

    sub-long/2addr v6, v0

    invoke-virtual {p0, v10, v6, v7}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 368
    :cond_5
    invoke-virtual {p0, v10}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private updateInNewThread()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mThread:Lmaster/flame/danmaku/controller/UpdateThread;

    if-eqz v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 375
    :cond_0
    new-instance v0, Lmaster/flame/danmaku/controller/DrawHandler$2;

    const-string v1, "DFM Update"

    invoke-direct {v0, p0, v1}, Lmaster/flame/danmaku/controller/DrawHandler$2;-><init>(Lmaster/flame/danmaku/controller/DrawHandler;Ljava/lang/String;)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mThread:Lmaster/flame/danmaku/controller/UpdateThread;

    .line 411
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mThread:Lmaster/flame/danmaku/controller/UpdateThread;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/UpdateThread;->start()V

    goto :goto_0
.end method

.method private waitRendering(J)V
    .locals 9
    .param p1, "dTime"    # J

    .prologue
    const-wide/32 v6, 0x989680

    const/4 v5, 0x2

    const/16 v4, 0xb

    .line 623
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->sysTime:J

    .line 624
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInWaitingState:Z

    .line 625
    iget-boolean v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mUpdateInNewThread:Z

    if-eqz v1, :cond_2

    .line 626
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mThread:Lmaster/flame/danmaku/controller/UpdateThread;

    if-nez v1, :cond_0

    .line 651
    :goto_0
    return-void

    .line 630
    :cond_0
    :try_start_0
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    cmp-long v1, p1, v6

    if-nez v1, :cond_1

    .line 632
    :try_start_1
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 636
    :goto_1
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    .line 630
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 634
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_3
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 642
    :cond_2
    cmp-long v1, p1, v6

    if-nez v1, :cond_3

    .line 643
    invoke-virtual {p0, v4}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 644
    invoke-virtual {p0, v5}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    goto :goto_0

    .line 646
    :cond_3
    invoke-virtual {p0, v4}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 647
    invoke-virtual {p0, v5}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 648
    invoke-virtual {p0, v4, p1, p2}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 1
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 536
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->flags:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    .line 538
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->setTimer(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)V

    .line 539
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/controller/IDrawTask;->addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 540
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 542
    :cond_0
    return-void
.end method

.method public clearDanmakusOnScreen()V
    .locals 1

    .prologue
    .line 719
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 720
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 586
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-nez v0, :cond_0

    .line 587
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    .line 591
    :goto_0
    return-object v0

    .line 588
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setExtraData(Ljava/lang/Object;)V

    .line 589
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-interface {v1, v2}, Lmaster/flame/danmaku/controller/IDrawTask;->draw(Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->set(Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;)V

    .line 590
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->recordRenderingTime()V

    .line 591
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    goto :goto_0
.end method

.method public getConfig()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object v0
.end method

.method public getCurrentTime()J
    .locals 4

    .prologue
    .line 706
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mReady:Z

    if-nez v0, :cond_0

    .line 707
    const-wide/16 v0, 0x0

    .line 715
    :goto_0
    return-wide v0

    .line 709
    :cond_0
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInSeekingAction:Z

    if-eqz v0, :cond_1

    .line 710
    iget-wide v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDesireSeekingTime:J

    goto :goto_0

    .line 712
    :cond_1
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInWaitingState:Z

    if-nez v0, :cond_3

    .line 713
    :cond_2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-wide v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRemainingTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 715
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mTimeBase:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getCurrentVisibleDanmakus()Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .locals 4

    .prologue
    .line 698
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->getCurrentTime()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lmaster/flame/danmaku/controller/IDrawTask;->getVisibleDanmakusOnTime(J)Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    move-result-object v0

    .line 702
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayer()Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    return-object v0
.end method

.method public getVisibility()Z
    .locals 1

    .prologue
    .line 582
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 175
    iget v7, p1, Landroid/os/Message;->what:I

    .line 176
    .local v7, "what":I
    packed-switch v7, :pswitch_data_0

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 178
    :pswitch_0
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    invoke-interface {v8}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->isViewReady()Z

    move-result v8

    if-nez v8, :cond_2

    .line 179
    :cond_1
    const/4 v8, 0x5

    const-wide/16 v10, 0x64

    invoke-virtual {p0, v8, v10, v11}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 181
    :cond_2
    new-instance v8, Lmaster/flame/danmaku/controller/DrawHandler$1;

    invoke-direct {v8, p0}, Lmaster/flame/danmaku/controller/DrawHandler$1;-><init>(Lmaster/flame/danmaku/controller/DrawHandler;)V

    invoke-direct {p0, v8}, Lmaster/flame/danmaku/controller/DrawHandler;->prepare(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 193
    :pswitch_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    .line 194
    .local v5, "startTime":Ljava/lang/Long;
    if-eqz v5, :cond_3

    .line 195
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->pausedPosition:J

    .line 200
    .end local v5    # "startTime":Ljava/lang/Long;
    :goto_1
    :pswitch_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    .line 201
    iget-boolean v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mReady:Z

    if-eqz v8, :cond_4

    .line 202
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    invoke-virtual {v8}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->reset()V

    .line 203
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->clear()V

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->pausedPosition:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mTimeBase:J

    .line 205
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->pausedPosition:J

    invoke-virtual {v8, v10, v11}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 206
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 207
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    .line 208
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v8}, Lmaster/flame/danmaku/controller/IDrawTask;->start()V

    .line 209
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->notifyRendering()V

    .line 210
    const/4 v8, 0x0

    iput-boolean v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInSeekingAction:Z

    goto :goto_0

    .line 197
    .restart local v5    # "startTime":Ljava/lang/Long;
    :cond_3
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->pausedPosition:J

    goto :goto_1

    .line 212
    .end local v5    # "startTime":Ljava/lang/Long;
    :cond_4
    const/4 v8, 0x3

    const-wide/16 v10, 0x64

    invoke-virtual {p0, v8, v10, v11}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 216
    :pswitch_3
    const/4 v8, 0x1

    iput-boolean v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    .line 217
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->quitUpdateThread()V

    .line 218
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 219
    .local v2, "position":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v10, v10, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long v0, v8, v10

    .line 220
    .local v0, "deltaMs":J
    iget-wide v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mTimeBase:J

    sub-long/2addr v8, v0

    iput-wide v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mTimeBase:J

    .line 221
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mTimeBase:J

    sub-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 222
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v8, v8, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v8}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateMeasureFlag()V

    .line 223
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v8, :cond_5

    .line 224
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    iget-object v9, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v10, v9, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-interface {v8, v10, v11}, Lmaster/flame/danmaku/controller/IDrawTask;->seek(J)V

    .line 225
    :cond_5
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v8, v8, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iput-wide v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->pausedPosition:J

    .line 226
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 227
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 230
    .end local v0    # "deltaMs":J
    .end local v2    # "position":Ljava/lang/Long;
    :pswitch_4
    iget-boolean v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mUpdateInNewThread:Z

    if-eqz v8, :cond_6

    .line 231
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->updateInNewThread()V

    goto/16 :goto_0

    .line 233
    :cond_6
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->updateInCurrentThread()V

    goto/16 :goto_0

    .line 237
    :pswitch_5
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v8, v8, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget-object v9, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v8, v9}, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->notifyDispSizeChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 238
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    .line 239
    .local v6, "updateFlag":Ljava/lang/Boolean;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 240
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v8, v8, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v8}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateMeasureFlag()V

    goto/16 :goto_0

    .line 244
    .end local v6    # "updateFlag":Ljava/lang/Boolean;
    :pswitch_6
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    .line 245
    .local v4, "start":Ljava/lang/Long;
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v8, :cond_7

    .line 246
    if-nez v4, :cond_9

    .line 247
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->getCurrentTime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 248
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v8}, Lmaster/flame/danmaku/controller/IDrawTask;->requestClear()V

    .line 256
    :cond_7
    :goto_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    .line 257
    iget-boolean v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    if-eqz v8, :cond_8

    .line 258
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    invoke-interface {v8}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->drawDanmakus()J

    .line 260
    :cond_8
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->notifyRendering()V

    goto/16 :goto_0

    .line 250
    :cond_9
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v8}, Lmaster/flame/danmaku/controller/IDrawTask;->start()V

    .line 251
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {v8, v10, v11}, Lmaster/flame/danmaku/controller/IDrawTask;->seek(J)V

    .line 252
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v8}, Lmaster/flame/danmaku/controller/IDrawTask;->requestClear()V

    .line 253
    const/4 v8, 0x1

    invoke-virtual {p0, v8, v4}, Lmaster/flame/danmaku/controller/DrawHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 263
    .end local v4    # "start":Ljava/lang/Long;
    :pswitch_7
    const/4 v8, 0x0

    iput-boolean v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    .line 264
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    if-eqz v8, :cond_a

    .line 265
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    invoke-interface {v8}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->clear()V

    .line 267
    :cond_a
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v8, :cond_b

    .line 268
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v8}, Lmaster/flame/danmaku/controller/IDrawTask;->requestClear()V

    .line 269
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v8}, Lmaster/flame/danmaku/controller/IDrawTask;->requestHide()V

    .line 271
    :cond_b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    .line 272
    .local v3, "quitDrawTask":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v8, :cond_c

    .line 273
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v8}, Lmaster/flame/danmaku/controller/IDrawTask;->quit()V

    .line 275
    :cond_c
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 279
    .end local v3    # "quitDrawTask":Ljava/lang/Boolean;
    :pswitch_8
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 281
    :pswitch_9
    const/4 v8, 0x6

    if-ne v7, v8, :cond_d

    .line 282
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lmaster/flame/danmaku/controller/DrawHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 284
    :cond_d
    const/4 v8, 0x1

    iput-boolean v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    .line 285
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->syncTimerIfNeeded()V

    .line 286
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mThread:Lmaster/flame/danmaku/controller/UpdateThread;

    if-eqz v8, :cond_e

    .line 287
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->notifyRendering()V

    .line 288
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->quitUpdateThread()V

    .line 290
    :cond_e
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v8, v8, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iput-wide v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->pausedPosition:J

    .line 291
    const/4 v8, 0x6

    if-ne v7, v8, :cond_0

    .line 292
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v8, :cond_f

    .line 293
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v8}, Lmaster/flame/danmaku/controller/IDrawTask;->quit()V

    .line 295
    :cond_f
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    if-eqz v8, :cond_10

    .line 296
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    invoke-virtual {v8}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->release()V

    .line 298
    :cond_10
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    if-eq v8, v9, :cond_0

    .line 299
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 303
    :pswitch_a
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->notifyRendering()V

    goto/16 :goto_0

    .line 306
    :pswitch_b
    iget-boolean v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    if-eqz v8, :cond_0

    .line 307
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v8}, Lmaster/flame/danmaku/controller/IDrawTask;->requestClear()V

    .line 308
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakuView:Lmaster/flame/danmaku/controller/IDanmakuViewController;

    invoke-interface {v8}, Lmaster/flame/danmaku/controller/IDanmakuViewController;->drawDanmakus()J

    .line 309
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->notifyRendering()V

    goto/16 :goto_0

    .line 313
    :pswitch_c
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v8, :cond_0

    .line 314
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->getCurrentTime()J

    move-result-wide v10

    invoke-interface {v8, v10, v11}, Lmaster/flame/danmaku/controller/IDrawTask;->clearDanmakusOnScreen(J)V

    goto/16 :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public hideDanmakus(Z)J
    .locals 2
    .param p1, "quitDrawTask"    # Z

    .prologue
    const/16 v1, 0x9

    .line 573
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    .line 578
    :goto_0
    return-wide v0

    .line 575
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 576
    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 577
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 578
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->timer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    goto :goto_0
.end method

.method public invalidateDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V
    .locals 1
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "remeasure"    # Z

    .prologue
    .line 545
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 546
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v0, p1, p2}, Lmaster/flame/danmaku/controller/IDrawTask;->invalidateDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V

    .line 548
    :cond_0
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->redrawIfNeeded()V

    .line 549
    return-void
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mReady:Z

    return v0
.end method

.method public isStop()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->quitFlag:Z

    return v0
.end method

.method public notifyDispSizeChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 676
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    if-nez v0, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 680
    :cond_2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->setSize(II)V

    .line 681
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 560
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DrawHandler;->syncTimerIfNeeded()V

    .line 561
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    .line 562
    return-void
.end method

.method public prepare()V
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    .line 557
    return-void
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    .line 167
    return-void
.end method

.method public removeAllDanmakus()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDrawTask;->removeAllDanmakus()V

    .line 689
    :cond_0
    return-void
.end method

.method public removeAllLiveDanmakus()V
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->drawTask:Lmaster/flame/danmaku/controller/IDrawTask;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDrawTask;->removeAllLiveDanmakus()V

    .line 695
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->sendEmptyMessage(I)Z

    .line 553
    return-void
.end method

.method public seekTo(Ljava/lang/Long;)V
    .locals 3
    .param p1, "ms"    # Ljava/lang/Long;

    .prologue
    const/4 v2, 0x4

    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mInSeekingAction:Z

    .line 528
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDesireSeekingTime:J

    .line 529
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 530
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 531
    invoke-virtual {p0, v2}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 532
    invoke-virtual {p0, v2, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 533
    return-void
.end method

.method public setCallback(Lmaster/flame/danmaku/controller/DrawHandler$Callback;)V
    .locals 0
    .param p1, "cb"    # Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    .prologue
    .line 162
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    .line 163
    return-void
.end method

.method public setConfig(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 0
    .param p1, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .prologue
    .line 154
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 155
    return-void
.end method

.method public setParser(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;)V
    .locals 0
    .param p1, "parser"    # Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    .prologue
    .line 158
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    .line 159
    return-void
.end method

.method public showDanmakus(Ljava/lang/Long;)V
    .locals 2
    .param p1, "position"    # Ljava/lang/Long;

    .prologue
    const/16 v1, 0x8

    .line 565
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawHandler;->mDanmakusVisible:Z

    if-eqz v0, :cond_0

    .line 570
    :goto_0
    return-void

    .line 567
    :cond_0
    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 568
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeMessages(I)V

    .line 569
    invoke-virtual {p0, v1, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

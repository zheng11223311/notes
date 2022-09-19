.class public Lmaster/flame/danmaku/ui/widget/DanmakuView;
.super Landroid/view/View;
.source "DanmakuView.java"

# interfaces
.implements Lmaster/flame/danmaku/controller/IDanmakuView;
.implements Lmaster/flame/danmaku/controller/IDanmakuViewController;


# static fields
.field private static final MAX_RECORD_SIZE:I = 0x32

.field private static final ONE_SECOND:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "DanmakuView"


# instance fields
.field private handler:Lmaster/flame/danmaku/controller/DrawHandler;

.field private isSurfaceCreated:Z

.field private mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

.field private mClearFlag:Z

.field private mDanmakuVisible:Z

.field private mDrawFinished:Z

.field private mDrawMonitor:Ljava/lang/Object;

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

.field protected mDrawingThreadType:I

.field private mEnableDanmakuDrwaingCache:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mOnDanmakuClickListener:Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;

.field private mRequestRender:Z

.field private mResumeRunnable:Ljava/lang/Runnable;

.field private mResumeTryCount:I

.field private mShowFps:Z

.field private mTouchHelper:Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

.field private mUiThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 57
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mEnableDanmakuDrwaingCache:Z

    .line 65
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    .line 67
    iput v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawingThreadType:I

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawMonitor:Ljava/lang/Object;

    .line 71
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawFinished:Z

    .line 73
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mRequestRender:Z

    .line 350
    iput v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mResumeTryCount:I

    .line 352
    new-instance v0, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;-><init>(Lmaster/flame/danmaku/ui/widget/DanmakuView;)V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mResumeRunnable:Ljava/lang/Runnable;

    .line 79
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->init()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mEnableDanmakuDrwaingCache:Z

    .line 65
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    .line 67
    iput v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawingThreadType:I

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawMonitor:Ljava/lang/Object;

    .line 71
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawFinished:Z

    .line 73
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mRequestRender:Z

    .line 350
    iput v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mResumeTryCount:I

    .line 352
    new-instance v0, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;-><init>(Lmaster/flame/danmaku/ui/widget/DanmakuView;)V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mResumeRunnable:Ljava/lang/Runnable;

    .line 92
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->init()V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mEnableDanmakuDrwaingCache:Z

    .line 65
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    .line 67
    iput v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawingThreadType:I

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawMonitor:Ljava/lang/Object;

    .line 71
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawFinished:Z

    .line 73
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mRequestRender:Z

    .line 350
    iput v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mResumeTryCount:I

    .line 352
    new-instance v0, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView$1;-><init>(Lmaster/flame/danmaku/ui/widget/DanmakuView;)V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mResumeRunnable:Ljava/lang/Runnable;

    .line 97
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->init()V

    .line 98
    return-void
.end method

.method static synthetic access$0(Lmaster/flame/danmaku/ui/widget/DanmakuView;)Lmaster/flame/danmaku/controller/DrawHandler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    return-object v0
.end method

.method static synthetic access$1(Lmaster/flame/danmaku/ui/widget/DanmakuView;)I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mResumeTryCount:I

    return v0
.end method

.method static synthetic access$2(Lmaster/flame/danmaku/ui/widget/DanmakuView;I)V
    .locals 0

    .prologue
    .line 350
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mResumeTryCount:I

    return-void
.end method

.method static synthetic access$3(Lmaster/flame/danmaku/ui/widget/DanmakuView;)Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    return v0
.end method

.method private fps()F
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 235
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 236
    .local v2, "lastTime":J
    iget-object v4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 237
    iget-object v4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v2, v6

    long-to-float v0, v6

    .line 238
    .local v0, "dtime":F
    iget-object v4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 239
    .local v1, "frames":I
    const/16 v4, 0x32

    if-le v1, v4, :cond_0

    .line 240
    iget-object v4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 242
    :cond_0
    cmpl-float v4, v0, v5

    if-lez v4, :cond_1

    iget-object v4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-float v4, v4

    div-float/2addr v4, v0

    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mUiThreadId:J

    .line 84
    invoke-virtual {p0, v2}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->setBackgroundColor(I)V

    .line 85
    invoke-virtual {p0, v2}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->setDrawingCacheBackgroundColor(I)V

    .line 86
    const/4 v0, 0x1

    invoke-static {v0, v2}, Lmaster/flame/danmaku/controller/DrawHelper;->useDrawColorToClearCanvas(ZZ)V

    .line 87
    invoke-static {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->instance(Lmaster/flame/danmaku/controller/IDanmakuView;)Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mTouchHelper:Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    .line 88
    return-void
.end method

.method private lockCanvas()V
    .locals 6

    .prologue
    .line 266
    iget-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    if-nez v1, :cond_0

    .line 284
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->postInvalidateCompat()V

    .line 270
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 271
    :goto_1
    :try_start_0
    iget-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawFinished:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v1, :cond_2

    .line 282
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawFinished:Z

    .line 270
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 273
    :cond_2
    :try_start_1
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawMonitor:Ljava/lang/Object;

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    iget-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v1}, Lmaster/flame/danmaku/controller/DrawHandler;->isStop()Z

    move-result v1

    if-nez v1, :cond_1

    .line 278
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private lockCanvasAndClear()V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mClearFlag:Z

    .line 288
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->lockCanvas()V

    .line 289
    return-void
.end method

.method private postInvalidateCompat()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mRequestRender:Z

    .line 258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 259
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->postInvalidateOnAnimation()V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->postInvalidate()V

    goto :goto_0
.end method

.method private prepare()V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lmaster/flame/danmaku/controller/DrawHandler;

    iget v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawingThreadType:I

    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->getLooper(I)Landroid/os/Looper;

    move-result-object v1

    iget-boolean v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    invoke-direct {v0, v1, p0, v2}, Lmaster/flame/danmaku/controller/DrawHandler;-><init>(Landroid/os/Looper;Lmaster/flame/danmaku/controller/IDanmakuViewController;Z)V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    .line 201
    :cond_0
    return-void
.end method

.method private stopDraw()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->unlockCanvasAndPost()V

    .line 156
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v1}, Lmaster/flame/danmaku/controller/DrawHandler;->quit()V

    .line 158
    iput-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    .line 160
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 162
    :try_start_0
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 167
    iput-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 169
    :cond_1
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private unlockCanvasAndPost()V
    .locals 2

    .prologue
    .line 292
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawFinished:Z

    .line 294
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 292
    monitor-exit v1

    .line 296
    return-void

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 1
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 101
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 104
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 475
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->isViewReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mUiThreadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 479
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mClearFlag:Z

    .line 480
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->postInvalidateCompat()V

    goto :goto_0

    .line 482
    :cond_2
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->lockCanvasAndClear()V

    goto :goto_0
.end method

.method public clearDanmakusOnScreen()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->clearDanmakusOnScreen()V

    .line 520
    :cond_0
    return-void
.end method

.method public drawDanmakus()J
    .locals 4

    .prologue
    .line 246
    iget-boolean v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->isSurfaceCreated:Z

    if-nez v2, :cond_0

    .line 247
    const-wide/16 v2, 0x0

    .line 252
    :goto_0
    return-wide v2

    .line 248
    :cond_0
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 249
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 250
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 251
    .local v0, "stime":J
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->lockCanvas()V

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    goto :goto_0
.end method

.method public enableDanmakuDrawingCache(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 422
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mEnableDanmakuDrwaingCache:Z

    .line 423
    return-void
.end method

.method public getConfig()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->getConfig()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentTime()J
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->getCurrentTime()J

    move-result-wide v0

    .line 501
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentVisibleDanmakus()Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->getCurrentVisibleDanmakus()Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLooper(I)Landroid/os/Looper;
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 172
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 174
    const/4 v2, 0x0

    iput-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 178
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 189
    const/4 v0, 0x0

    .line 192
    .local v0, "priority":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DFM Handler Thread #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "threadName":Ljava/lang/String;
    new-instance v2, Landroid/os/HandlerThread;

    invoke-direct {v2, v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 194
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 195
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .end local v0    # "priority":I
    .end local v1    # "threadName":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 180
    :pswitch_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_1

    .line 182
    :pswitch_1
    const/4 v0, -0x8

    .line 183
    .restart local v0    # "priority":I
    goto :goto_0

    .line 185
    .end local v0    # "priority":I
    :pswitch_2
    const/16 v0, 0x13

    .line 186
    .restart local v0    # "priority":I
    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getOnDanmakuClickListener()Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mOnDanmakuClickListener:Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 437
    return-object p0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 457
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    .line 458
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 462
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->hideDanmakus(Z)J

    goto :goto_0
.end method

.method public hideAndPauseDrawTask()J
    .locals 2

    .prologue
    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    .line 467
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 468
    const-wide/16 v0, 0x0

    .line 470
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->hideDanmakus(Z)J

    move-result-wide v0

    goto :goto_0
.end method

.method public invalidateDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V
    .locals 1
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "remeasure"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/controller/DrawHandler;->invalidateDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V

    .line 111
    :cond_0
    return-void
.end method

.method public isDanmakuDrawingCacheEnabled()Z
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mEnableDanmakuDrwaingCache:Z

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 508
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 509
    invoke-super {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    .line 511
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->isStop()Z

    move-result v0

    .line 382
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewReady()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->isSurfaceCreated:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 300
    iget-boolean v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mRequestRender:Z

    if-nez v2, :cond_0

    .line 301
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 322
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-boolean v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mClearFlag:Z

    if-eqz v2, :cond_2

    .line 305
    invoke-static {p1}, Lmaster/flame/danmaku/controller/DrawHelper;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 306
    iput-boolean v10, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mClearFlag:Z

    .line 320
    :cond_1
    :goto_1
    iput-boolean v10, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mRequestRender:Z

    .line 321
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->unlockCanvasAndPost()V

    goto :goto_0

    .line 308
    :cond_2
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v2, :cond_1

    .line 309
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v2, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->draw(Landroid/graphics/Canvas;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    move-result-object v1

    .line 310
    .local v1, "rs":Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    iget-boolean v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mShowFps:Z

    if-eqz v2, :cond_1

    .line 311
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    if-nez v2, :cond_3

    .line 312
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    .line 313
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 314
    const-string v3, "fps %.2f,time:%d s,cache:%d,miss:%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->fps()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x1

    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->getCurrentTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 315
    iget-wide v6, v1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->cacheHitCount:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-wide v6, v1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->cacheMissCount:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 313
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "fps":Ljava/lang/String;
    invoke-static {p1, v0}, Lmaster/flame/danmaku/controller/DrawHelper;->drawFPS(Landroid/graphics/Canvas;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 326
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 327
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/controller/DrawHandler;->notifyDispSizeChanged(II)V

    .line 330
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->isSurfaceCreated:Z

    .line 331
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 407
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mTouchHelper:Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mTouchHelper:Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 411
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->pause()V

    .line 348
    :cond_0
    return-void
.end method

.method public prepare(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 2
    .param p1, "parser"    # Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .param p2, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .prologue
    .line 205
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->prepare()V

    .line 206
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p2}, Lmaster/flame/danmaku/controller/DrawHandler;->setConfig(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 207
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->setParser(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;)V

    .line 208
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->setCallback(Lmaster/flame/danmaku/controller/DrawHandler$Callback;)V

    .line 209
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->prepare()V

    .line 210
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->stop()V

    .line 146
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 147
    :cond_0
    return-void
.end method

.method public removeAllDanmakus()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeAllDanmakus()V

    .line 118
    :cond_0
    return-void
.end method

.method public removeAllLiveDanmakus()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeAllLiveDanmakus()V

    .line 125
    :cond_0
    return-void
.end method

.method public restart()V
    .locals 0

    .prologue
    .line 386
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->stop()V

    .line 387
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->start()V

    .line 388
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 369
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mResumeTryCount:I

    .line 371
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mResumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lmaster/flame/danmaku/controller/DrawHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->restart()V

    goto :goto_0
.end method

.method public seekTo(Ljava/lang/Long;)V
    .locals 1
    .param p1, "ms"    # Ljava/lang/Long;

    .prologue
    .line 415
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->seekTo(Ljava/lang/Long;)V

    .line 418
    :cond_0
    return-void
.end method

.method public setCallback(Lmaster/flame/danmaku/controller/DrawHandler$Callback;)V
    .locals 1
    .param p1, "callback"    # Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    .prologue
    .line 137
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    .line 138
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->setCallback(Lmaster/flame/danmaku/controller/DrawHandler$Callback;)V

    .line 141
    :cond_0
    return-void
.end method

.method public setDrawingThreadType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 493
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDrawingThreadType:I

    .line 494
    return-void
.end method

.method public setOnDanmakuClickListener(Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;)V
    .locals 1
    .param p1, "listener"    # Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;

    .prologue
    .line 524
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mOnDanmakuClickListener:Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;

    .line 525
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->setClickable(Z)V

    .line 526
    return-void

    .line 525
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->showAndResumeDrawTask(Ljava/lang/Long;)V

    .line 443
    return-void
.end method

.method public showAndResumeDrawTask(Ljava/lang/Long;)V
    .locals 1
    .param p1, "position"    # Ljava/lang/Long;

    .prologue
    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mDanmakuVisible:Z

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mClearFlag:Z

    .line 449
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 453
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->showDanmakus(Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public showFPS(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->mShowFps:Z

    .line 228
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 392
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->start(J)V

    .line 393
    return-void
.end method

.method public start(J)V
    .locals 3
    .param p1, "postion"    # J

    .prologue
    .line 397
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 398
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->prepare()V

    .line 402
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/controller/DrawHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 403
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->stopDraw()V

    .line 152
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->isSurfaceCreated:Z

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_1

    .line 336
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->start()V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->isStop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->resume()V

    goto :goto_0

    .line 340
    :cond_2
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->pause()V

    goto :goto_0
.end method

.class public Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;
.super Landroid/view/TextureView;
.source "DanmakuTextureView.java"

# interfaces
.implements Lmaster/flame/danmaku/controller/IDanmakuView;
.implements Lmaster/flame/danmaku/controller/IDanmakuViewController;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final MAX_RECORD_SIZE:I = 0x32

.field private static final ONE_SECOND:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "DanmakuTextureView"


# instance fields
.field private handler:Lmaster/flame/danmaku/controller/DrawHandler;

.field private isSurfaceCreated:Z

.field private mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

.field private mDanmakuVisible:Z

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

.field private mShowFps:Z

.field private mTouchHelper:Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 80
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 67
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mEnableDanmakuDrwaingCache:Z

    .line 75
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDanmakuVisible:Z

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawingThreadType:I

    .line 81
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->init()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mEnableDanmakuDrwaingCache:Z

    .line 75
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDanmakuVisible:Z

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawingThreadType:I

    .line 98
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->init()V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mEnableDanmakuDrwaingCache:Z

    .line 75
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDanmakuVisible:Z

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawingThreadType:I

    .line 103
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->init()V

    .line 104
    return-void
.end method

.method private fps()F
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 261
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 262
    .local v2, "lastTime":J
    iget-object v4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 263
    iget-object v4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v2, v6

    long-to-float v0, v6

    .line 264
    .local v0, "dtime":F
    iget-object v4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 265
    .local v1, "frames":I
    const/16 v4, 0x32

    if-le v1, v4, :cond_0

    .line 266
    iget-object v4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 268
    :cond_0
    cmpl-float v4, v0, v5

    if-lez v4, :cond_1

    iget-object v4, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawTimes:Ljava/util/LinkedList;

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
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 86
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 87
    invoke-virtual {p0, v3}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->setOpaque(Z)V

    .line 88
    invoke-virtual {p0, v2}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->setWillNotCacheDrawing(Z)V

    .line 89
    invoke-virtual {p0, v3}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->setDrawingCacheEnabled(Z)V

    .line 90
    invoke-virtual {p0, v2}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->setWillNotDraw(Z)V

    .line 91
    invoke-virtual {p0, p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 92
    invoke-static {v2, v2}, Lmaster/flame/danmaku/controller/DrawHelper;->useDrawColorToClearCanvas(ZZ)V

    .line 93
    invoke-static {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->instance(Lmaster/flame/danmaku/controller/IDanmakuView;)Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mTouchHelper:Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    .line 94
    return-void
.end method

.method private prepare()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lmaster/flame/danmaku/controller/DrawHandler;

    iget v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawingThreadType:I

    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->getLooper(I)Landroid/os/Looper;

    move-result-object v1

    iget-boolean v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDanmakuVisible:Z

    invoke-direct {v0, v1, p0, v2}, Lmaster/flame/danmaku/controller/DrawHandler;-><init>(Landroid/os/Looper;Lmaster/flame/danmaku/controller/IDanmakuViewController;Z)V

    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    .line 229
    :cond_0
    return-void
.end method

.method private stopDraw()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v1}, Lmaster/flame/danmaku/controller/DrawHandler;->quit()V

    .line 186
    iput-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    .line 188
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 190
    :try_start_0
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 195
    iput-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 197
    :cond_1
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 1
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 107
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 110
    :cond_0
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->isViewReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 442
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 436
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 437
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_0

    .line 438
    invoke-static {v0}, Lmaster/flame/danmaku/controller/DrawHelper;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 439
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 433
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public clearDanmakusOnScreen()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->clearDanmakusOnScreen()V

    .line 472
    :cond_0
    return-void
.end method

.method public declared-synchronized drawDanmakus()J
    .locals 18

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->isSurfaceCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    .line 274
    const-wide/16 v4, 0x0

    .line 297
    :goto_0
    monitor-exit p0

    return-wide v4

    .line 275
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 276
    .local v8, "stime":J
    invoke-virtual/range {p0 .. p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->isShown()Z

    move-result v7

    if-nez v7, :cond_1

    .line 277
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 278
    :cond_1
    const-wide/16 v4, 0x0

    .line 279
    .local v4, "dtime":J
    invoke-virtual/range {p0 .. p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    .line 280
    .local v2, "canvas":Landroid/graphics/Canvas;
    if-eqz v2, :cond_4

    .line 281
    move-object/from16 v0, p0

    iget-object v7, v0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v7, :cond_3

    .line 282
    move-object/from16 v0, p0

    iget-object v7, v0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v7, v2}, Lmaster/flame/danmaku/controller/DrawHandler;->draw(Landroid/graphics/Canvas;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    move-result-object v6

    .line 283
    .local v6, "rs":Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mShowFps:Z

    if-eqz v7, :cond_3

    .line 284
    move-object/from16 v0, p0

    iget-object v7, v0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawTimes:Ljava/util/LinkedList;

    if-nez v7, :cond_2

    .line 285
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawTimes:Ljava/util/LinkedList;

    .line 286
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v8

    .line 287
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 288
    const-string v10, "fps %.2f,time:%d s,cache:%d,miss:%d"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->fps()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual/range {p0 .. p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->getCurrentTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    .line 289
    iget-wide v14, v6, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->cacheHitCount:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget-wide v14, v6, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->cacheMissCount:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    .line 287
    invoke-static {v7, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "fps":Ljava/lang/String;
    invoke-static {v2, v3}, Lmaster/flame/danmaku/controller/DrawHelper;->drawFPS(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 293
    .end local v3    # "fps":Ljava/lang/String;
    .end local v6    # "rs":Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->isSurfaceCreated:Z

    if-eqz v7, :cond_4

    .line 294
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 296
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    sub-long v4, v10, v8

    .line 297
    goto/16 :goto_0

    .line 273
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "dtime":J
    .end local v8    # "stime":J
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public enableDanmakuDrawingCache(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 370
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mEnableDanmakuDrwaingCache:Z

    .line 371
    return-void
.end method

.method public getConfig()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 250
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->getConfig()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentTime()J
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->getCurrentTime()J

    move-result-wide v0

    .line 459
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentVisibleDanmakus()Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->getCurrentVisibleDanmakus()Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    move-result-object v0

    .line 139
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
    .line 200
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 202
    const/4 v2, 0x0

    iput-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 206
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 217
    const/4 v0, 0x0

    .line 220
    .local v0, "priority":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DFM Handler Thread #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "threadName":Ljava/lang/String;
    new-instance v2, Landroid/os/HandlerThread;

    invoke-direct {v2, v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 222
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 223
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .end local v0    # "priority":I
    .end local v1    # "threadName":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 208
    :pswitch_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_1

    .line 210
    :pswitch_1
    const/4 v0, -0x8

    .line 211
    .restart local v0    # "priority":I
    goto :goto_0

    .line 213
    .end local v0    # "priority":I
    :pswitch_2
    const/16 v0, 0x13

    .line 214
    .restart local v0    # "priority":I
    goto :goto_0

    .line 206
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
    .line 428
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mOnDanmakuClickListener:Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 385
    return-object p0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 404
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDanmakuVisible:Z

    .line 405
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->hideDanmakus(Z)J

    goto :goto_0
.end method

.method public hideAndPauseDrawTask()J
    .locals 2

    .prologue
    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDanmakuVisible:Z

    .line 414
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 415
    const-wide/16 v0, 0x0

    .line 417
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

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
    .line 114
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/controller/DrawHandler;->invalidateDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V

    .line 117
    :cond_0
    return-void
.end method

.method public isDanmakuDrawingCacheEnabled()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mEnableDanmakuDrwaingCache:Z

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->isStop()Z

    move-result v0

    .line 331
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

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
    .line 446
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDanmakuVisible:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/view/TextureView;->isShown()Z

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
    .line 380
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->isSurfaceCreated:Z

    return v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->isSurfaceCreated:Z

    .line 152
    return-void
.end method

.method public declared-synchronized onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 156
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->isSurfaceCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p2, p3}, Lmaster/flame/danmaku/controller/DrawHandler;->notifyDispSizeChanged(II)V

    .line 165
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 170
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 356
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mTouchHelper:Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mTouchHelper:Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/ui/widget/DanmakuTouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 360
    :cond_0
    invoke-super {p0, p1}, Landroid/view/TextureView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->pause()V

    .line 315
    :cond_0
    return-void
.end method

.method public prepare(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 2
    .param p1, "parser"    # Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .param p2, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .prologue
    .line 233
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->prepare()V

    .line 234
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p2}, Lmaster/flame/danmaku/controller/DrawHandler;->setConfig(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 235
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->setParser(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;)V

    .line 236
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    iget-object v1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->setCallback(Lmaster/flame/danmaku/controller/DrawHandler$Callback;)V

    .line 237
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->prepare()V

    .line 238
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->stop()V

    .line 175
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawTimes:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawTimes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 176
    :cond_0
    return-void
.end method

.method public removeAllDanmakus()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeAllDanmakus()V

    .line 124
    :cond_0
    return-void
.end method

.method public removeAllLiveDanmakus()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->removeAllLiveDanmakus()V

    .line 131
    :cond_0
    return-void
.end method

.method public restart()V
    .locals 0

    .prologue
    .line 335
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->stop()V

    .line 336
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->start()V

    .line 337
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->resume()V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->restart()V

    goto :goto_0
.end method

.method public seekTo(Ljava/lang/Long;)V
    .locals 1
    .param p1, "ms"    # Ljava/lang/Long;

    .prologue
    .line 364
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->seekTo(Ljava/lang/Long;)V

    .line 367
    :cond_0
    return-void
.end method

.method public setCallback(Lmaster/flame/danmaku/controller/DrawHandler$Callback;)V
    .locals 1
    .param p1, "callback"    # Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    .prologue
    .line 143
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mCallback:Lmaster/flame/danmaku/controller/DrawHandler$Callback;

    .line 144
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->setCallback(Lmaster/flame/danmaku/controller/DrawHandler$Callback;)V

    .line 147
    :cond_0
    return-void
.end method

.method public setDrawingThreadType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 451
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDrawingThreadType:I

    .line 452
    return-void
.end method

.method public setOnDanmakuClickListener(Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;)V
    .locals 1
    .param p1, "listener"    # Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;

    .prologue
    .line 422
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mOnDanmakuClickListener:Lmaster/flame/danmaku/controller/IDanmakuView$OnDanmakuClickListener;

    .line 423
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->setClickable(Z)V

    .line 424
    return-void

    .line 423
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->showAndResumeDrawTask(Ljava/lang/Long;)V

    .line 391
    return-void
.end method

.method public showAndResumeDrawTask(Ljava/lang/Long;)V
    .locals 1
    .param p1, "position"    # Ljava/lang/Long;

    .prologue
    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mDanmakuVisible:Z

    .line 396
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/DrawHandler;->showDanmakus(Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public showFPS(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 255
    iput-boolean p1, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->mShowFps:Z

    .line 256
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 341
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->start(J)V

    .line 342
    return-void
.end method

.method public start(J)V
    .locals 3
    .param p1, "postion"    # J

    .prologue
    .line 346
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_0

    .line 347
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->prepare()V

    .line 351
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/controller/DrawHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 352
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/DrawHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->stopDraw()V

    .line 181
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->isSurfaceCreated:Z

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    if-nez v0, :cond_1

    .line 303
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->start()V

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->handler:Lmaster/flame/danmaku/controller/DrawHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DrawHandler;->isStop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->resume()V

    goto :goto_0

    .line 307
    :cond_2
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuTextureView;->pause()V

    goto :goto_0
.end method

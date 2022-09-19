.class public Lmaster/flame/danmaku/controller/DrawTask;
.super Ljava/lang/Object;
.source "DrawTask.java"

# interfaces
.implements Lmaster/flame/danmaku/controller/IDrawTask;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected clearRetainerFlag:Z

.field protected danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

.field private danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

.field private mConfigChangedCallback:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;

.field protected final mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field protected final mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

.field private mIsHidden:Z

.field private mLastBeginMills:J

.field private mLastDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

.field private mLastEndMills:J

.field protected mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

.field protected mReadyState:Z

.field final mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

.field private mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

.field private mStartRenderTime:J

.field mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

.field mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lmaster/flame/danmaku/controller/DrawTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lmaster/flame/danmaku/controller/DrawTask;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;)V
    .locals 4
    .param p1, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .param p2, "context"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .param p3, "taskListener"    # Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(I)V

    iput-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    .line 56
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mStartRenderTime:J

    .line 58
    new-instance v1, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    invoke-direct {v1}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;-><init>()V

    iput-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    .line 70
    new-instance v1, Lmaster/flame/danmaku/controller/DrawTask$1;

    invoke-direct {v1, p0}, Lmaster/flame/danmaku/controller/DrawTask$1;-><init>(Lmaster/flame/danmaku/controller/DrawTask;)V

    iput-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mConfigChangedCallback:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;

    .line 79
    if-nez p2, :cond_0

    .line 80
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_0
    iput-object p2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 83
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->getDisplayer()Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    move-result-object v1

    iput-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    .line 84
    iput-object p3, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    .line 85
    new-instance v1, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;

    invoke-direct {v1, p2}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;-><init>(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    iput-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    .line 86
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->isPreventOverlappingEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->isMaxLinesLimited()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2, v1}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer;->setVerifierEnabled(Z)V

    .line 87
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/DrawTask;->initTimer(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)V

    .line 88
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->isDuplicateMergingEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 89
    .local v0, "enable":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    const-string v2, "1017_Filter"

    invoke-virtual {v1, v2}, Lmaster/flame/danmaku/controller/DanmakuFilters;->registerFilter(Ljava/lang/String;)Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    .line 96
    :cond_1
    :goto_1
    return-void

    .line 86
    .end local v0    # "enable":Ljava/lang/Boolean;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 93
    .restart local v0    # "enable":Ljava/lang/Boolean;
    :cond_3
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    const-string v2, "1017_Filter"

    invoke-virtual {v1, v2}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 6
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 106
    :cond_1
    const/4 v0, 0x0

    .line 107
    .local v0, "added":Z
    :try_start_1
    iget-boolean v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isLive:Z

    if-eqz v1, :cond_2

    .line 108
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/controller/DrawTask;->removeUnusedLiveDanmakusIn(I)V

    .line 110
    :cond_2
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->size()I

    move-result v1

    iput v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->index:I

    .line 111
    iget-wide v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastBeginMills:J

    iget-wide v4, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_6

    iget-wide v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    iget-wide v4, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastEndMills:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_6

    .line 112
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :try_start_2
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v1, p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    move-result v0

    .line 112
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    :cond_3
    :goto_1
    :try_start_3
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    :try_start_4
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v1, p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    move-result v0

    .line 118
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 121
    if-eqz v0, :cond_4

    :try_start_5
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    if-eqz v1, :cond_4

    .line 122
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    invoke-interface {v1, p1}, Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;->onDanmakuAdd(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 125
    :cond_4
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_0

    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    if-eqz v1, :cond_0

    iget-wide v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    iget-wide v4, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 126
    :cond_5
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 104
    .end local v0    # "added":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 112
    .restart local v0    # "added":Z
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1

    .line 115
    :cond_6
    iget-boolean v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isLive:Z

    if-eqz v1, :cond_3

    .line 116
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastEndMills:J

    iput-wide v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastBeginMills:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 118
    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public clearDanmakusOnScreen(J)V
    .locals 1
    .param p1, "currMillis"    # J

    .prologue
    .line 226
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DrawTask;->reset()V

    .line 227
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateVisibleFlag()V

    .line 228
    iput-wide p1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mStartRenderTime:J

    .line 229
    return-void
.end method

.method public declared-synchronized draw(Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    .locals 1
    .param p1, "displayer"    # Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-virtual {p0, p1, v0}, Lmaster/flame/danmaku/controller/DrawTask;->drawDanmakus(Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected drawDanmakus(Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    .locals 12
    .param p1, "disp"    # Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;
    .param p2, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .prologue
    .line 278
    iget-boolean v7, p0, Lmaster/flame/danmaku/controller/DrawTask;->clearRetainerFlag:Z

    if-eqz v7, :cond_0

    .line 279
    iget-object v7, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    invoke-interface {v7}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer;->clearRetainer()V

    .line 280
    const/4 v7, 0x0

    iput-boolean v7, p0, Lmaster/flame/danmaku/controller/DrawTask;->clearRetainerFlag:Z

    .line 282
    :cond_0
    iget-object v7, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    if-eqz v7, :cond_9

    .line 283
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->getExtraData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Canvas;

    .line 284
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-static {v2}, Lmaster/flame/danmaku/controller/DrawHelper;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 285
    iget-boolean v7, p0, Lmaster/flame/danmaku/controller/DrawTask;->mIsHidden:Z

    if-eqz v7, :cond_2

    .line 286
    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    .line 324
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    :goto_0
    return-object v3

    .line 288
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    iget-wide v8, p2, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-object v7, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v7, v7, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget-wide v10, v7, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x64

    sub-long v0, v8, v10

    .line 289
    .local v0, "beginMills":J
    iget-wide v8, p2, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-object v7, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v7, v7, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget-wide v10, v7, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    add-long v4, v8, v10

    .line 290
    .local v4, "endMills":J
    iget-wide v8, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastBeginMills:J

    cmp-long v7, v8, v0

    if-gtz v7, :cond_3

    iget-wide v8, p2, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-wide v10, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastEndMills:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_7

    .line 291
    :cond_3
    iget-object v7, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v7, v0, v1, v4, v5}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->sub(JJ)Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    move-result-object v6

    .line 292
    .local v6, "subDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    if-eqz v6, :cond_6

    .line 293
    iput-object v6, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    .line 297
    :goto_1
    iput-wide v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastBeginMills:J

    .line 298
    iput-wide v4, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastEndMills:J

    .line 303
    .end local v6    # "subDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    :goto_2
    iget-object v7, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v7}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 304
    iget-object v7, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawTask;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    iget-object v9, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    iget-wide v10, p0, Lmaster/flame/danmaku/controller/DrawTask;->mStartRenderTime:J

    invoke-interface {v7, v8, v9, v10, v11}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer;->draw(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/IDanmakus;J)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    move-result-object v3

    iput-object v3, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    .line 305
    .local v3, "renderingState":Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    iget-boolean v7, v3, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    if-eqz v7, :cond_1

    .line 306
    iget-object v7, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    invoke-virtual {v7}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 307
    iget-object v7, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    invoke-interface {v7}, Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;->onDanmakusDrawingFinished()V

    .line 309
    :cond_4
    iget-wide v8, v3, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->beginTime:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-nez v7, :cond_5

    .line 310
    iput-wide v0, v3, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->beginTime:J

    .line 312
    :cond_5
    iget-wide v8, v3, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-nez v7, :cond_1

    .line 313
    iput-wide v4, v3, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    goto :goto_0

    .line 295
    .end local v3    # "renderingState":Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    .restart local v6    # "subDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    :cond_6
    iget-object v7, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v7}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->clear()V

    goto :goto_1

    .line 300
    .end local v6    # "subDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    :cond_7
    iget-wide v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastBeginMills:J

    .line 301
    iget-wide v4, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastEndMills:J

    goto :goto_2

    .line 318
    :cond_8
    iget-object v7, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    .line 319
    iget-object v7, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iput-wide v0, v7, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->beginTime:J

    .line 320
    iget-object v7, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iput-wide v4, v7, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    .line 321
    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    goto/16 :goto_0

    .line 324
    .end local v0    # "beginMills":J
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "endMills":J
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public getVisibleDanmakusOnTime(J)Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .locals 13
    .param p1, "time"    # J

    .prologue
    .line 186
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v8, v8, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget-wide v8, v8, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    sub-long v8, p1, v8

    const-wide/16 v10, 0x64

    sub-long v0, v8, v10

    .line 187
    .local v0, "beginMills":J
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v8, v8, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget-wide v8, v8, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    add-long v4, p1, v8

    .line 188
    .local v4, "endMills":J
    iget-object v8, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v8, v0, v1, v4, v5}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->subnew(JJ)Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    move-result-object v6

    .line 189
    .local v6, "subDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    new-instance v7, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v7}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>()V

    .line 190
    .local v7, "visibleDanmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 191
    invoke-interface {v6}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->iterator()Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;

    move-result-object v3

    .line 192
    .local v3, "iterator":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 200
    .end local v3    # "iterator":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :cond_1
    return-object v7

    .line 193
    .restart local v3    # "iterator":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :cond_2
    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->next()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v2

    .line 194
    .local v2, "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isShown()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v8

    if-nez v8, :cond_0

    .line 195
    invoke-interface {v7, v2}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    goto :goto_0
.end method

.method protected handleOnDanmakuConfigChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z
    .locals 5
    .param p1, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .param p2, "tag"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;
    .param p3, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 346
    const/4 v1, 0x0

    .line 347
    .local v1, "handled":Z
    if-eqz p2, :cond_0

    sget-object v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->MAXIMUM_NUMS_IN_SCREEN:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v3, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 348
    :cond_0
    const/4 v1, 0x1

    .line 368
    :cond_1
    :goto_0
    return v1

    .line 349
    :cond_2
    sget-object v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DUPLICATE_MERGING_ENABLED:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v3, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 350
    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/Boolean;

    .line 351
    .local v0, "enable":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 353
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    const-string v3, "1017_Filter"

    invoke-virtual {v2, v3}, Lmaster/flame/danmaku/controller/DanmakuFilters;->registerFilter(Ljava/lang/String;)Lmaster/flame/danmaku/controller/DanmakuFilters$IDanmakuFilter;

    .line 357
    :goto_1
    const/4 v1, 0x1

    .line 359
    goto :goto_0

    .line 355
    :cond_3
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    const-string v3, "1017_Filter"

    invoke-virtual {v2, v3}, Lmaster/flame/danmaku/controller/DanmakuFilters;->unregisterFilter(Ljava/lang/String;)V

    goto :goto_1

    .line 359
    .end local v0    # "enable":Ljava/lang/Boolean;
    :cond_4
    sget-object v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCALE_TEXTSIZE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v3, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCROLL_SPEED_FACTOR:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v3, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 360
    :cond_5
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DrawTask;->requestClearRetainer()V

    .line 361
    const/4 v1, 0x0

    .line 362
    goto :goto_0

    :cond_6
    sget-object v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->MAXIMUN_LINES:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v3, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->OVERLAPPING_ENABLE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v3, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 363
    :cond_7
    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    if-eqz v3, :cond_8

    .line 364
    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    iget-object v4, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v4}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->isPreventOverlappingEnabled()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v4}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->isMaxLinesLimited()Z

    move-result v4

    if-nez v4, :cond_9

    :goto_2
    invoke-interface {v3, v2}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer;->setVerifierEnabled(Z)V

    .line 366
    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    .line 364
    :cond_9
    const/4 v2, 0x1

    goto :goto_2
.end method

.method protected initTimer(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)V
    .locals 0
    .param p1, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .prologue
    .line 99
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .line 100
    return-void
.end method

.method public invalidateDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V
    .locals 2
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "remeasure"    # Z

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 132
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->getDisplayer()Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    move-result-object v0

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->getCacheStuffer()Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->clearCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 133
    if-eqz p2, :cond_0

    .line 134
    iput v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    .line 135
    iput v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    .line 137
    :cond_0
    return-void
.end method

.method protected loadDanmakus(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;)V
    .locals 4
    .param p1, "parser"    # Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    .prologue
    .line 253
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {p1, v2}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->setConfig(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    move-result-object v2

    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawTask;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v2, v3}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->setDisplayer(Lmaster/flame/danmaku/danmaku/model/IDisplayer;)Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    move-result-object v2

    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-virtual {v2, v3}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->setTimer(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    move-result-object v2

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->getDanmakus()Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    move-result-object v2

    iput-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    .line 254
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v2}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 255
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v2}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->first()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v2

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->flags:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    if-nez v2, :cond_1

    .line 256
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v2}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->iterator()Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;

    move-result-object v0

    .line 257
    .local v0, "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 265
    .end local v0    # "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :cond_1
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->resetAll()V

    .line 267
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    if-eqz v2, :cond_2

    .line 268
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v2}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->last()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v2

    iput-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastDanmaku:Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 270
    :cond_2
    return-void

    .line 258
    .restart local v0    # "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :cond_3
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->next()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v1

    .line 259
    .local v1, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-eqz v1, :cond_0

    .line 260
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    iput-object v2, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->flags:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    goto :goto_0
.end method

.method public varargs onDanmakuConfigChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z
    .locals 2
    .param p1, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .param p2, "tag"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;
    .param p3, "values"    # [Ljava/lang/Object;

    .prologue
    .line 338
    invoke-virtual {p0, p1, p2, p3}, Lmaster/flame/danmaku/controller/DrawTask;->handleOnDanmakuConfigChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z

    move-result v0

    .line 339
    .local v0, "handled":Z
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    invoke-interface {v1}, Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;->onDanmakuConfigChanged()V

    .line 342
    :cond_0
    return v0
.end method

.method protected onDanmakuRemoved(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 0
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 148
    return-void
.end method

.method public prepare()V
    .locals 1

    .prologue
    .line 244
    sget-boolean v0, Lmaster/flame/danmaku/controller/DrawTask;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 245
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawTask;->loadDanmakus(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;)V

    .line 246
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;->ready()V

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mReadyState:Z

    .line 250
    :cond_1
    return-void
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->unregisterAllConfigChangedCallbacks()V

    .line 239
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer;->release()V

    .line 241
    :cond_0
    return-void
.end method

.method public declared-synchronized removeAllDanmakus()V
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 143
    :cond_1
    :try_start_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAllLiveDanmakus()V
    .locals 4

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v2}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 154
    :cond_1
    :try_start_1
    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    :try_start_2
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v2}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->iterator()Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;

    move-result-object v1

    .line 156
    .local v1, "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 154
    monitor-exit v3

    goto :goto_0

    .end local v1    # "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 152
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 157
    .restart local v1    # "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :cond_3
    :try_start_4
    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->next()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    .line 158
    .local v0, "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    iget-boolean v2, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isLive:Z

    if-eqz v2, :cond_2

    .line 159
    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->remove()V

    .line 160
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawTask;->onDanmakuRemoved(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method protected declared-synchronized removeUnusedLiveDanmakusIn(I)V
    .locals 10
    .param p1, "msec"    # I

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 169
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 170
    .local v4, "startTime":J
    iget-object v3, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->iterator()Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;

    move-result-object v2

    .line 171
    .local v2, "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :cond_2
    invoke-interface {v2}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    invoke-interface {v2}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->next()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    .line 173
    .local v0, "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v1

    .line 174
    .local v1, "isTimeout":Z
    if-eqz v1, :cond_3

    iget-boolean v3, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isLive:Z

    if-eqz v3, :cond_3

    .line 175
    invoke-interface {v2}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->remove()V

    .line 176
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/DrawTask;->onDanmakuRemoved(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 178
    :cond_3
    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    sub-long/2addr v6, v4

    int-to-long v8, p1

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    goto :goto_0

    .line 167
    .end local v0    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v1    # "isTimeout":Z
    .end local v2    # "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    .end local v4    # "startTime":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public requestClear()V
    .locals 2

    .prologue
    .line 328
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastEndMills:J

    iput-wide v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mLastBeginMills:J

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mIsHidden:Z

    .line 330
    return-void
.end method

.method public requestClearRetainer()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->clearRetainerFlag:Z

    .line 334
    return-void
.end method

.method public requestHide()V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mIsHidden:Z

    .line 374
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->danmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->clear()V

    .line 212
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer;->clear()V

    .line 214
    :cond_1
    return-void
.end method

.method public seek(J)V
    .locals 3
    .param p1, "mills"    # J

    .prologue
    .line 218
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DrawTask;->reset()V

    .line 220
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mGlobalFlagValues:Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->updateVisibleFlag()V

    .line 221
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x0

    .end local p1    # "mills":J
    :cond_0
    iput-wide p1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mStartRenderTime:J

    .line 222
    return-void
.end method

.method public setParser(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;)V
    .locals 1
    .param p1, "parser"    # Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    .prologue
    .line 273
    iput-object p1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mReadyState:Z

    .line 275
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, p0, Lmaster/flame/danmaku/controller/DrawTask;->mConfigChangedCallback:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->registerConfigChangedCallback(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$ConfigChangedCallback;)V

    .line 234
    return-void
.end method

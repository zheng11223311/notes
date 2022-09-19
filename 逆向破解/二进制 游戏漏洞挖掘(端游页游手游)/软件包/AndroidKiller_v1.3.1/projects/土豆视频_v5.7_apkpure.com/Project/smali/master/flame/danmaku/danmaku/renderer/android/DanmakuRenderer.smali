.class public Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;
.super Lmaster/flame/danmaku/danmaku/renderer/Renderer;
.source "DanmakuRenderer.java"


# instance fields
.field private mCacheManager:Lmaster/flame/danmaku/danmaku/model/ICacheManager;

.field private final mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field private final mDanmakusRetainer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;

.field private final mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

.field private final mStartTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

.field private mVerifier:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;

.field private final verifier:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 1
    .param p1, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .prologue
    .line 51
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/renderer/Renderer;-><init>()V

    .line 34
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mStartTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .line 35
    new-instance v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    .line 38
    new-instance v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$1;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer$1;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->verifier:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;

    .line 52
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 53
    new-instance v0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mDanmakusRetainer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object v0
.end method

.method static synthetic access$1(Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mStartTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->clearRetainer()V

    .line 59
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DanmakuFilters;->clear()V

    .line 60
    return-void
.end method

.method public clearRetainer()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mDanmakusRetainer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->clear()V

    .line 65
    return-void
.end method

.method public draw(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/IDanmakus;J)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    .locals 13
    .param p1, "disp"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .param p2, "danmakus"    # Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .param p3, "startRenderTime"    # J

    .prologue
    .line 80
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget v8, v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->totalDanmakuCount:I

    .line 81
    .local v8, "lastTotalDanmakuCount":I
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->reset()V

    .line 82
    invoke-interface {p2}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->iterator()Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;

    move-result-object v7

    .line 83
    .local v7, "itr":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    const/4 v2, 0x0

    .line 84
    .local v2, "orderInScreen":I
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mStartTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 85
    invoke-interface {p2}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->size()I

    move-result v3

    .line 86
    .local v3, "sizeInScreen":I
    const/4 v1, 0x0

    .line 87
    .local v1, "drawItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_0
    :goto_0
    invoke-interface {v7}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    :cond_1
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->totalDanmakuCount:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v4, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    .line 142
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    if-eqz v1, :cond_d

    iget-wide v4, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    :goto_2
    iput-wide v4, v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->endTime:J

    .line 143
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-boolean v0, v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->nothingRendered:Z

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->beginTime:J

    .line 146
    :cond_2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget v4, v4, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->totalDanmakuCount:I

    sub-int/2addr v4, v8

    iput v4, v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->incrementCount:I

    .line 147
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mStartTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    move-result-wide v4

    iput-wide v4, v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->consumingTime:J

    .line 148
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    return-object v0

    .line 89
    :cond_3
    invoke-interface {v7}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->next()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->hasPassedFilter()Z

    move-result v0

    if-nez v0, :cond_4

    .line 92
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mStartTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    const/4 v5, 0x0

    iget-object v6, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual/range {v0 .. v6}, Lmaster/flame/danmaku/controller/DanmakuFilters;->filter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 95
    :cond_4
    iget-wide v4, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    cmp-long v0, v4, p3

    if-ltz v0, :cond_0

    .line 96
    iget-byte v0, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->priority:B

    if-nez v0, :cond_5

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isFiltered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    :cond_5
    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isLate()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 101
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mCacheManager:Lmaster/flame/danmaku/danmaku/model/ICacheManager;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->hasDrawingCache()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mCacheManager:Lmaster/flame/danmaku/danmaku/model/ICacheManager;

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/danmaku/model/ICacheManager;->addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    goto :goto_0

    .line 108
    :cond_6
    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_7

    .line 110
    add-int/lit8 v2, v2, 0x1

    .line 114
    :cond_7
    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isMeasured()Z

    move-result v0

    if-nez v0, :cond_8

    .line 115
    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->measure(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Z)V

    .line 119
    :cond_8
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mDanmakusRetainer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;

    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mVerifier:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;

    invoke-virtual {v0, v1, p1, v4}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->fix(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;)V

    .line 122
    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->lines:[Ljava/lang/String;

    if-nez v0, :cond_9

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getBottom()F

    move-result v0

    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_0

    .line 126
    :cond_9
    invoke-virtual {v1, p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->draw(Lmaster/flame/danmaku/danmaku/model/IDisplayer;)I

    move-result v9

    .line 127
    .local v9, "renderingType":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_b

    .line 128
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-wide v4, v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->cacheHitCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    iput-wide v4, v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->cacheHitCount:J

    .line 135
    :cond_a
    :goto_3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->addCount(II)I

    .line 136
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->addTotalCount(I)I

    goto/16 :goto_0

    .line 129
    :cond_b
    const/4 v0, 0x2

    if-ne v9, v0, :cond_a

    .line 130
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mRenderingState:Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    iget-wide v4, v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->cacheMissCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    iput-wide v4, v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->cacheMissCount:J

    .line 131
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mCacheManager:Lmaster/flame/danmaku/danmaku/model/ICacheManager;

    if-eqz v0, :cond_a

    .line 132
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mCacheManager:Lmaster/flame/danmaku/danmaku/model/ICacheManager;

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/danmaku/model/ICacheManager;->addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    goto :goto_3

    .line 141
    .end local v9    # "renderingType":I
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 142
    :cond_d
    const-wide/16 v4, -0x1

    goto/16 :goto_2
.end method

.method public release()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mDanmakusRetainer:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer;->release()V

    .line 70
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/DanmakuFilters;->clear()V

    .line 71
    return-void
.end method

.method public setCacheManager(Lmaster/flame/danmaku/danmaku/model/ICacheManager;)V
    .locals 0
    .param p1, "cacheManager"    # Lmaster/flame/danmaku/danmaku/model/ICacheManager;

    .prologue
    .line 152
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mCacheManager:Lmaster/flame/danmaku/danmaku/model/ICacheManager;

    .line 153
    return-void
.end method

.method public setVerifierEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 75
    if-eqz p1, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->verifier:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;

    :goto_0
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/DanmakuRenderer;->mVerifier:Lmaster/flame/danmaku/danmaku/renderer/android/DanmakusRetainer$Verifier;

    .line 76
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

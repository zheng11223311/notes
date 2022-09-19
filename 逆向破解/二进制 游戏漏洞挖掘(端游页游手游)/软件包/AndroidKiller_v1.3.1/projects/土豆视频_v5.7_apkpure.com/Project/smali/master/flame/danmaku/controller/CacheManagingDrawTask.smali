.class public Lmaster/flame/danmaku/controller/CacheManagingDrawTask;
.super Lmaster/flame/danmaku/controller/DrawTask;
.source "CacheManagingDrawTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAX_CACHE_SCREEN_SIZE:I = 0x3


# instance fields
.field private mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

.field private mCacheTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

.field private final mDrawingNotify:Ljava/lang/Object;

.field private mMaxCacheSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->$assertionsDisabled:Z

    .line 46
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;I)V
    .locals 2
    .param p1, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .param p2, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .param p3, "taskListener"    # Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;
    .param p4, "maxCacheSize"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lmaster/flame/danmaku/controller/DrawTask;-><init>(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;)V

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mMaxCacheSize:I

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mDrawingNotify:Ljava/lang/Object;

    .line 58
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->loadLibs()V

    .line 59
    iput p4, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mMaxCacheSize:I

    .line 60
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->isInNativeAlloc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    mul-int/lit8 v0, p4, 0x2

    iput v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mMaxCacheSize:I

    .line 63
    :cond_0
    new-instance v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p4, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;-><init>(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;II)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    .line 64
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer;->setCacheManager(Lmaster/flame/danmaku/danmaku/model/ICacheManager;)V

    .line 65
    return-void
.end method

.method static synthetic access$0(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    return-object v0
.end method

.method static synthetic access$1(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mDrawingNotify:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    return-object v0
.end method


# virtual methods
.method public addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 1
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lmaster/flame/danmaku/controller/DrawTask;->addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 77
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    goto :goto_0
.end method

.method public draw(Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    .locals 4
    .param p1, "displayer"    # Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lmaster/flame/danmaku/controller/DrawTask;->draw(Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;)Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;

    move-result-object v0

    .line 107
    .local v0, "result":Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;
    iget-object v2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mDrawingNotify:Ljava/lang/Object;

    monitor-enter v2

    .line 108
    :try_start_0
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mDrawingNotify:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 107
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    if-eqz v0, :cond_0

    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    if-eqz v1, :cond_0

    .line 111
    iget v1, v0, Lmaster/flame/danmaku/danmaku/renderer/IRenderer$RenderingState;->incrementCount:I

    const/16 v2, -0x14

    if-ge v1, v2, :cond_0

    .line 112
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->requestClearTimeout()V

    .line 113
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->requestBuild(J)V

    .line 116
    :cond_0
    return-object v0

    .line 107
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected initTimer(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)V
    .locals 4
    .param p1, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .prologue
    .line 69
    iput-object p1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .line 70
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .line 71
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v2, p1, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {v0, v2, v3}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 72
    return-void
.end method

.method public invalidateDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V
    .locals 1
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "remeasure"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    if-nez v0, :cond_0

    .line 85
    invoke-super {p0, p1, p2}, Lmaster/flame/danmaku/controller/DrawTask;->invalidateDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->invalidateDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V

    goto :goto_0
.end method

.method public varargs onDanmakuConfigChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z
    .locals 4
    .param p1, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .param p2, "tag"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;
    .param p3, "values"    # [Ljava/lang/Object;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 925
    invoke-super {p0, p1, p2, p3}, Lmaster/flame/danmaku/controller/DrawTask;->handleOnDanmakuConfigChanged(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCROLL_SPEED_FACTOR:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v0, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 928
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->scaleTextSize:F

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->resetSlopPixel(F)V

    .line 929
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->requestClear()V

    .line 954
    :cond_0
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    if-eqz v0, :cond_1

    .line 955
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    new-instance v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$1;

    invoke-direct {v1, p0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$1;-><init>(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)V

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->post(Ljava/lang/Runnable;)V

    .line 963
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 930
    :cond_2
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->isVisibilityRelatedTag()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 931
    if-eqz p3, :cond_4

    array-length v0, p3

    if-lez v0, :cond_4

    .line 932
    aget-object v0, p3, v1

    if-eqz v0, :cond_4

    aget-object v0, p3, v1

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    aget-object v0, p3, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 933
    :cond_3
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    if-eqz v0, :cond_4

    .line 934
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0, v2, v3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->requestBuild(J)V

    .line 938
    :cond_4
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->requestClear()V

    goto :goto_0

    .line 939
    :cond_5
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->TRANSPARENCY:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v0, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCALE_TEXTSIZE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v0, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DANMAKU_STYLE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v0, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 940
    :cond_6
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCALE_TEXTSIZE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    invoke-virtual {v0, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 941
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->scaleTextSize:F

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->resetSlopPixel(F)V

    .line 943
    :cond_7
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->requestClearAll()V

    .line 945
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget-wide v2, v1, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->requestBuild(J)V

    goto :goto_0

    .line 948
    :cond_8
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->requestClearUnused()V

    .line 950
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0, v2, v3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->requestBuild(J)V

    goto/16 :goto_0
.end method

.method protected onDanmakuRemoved(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 1
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lmaster/flame/danmaku/controller/DrawTask;->onDanmakuRemoved(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 94
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->hasDrawingCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->hasReferences()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->decreaseReference()V

    .line 100
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    .line 102
    :cond_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->destroy()V

    goto :goto_0
.end method

.method public prepare()V
    .locals 1

    .prologue
    .line 159
    sget-boolean v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 160
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mParser:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->loadDanmakus(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;)V

    .line 161
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->begin()V

    .line 162
    return-void
.end method

.method public quit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-super {p0}, Lmaster/flame/danmaku/controller/DrawTask;->quit()V

    .line 148
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->reset()V

    .line 149
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer;->setCacheManager(Lmaster/flame/danmaku/danmaku/model/ICacheManager;)V

    .line 150
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->end()V

    .line 152
    iput-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    .line 154
    :cond_0
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->releaseLibs()V

    .line 155
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer;->clear()V

    .line 124
    :cond_0
    return-void
.end method

.method public seek(J)V
    .locals 1
    .param p1, "mills"    # J

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lmaster/flame/danmaku/controller/DrawTask;->seek(J)V

    .line 129
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->seek(J)V

    .line 130
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 134
    invoke-super {p0}, Lmaster/flame/danmaku/controller/DrawTask;->start()V

    .line 135
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->loadLibs()V

    .line 136
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mMaxCacheSize:I

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;-><init>(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;II)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    .line 138
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->begin()V

    .line 139
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mRenderer:Lmaster/flame/danmaku/danmaku/renderer/IRenderer;

    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/danmaku/renderer/IRenderer;->setCacheManager(Lmaster/flame/danmaku/danmaku/model/ICacheManager;)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mCacheManager:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->resume()V

    goto :goto_0
.end method

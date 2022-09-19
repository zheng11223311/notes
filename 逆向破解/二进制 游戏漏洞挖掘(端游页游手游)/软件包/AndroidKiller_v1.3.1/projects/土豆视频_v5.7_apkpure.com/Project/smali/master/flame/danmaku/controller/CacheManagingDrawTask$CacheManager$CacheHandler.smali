.class public Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;
.super Landroid/os/Handler;
.source "CacheManagingDrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CacheHandler"
.end annotation


# static fields
.field public static final ADD_DANMAKKU:I = 0x2

.field public static final BUILD_CACHES:I = 0x3

.field public static final CLEAR_ALL_CACHES:I = 0x7

.field public static final CLEAR_OUTSIDE_CACHES:I = 0x8

.field public static final CLEAR_OUTSIDE_CACHES_AND_RESET:I = 0x9

.field public static final CLEAR_TIMEOUT_CACHES:I = 0x4

.field public static final DISPATCH_ACTIONS:I = 0x10

.field private static final PREPARE:I = 0x1

.field public static final QUIT:I = 0x6

.field public static final REBUILD_CACHE:I = 0x11

.field public static final SEEK:I = 0x5


# instance fields
.field private mCancelFlag:Z

.field private mPause:Z

.field private mSeekedFlag:Z

.field final synthetic this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 466
    iput-object p1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    .line 467
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 468
    return-void
.end method

.method private final addDanmakuAndBuildCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 8
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 824
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    iget-object v2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$0(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v2

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-object v4, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v4}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v4

    iget-object v4, v4, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v4, v4, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget-wide v4, v4, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-boolean v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isLive:Z

    if-nez v0, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    iget-byte v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->priority:B

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isFiltered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 830
    :cond_2
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->hasDrawingCache()Z

    move-result v0

    if-nez v0, :cond_3

    .line 831
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->buildCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)B

    .line 833
    :cond_3
    iget-boolean v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isLive:Z

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v0

    invoke-static {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$0(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v0

    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v1

    iget-object v1, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v2, v1, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    .line 835
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v1

    iget-object v1, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget-wide v4, v1, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$6(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)I

    move-result v1

    int-to-long v6, v1

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 834
    invoke-virtual {v0, v2, v3}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    goto :goto_0
.end method

.method private buildCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)B
    .locals 11
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "forceInsert"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 759
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isMeasured()Z

    move-result v6

    if-nez v6, :cond_0

    .line 760
    iget-object v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v6}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v6

    iget-object v6, v6, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {p1, v6, v8}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->measure(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Z)V

    .line 763
    :cond_0
    const/4 v1, 0x0

    .line 766
    .local v1, "cache":Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;
    :try_start_0
    iget-object v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    const/4 v9, 0x1

    const/16 v10, 0x14

    invoke-static {v6, p1, v9, v10}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$7(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;ZI)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v3

    .line 767
    .local v3, "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-eqz v3, :cond_1

    .line 768
    iget-object v6, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    move-object v0, v6

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    move-object v1, v0

    .line 770
    :cond_1
    if-eqz v1, :cond_3

    .line 771
    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->increaseReference()V

    .line 772
    iput-object v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    .line 774
    iget-object v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v6}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v6

    invoke-static {v6}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$2(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    move-result-object v6

    const/4 v9, 0x0

    invoke-static {v6, p1, v9, p2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$8(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IZ)Z

    move v8, v7

    .line 819
    .end local v3    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_2
    :goto_0
    return v8

    .line 779
    .restart local v3    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_3
    iget-object v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    const/4 v9, 0x0

    const/16 v10, 0x32

    invoke-static {v6, p1, v9, v10}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$7(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;ZI)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v3

    .line 780
    if-eqz v3, :cond_4

    .line 781
    iget-object v6, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    move-object v0, v6

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    move-object v1, v0

    .line 783
    :cond_4
    if-eqz v1, :cond_5

    .line 784
    const/4 v6, 0x0

    iput-object v6, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    .line 786
    iget-object v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v6}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v6

    iget-object v6, v6, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-static {p1, v6, v1}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->buildDanmakuDrawingCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;)Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    move-result-object v1

    .line 787
    iput-object v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    .line 788
    iget-object v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v6}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v6

    invoke-static {v6}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$2(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    move-result-object v6

    const/4 v9, 0x0

    invoke-static {v6, p1, v9, p2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$8(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IZ)Z

    move v8, v7

    .line 789
    goto :goto_0

    .line 793
    :cond_5
    if-nez p2, :cond_6

    .line 794
    iget v6, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    float-to-int v6, v6

    .line 795
    iget v9, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    float-to-int v9, v9

    .line 794
    invoke-static {v6, v9}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->getCacheSize(II)I

    move-result v2

    .line 796
    .local v2, "cacheSize":I
    iget-object v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v6}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$9(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)I

    move-result v6

    add-int/2addr v6, v2

    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$10(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)I

    move-result v9

    if-gt v6, v9, :cond_2

    .line 802
    .end local v2    # "cacheSize":I
    :cond_6
    iget-object v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v6, v6, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;

    invoke-interface {v6}, Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;->acquire()Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    move-object v1, v0

    .line 803
    iget-object v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v6}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v6

    iget-object v6, v6, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-static {p1, v6, v1}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->buildDanmakuDrawingCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;)Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    move-result-object v1

    .line 804
    iput-object v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    .line 805
    iget-object v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v6}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v6

    invoke-static {v6}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$2(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    move-result-object v6

    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v9, p1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->sizeOf(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result v9

    invoke-static {v6, p1, v9, p2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$8(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IZ)Z

    move-result v5

    .line 806
    .local v5, "pushed":Z
    if-nez v5, :cond_7

    .line 807
    invoke-direct {p0, p1, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->releaseDanmakuCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 810
    :cond_7
    if-eqz v5, :cond_8

    move v6, v7

    :goto_1
    move v8, v6

    goto/16 :goto_0

    :cond_8
    move v6, v8

    goto :goto_1

    .line 812
    .end local v3    # "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v5    # "pushed":Z
    :catch_0
    move-exception v4

    .line 814
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    invoke-direct {p0, p1, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->releaseDanmakuCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;)V

    goto/16 :goto_0

    .line 816
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v4

    .line 818
    .local v4, "e":Ljava/lang/Exception;
    invoke-direct {p0, p1, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->releaseDanmakuCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;)V

    goto/16 :goto_0
.end method

.method private dispatchAction()J
    .locals 12

    .prologue
    .line 561
    iget-object v8, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-virtual {v8}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->getPoolPercent()F

    move-result v5

    .line 562
    .local v5, "level":F
    iget-object v8, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v8, v8, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v8}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->first()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v4

    .line 564
    .local v4, "firstCache":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-eqz v4, :cond_0

    iget-wide v8, v4, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    iget-object v10, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v10

    iget-object v10, v10, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v10, v10, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long v6, v8, v10

    .line 565
    .local v6, "gapTime":J
    :goto_0
    iget-object v8, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v8}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v8

    iget-object v8, v8, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v8, v8, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget-wide v8, v8, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    const-wide/16 v10, 0x2

    mul-long v2, v8, v10

    .line 566
    .local v2, "doubleScreenDuration":J
    const v8, 0x3f19999a    # 0.6f

    cmpg-float v8, v5, v8

    if-gez v8, :cond_1

    iget-object v8, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v8}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v8

    iget-object v8, v8, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v8, v8, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget-wide v8, v8, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    .line 567
    iget-object v8, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v8}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v8

    invoke-static {v8}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$0(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v8

    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v9

    iget-object v9, v9, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v10, v9, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {v8, v10, v11}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 568
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 569
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 570
    const-wide/16 v8, 0x0

    .line 594
    :goto_1
    return-wide v8

    .line 564
    .end local v2    # "doubleScreenDuration":J
    .end local v6    # "gapTime":J
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 571
    .restart local v2    # "doubleScreenDuration":J
    .restart local v6    # "gapTime":J
    :cond_1
    const v8, 0x3ecccccd    # 0.4f

    cmpl-float v8, v5, v8

    if-lez v8, :cond_2

    neg-long v8, v2

    cmp-long v8, v6, v8

    if-gez v8, :cond_2

    .line 573
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 574
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 575
    const-wide/16 v8, 0x0

    goto :goto_1

    .line 578
    :cond_2
    const v8, 0x3f666666    # 0.9f

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_3

    .line 579
    const-wide/16 v8, 0x0

    goto :goto_1

    .line 582
    :cond_3
    iget-object v8, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v8}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v8

    invoke-static {v8}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$0(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v8

    iget-wide v8, v8, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-object v10, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v10

    iget-object v10, v10, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v10, v10, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long v0, v8, v10

    .line 583
    .local v0, "deltaTime":J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gez v8, :cond_4

    .line 584
    iget-object v8, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v8}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v8

    invoke-static {v8}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$0(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v8

    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v9

    iget-object v9, v9, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v10, v9, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {v8, v10, v11}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 585
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 586
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 587
    const-wide/16 v8, 0x0

    goto :goto_1

    .line 588
    :cond_4
    cmp-long v8, v0, v2

    if-lez v8, :cond_5

    .line 589
    const-wide/16 v8, 0x0

    goto :goto_1

    .line 592
    :cond_5
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 593
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 594
    const-wide/16 v8, 0x0

    goto :goto_1
.end method

.method private prepareCaches(Z)J
    .locals 36
    .param p1, "repositioned"    # Z

    .prologue
    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$0(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v2

    iget-wide v12, v2, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    .line 611
    .local v12, "curr":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    iget-object v2, v2, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget-wide v6, v2, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$6(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v32, v0

    mul-long v6, v6, v32

    add-long v18, v12, v6

    .line 612
    .local v18, "end":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    iget-object v2, v2, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v6, v2, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    cmp-long v2, v18, v6

    if-gez v2, :cond_0

    .line 613
    const-wide/16 v10, 0x0

    .line 725
    :goto_0
    return-wide v10

    .line 615
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    .line 616
    .local v28, "startTime":J
    const/4 v14, 0x0

    .line 617
    .local v14, "danmakus":Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    const/16 v30, 0x0

    .line 618
    .local v30, "tryCount":I
    const/16 v21, 0x0

    .line 621
    .local v21, "hasException":Z
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    iget-object v2, v2, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->danmakuList:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    move-wide/from16 v0, v18

    invoke-interface {v2, v12, v13, v0, v1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->subnew(JJ)Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 626
    :goto_1
    add-int/lit8 v30, v30, 0x1

    const/4 v2, 0x3

    move/from16 v0, v30

    if-ge v0, v2, :cond_2

    if-nez v14, :cond_2

    if-nez v21, :cond_1

    .line 627
    :cond_2
    if-nez v14, :cond_3

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$0(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v2

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 629
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 622
    :catch_0
    move-exception v15

    .line 623
    .local v15, "e":Ljava/lang/Exception;
    const/16 v21, 0x1

    .line 624
    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    .line 631
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-interface {v14}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->first()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v20

    .line 632
    .local v20, "first":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    invoke-interface {v14}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->last()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v24

    .line 633
    .local v24, "last":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-eqz v20, :cond_4

    if-nez v24, :cond_5

    .line 634
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$0(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v2

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 635
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 637
    :cond_5
    move-object/from16 v0, v20

    iget-wide v6, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    iget-object v2, v2, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v0, v2, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    move-wide/from16 v32, v0

    sub-long v16, v6, v32

    .line 638
    .local v16, "deltaTime":J
    const-wide/16 v6, 0x1e

    const-wide/16 v32, 0xa

    mul-long v32, v32, v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    iget-object v2, v2, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget-wide v0, v2, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    move-wide/from16 v34, v0

    div-long v32, v32, v34

    add-long v26, v6, v32

    .line 639
    .local v26, "sleepTime":J
    const-wide/16 v6, 0x64

    move-wide/from16 v0, v26

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v26

    .line 640
    if-eqz p1, :cond_6

    .line 641
    const-wide/16 v26, 0x0

    .line 644
    :cond_6
    invoke-interface {v14}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->iterator()Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;

    move-result-object v23

    .line 645
    .local v23, "itr":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    const/4 v3, 0x0

    .line 646
    .local v3, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    const-wide/16 v10, 0x0

    .line 647
    .local v10, "consumingTime":J
    const/4 v4, 0x0

    .line 648
    .local v4, "orderInScreen":I
    const/4 v9, 0x0

    .line 649
    .local v9, "currScreenIndex":I
    invoke-interface {v14}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->size()I

    move-result v5

    .line 651
    .local v5, "sizeInScreen":I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mPause:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mCancelFlag:Z

    if-eqz v2, :cond_9

    .line 718
    :cond_8
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v10, v6, v28

    .line 719
    if-eqz v3, :cond_10

    .line 720
    move-object/from16 v0, p0

    iget-object v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$0(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v2

    iget-wide v6, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    invoke-virtual {v2, v6, v7}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    goto/16 :goto_0

    .line 652
    :cond_9
    invoke-interface/range {v23 .. v23}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v22

    .line 653
    .local v22, "hasNext":Z
    if-eqz v22, :cond_8

    .line 657
    invoke-interface/range {v23 .. v23}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->next()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v3

    .line 659
    move-object/from16 v0, v24

    iget-wide v6, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    iget-object v2, v2, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v0, v2, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    move-wide/from16 v32, v0

    cmp-long v2, v6, v32

    if-ltz v2, :cond_8

    .line 664
    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->hasDrawingCache()Z

    move-result v2

    if-nez v2, :cond_7

    .line 668
    if-nez p1, :cond_a

    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 672
    :cond_a
    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->hasPassedFilter()Z

    move-result v2

    if-nez v2, :cond_b

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    iget-object v2, v2, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFilters:Lmaster/flame/danmaku/controller/DanmakuFilters;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v8}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v8

    iget-object v8, v8, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual/range {v2 .. v8}, Lmaster/flame/danmaku/controller/DanmakuFilters;->filter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 677
    :cond_b
    iget-byte v2, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->priority:B

    if-nez v2, :cond_c

    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isFiltered()Z

    move-result v2

    if-nez v2, :cond_7

    .line 681
    :cond_c
    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->getType()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_d

    .line 683
    iget-wide v6, v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    sub-long/2addr v6, v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    iget-object v2, v2, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget-wide v0, v2, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    move-wide/from16 v32, v0

    div-long v6, v6, v32

    long-to-int v0, v6

    move/from16 v25, v0

    .line 684
    .local v25, "screenIndex":I
    move/from16 v0, v25

    if-ne v9, v0, :cond_f

    .line 685
    add-int/lit8 v4, v4, 0x1

    .line 692
    .end local v25    # "screenIndex":I
    :cond_d
    :goto_3
    if-nez p1, :cond_e

    .line 694
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$1(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 695
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$1(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Ljava/lang/Object;

    move-result-object v2

    move-wide/from16 v0, v26

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 694
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 704
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->buildCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)B

    move-result v2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_8

    .line 709
    if-nez p1, :cond_7

    .line 710
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v10, v6, v28

    .line 711
    const-wide/16 v6, 0xed8

    move-object/from16 v0, p0

    iget-object v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$6(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v32, v0

    mul-long v6, v6, v32

    cmp-long v2, v10, v6

    if-ltz v2, :cond_7

    goto/16 :goto_2

    .line 687
    .restart local v25    # "screenIndex":I
    :cond_f
    const/4 v4, 0x0

    .line 688
    move/from16 v9, v25

    goto :goto_3

    .line 694
    .end local v25    # "screenIndex":I
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 697
    :catch_1
    move-exception v15

    .line 698
    .local v15, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 723
    .end local v15    # "e":Ljava/lang/InterruptedException;
    .end local v22    # "hasNext":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v2

    invoke-static {v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$0(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v2

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    goto/16 :goto_0
.end method

.method private releaseDanmakuCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;)V
    .locals 1
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "cache"    # Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    .prologue
    .line 598
    if-nez p2, :cond_0

    .line 599
    iget-object p2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    .end local p2    # "cache":Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;
    check-cast p2, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    .line 601
    .restart local p2    # "cache":Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    .line 602
    if-nez p2, :cond_1

    .line 607
    :goto_0
    return-void

    .line 605
    :cond_1
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->destroy()V

    .line 606
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;

    invoke-interface {v0, p2}, Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;->release(Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;)V

    goto :goto_0
.end method


# virtual methods
.method public begin()V
    .locals 4

    .prologue
    .line 840
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 841
    const/4 v0, 0x4

    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v1

    iget-object v1, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget-wide v2, v1, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    invoke-virtual {p0, v0, v2, v3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 842
    return-void
.end method

.method public createCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    .locals 7
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 730
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isMeasured()Z

    move-result v3

    if-nez v3, :cond_0

    .line 731
    iget-object v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v3

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {p1, v3, v4}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->measure(Lmaster/flame/danmaku/danmaku/model/IDisplayer;Z)V

    .line 733
    :cond_0
    const/4 v1, 0x0

    .line 735
    .local v1, "cache":Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;
    :try_start_0
    iget-object v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;

    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;->acquire()Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    move-object v1, v0

    .line 736
    iget-object v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v3

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-static {p1, v3, v1}, Lmaster/flame/danmaku/danmaku/util/DanmakuUtils;->buildDanmakuDrawingCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/IDisplayer;Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;)Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    move-result-object v1

    .line 737
    iput-object v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v4

    .line 753
    :goto_0
    return v3

    .line 738
    :catch_0
    move-exception v2

    .line 740
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    if-eqz v1, :cond_1

    .line 741
    iget-object v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;

    invoke-interface {v3, v1}, Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;->release(Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;)V

    .line 743
    :cond_1
    iput-object v6, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    move v3, v5

    .line 744
    goto :goto_0

    .line 745
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 747
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v1, :cond_2

    .line 748
    iget-object v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;

    invoke-interface {v3, v1}, Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;->release(Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;)V

    .line 750
    :cond_2
    iput-object v6, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    move v3, v5

    .line 751
    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 476
    iget v8, p1, Landroid/os/Message;->what:I

    .line 477
    .local v8, "what":I
    packed-switch v8, :pswitch_data_0

    .line 558
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 479
    :pswitch_1
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$0(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    .line 480
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v9, 0x12c

    if-lt v1, v9, :cond_2

    .line 485
    .end local v1    # "i":I
    :pswitch_2
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->dispatchAction()J

    move-result-wide v2

    .line 486
    .local v2, "delayed":J
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-gtz v9, :cond_1

    .line 487
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v9

    iget-object v9, v9, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v9, v9, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget-wide v10, v9, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    const-wide/16 v12, 0x2

    div-long v2, v10, v12

    .line 489
    :cond_1
    const/16 v9, 0x10

    invoke-virtual {p0, v9, v2, v3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 481
    .end local v2    # "delayed":J
    .restart local v1    # "i":I
    :cond_2
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    iget-object v9, v9, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;

    new-instance v10, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    invoke-direct {v10}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;-><init>()V

    invoke-interface {v9, v10}, Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;->release(Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;)V

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 492
    .end local v1    # "i":I
    :pswitch_3
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 493
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v9

    iget-object v9, v9, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v9

    iget-boolean v9, v9, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mReadyState:Z

    if-eqz v9, :cond_5

    :cond_3
    iget-boolean v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mSeekedFlag:Z

    if-nez v9, :cond_5

    const/4 v6, 0x0

    .line 494
    .local v6, "repositioned":Z
    :goto_2
    invoke-direct {p0, v6}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->prepareCaches(Z)J

    .line 495
    if-eqz v6, :cond_4

    .line 496
    const/4 v9, 0x0

    iput-boolean v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mSeekedFlag:Z

    .line 497
    :cond_4
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v9

    iget-object v9, v9, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v9

    iget-boolean v9, v9, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mReadyState:Z

    if-nez v9, :cond_0

    .line 498
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v9

    iget-object v9, v9, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTaskListener:Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;

    invoke-interface {v9}, Lmaster/flame/danmaku/controller/IDrawTask$TaskListener;->ready()V

    .line 499
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v9

    const/4 v10, 0x1

    iput-boolean v10, v9, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mReadyState:Z

    goto/16 :goto_0

    .line 493
    .end local v6    # "repositioned":Z
    :cond_5
    const/4 v6, 0x1

    goto :goto_2

    .line 504
    :pswitch_4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 505
    .local v4, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    invoke-direct {p0, v4}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->addDanmakuAndBuildCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    goto/16 :goto_0

    .line 508
    .end local v4    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :pswitch_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/util/Pair;

    .line 509
    .local v5, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/Boolean;>;"
    if-eqz v5, :cond_0

    .line 510
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 511
    .local v0, "cacheitem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    iget-object v9, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 512
    iget v9, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->requestFlags:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->requestFlags:I

    .line 514
    :cond_6
    iget v9, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->requestFlags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->requestFlags:I

    .line 515
    iget-boolean v9, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isLive:Z

    if-eqz v9, :cond_7

    .line 516
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v9, v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$1(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)J

    .line 517
    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->createCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    goto/16 :goto_0

    .line 519
    :cond_7
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v0, v11}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->entryRemoved(ZLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 520
    invoke-direct {p0, v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->addDanmakuAndBuildCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    goto/16 :goto_0

    .line 525
    .end local v0    # "cacheitem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .end local v5    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/Boolean;>;"
    :pswitch_6
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$2(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    goto/16 :goto_0

    .line 528
    :pswitch_7
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    .line 529
    .local v7, "seekMills":Ljava/lang/Long;
    if-eqz v7, :cond_0

    .line 530
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v9

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$0(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 531
    const/4 v9, 0x1

    iput-boolean v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mSeekedFlag:Z

    .line 532
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$0(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    .line 533
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->resume()V

    goto/16 :goto_0

    .line 537
    .end local v7    # "seekMills":Ljava/lang/Long;
    :pswitch_8
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 538
    const/4 v9, 0x1

    iput-boolean v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mPause:Z

    .line 539
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$3(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    .line 540
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$4(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    .line 541
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 544
    :pswitch_9
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$3(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V

    .line 545
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v9

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$0(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v9

    iget-object v10, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v10

    iget-object v10, v10, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v10, v10, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-object v12, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v12}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v12

    iget-object v12, v12, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v12, v12, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget-wide v12, v12, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    sub-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 546
    const/4 v9, 0x1

    iput-boolean v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mSeekedFlag:Z

    goto/16 :goto_0

    .line 549
    :pswitch_a
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$5(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Z)V

    .line 550
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v9

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$0(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v9

    iget-object v10, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v10

    iget-object v10, v10, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v10, v10, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {v9, v10, v11}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    goto/16 :goto_0

    .line 553
    :pswitch_b
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$5(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Z)V

    .line 554
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v9

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$0(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v9

    iget-object v10, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v10}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v10

    iget-object v10, v10, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v10, v10, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-virtual {v9, v10, v11}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 555
    iget-object v9, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v9

    invoke-virtual {v9}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->requestClear()V

    goto/16 :goto_0

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public isPause()Z
    .locals 1

    .prologue
    .line 859
    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mPause:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 845
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mPause:Z

    .line 846
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 847
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 848
    return-void
.end method

.method public requestBuildCacheAndDraw(J)V
    .locals 5
    .param p1, "correctionTime"    # J

    .prologue
    const/4 v4, 0x3

    .line 863
    invoke-virtual {p0, v4}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 864
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mSeekedFlag:Z

    .line 865
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mCancelFlag:Z

    .line 866
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v0

    invoke-static {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$0(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    move-result-object v0

    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v1

    iget-object v1, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v2, v1, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->update(J)J

    .line 867
    invoke-virtual {p0, v4}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 868
    return-void
.end method

.method public requestCancelCaching()V
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mCancelFlag:Z

    .line 472
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/16 v1, 0x10

    const/4 v0, 0x0

    .line 851
    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mCancelFlag:Z

    .line 852
    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->mPause:Z

    .line 853
    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 854
    invoke-virtual {p0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    .line 855
    const/4 v0, 0x4

    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->this$1:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;

    invoke-static {v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    move-result-object v1

    iget-object v1, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;

    iget-wide v2, v1, Lmaster/flame/danmaku/danmaku/parser/DanmakuFactory;->MAX_DANMAKU_DURATION:J

    invoke-virtual {p0, v0, v2, v3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 856
    return-void
.end method

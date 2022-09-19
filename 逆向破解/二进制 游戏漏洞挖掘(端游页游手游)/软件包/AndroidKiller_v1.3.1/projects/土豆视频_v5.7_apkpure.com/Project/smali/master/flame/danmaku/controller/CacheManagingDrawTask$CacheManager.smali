.class public Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;
.super Ljava/lang/Object;
.source "CacheManagingDrawTask.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/model/ICacheManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/controller/CacheManagingDrawTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CacheManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;
    }
.end annotation


# static fields
.field public static final RESULT_FAILED:B = 0x1t

.field public static final RESULT_FAILED_OVERSIZE:B = 0x2t

.field public static final RESULT_SUCCESS:B = 0x0t

.field private static final TAG:Ljava/lang/String; = "CacheManager"


# instance fields
.field mCachePool:Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmaster/flame/danmaku/danmaku/model/objectpool/Pool",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;",
            ">;"
        }
    .end annotation
.end field

.field mCachePoolManager:Lmaster/flame/danmaku/danmaku/model/android/DrawingCachePoolManager;

.field mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

.field private mEndFlag:Z

.field private mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

.field private mMaxSize:I

.field private mRealSize:I

.field private mScreenSize:I

.field public mThread:Landroid/os/HandlerThread;

.field final synthetic this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;II)V
    .locals 3
    .param p2, "maxSize"    # I
    .param p3, "screenSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 190
    iput-object p1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    .line 176
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCachePoolManager;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCachePoolManager;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePoolManager:Lmaster/flame/danmaku/danmaku/model/android/DrawingCachePoolManager;

    .line 178
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePoolManager:Lmaster/flame/danmaku/danmaku/model/android/DrawingCachePoolManager;

    const/16 v1, 0x320

    invoke-static {v0, v1}, Lmaster/flame/danmaku/danmaku/model/objectpool/Pools;->finitePool(Lmaster/flame/danmaku/danmaku/model/objectpool/PoolableManager;I)Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;

    .line 184
    const/4 v0, 0x3

    iput v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mScreenSize:I

    .line 191
    iput-boolean v2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mEndFlag:Z

    .line 192
    iput v2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    .line 193
    iput p2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mMaxSize:I

    .line 194
    iput p3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mScreenSize:I

    .line 195
    return-void
.end method

.method static synthetic access$0(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->evictAllNotInScreen()V

    return-void
.end method

.method static synthetic access$1(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)J
    .locals 2

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->clearCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$10(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mMaxSize:I

    return v0
.end method

.method static synthetic access$11(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)Lmaster/flame/danmaku/controller/CacheManagingDrawTask;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    return-object v0
.end method

.method static synthetic access$2(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->clearTimeOutCaches()V

    return-void
.end method

.method static synthetic access$3(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->evictAll()V

    return-void
.end method

.method static synthetic access$4(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->clearCachePool()V

    return-void
.end method

.method static synthetic access$5(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Z)V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->evictAllNotInScreen(Z)V

    return-void
.end method

.method static synthetic access$6(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mScreenSize:I

    return v0
.end method

.method static synthetic access$7(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;ZI)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .locals 1

    .prologue
    .line 395
    invoke-direct {p0, p1, p2, p3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->findReuseableCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;ZI)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IZ)Z
    .locals 1

    .prologue
    .line 350
    invoke-direct {p0, p1, p2, p3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->push(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;)I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    return v0
.end method

.method private clearCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)J
    .locals 4
    .param p1, "oldValue"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    const/4 v3, 0x0

    .line 325
    iget-object v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    invoke-interface {v2}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->hasReferences()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    iget-object v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    invoke-interface {v2}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->decreaseReference()V

    .line 327
    iput-object v3, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    .line 328
    const-wide/16 v0, 0x0

    .line 333
    :goto_0
    return-wide v0

    .line 330
    :cond_0
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->sizeOf(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I

    move-result v2

    int-to-long v0, v2

    .line 331
    .local v0, "size":J
    iget-object v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    invoke-interface {v2}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->destroy()V

    .line 332
    iput-object v3, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    goto :goto_0
.end method

.method private clearCachePool()V
    .locals 2

    .prologue
    .line 345
    :goto_0
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;

    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;->acquire()Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    .local v0, "item":Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;
    if-nez v0, :cond_0

    .line 348
    return-void

    .line 346
    :cond_0
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;->destroy()V

    goto :goto_0
.end method

.method private clearTimeOutCaches()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;->currMillisecond:J

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->clearTimeOutCaches(J)V

    .line 372
    return-void
.end method

.method private clearTimeOutCaches(J)V
    .locals 8
    .param p1, "time"    # J

    .prologue
    .line 375
    iget-object v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->iterator()Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;

    move-result-object v1

    .line 376
    .local v1, "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :goto_0
    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mEndFlag:Z

    if-eqz v3, :cond_1

    .line 393
    :cond_0
    :goto_1
    return-void

    .line 377
    :cond_1
    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->next()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v2

    .line 378
    .local v2, "val":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    iget-object v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$1(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 381
    :try_start_0
    iget-object v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$1(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v6, 0x1e

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->entryRemoved(ZLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 388
    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->remove()V

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 384
    monitor-exit v4

    goto :goto_1

    .line 379
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private evictAll()V
    .locals 4

    .prologue
    .line 270
    iget-object v2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->iterator()Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;

    move-result-object v1

    .line 272
    .local v1, "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :goto_0
    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 276
    iget-object v2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->clear()V

    .line 278
    .end local v1    # "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    .line 279
    return-void

    .line 273
    .restart local v1    # "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :cond_1
    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->next()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    .line 274
    .local v0, "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->entryRemoved(ZLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    goto :goto_0
.end method

.method private evictAllNotInScreen()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->evictAllNotInScreen(Z)V

    .line 283
    return-void
.end method

.method private evictAllNotInScreen(Z)V
    .locals 9
    .param p1, "removeAllReferences"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 286
    iget-object v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    if-eqz v6, :cond_1

    .line 287
    iget-object v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v6}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->iterator()Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;

    move-result-object v3

    .line 288
    .local v3, "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 308
    .end local v3    # "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :cond_1
    iput v5, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    .line 309
    return-void

    .line 289
    .restart local v3    # "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    :cond_2
    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->next()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v1

    .line 290
    .local v1, "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    iget-object v0, v1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    .line 291
    .local v0, "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;, "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<*>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->hasReferences()Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v4

    .line 292
    .local v2, "hasReferences":Z
    :goto_1
    if-eqz p1, :cond_5

    if-eqz v2, :cond_5

    .line 293
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 294
    iget v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->size()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    .line 295
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->destroy()V

    .line 297
    :cond_3
    invoke-virtual {p0, v4, v1, v8}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->entryRemoved(ZLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 298
    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->remove()V

    goto :goto_0

    .end local v2    # "hasReferences":Z
    :cond_4
    move v2, v5

    .line 291
    goto :goto_1

    .line 301
    .restart local v2    # "hasReferences":Z
    :cond_5
    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->hasDrawingCache()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 302
    :cond_6
    invoke-virtual {p0, v4, v1, v8}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->entryRemoved(ZLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 303
    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->remove()V

    goto :goto_0
.end method

.method private findReuseableCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;ZI)Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .locals 10
    .param p1, "refDanmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "strictMode"    # Z
    .param p3, "maximumTimes"    # I

    .prologue
    const/4 v9, 0x0

    .line 398
    iget-object v7, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v7}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->iterator()Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;

    move-result-object v4

    .line 399
    .local v4, "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    const/4 v5, 0x0

    .line 400
    .local v5, "slopPixel":I
    if-nez p2, :cond_0

    .line 401
    iget-object v7, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v7, v7, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mDisp:Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    invoke-virtual {v7}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->getSlopPixel()I

    move-result v7

    mul-int/lit8 v5, v7, 0x2

    .line 403
    :cond_0
    const/4 v0, 0x0

    .line 404
    .local v0, "count":I
    :goto_0
    invoke-interface {v4}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    if-lt v0, p3, :cond_2

    move v0, v1

    .line 433
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_1
    :goto_1
    const/4 v2, 0x0

    :goto_2
    return-object v2

    .line 405
    .end local v0    # "count":I
    .restart local v1    # "count":I
    :cond_2
    invoke-interface {v4}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->next()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v2

    .line 406
    .local v2, "danmaku":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->hasDrawingCache()Z

    move-result v7

    if-nez v7, :cond_3

    move v0, v1

    .line 407
    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_0

    .line 409
    .end local v0    # "count":I
    .restart local v1    # "count":I
    :cond_3
    iget v7, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    iget v8, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_4

    .line 410
    iget v7, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    iget v8, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_4

    .line 411
    iget v7, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->underlineColor:I

    iget v8, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->underlineColor:I

    if-ne v7, v8, :cond_4

    .line 412
    iget v7, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->borderColor:I

    iget v8, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->borderColor:I

    if-ne v7, v8, :cond_4

    .line 413
    iget v7, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    iget v8, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->textColor:I

    if-ne v7, v8, :cond_4

    .line 414
    iget-object v7, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    iget-object v8, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v0, v1

    .line 415
    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_2

    .line 417
    .end local v0    # "count":I
    .restart local v1    # "count":I
    :cond_4
    if-eqz p2, :cond_5

    move v0, v1

    .line 418
    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_0

    .line 420
    .end local v0    # "count":I
    .restart local v1    # "count":I
    :cond_5
    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v7

    if-nez v7, :cond_6

    move v0, v1

    .line 421
    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1

    .line 423
    .end local v0    # "count":I
    .restart local v1    # "count":I
    :cond_6
    iget-object v7, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    invoke-interface {v7}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->hasReferences()Z

    move-result v7

    if-eqz v7, :cond_7

    move v0, v1

    .line 424
    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_0

    .line 426
    .end local v0    # "count":I
    .restart local v1    # "count":I
    :cond_7
    iget-object v7, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    invoke-interface {v7}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->width()I

    move-result v7

    int-to-float v7, v7

    iget v8, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintWidth:F

    sub-float v6, v7, v8

    .line 427
    .local v6, "widthGap":F
    iget-object v7, v2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    invoke-interface {v7}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->paintHeight:F

    sub-float v3, v7, v8

    .line 428
    .local v3, "heightGap":F
    cmpl-float v7, v6, v9

    if-ltz v7, :cond_8

    int-to-float v7, v5

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_8

    .line 429
    cmpl-float v7, v3, v9

    if-ltz v7, :cond_8

    int-to-float v7, v5

    cmpg-float v7, v3, v7

    if-gtz v7, :cond_8

    move v0, v1

    .line 430
    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_2

    .end local v0    # "count":I
    .restart local v1    # "count":I
    :cond_8
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto/16 :goto_0
.end method

.method private push(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IZ)Z
    .locals 5
    .param p1, "item"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "itemSize"    # I
    .param p3, "forcePush"    # Z

    .prologue
    const/4 v2, 0x0

    .line 351
    move v1, p2

    .line 352
    .local v1, "size":I
    :goto_0
    iget v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    add-int/2addr v3, v1

    iget v4, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mMaxSize:I

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 364
    :cond_0
    :goto_1
    iget-object v2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v2, p1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    .line 365
    iget v2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    add-int/2addr v2, v1

    iput v2, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    .line 367
    const/4 v2, 0x1

    :cond_1
    return v2

    .line 353
    :cond_2
    iget-object v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->first()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    .line 354
    .local v0, "oldValue":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 355
    invoke-virtual {p0, v2, v0, p1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->entryRemoved(ZLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 356
    iget-object v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v3, v0}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->removeItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    goto :goto_0

    .line 358
    :cond_3
    if-eqz p3, :cond_1

    goto :goto_1
.end method


# virtual methods
.method public addDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 2
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 207
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 210
    :cond_0
    return-void
.end method

.method public begin()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DFM Cache-Building Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    .line 223
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 225
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-nez v0, :cond_1

    .line 226
    new-instance v0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;-><init>(Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    .line 227
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->begin()V

    .line 228
    return-void
.end method

.method public end()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 231
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mEndFlag:Z

    .line 232
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$1(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 233
    :try_start_0
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    invoke-static {v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->access$1(Lmaster/flame/danmaku/controller/CacheManagingDrawTask;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 232
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->pause()V

    .line 237
    iput-object v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    .line 239
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 241
    :try_start_1
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    :goto_0
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 246
    iput-object v3, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mThread:Landroid/os/HandlerThread;

    .line 248
    :cond_1
    return-void

    .line 232
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected entryRemoved(ZLmaster/flame/danmaku/danmaku/model/BaseDanmaku;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V
    .locals 6
    .param p1, "evicted"    # Z
    .param p2, "oldValue"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p3, "newValue"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 312
    iget-object v1, p2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    if-eqz v1, :cond_1

    .line 313
    iget-object v0, p2, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    .line 314
    .local v0, "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;, "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<*>;"
    invoke-direct {p0, p2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->clearCache(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)J

    move-result-wide v2

    .line 315
    .local v2, "releasedSize":J
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->this$0:Lmaster/flame/danmaku/controller/CacheManagingDrawTask;

    iget-object v1, v1, Lmaster/flame/danmaku/controller/CacheManagingDrawTask;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->getDisplayer()Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;

    move-result-object v1

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/AbsDisplayer;->getCacheStuffer()Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lmaster/flame/danmaku/danmaku/model/android/BaseCacheStuffer;->releaseResource(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)V

    .line 318
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    .line 322
    .end local v0    # "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;, "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<*>;"
    .end local v2    # "releasedSize":J
    :cond_1
    :goto_0
    return-void

    .line 319
    .restart local v0    # "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;, "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<*>;"
    .restart local v2    # "releasedSize":J
    :cond_2
    iget v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    int-to-long v4, v1

    sub-long/2addr v4, v2

    long-to-int v1, v4

    iput v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    .line 320
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCachePool:Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/android/DrawingCache;

    .end local v0    # "cache":Lmaster/flame/danmaku/danmaku/model/IDrawingCache;, "Lmaster/flame/danmaku/danmaku/model/IDrawingCache<*>;"
    invoke-interface {v1, v0}, Lmaster/flame/danmaku/danmaku/model/objectpool/Pool;->release(Lmaster/flame/danmaku/danmaku/model/objectpool/Poolable;)V

    goto :goto_0
.end method

.method public getFirstCacheTime()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 872
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 873
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mCaches:Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;->first()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v0

    .line 874
    .local v0, "firstItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    if-nez v0, :cond_1

    .line 878
    .end local v0    # "firstItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_0
    :goto_0
    return-wide v2

    .line 876
    .restart local v0    # "firstItem":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :cond_1
    iget-wide v2, v0, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->time:J

    goto :goto_0
.end method

.method public getPoolPercent()F
    .locals 2

    .prologue
    .line 259
    iget v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mMaxSize:I

    if-nez v0, :cond_0

    .line 260
    const/4 v0, 0x0

    .line 262
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    int-to-float v0, v0

    iget v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mMaxSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public invalidateDanmaku(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Z)V
    .locals 3
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "remeasure"    # Z

    .prologue
    .line 213
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->requestCancelCaching()V

    .line 215
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 218
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;Ljava/lang/Boolean;>;"
    :cond_0
    return-void
.end method

.method public isPoolFull()Z
    .locals 2

    .prologue
    .line 266
    iget v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mRealSize:I

    add-int/lit16 v0, v0, 0x1400

    iget v1, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mMaxSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 914
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-nez v0, :cond_0

    .line 918
    :goto_0
    return-void

    .line 917
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public requestBuild(J)V
    .locals 1
    .param p1, "correctionTime"    # J

    .prologue
    .line 882
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->requestBuildCacheAndDraw(J)V

    .line 885
    :cond_0
    return-void
.end method

.method public requestClearAll()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 888
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-nez v0, :cond_0

    .line 895
    :goto_0
    return-void

    .line 891
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 892
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->requestCancelCaching()V

    .line 893
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 894
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public requestClearTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 906
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-nez v0, :cond_0

    .line 911
    :goto_0
    return-void

    .line 909
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 910
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public requestClearUnused()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 898
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-nez v0, :cond_0

    .line 903
    :goto_0
    return-void

    .line 901
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 902
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->resume()V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->begin()V

    goto :goto_0
.end method

.method public seek(J)V
    .locals 3
    .param p1, "mills"    # J

    .prologue
    .line 198
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->requestCancelCaching()V

    .line 201
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->removeMessages(I)V

    .line 202
    iget-object v0, p0, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager;->mHandler:Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;

    const/4 v1, 0x5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/controller/CacheManagingDrawTask$CacheManager$CacheHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method protected sizeOf(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)I
    .locals 1
    .param p1, "value"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .prologue
    .line 337
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->hasReferences()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->cache:Lmaster/flame/danmaku/danmaku/model/IDrawingCache;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDrawingCache;->size()I

    move-result v0

    .line 340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;
.super Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/controller/DanmakuFilters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DuplicateMergingFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected final blockedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

.field protected final currentDanmakus:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            ">;"
        }
    .end annotation
.end field

.field private final passedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 364
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;-><init>()V

    .line 366
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->blockedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    .line 367
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->currentDanmakus:Ljava/util/LinkedHashMap;

    .line 368
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/Danmakus;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->passedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    .line 364
    return-void
.end method

.method private removeTimeoutDanmakus(Ljava/util/LinkedHashMap;I)V
    .locals 10
    .param p2, "limitTime"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, "danmakus":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 393
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 394
    .local v4, "startTime":J
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 410
    :cond_1
    :goto_0
    return-void

    .line 396
    :cond_2
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 397
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    .line 398
    .local v3, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 399
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    int-to-long v8, p2

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    goto :goto_0

    .line 403
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;>;"
    .end local v3    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private final removeTimeoutDanmakus(Lmaster/flame/danmaku/danmaku/model/IDanmakus;J)V
    .locals 8
    .param p1, "danmakus"    # Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .param p2, "limitTime"    # J

    .prologue
    .line 371
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->iterator()Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;

    move-result-object v1

    .line 372
    .local v1, "it":Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 373
    .local v4, "startTime":J
    :cond_0
    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 388
    :cond_1
    :goto_0
    return-void

    .line 375
    :cond_2
    :try_start_0
    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->next()Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;

    move-result-object v2

    .line 376
    .local v2, "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 377
    invoke-interface {v1}, Lmaster/flame/danmaku/danmaku/model/IDanmakuIterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    cmp-long v3, v6, p2

    if-lez v3, :cond_0

    goto :goto_0

    .line 381
    .end local v2    # "item":Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 460
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->reset()V

    .line 461
    return-void
.end method

.method public filter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z
    .locals 2
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "index"    # I
    .param p3, "totalsizeInScreen"    # I
    .param p4, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .param p5, "fromCachingTask"    # Z
    .param p6, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .prologue
    .line 439
    invoke-virtual/range {p0 .. p5}, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->needFilter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;Z)Z

    move-result v0

    .line 440
    .local v0, "filtered":Z
    if-eqz v0, :cond_0

    .line 441
    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mFilterParam:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->mFilterParam:I

    .line 443
    :cond_0
    return v0
.end method

.method public declared-synchronized needFilter(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;IILmaster/flame/danmaku/danmaku/model/DanmakuTimer;Z)Z
    .locals 6
    .param p1, "danmaku"    # Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;
    .param p2, "index"    # I
    .param p3, "totalsizeInScreen"    # I
    .param p4, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .param p5, "fromCachingTask"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 414
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->blockedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    const-wide/16 v4, 0x2

    invoke-direct {p0, v2, v4, v5}, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->removeTimeoutDanmakus(Lmaster/flame/danmaku/danmaku/model/IDanmakus;J)V

    .line 415
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->passedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    const-wide/16 v4, 0x2

    invoke-direct {p0, v2, v4, v5}, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->removeTimeoutDanmakus(Lmaster/flame/danmaku/danmaku/model/IDanmakus;J)V

    .line 416
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->currentDanmakus:Ljava/util/LinkedHashMap;

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->removeTimeoutDanmakus(Ljava/util/LinkedHashMap;I)V

    .line 417
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->blockedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v2, p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->contains(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->isOutside()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 431
    :goto_0
    monitor-exit p0

    return v0

    .line 420
    :cond_0
    :try_start_1
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->passedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v2, p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->contains(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 421
    goto :goto_0

    .line 423
    :cond_1
    iget-object v2, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->currentDanmakus:Ljava/util/LinkedHashMap;

    iget-object v3, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 424
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->currentDanmakus:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->blockedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v1, p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->removeItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z

    .line 426
    iget-object v1, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->blockedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v1, p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 429
    :cond_2
    :try_start_2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->currentDanmakus:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;->text:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->passedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->addItem(Lmaster/flame/danmaku/danmaku/model/BaseDanmaku;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 431
    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 453
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->passedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->clear()V

    .line 454
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->blockedDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/IDanmakus;->clear()V

    .line 455
    iget-object v0, p0, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->currentDanmakus:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    monitor-exit p0

    return-void

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/DanmakuFilters$DuplicateMergingFilter;->setData(Ljava/lang/Void;)V

    return-void
.end method

.method public setData(Ljava/lang/Void;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Void;

    .prologue
    .line 449
    return-void
.end method

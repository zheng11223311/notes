.class public Lcom/sea_monster/cache/BaseCache;
.super Ljava/lang/Object;
.source "BaseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sea_monster/cache/BaseCache$1;,
        Lcom/sea_monster/cache/BaseCache$RecyclePolicy;,
        Lcom/sea_monster/cache/BaseCache$SnapshotInputStreamProvider;,
        Lcom/sea_monster/cache/BaseCache$ContentStreamProvider;,
        Lcom/sea_monster/cache/BaseCache$FileInputStreamProvider;,
        Lcom/sea_monster/cache/BaseCache$InputStreamProvider;,
        Lcom/sea_monster/cache/BaseCache$DiskCacheFlushRunnable;,
        Lcom/sea_monster/cache/BaseCache$Builder;
    }
.end annotation


# static fields
.field static final DISK_CACHE_FLUSH_DELAY_SECS:I = 0x5


# instance fields
.field protected mDiskCache:Lcom/sea_monster/cache/DiskLruCache;

.field protected mDiskCacheEditLocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;"
        }
    .end annotation
.end field

.field protected mDiskCacheFlusherExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field protected mDiskCacheFlusherRunnable:Lcom/sea_monster/cache/BaseCache$DiskCacheFlushRunnable;

.field protected mDiskCacheFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field protected mDiskCacheLocation:Ljava/io/File;

.field private mTempDir:Ljava/io/File;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/sea_monster/cache/BaseCache;Ljava/io/File;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sea_monster/cache/BaseCache;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sea_monster/cache/BaseCache;->validateLocation(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/sea_monster/cache/BaseCache;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lcom/sea_monster/cache/BaseCache;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/sea_monster/cache/BaseCache;->mTempDir:Ljava/io/File;

    return-object p1
.end method

.method protected static checkNotOnMainThread()V
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method should not be called from the main/UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    return-void
.end method

.method protected static transformUrlForDiskCacheKey(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sea_monster/cache/Md5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private validateLocation(Ljava/io/File;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 98
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 101
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    :cond_1
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public contains(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 314
    iget-object v2, p0, Lcom/sea_monster/cache/BaseCache;->mDiskCache:Lcom/sea_monster/cache/DiskLruCache;

    if-eqz v2, :cond_0

    .line 315
    invoke-static {}, Lcom/sea_monster/cache/BaseCache;->checkNotOnMainThread()V

    .line 318
    :try_start_0
    iget-object v2, p0, Lcom/sea_monster/cache/BaseCache;->mDiskCache:Lcom/sea_monster/cache/DiskLruCache;

    invoke-static {p1}, Lcom/sea_monster/cache/BaseCache;->transformUrlForDiskCacheKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sea_monster/cache/DiskLruCache;->get(Ljava/lang/String;)Lcom/sea_monster/cache/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 324
    :cond_0
    :goto_0
    return v1

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 328
    iget-object v4, p0, Lcom/sea_monster/cache/BaseCache;->mDiskCache:Lcom/sea_monster/cache/DiskLruCache;

    if-nez v4, :cond_0

    .line 347
    :goto_0
    return-object v3

    .line 331
    :cond_0
    invoke-static {}, Lcom/sea_monster/cache/BaseCache;->checkNotOnMainThread()V

    .line 333
    invoke-static {p1}, Lcom/sea_monster/cache/BaseCache;->transformUrlForDiskCacheKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lcom/sea_monster/cache/BaseCache$SnapshotInputStreamProvider;

    invoke-direct {v2, p0, v1}, Lcom/sea_monster/cache/BaseCache$SnapshotInputStreamProvider;-><init>(Lcom/sea_monster/cache/BaseCache;Ljava/lang/String;)V

    .line 338
    .local v2, "provider":Lcom/sea_monster/cache/BaseCache$SnapshotInputStreamProvider;
    if-eqz v2, :cond_1

    .line 339
    invoke-virtual {v2}, Lcom/sea_monster/cache/BaseCache$SnapshotInputStreamProvider;->getFile()Ljava/io/File;

    move-result-object v3

    goto :goto_0

    .line 341
    :cond_1
    iget-object v4, p0, Lcom/sea_monster/cache/BaseCache;->mDiskCache:Lcom/sea_monster/cache/DiskLruCache;

    invoke-virtual {v4, v1}, Lcom/sea_monster/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 342
    invoke-virtual {p0}, Lcom/sea_monster/cache/BaseCache;->scheduleDiskCacheFlush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    .end local v2    # "provider":Lcom/sea_monster/cache/BaseCache$SnapshotInputStreamProvider;
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 351
    iget-object v4, p0, Lcom/sea_monster/cache/BaseCache;->mDiskCache:Lcom/sea_monster/cache/DiskLruCache;

    if-nez v4, :cond_0

    .line 370
    :goto_0
    return-object v3

    .line 354
    :cond_0
    invoke-static {}, Lcom/sea_monster/cache/BaseCache;->checkNotOnMainThread()V

    .line 356
    invoke-static {p1}, Lcom/sea_monster/cache/BaseCache;->transformUrlForDiskCacheKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lcom/sea_monster/cache/BaseCache$SnapshotInputStreamProvider;

    invoke-direct {v2, p0, v1}, Lcom/sea_monster/cache/BaseCache$SnapshotInputStreamProvider;-><init>(Lcom/sea_monster/cache/BaseCache;Ljava/lang/String;)V

    .line 361
    .local v2, "provider":Lcom/sea_monster/cache/BaseCache$SnapshotInputStreamProvider;
    if-eqz v2, :cond_1

    .line 362
    invoke-virtual {v2}, Lcom/sea_monster/cache/BaseCache$SnapshotInputStreamProvider;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0

    .line 364
    :cond_1
    iget-object v4, p0, Lcom/sea_monster/cache/BaseCache;->mDiskCache:Lcom/sea_monster/cache/DiskLruCache;

    invoke-virtual {v4, v1}, Lcom/sea_monster/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 365
    invoke-virtual {p0}, Lcom/sea_monster/cache/BaseCache;->scheduleDiskCacheFlush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    .end local v2    # "provider":Lcom/sea_monster/cache/BaseCache$SnapshotInputStreamProvider;
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getLockForDiskCacheEdit(Landroid/net/Uri;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 129
    iget-object v2, p0, Lcom/sea_monster/cache/BaseCache;->mDiskCacheEditLocks:Ljava/util/Map;

    monitor-enter v2

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/sea_monster/cache/BaseCache;->mDiskCacheEditLocks:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 131
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 133
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v1, p0, Lcom/sea_monster/cache/BaseCache;->mDiskCacheEditLocks:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    monitor-exit v2

    return-object v0

    .line 136
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public put(Landroid/net/Uri;Ljava/io/InputStream;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 374
    invoke-static {}, Lcom/sea_monster/cache/BaseCache;->checkNotOnMainThread()V

    .line 378
    const/4 v5, 0x0

    .line 380
    .local v5, "tmpFile":Ljava/io/File;
    :try_start_0
    const-string v6, "bitmapcache_"

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sea_monster/cache/BaseCache;->mTempDir:Ljava/io/File;

    invoke-static {v6, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 383
    invoke-static {p2, v5}, Lcom/sea_monster/cache/IoUtils;->copy(Ljava/io/InputStream;Ljava/io/File;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    if-eqz v5, :cond_1

    .line 391
    new-instance v4, Lcom/sea_monster/cache/BaseCache$FileInputStreamProvider;

    invoke-direct {v4, v5}, Lcom/sea_monster/cache/BaseCache$FileInputStreamProvider;-><init>(Ljava/io/File;)V

    .line 393
    .local v4, "provider":Lcom/sea_monster/cache/BaseCache$FileInputStreamProvider;
    if-eqz v4, :cond_1

    .line 396
    iget-object v6, p0, Lcom/sea_monster/cache/BaseCache;->mDiskCache:Lcom/sea_monster/cache/DiskLruCache;

    if-eqz v6, :cond_0

    .line 397
    invoke-static {p1}, Lcom/sea_monster/cache/BaseCache;->transformUrlForDiskCacheKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sea_monster/cache/BaseCache;->getLockForDiskCacheEdit(Landroid/net/Uri;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    .line 399
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 402
    :try_start_1
    iget-object v6, p0, Lcom/sea_monster/cache/BaseCache;->mDiskCache:Lcom/sea_monster/cache/DiskLruCache;

    invoke-virtual {v6, v2}, Lcom/sea_monster/cache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/sea_monster/cache/DiskLruCache$Editor;

    move-result-object v1

    .line 403
    .local v1, "editor":Lcom/sea_monster/cache/DiskLruCache$Editor;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/sea_monster/cache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sea_monster/cache/IoUtils;->copy(Ljava/io/File;Ljava/io/OutputStream;)J

    .line 404
    invoke-virtual {v1}, Lcom/sea_monster/cache/DiskLruCache$Editor;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 410
    invoke-virtual {p0}, Lcom/sea_monster/cache/BaseCache;->scheduleDiskCacheFlush()V

    .line 415
    .end local v1    # "editor":Lcom/sea_monster/cache/DiskLruCache$Editor;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 418
    .end local v4    # "provider":Lcom/sea_monster/cache/BaseCache$FileInputStreamProvider;
    :cond_1
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/io/IOException;
    sget-object v6, Lcom/sea_monster/cache/Constants;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error writing to saving stream to temp file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 406
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v4    # "provider":Lcom/sea_monster/cache/BaseCache$FileInputStreamProvider;
    :catch_1
    move-exception v0

    .line 407
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    sget-object v6, Lcom/sea_monster/cache/Constants;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error writing to disk cache. URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 409
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 410
    invoke-virtual {p0}, Lcom/sea_monster/cache/BaseCache;->scheduleDiskCacheFlush()V

    goto :goto_1

    .line 409
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 410
    invoke-virtual {p0}, Lcom/sea_monster/cache/BaseCache;->scheduleDiskCacheFlush()V

    throw v6
.end method

.method public remove(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 421
    iget-object v1, p0, Lcom/sea_monster/cache/BaseCache;->mDiskCache:Lcom/sea_monster/cache/DiskLruCache;

    if-eqz v1, :cond_0

    .line 422
    invoke-static {}, Lcom/sea_monster/cache/BaseCache;->checkNotOnMainThread()V

    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/sea_monster/cache/BaseCache;->mDiskCache:Lcom/sea_monster/cache/DiskLruCache;

    invoke-static {p1}, Lcom/sea_monster/cache/BaseCache;->transformUrlForDiskCacheKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sea_monster/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 426
    invoke-virtual {p0}, Lcom/sea_monster/cache/BaseCache;->scheduleDiskCacheFlush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected scheduleDiskCacheFlush()V
    .locals 5

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sea_monster/cache/BaseCache;->mDiskCacheFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sea_monster/cache/BaseCache;->mDiskCacheFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sea_monster/cache/BaseCache;->mDiskCacheFlusherExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lcom/sea_monster/cache/BaseCache;->mDiskCacheFlusherRunnable:Lcom/sea_monster/cache/BaseCache$DiskCacheFlushRunnable;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/sea_monster/cache/BaseCache;->mDiskCacheFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 153
    return-void
.end method

.method protected setDiskLruCache(Lcom/sea_monster/cache/DiskLruCache;)V
    .locals 0
    .param p1, "diskLruCache"    # Lcom/sea_monster/cache/DiskLruCache;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sea_monster/cache/BaseCache;->mDiskCache:Lcom/sea_monster/cache/DiskLruCache;

    .line 141
    return-void
.end method

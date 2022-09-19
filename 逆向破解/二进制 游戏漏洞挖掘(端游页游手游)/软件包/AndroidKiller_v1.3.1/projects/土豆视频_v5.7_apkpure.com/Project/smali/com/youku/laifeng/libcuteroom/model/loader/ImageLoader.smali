.class public Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;


# static fields
.field private static mLoader:Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;

.field private static mMemoryCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static mMutex:Ljava/lang/Object;


# instance fields
.field private mPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    const/4 v2, 0x0

    sput-object v2, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->mLoader:Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;

    .line 23
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->mMutex:Ljava/lang/Object;

    .line 28
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    long-to-int v1, v2

    .line 29
    .local v1, "maxMemory":I
    div-int/lit8 v0, v1, 0x10

    .line 30
    .local v0, "mCacheSize":I
    new-instance v2, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader$1;

    invoke-direct {v2, v0}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader$1;-><init>(I)V

    sput-object v2, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->mMemoryCache:Landroid/support/v4/util/LruCache;

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->mPool:Ljava/util/concurrent/ExecutorService;

    .line 43
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoaderThreadFactory;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoaderThreadFactory;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->mPool:Ljava/util/concurrent/ExecutorService;

    .line 44
    return-void
.end method

.method public static getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->mLoader:Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;

    if-nez v0, :cond_1

    .line 48
    sget-object v1, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->mLoader:Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->mLoader:Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->mLoader:Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getMemoryCache()Landroid/support/v4/util/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->mMemoryCache:Landroid/support/v4/util/LruCache;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 63
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImageCache()Landroid/support/v4/util/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->mMemoryCache:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method public insertTask(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;

    invoke-direct {v0, p1}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "call":Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable;, "Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadCallable<Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;>;"
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 95
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    :goto_0
    return-object v3

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 101
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 98
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1
.end method

.method public insertTask(Lcom/youku/laifeng/libcuteroom/model/listener/OnFileDownloadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "l"    # Lcom/youku/laifeng/libcuteroom/model/listener/OnFileDownloadListener;
    .param p2, "dirPath"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/DownFileRunnable;

    invoke-direct {v0, p1, p2, p3}, Lcom/youku/laifeng/libcuteroom/model/loader/DownFileRunnable;-><init>(Lcom/youku/laifeng/libcuteroom/model/listener/OnFileDownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .local v0, "task":Lcom/youku/laifeng/libcuteroom/model/loader/DownFileRunnable;
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method public insertTask(Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;Ljava/lang/String;)V
    .locals 2
    .param p1, "l"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 68
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;

    invoke-direct {v0, p1, p0, p2}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;-><init>(Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;Ljava/lang/String;)V

    .line 69
    .local v0, "task":Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public insertTask(Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;Ljava/lang/String;I)V
    .locals 2
    .param p1, "l"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 77
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;-><init>(Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;Lcom/youku/laifeng/libcuteroom/model/listener/OnImageLoaderListener;Ljava/lang/String;I)V

    .line 78
    .local v0, "task":Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method public loadGifts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;

    invoke-direct {v0, p1, p2}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .local v0, "task":Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoadRunnable;
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method public onImageLoaderComplition(Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;)V
    .locals 3
    .param p1, "l"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;
    .param p2, "b"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;

    .prologue
    .line 106
    invoke-virtual {p2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmapKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 107
    if-nez p1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    :try_start_0
    invoke-interface {p1, p2}, Lcom/youku/laifeng/libcuteroom/model/port/service/IBitmapManagerServiceListener;->onReceiveBitmap(Lcom/youku/laifeng/libcuteroom/model/data/BeanBitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onImageLoaderError(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msgDetail"    # Ljava/lang/String;

    .prologue
    .line 121
    return-void
.end method

.method public uploadData(Lcom/youku/laifeng/libcuteroom/model/listener/OnUploadListener;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "l"    # Lcom/youku/laifeng/libcuteroom/model/listener/OnUploadListener;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "mToken"    # Ljava/lang/String;
    .param p5, "mKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/youku/laifeng/libcuteroom/model/listener/OnUploadListener;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    .local p3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;-><init>(Lcom/youku/laifeng/libcuteroom/model/listener/OnUploadListener;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .local v0, "task":Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable;, "Lcom/youku/laifeng/libcuteroom/model/loader/UploadRunnable<TT;>;"
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/ImageLoader;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

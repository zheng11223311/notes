.class public Lcom/youku/laifeng/sdk/util/NetworkImageLoader;
.super Ljava/lang/Object;
.source "NetworkImageLoader.java"


# static fields
.field private static instance:Lcom/youku/laifeng/sdk/util/NetworkImageLoader;

.field private static final mMutex:Ljava/lang/Object;


# instance fields
.field private mPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->instance:Lcom/youku/laifeng/sdk/util/NetworkImageLoader;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->mMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 15
    const/16 v0, 0x10

    new-instance v1, Lcom/youku/laifeng/sdk/util/NetworkImageCacheThreadFactory;

    invoke-direct {v1}, Lcom/youku/laifeng/sdk/util/NetworkImageCacheThreadFactory;-><init>()V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 16
    return-void
.end method

.method public static final getInstance()Lcom/youku/laifeng/sdk/util/NetworkImageLoader;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->instance:Lcom/youku/laifeng/sdk/util/NetworkImageLoader;

    if-nez v0, :cond_1

    .line 20
    sget-object v1, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->instance:Lcom/youku/laifeng/sdk/util/NetworkImageLoader;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;

    invoke-direct {v0}, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;-><init>()V

    sput-object v0, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->instance:Lcom/youku/laifeng/sdk/util/NetworkImageLoader;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->instance:Lcom/youku/laifeng/sdk/util/NetworkImageLoader;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public canncelAll()V
    .locals 4

    .prologue
    .line 46
    iget-object v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    .line 47
    .local v0, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 48
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 50
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public canncelByCategoryTag(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    .line 36
    .local v0, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 37
    .local v1, "r":Ljava/lang/Runnable;
    instance-of v2, v1, Lcom/youku/laifeng/sdk/util/NetworkImageRunnable;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 38
    check-cast v2, Lcom/youku/laifeng/sdk/util/NetworkImageRunnable;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/util/NetworkImageRunnable;->getCategoryTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 43
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_1
    return-void
.end method

.method public canncelByTag(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    .line 54
    .local v0, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 55
    .local v1, "r":Ljava/lang/Runnable;
    instance-of v2, v1, Lcom/youku/laifeng/sdk/util/NetworkImageRunnable;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 56
    check-cast v2, Lcom/youku/laifeng/sdk/util/NetworkImageRunnable;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/util/NetworkImageRunnable;->getSingleTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 62
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_1
    return-void
.end method

.method public excute(Ljava/lang/String;Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;
    .param p3, "stag"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "cacheable"    # Z

    .prologue
    .line 30
    invoke-static {}, Lcom/youku/laifeng/sdk/util/SimpleImageFactory;->getFactory()Lcom/youku/laifeng/sdk/util/SimpleImageFactory;

    move-result-object v0

    const-class v1, Lcom/youku/laifeng/sdk/util/NetworkImageRunnable;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/youku/laifeng/sdk/util/SimpleImageFactory;->getInstance(Ljava/lang/Class;Ljava/lang/String;Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/laifeng/sdk/util/NetworkImageRunnable;

    .line 31
    .local v7, "r":Lcom/youku/laifeng/sdk/util/NetworkImageRunnable;
    iget-object v0, p0, Lcom/youku/laifeng/sdk/util/NetworkImageLoader;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 32
    return-void
.end method

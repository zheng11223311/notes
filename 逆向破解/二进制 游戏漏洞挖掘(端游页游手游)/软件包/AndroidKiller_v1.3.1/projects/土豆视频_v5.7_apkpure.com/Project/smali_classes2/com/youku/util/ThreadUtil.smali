.class public Lcom/youku/util/ThreadUtil;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# static fields
.field private static final THREAD_COUNT:I = 0x5

.field private static mCached:Ljava/util/concurrent/ExecutorService;

.field private static mFixed:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getTheadPool(Z)Ljava/util/concurrent/ExecutorService;
    .locals 2
    .param p0, "isCached"    # Z

    .prologue
    .line 22
    const-class v1, Lcom/youku/util/ThreadUtil;

    monitor-enter v1

    if-eqz p0, :cond_1

    .line 24
    :try_start_0
    sget-object v0, Lcom/youku/util/ThreadUtil;->mCached:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/youku/util/ThreadUtil;->mCached:Ljava/util/concurrent/ExecutorService;

    .line 27
    :cond_0
    sget-object v0, Lcom/youku/util/ThreadUtil;->mCached:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :goto_0
    monitor-exit v1

    return-object v0

    .line 31
    :cond_1
    :try_start_1
    sget-object v0, Lcom/youku/util/ThreadUtil;->mFixed:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    .line 32
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/youku/util/ThreadUtil;->mFixed:Ljava/util/concurrent/ExecutorService;

    .line 34
    :cond_2
    sget-object v0, Lcom/youku/util/ThreadUtil;->mFixed:Ljava/util/concurrent/ExecutorService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.class public Lcom/youku/player/util/ThreadPoolUtil;
.super Ljava/lang/Object;
.source "ThreadPoolUtil.java"


# static fields
.field private static arrayBlockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/youku/player/util/ThreadPoolUtil;->arrayBlockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 38
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/youku/player/util/ThreadPoolUtil;->arrayBlockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v8, Lcom/youku/player/util/ThreadPoolUtil$1;

    invoke-direct {v8, p0}, Lcom/youku/player/util/ThreadPoolUtil$1;-><init>(Lcom/youku/player/util/ThreadPoolUtil;)V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/youku/player/util/ThreadPoolUtil;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 52
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/youku/player/util/ThreadPoolUtil;->arrayBlockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method public static clearBlockingQueue2()V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/youku/player/util/ThreadPoolUtil;->arrayBlockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/youku/player/util/ThreadPoolUtil;->arrayBlockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lcom/youku/player/util/ThreadPoolUtil;->arrayBlockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 66
    :cond_0
    return-void
.end method

.method public static declared-synchronized getThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/youku/player/util/ThreadPoolUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/youku/player/util/ThreadPoolUtil;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/youku/player/util/ThreadPoolUtil;

    invoke-direct {v0}, Lcom/youku/player/util/ThreadPoolUtil;-><init>()V

    .line 58
    :cond_0
    sget-object v0, Lcom/youku/player/util/ThreadPoolUtil;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

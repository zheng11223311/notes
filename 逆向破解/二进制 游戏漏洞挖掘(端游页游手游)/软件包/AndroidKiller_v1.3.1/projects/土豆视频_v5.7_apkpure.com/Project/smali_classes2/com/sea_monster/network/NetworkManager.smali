.class public Lcom/sea_monster/network/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# static fields
.field static sS:Lcom/sea_monster/network/NetworkManager;


# instance fields
.field mHandler:Lcom/sea_monster/network/HttpHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v0, 0x1e

    invoke-direct {v7, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    .line 26
    .local v7, "mWorkQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v8, Lcom/sea_monster/network/NetworkManager$1;

    invoke-direct {v8, p0}, Lcom/sea_monster/network/NetworkManager$1;-><init>(Lcom/sea_monster/network/NetworkManager;)V

    .line 34
    .local v8, "mThreadFactory":Ljava/util/concurrent/ThreadFactory;
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 37
    .local v1, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    new-instance v0, Lcom/sea_monster/network/DiscardOldestPolicy;

    invoke-direct {v0}, Lcom/sea_monster/network/DiscardOldestPolicy;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 39
    new-instance v0, Lcom/sea_monster/network/DefaultHttpHandler;

    invoke-direct {v0, p1, v1}, Lcom/sea_monster/network/DefaultHttpHandler;-><init>(Landroid/content/Context;Ljava/util/concurrent/ThreadPoolExecutor;)V

    iput-object v0, p0, Lcom/sea_monster/network/NetworkManager;->mHandler:Lcom/sea_monster/network/HttpHandler;

    .line 40
    return-void
.end method

.method public static getInstance()Lcom/sea_monster/network/NetworkManager;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/sea_monster/network/NetworkManager;->sS:Lcom/sea_monster/network/NetworkManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    new-instance v0, Lcom/sea_monster/network/NetworkManager;

    invoke-direct {v0, p0}, Lcom/sea_monster/network/NetworkManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sea_monster/network/NetworkManager;->sS:Lcom/sea_monster/network/NetworkManager;

    .line 44
    return-void
.end method


# virtual methods
.method public cancelRequest(Lcom/sea_monster/network/AbstractHttpRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "request":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<*>;"
    return-void
.end method

.method public requestAsync(Lcom/sea_monster/network/AbstractHttpRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "request":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/network/NetworkManager;->mHandler:Lcom/sea_monster/network/HttpHandler;

    invoke-interface {v0, p1}, Lcom/sea_monster/network/HttpHandler;->executeRequest(Lcom/sea_monster/network/AbstractHttpRequest;)I

    .line 53
    return-void
.end method

.method public requestSync(Lcom/sea_monster/network/AbstractHttpRequest;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sea_monster/network/AbstractHttpRequest",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sea_monster/exception/BaseException;
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "request":Lcom/sea_monster/network/AbstractHttpRequest;, "Lcom/sea_monster/network/AbstractHttpRequest<TT;>;"
    iget-object v0, p0, Lcom/sea_monster/network/NetworkManager;->mHandler:Lcom/sea_monster/network/HttpHandler;

    invoke-interface {v0, p1}, Lcom/sea_monster/network/HttpHandler;->executeRequestSync(Lcom/sea_monster/network/AbstractHttpRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

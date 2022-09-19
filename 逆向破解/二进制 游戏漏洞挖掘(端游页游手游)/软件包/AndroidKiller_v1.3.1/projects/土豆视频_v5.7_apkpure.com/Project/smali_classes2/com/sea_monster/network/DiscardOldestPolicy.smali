.class public Lcom/sea_monster/network/DiscardOldestPolicy;
.super Ljava/lang/Object;
.source "DiscardOldestPolicy.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 5
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "e"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 18
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_4

    .line 19
    const/4 v1, 0x0

    .line 20
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    instance-of v2, v2, Ljava/util/concurrent/PriorityBlockingQueue;

    if-nez v2, :cond_0

    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    instance-of v2, v2, Ljava/util/PriorityQueue;

    if-eqz v2, :cond_5

    .line 21
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 23
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "runnable":Ljava/lang/Runnable;
    check-cast v1, Ljava/lang/Runnable;

    .restart local v1    # "runnable":Ljava/lang/Runnable;
    goto :goto_0

    .line 27
    :cond_1
    if-eqz v1, :cond_2

    .line 28
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 33
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    instance-of v2, v1, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;

    if-eqz v2, :cond_3

    .line 34
    check-cast v1, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;

    .end local v1    # "runnable":Ljava/lang/Runnable;
    invoke-virtual {v1}, Lcom/sea_monster/network/DefaultHttpHandler$PriorityRequestRunnable;->getRequest()Lcom/sea_monster/network/AbstractHttpRequest;

    move-result-object v2

    new-instance v3, Lcom/sea_monster/exception/InternalException;

    const-string v4, "rejectedExecution:oldest request Discard"

    invoke-direct {v3, v4}, Lcom/sea_monster/exception/InternalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sea_monster/network/AbstractHttpRequest;->cancelRequest(Lcom/sea_monster/exception/BaseException;)V

    .line 38
    :cond_3
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 40
    :cond_4
    return-void

    .line 30
    .restart local v1    # "runnable":Ljava/lang/Runnable;
    :cond_5
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "runnable":Ljava/lang/Runnable;
    check-cast v1, Ljava/lang/Runnable;

    .restart local v1    # "runnable":Ljava/lang/Runnable;
    goto :goto_1
.end method

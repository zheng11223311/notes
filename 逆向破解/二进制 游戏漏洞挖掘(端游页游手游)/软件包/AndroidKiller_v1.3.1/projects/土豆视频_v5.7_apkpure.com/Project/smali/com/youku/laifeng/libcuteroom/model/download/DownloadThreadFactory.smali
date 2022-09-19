.class Lcom/youku/laifeng/libcuteroom/model/download/DownloadThreadFactory;
.super Ljava/lang/Object;
.source "DownloadThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final group:Ljava/lang/ThreadGroup;

.field final namePrefix:Ljava/lang/String;

.field final threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/download/DownloadThreadFactory;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 16
    .local v0, "s":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/SecurityManager;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/download/DownloadThreadFactory;->group:Ljava/lang/ThreadGroup;

    .line 17
    const-string v1, "DownloadPoll-thread-"

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/download/DownloadThreadFactory;->namePrefix:Ljava/lang/String;

    .line 18
    return-void

    .line 16
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 7
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    const/4 v6, 0x5

    .line 21
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/download/DownloadThreadFactory;->group:Ljava/lang/ThreadGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/download/DownloadThreadFactory;->namePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/download/DownloadThreadFactory;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 24
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->isDaemon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 26
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    if-eq v1, v6, :cond_1

    .line 27
    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setPriority(I)V

    .line 28
    :cond_1
    return-object v0
.end method

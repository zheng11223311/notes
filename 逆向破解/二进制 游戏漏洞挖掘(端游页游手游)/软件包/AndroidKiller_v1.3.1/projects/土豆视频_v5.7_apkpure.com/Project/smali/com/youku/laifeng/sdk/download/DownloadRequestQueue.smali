.class public Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;
.super Ljava/lang/Object;
.source "DownloadRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;
    }
.end annotation


# static fields
.field private static final DEFAULT_DOWNLOAD_THREAD_POOL_SIZE:I = 0x1


# instance fields
.field private mCurrentRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/youku/laifeng/sdk/download/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mDelivery:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;

.field private mDownloadDispatchers:[Lcom/youku/laifeng/sdk/download/DownloadDispatcher;

.field private mDownloadQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/youku/laifeng/sdk/download/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    .line 22
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mDownloadQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/youku/laifeng/sdk/download/DownloadDispatcher;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mDownloadDispatchers:[Lcom/youku/laifeng/sdk/download/DownloadDispatcher;

    .line 84
    new-instance v0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;-><init>(Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mDelivery:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;

    .line 85
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "threadPoolSize"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    .line 22
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mDownloadQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    new-instance v0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;-><init>(Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mDelivery:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;

    .line 92
    if-lez p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 93
    new-array v0, p1, [Lcom/youku/laifeng/sdk/download/DownloadDispatcher;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mDownloadDispatchers:[Lcom/youku/laifeng/sdk/download/DownloadDispatcher;

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/youku/laifeng/sdk/download/DownloadDispatcher;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mDownloadDispatchers:[Lcom/youku/laifeng/sdk/download/DownloadDispatcher;

    goto :goto_0
.end method

.method private getDownloadId()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mDownloadDispatchers:[Lcom/youku/laifeng/sdk/download/DownloadDispatcher;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mDownloadDispatchers:[Lcom/youku/laifeng/sdk/download/DownloadDispatcher;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mDownloadDispatchers:[Lcom/youku/laifeng/sdk/download/DownloadDispatcher;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->quit()V

    .line 216
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_1
    return-void
.end method


# virtual methods
.method add(Lcom/youku/laifeng/sdk/download/DownloadRequest;)I
    .locals 3
    .param p1, "request"    # Lcom/youku/laifeng/sdk/download/DownloadRequest;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->getDownloadId()I

    move-result v0

    .line 114
    .local v0, "downloadId":I
    invoke-virtual {p1, p0}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->setDownloadRequestQueue(Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;)V

    .line 116
    iget-object v2, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v2

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {p1, v0}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->setDownloadId(I)V

    .line 122
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mDownloadQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 124
    return v0

    .line 118
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method cancel(I)I
    .locals 4
    .param p1, "downloadId"    # I

    .prologue
    .line 168
    iget-object v2, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v2

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/sdk/download/DownloadRequest;

    .line 170
    .local v0, "request":Lcom/youku/laifeng/sdk/download/DownloadRequest;
    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getDownloadId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->cancel()V

    .line 172
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 173
    const/4 v1, 0x1

    monitor-exit v2

    .line 178
    .end local v0    # "request":Lcom/youku/laifeng/sdk/download/DownloadRequest;
    :goto_0
    return v1

    .line 176
    :cond_1
    monitor-exit v2

    .line 178
    const/4 v1, 0x0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method cancelAll()V
    .locals 4

    .prologue
    .line 157
    iget-object v2, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v2

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/sdk/download/DownloadRequest;

    .line 159
    .local v0, "request":Lcom/youku/laifeng/sdk/download/DownloadRequest;
    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->cancel()V

    goto :goto_0

    .line 164
    .end local v0    # "request":Lcom/youku/laifeng/sdk/download/DownloadRequest;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 163
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 164
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    return-void
.end method

.method finish(Lcom/youku/laifeng/sdk/download/DownloadRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/youku/laifeng/sdk/download/DownloadRequest;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 186
    monitor-exit v1

    .line 188
    :cond_0
    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCurrentQueueSize()I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method getCurrentRequests()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/youku/laifeng/sdk/download/DownloadRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    return-object v0
.end method

.method query(I)I
    .locals 4
    .param p1, "downloadId"    # I

    .prologue
    .line 129
    iget-object v2, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v2

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/sdk/download/DownloadRequest;

    .line 131
    .local v0, "request":Lcom/youku/laifeng/sdk/download/DownloadRequest;
    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getDownloadId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getDownloadState()I

    move-result v1

    monitor-exit v2

    .line 136
    .end local v0    # "request":Lcom/youku/laifeng/sdk/download/DownloadRequest;
    :goto_0
    return v1

    .line 135
    :cond_1
    monitor-exit v2

    .line 136
    const/16 v1, 0x6a

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method queryRequest(I)Lcom/youku/laifeng/sdk/download/DownloadRequest;
    .locals 4
    .param p1, "downloadId"    # I

    .prologue
    .line 145
    iget-object v2, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v2

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/sdk/download/DownloadRequest;

    .line 147
    .local v0, "request":Lcom/youku/laifeng/sdk/download/DownloadRequest;
    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getDownloadId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 148
    monitor-exit v2

    .line 152
    .end local v0    # "request":Lcom/youku/laifeng/sdk/download/DownloadRequest;
    :goto_0
    return-object v0

    .line 151
    :cond_1
    monitor-exit v2

    .line 152
    const/4 v0, 0x0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 191
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 192
    iget-object v2, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v2

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 194
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mCurrentRequests:Ljava/util/Set;

    .line 195
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mDownloadQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz v1, :cond_1

    .line 199
    iput-object v3, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mDownloadQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mDownloadDispatchers:[Lcom/youku/laifeng/sdk/download/DownloadDispatcher;

    if-eqz v1, :cond_3

    .line 203
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->stop()V

    .line 205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mDownloadDispatchers:[Lcom/youku/laifeng/sdk/download/DownloadDispatcher;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 206
    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mDownloadDispatchers:[Lcom/youku/laifeng/sdk/download/DownloadDispatcher;

    aput-object v3, v1, v0

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 208
    .restart local v0    # "i":I
    :cond_2
    iput-object v3, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mDownloadDispatchers:[Lcom/youku/laifeng/sdk/download/DownloadDispatcher;

    .line 210
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->stop()V

    .line 103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mDownloadDispatchers:[Lcom/youku/laifeng/sdk/download/DownloadDispatcher;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 104
    new-instance v0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mDownloadQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mDelivery:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;

    invoke-direct {v0, v2, v3}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;)V

    .line 105
    .local v0, "downloadDispatcher":Lcom/youku/laifeng/sdk/download/DownloadDispatcher;
    iget-object v2, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->mDownloadDispatchers:[Lcom/youku/laifeng/sdk/download/DownloadDispatcher;

    aput-object v0, v2, v1

    .line 106
    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->start()V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "downloadDispatcher":Lcom/youku/laifeng/sdk/download/DownloadDispatcher;
    :cond_0
    return-void
.end method

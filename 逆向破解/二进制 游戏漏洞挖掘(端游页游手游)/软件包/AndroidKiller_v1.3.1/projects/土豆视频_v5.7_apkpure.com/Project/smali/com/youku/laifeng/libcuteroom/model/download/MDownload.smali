.class public Lcom/youku/laifeng/libcuteroom/model/download/MDownload;
.super Ljava/lang/Object;
.source "MDownload.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/model/download/IDownload;
.implements Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTaskListener;


# static fields
.field private static instance:Lcom/youku/laifeng/libcuteroom/model/download/MDownload;


# instance fields
.field private mPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->instance:Lcom/youku/laifeng/libcuteroom/model/download/MDownload;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mTaskMap:Ljava/util/Map;

    .line 21
    const/4 v0, 0x1

    new-instance v1, Lcom/youku/laifeng/libcuteroom/model/download/DownloadThreadFactory;

    invoke-direct {v1}, Lcom/youku/laifeng/libcuteroom/model/download/DownloadThreadFactory;-><init>()V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    return-void
.end method

.method public static getDownload()Lcom/youku/laifeng/libcuteroom/model/download/IDownload;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->instance:Lcom/youku/laifeng/libcuteroom/model/download/MDownload;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->instance:Lcom/youku/laifeng/libcuteroom/model/download/MDownload;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->instance:Lcom/youku/laifeng/libcuteroom/model/download/MDownload;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->instance:Lcom/youku/laifeng/libcuteroom/model/download/MDownload;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public varargs addTask(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;
    .param p3, "params"    # [Ljava/lang/String;

    .prologue
    .line 37
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mTaskMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-direct {v0, p1, p3, p2, p0}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/download/MDownloadListener;Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTaskListener;)V

    .line 39
    .local v0, "task":Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 40
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mTaskMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const/4 v1, 0x1

    .line 43
    .end local v0    # "task":Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTaskSize()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mTaskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public isActive(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->isDownloading(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mTaskMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 102
    .local v0, "task":Ljava/lang/Runnable;
    instance-of v1, v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    if-eqz v1, :cond_0

    .line 103
    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    .end local v0    # "task":Ljava/lang/Runnable;
    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->getStatus()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 104
    const/4 v1, 0x1

    .line 108
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDownloading(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    return-void
.end method

.method public onPause(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 150
    return-void
.end method

.method public onProgress(Ljava/lang/String;F)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "progress"    # F

    .prologue
    .line 131
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 119
    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    return-void
.end method

.method public onWait(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 155
    return-void
.end method

.method public removeAll()V
    .locals 4

    .prologue
    .line 70
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mTaskMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 71
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Runnable;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    if-eqz v1, :cond_0

    .line 72
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->pauseTask()V

    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->stop()V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 81
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Runnable;>;"
    :cond_2
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mTaskMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 82
    return-void
.end method

.method public removeTask(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->isActive(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mTaskMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 50
    .local v2, "task":Ljava/lang/Runnable;
    instance-of v3, v2, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    if-eqz v3, :cond_0

    .line 51
    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    .end local v2    # "task":Ljava/lang/Runnable;
    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->stop()V

    .line 52
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mTaskMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    .line 56
    .local v0, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 57
    .local v1, "r":Ljava/lang/Runnable;
    instance-of v3, v1, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    if-eqz v3, :cond_2

    move-object v3, v1

    .line 58
    check-cast v3, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/download/MDownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 60
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/download/MDownload;->mTaskMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.class public Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;
.super Ljava/lang/Object;
.source "DefaultDownloadManager.java"

# interfaces
.implements Lcom/youku/laifeng/sdk/download/DownloadManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultDownloadManager"


# instance fields
.field private mRequestQueue:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;

    invoke-direct {v0}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->mRequestQueue:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;

    .line 22
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->mRequestQueue:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->start()V

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "threadPoolSize"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;

    invoke-direct {v0, p1}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;-><init>(I)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->mRequestQueue:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;

    .line 30
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->mRequestQueue:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->start()V

    .line 31
    return-void
.end method


# virtual methods
.method public add(Lcom/youku/laifeng/sdk/download/DownloadRequest;)I
    .locals 2
    .param p1, "request"    # Lcom/youku/laifeng/sdk/download/DownloadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DownloadRequest cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->mRequestQueue:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;

    invoke-virtual {v0, p1}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->add(Lcom/youku/laifeng/sdk/download/DownloadRequest;)I

    move-result v0

    return v0
.end method

.method public cancel(I)I
    .locals 1
    .param p1, "downloadId"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->mRequestQueue:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;

    invoke-virtual {v0, p1}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->cancel(I)I

    move-result v0

    return v0
.end method

.method public cancelAll()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->mRequestQueue:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->cancelAll()V

    .line 61
    return-void
.end method

.method public getCurrentQueue()Ljava/util/Set;
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
    .line 79
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->mRequestQueue:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->getCurrentRequests()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentQueueSize()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->mRequestQueue:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->mRequestQueue:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->getCurrentQueueSize()I

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query(I)I
    .locals 1
    .param p1, "downloadId"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->mRequestQueue:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;

    invoke-virtual {v0, p1}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->query(I)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->mRequestQueue:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->mRequestQueue:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;->release()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->mRequestQueue:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;

    .line 75
    :cond_0
    return-void
.end method

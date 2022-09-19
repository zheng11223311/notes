.class Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;
.super Ljava/lang/Object;
.source "DownloadRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallBackDelivery"
.end annotation


# instance fields
.field private final mCallBackExecutor:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;->this$0:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery$1;-><init>(Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;->mCallBackExecutor:Ljava/util/concurrent/Executor;

    .line 52
    return-void
.end method


# virtual methods
.method public postDownloadComplete(Lcom/youku/laifeng/sdk/download/DownloadRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/youku/laifeng/sdk/download/DownloadRequest;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;->mCallBackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery$2;

    invoke-direct {v1, p0, p1}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery$2;-><init>(Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;Lcom/youku/laifeng/sdk/download/DownloadRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method public postDownloadFailed(Lcom/youku/laifeng/sdk/download/DownloadRequest;ILjava/lang/String;)V
    .locals 2
    .param p1, "request"    # Lcom/youku/laifeng/sdk/download/DownloadRequest;
    .param p2, "errorCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;->mCallBackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery$3;-><init>(Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;Lcom/youku/laifeng/sdk/download/DownloadRequest;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method public postProgressUpdate(Lcom/youku/laifeng/sdk/download/DownloadRequest;JJI)V
    .locals 10
    .param p1, "request"    # Lcom/youku/laifeng/sdk/download/DownloadRequest;
    .param p2, "totalBytes"    # J
    .param p4, "downloadedBytes"    # J
    .param p6, "progress"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;->mCallBackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery$4;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery$4;-><init>(Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;Lcom/youku/laifeng/sdk/download/DownloadRequest;JJI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

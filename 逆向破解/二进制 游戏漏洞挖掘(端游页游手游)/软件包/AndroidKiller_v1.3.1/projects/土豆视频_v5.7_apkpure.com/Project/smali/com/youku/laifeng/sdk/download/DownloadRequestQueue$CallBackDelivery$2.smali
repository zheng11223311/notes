.class Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery$2;
.super Ljava/lang/Object;
.source "DownloadRequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;->postDownloadComplete(Lcom/youku/laifeng/sdk/download/DownloadRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;

.field final synthetic val$request:Lcom/youku/laifeng/sdk/download/DownloadRequest;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;Lcom/youku/laifeng/sdk/download/DownloadRequest;)V
    .locals 0
    .param p1, "this$1"    # Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery$2;->this$1:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;

    iput-object p2, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery$2;->val$request:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery$2;->val$request:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getDownloadListener()Lcom/youku/laifeng/sdk/download/DownloadStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery$2;->val$request:Lcom/youku/laifeng/sdk/download/DownloadRequest;

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getDownloadId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/youku/laifeng/sdk/download/DownloadStatusListener;->onDownloadComplete(I)V

    .line 58
    return-void
.end method

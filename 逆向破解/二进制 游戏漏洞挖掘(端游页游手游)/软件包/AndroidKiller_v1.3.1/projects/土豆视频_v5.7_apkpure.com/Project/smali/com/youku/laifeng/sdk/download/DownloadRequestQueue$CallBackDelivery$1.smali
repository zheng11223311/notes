.class Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery$1;
.super Ljava/lang/Object;
.source "DownloadRequestQueue.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;-><init>(Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$this$0:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery$1;->this$1:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery;

    iput-object p2, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery$1;->val$this$0:Lcom/youku/laifeng/sdk/download/DownloadRequestQueue;

    iput-object p3, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadRequestQueue$CallBackDelivery$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    return-void
.end method

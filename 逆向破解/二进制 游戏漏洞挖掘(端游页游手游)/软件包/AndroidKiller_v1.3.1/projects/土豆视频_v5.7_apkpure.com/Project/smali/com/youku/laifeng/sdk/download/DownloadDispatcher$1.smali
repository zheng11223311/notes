.class Lcom/youku/laifeng/sdk/download/DownloadDispatcher$1;
.super Ljava/util/TimerTask;
.source "DownloadDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->attemptRetryOnTimeOutException()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/download/DownloadDispatcher;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/download/DownloadDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/download/DownloadDispatcher;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher$1;->this$0:Lcom/youku/laifeng/sdk/download/DownloadDispatcher;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher$1;->this$0:Lcom/youku/laifeng/sdk/download/DownloadDispatcher;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/download/DownloadDispatcher$1;->this$0:Lcom/youku/laifeng/sdk/download/DownloadDispatcher;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->access$000(Lcom/youku/laifeng/sdk/download/DownloadDispatcher;)Lcom/youku/laifeng/sdk/download/DownloadRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/download/DownloadRequest;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/laifeng/sdk/download/DownloadDispatcher;->access$100(Lcom/youku/laifeng/sdk/download/DownloadDispatcher;Ljava/lang/String;)V

    .line 337
    return-void
.end method

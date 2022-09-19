.class Lcom/tudou/service/download/DownloadManager$4;
.super Lcom/tudou/service/download/DownloadManager$OnCreateDownloadReceiver;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/download/DownloadManager;->setOnCreateDownloadListener(Lcom/tudou/service/download/OnPreparedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/download/DownloadManager;

.field final synthetic val$lis:Lcom/tudou/service/download/OnPreparedCallback;


# direct methods
.method constructor <init>(Lcom/tudou/service/download/DownloadManager;Lcom/tudou/service/download/OnPreparedCallback;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/tudou/service/download/DownloadManager$4;->this$0:Lcom/tudou/service/download/DownloadManager;

    iput-object p2, p0, Lcom/tudou/service/download/DownloadManager$4;->val$lis:Lcom/tudou/service/download/OnPreparedCallback;

    invoke-direct {p0, p1}, Lcom/tudou/service/download/DownloadManager$OnCreateDownloadReceiver;-><init>(Lcom/tudou/service/download/DownloadManager;)V

    return-void
.end method


# virtual methods
.method public onOneFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager$4;->val$lis:Lcom/tudou/service/download/OnPreparedCallback;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager$4;->val$lis:Lcom/tudou/service/download/OnPreparedCallback;

    invoke-virtual {v0, p1}, Lcom/tudou/service/download/OnPreparedCallback;->onOneFailed(Ljava/lang/String;)V

    .line 525
    :cond_0
    return-void
.end method

.method public onOneReady(Ljava/lang/String;)V
    .locals 1
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager$4;->val$lis:Lcom/tudou/service/download/OnPreparedCallback;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager$4;->val$lis:Lcom/tudou/service/download/OnPreparedCallback;

    invoke-virtual {v0, p1}, Lcom/tudou/service/download/OnPreparedCallback;->onOnePrepared(Ljava/lang/String;)V

    .line 519
    :cond_0
    return-void
.end method

.method public onfinish(Z)V
    .locals 1
    .param p1, "isNeedRefresh"    # Z

    .prologue
    .line 529
    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager$4;->val$lis:Lcom/tudou/service/download/OnPreparedCallback;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager$4;->val$lis:Lcom/tudou/service/download/OnPreparedCallback;

    invoke-virtual {v0, p1}, Lcom/tudou/service/download/OnPreparedCallback;->onfinish(Z)V

    .line 532
    :cond_0
    return-void
.end method

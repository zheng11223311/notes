.class Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;
.super Ljava/lang/Thread;
.source "VideoCacheDiskProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;->invalidateDiskProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;->this$0:Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 38
    invoke-static {}, Lcom/tudou/service/download/SDCardManager;->getExternalStorageDirectory()Ljava/util/ArrayList;

    move-result-object v0

    .line 39
    .local v0, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/SDCardManager$SDCardInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 40
    new-instance v1, Lcom/tudou/service/download/SDCardManager;

    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadManager;->getCurrentDownloadSDCardPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tudou/service/download/SDCardManager;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, "manager":Lcom/tudou/service/download/SDCardManager;
    if-eqz v1, :cond_0

    .line 42
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;->this$0:Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;

    invoke-virtual {v1}, Lcom/tudou/service/download/SDCardManager;->getTotalSize()J

    move-result-wide v4

    long-to-float v3, v4

    invoke-static {v3}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;->access$002(Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;->this$0:Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;

    invoke-virtual {v1}, Lcom/tudou/service/download/SDCardManager;->getOtherSpace()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/tudou/service/download/SDCardManager;->getTudouVideoSpace()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-float v3, v4

    invoke-static {v3}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;->access$102(Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;->this$0:Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;

    invoke-virtual {v2}, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1$1;

    invoke-direct {v3, p0}, Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1$1;-><init>(Lcom/tudou/detail/widget/VideoCacheDiskProgressBar$1;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 58
    .end local v1    # "manager":Lcom/tudou/service/download/SDCardManager;
    :cond_0
    return-void
.end method

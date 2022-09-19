.class Lcom/tudou/service/download/DownloadManager$6;
.super Ljava/lang/Thread;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/download/DownloadManager;->deleteAllDownloaded()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/download/DownloadManager;

.field final synthetic val$clone:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/tudou/service/download/DownloadManager;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lcom/tudou/service/download/DownloadManager$6;->this$0:Lcom/tudou/service/download/DownloadManager;

    iput-object p2, p0, Lcom/tudou/service/download/DownloadManager$6;->val$clone:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 713
    iget-object v3, p0, Lcom/tudou/service/download/DownloadManager$6;->val$clone:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 714
    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 715
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 716
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 717
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/youku/util/Util;->deleteFile(Ljava/io/File;)V

    goto :goto_0

    .line 719
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_0
    return-void
.end method

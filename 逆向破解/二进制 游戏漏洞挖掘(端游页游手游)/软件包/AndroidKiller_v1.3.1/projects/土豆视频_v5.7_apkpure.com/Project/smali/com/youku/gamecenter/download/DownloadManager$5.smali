.class Lcom/youku/gamecenter/download/DownloadManager$5;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/download/DownloadManager;->deleteOlderApkDownload(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/download/DownloadManager;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$versionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/download/DownloadManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1316
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadManager$5;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    iput-object p2, p0, Lcom/youku/gamecenter/download/DownloadManager$5;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/youku/gamecenter/download/DownloadManager$5;->val$versionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1320
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadManager$5;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v2}, Lcom/youku/gamecenter/download/DownloadManager;->access$800(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1321
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadInfo;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1322
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 1323
    .local v0, "info":Lcom/youku/gamecenter/download/DownloadInfo;
    iget-object v2, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager$5;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mVersionName:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager$5;->val$versionName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/youku/gamecenter/util/CommonUtils;->compareVersionName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    .line 1326
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteOlderApkDownload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadManager$5;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    const/4 v3, 0x6

    invoke-static {v2, v0, v3}, Lcom/youku/gamecenter/download/DownloadManager;->access$1600(Lcom/youku/gamecenter/download/DownloadManager;Lcom/youku/gamecenter/download/DownloadInfo;I)V

    .line 1329
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1332
    .end local v0    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    :cond_1
    return-void
.end method

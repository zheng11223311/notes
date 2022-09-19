.class Lcom/youku/gamecenter/download/DownloadManager$4;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/download/DownloadManager;->deleteOlderGameDownload(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/download/DownloadManager;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$versionCode:I


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/download/DownloadManager;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1289
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadManager$4;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    iput-object p2, p0, Lcom/youku/gamecenter/download/DownloadManager$4;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/youku/gamecenter/download/DownloadManager$4;->val$versionCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1293
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadManager;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/gamecenter/download/SQLManager;->getAll()Ljava/util/List;

    move-result-object v2

    .line 1295
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    if-eqz v2, :cond_1

    .line 1296
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 1297
    .local v1, "info":Lcom/youku/gamecenter/download/DownloadInfo;
    iget-object v3, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager$4;->val$packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/youku/gamecenter/download/DownloadManager$4;->val$versionCode:I

    iget v4, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    if-le v3, v4, :cond_0

    .line 1299
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteOlderGameDownload:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager$4;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    const/4 v4, 0x6

    invoke-static {v3, v1, v4}, Lcom/youku/gamecenter/download/DownloadManager;->access$1600(Lcom/youku/gamecenter/download/DownloadManager;Lcom/youku/gamecenter/download/DownloadInfo;I)V

    .line 1303
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager$4;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v3}, Lcom/youku/gamecenter/download/DownloadManager;->access$600(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager$4;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v3}, Lcom/youku/gamecenter/download/DownloadManager;->access$900(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager$4;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v3}, Lcom/youku/gamecenter/download/DownloadManager;->access$1000(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1309
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    :cond_1
    return-void
.end method

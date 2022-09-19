.class Lcom/youku/gamecenter/download/DownloadManager$3;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/download/DownloadManager;->deleteOldestGameDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/download/DownloadManager;)V
    .locals 0

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadManager$3;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 1255
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadManager$3;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/youku/gamecenter/download/DownloadManager;->getSilentInfosFromSQL(IZ)Ljava/util/List;

    move-result-object v1

    .line 1257
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v4, :cond_0

    .line 1259
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clean excess apk, size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    new-instance v2, Lcom/youku/gamecenter/download/DownloadManager$3$1;

    invoke-direct {v2, p0}, Lcom/youku/gamecenter/download/DownloadManager$3$1;-><init>(Lcom/youku/gamecenter/download/DownloadManager$3;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_0

    .line 1273
    const-string v3, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete excess apk:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager$3;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/download/DownloadInfo;

    const/4 v4, 0x6

    invoke-static {v3, v2, v4}, Lcom/youku/gamecenter/download/DownloadManager;->access$1600(Lcom/youku/gamecenter/download/DownloadManager;Lcom/youku/gamecenter/download/DownloadInfo;I)V

    .line 1278
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadManager$3;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v2}, Lcom/youku/gamecenter/download/DownloadManager;->access$900(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1282
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

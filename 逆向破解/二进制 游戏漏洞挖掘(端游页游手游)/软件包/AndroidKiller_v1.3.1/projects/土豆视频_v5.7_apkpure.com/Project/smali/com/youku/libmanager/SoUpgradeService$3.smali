.class Lcom/youku/libmanager/SoUpgradeService$3;
.super Ljava/lang/Object;
.source "SoUpgradeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/libmanager/SoUpgradeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/libmanager/SoUpgradeService;


# direct methods
.method constructor <init>(Lcom/youku/libmanager/SoUpgradeService;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcom/youku/libmanager/SoUpgradeService$3;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 695
    const/4 v1, 0x0

    .line 696
    .local v1, "flag":I
    new-instance v2, Lcom/youku/libmanager/HttpDownloader;

    iget-object v6, p0, Lcom/youku/libmanager/SoUpgradeService$3;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-direct {v2, v6}, Lcom/youku/libmanager/HttpDownloader;-><init>(Landroid/content/Context;)V

    .line 697
    .local v2, "httpDownloader":Lcom/youku/libmanager/HttpDownloader;
    const-string v6, "SoUpgradeService"

    const-string v7, "========== mdownloadRunnable start ============"

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v6, p0, Lcom/youku/libmanager/SoUpgradeService$3;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v6}, Lcom/youku/libmanager/SoUpgradeService;->access$1600(Lcom/youku/libmanager/SoUpgradeService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 701
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/libmanager/SoInfo;>;"
    iget-object v6, p0, Lcom/youku/libmanager/SoUpgradeService$3;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v6}, Lcom/youku/libmanager/SoUpgradeService;->access$1400(Lcom/youku/libmanager/SoUpgradeService;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 702
    iget-object v6, p0, Lcom/youku/libmanager/SoUpgradeService$3;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v6}, Lcom/youku/libmanager/SoUpgradeService;->access$1700(Lcom/youku/libmanager/SoUpgradeService;)V

    .line 703
    const-string v6, "SoUpgradeService"

    const-string v7, "========== mdownloadRunnable end ============"

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/libmanager/SoInfo;>;"
    :goto_1
    return-void

    .line 707
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/libmanager/SoInfo;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/libmanager/SoInfo;

    .line 708
    .local v5, "so":Lcom/youku/libmanager/SoInfo;
    const-string v6, "SoUpgradeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", download_url = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/youku/libmanager/SoInfo;->download_url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v6, v5, Lcom/youku/libmanager/SoInfo;->needDownload:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/youku/libmanager/SoUpgradeService$3;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v6}, Lcom/youku/libmanager/SoUpgradeService;->access$1800(Lcom/youku/libmanager/SoUpgradeService;)I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 712
    iget-object v6, v5, Lcom/youku/libmanager/SoInfo;->download_url:Ljava/lang/String;

    sget-object v7, Lcom/youku/libmanager/SoUpgradeService;->mDownloadPath:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v7, v8}, Lcom/youku/libmanager/HttpDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 714
    if-nez v1, :cond_1

    .line 715
    iget-object v6, p0, Lcom/youku/libmanager/SoUpgradeService$3;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/youku/libmanager/SoUpgradeService;->mDownloadPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v5, Lcom/youku/libmanager/SoInfo;->md5:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/youku/libmanager/SoUpgradeService;->access$1900(Lcom/youku/libmanager/SoUpgradeService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 716
    const/4 v1, -0x1

    .line 717
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/youku/libmanager/SoUpgradeService;->mDownloadPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/youku/libmanager/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 710
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 726
    :cond_2
    if-gez v1, :cond_3

    .line 727
    iget-object v6, p0, Lcom/youku/libmanager/SoUpgradeService$3;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v6, v5}, Lcom/youku/libmanager/SoUpgradeService;->access$2000(Lcom/youku/libmanager/SoUpgradeService;Lcom/youku/libmanager/SoInfo;)V

    goto/16 :goto_0

    .line 729
    :cond_3
    iget-object v6, p0, Lcom/youku/libmanager/SoUpgradeService$3;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v6}, Lcom/youku/libmanager/SoUpgradeService;->access$2100(Lcom/youku/libmanager/SoUpgradeService;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, v5, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 734
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/libmanager/SoInfo;>;"
    .end local v3    # "i":I
    .end local v5    # "so":Lcom/youku/libmanager/SoInfo;
    :cond_4
    iget-object v6, p0, Lcom/youku/libmanager/SoUpgradeService$3;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v6}, Lcom/youku/libmanager/SoUpgradeService;->access$2200(Lcom/youku/libmanager/SoUpgradeService;)V

    .line 736
    iget-object v6, p0, Lcom/youku/libmanager/SoUpgradeService$3;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v6}, Lcom/youku/libmanager/SoUpgradeService;->access$1700(Lcom/youku/libmanager/SoUpgradeService;)V

    .line 738
    const-string v6, "SoUpgradeService"

    const-string v7, "========== mdownloadRunnable end ============"

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v6, p0, Lcom/youku/libmanager/SoUpgradeService$3;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v6}, Lcom/youku/libmanager/SoUpgradeService;->access$1500(Lcom/youku/libmanager/SoUpgradeService;)V

    goto/16 :goto_1
.end method

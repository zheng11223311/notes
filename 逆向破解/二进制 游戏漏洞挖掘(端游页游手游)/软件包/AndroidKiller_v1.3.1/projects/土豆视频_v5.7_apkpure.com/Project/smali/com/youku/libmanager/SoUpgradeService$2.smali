.class Lcom/youku/libmanager/SoUpgradeService$2;
.super Landroid/content/BroadcastReceiver;
.source "SoUpgradeService.java"


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
    .line 239
    iput-object p1, p0, Lcom/youku/libmanager/SoUpgradeService$2;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 244
    iget-object v3, p0, Lcom/youku/libmanager/SoUpgradeService$2;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v3}, Lcom/youku/libmanager/SoUpgradeService;->access$1300(Lcom/youku/libmanager/SoUpgradeService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    iget-object v3, p0, Lcom/youku/libmanager/SoUpgradeService$2;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v3, v6}, Lcom/youku/libmanager/SoUpgradeService;->access$1302(Lcom/youku/libmanager/SoUpgradeService;Z)Z

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v1

    .line 249
    .local v1, "hasInternet":Z
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/youku/libmanager/SoUpgradeService$2;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v3}, Lcom/youku/libmanager/SoUpgradeService;->access$000(Lcom/youku/libmanager/SoUpgradeService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 250
    iget-object v3, p0, Lcom/youku/libmanager/SoUpgradeService$2;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v3}, Lcom/youku/libmanager/SoUpgradeService;->access$000(Lcom/youku/libmanager/SoUpgradeService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 251
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    invoke-static {v3}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$100(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    move-result-object v3

    sget-object v4, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;->STOP:Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    if-ne v3, v4, :cond_2

    .line 252
    const-string v4, "SoUpgradeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "continue downloading:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    invoke-virtual {v3}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->startDownload()V

    goto :goto_1

    .line 258
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v3

    if-nez v3, :cond_0

    .line 259
    :cond_4
    const-string v3, "SoUpgradeService"

    const-string/jumbo v4, "wifi does not available!"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v3, p0, Lcom/youku/libmanager/SoUpgradeService$2;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v3, v6}, Lcom/youku/libmanager/SoUpgradeService;->access$1402(Lcom/youku/libmanager/SoUpgradeService;Z)Z

    .line 261
    iget-object v3, p0, Lcom/youku/libmanager/SoUpgradeService$2;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v3}, Lcom/youku/libmanager/SoUpgradeService;->access$1500(Lcom/youku/libmanager/SoUpgradeService;)V

    goto/16 :goto_0
.end method

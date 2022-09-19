.class Lcom/youku/libmanager/SoUpgradeService$1;
.super Lcom/youku/libmanager/ISoUpgradeService$Stub;
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
    .line 142
    iput-object p1, p0, Lcom/youku/libmanager/SoUpgradeService$1;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-direct {p0}, Lcom/youku/libmanager/ISoUpgradeService$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$900(Lcom/youku/libmanager/SoUpgradeService$1;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService$1;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/youku/libmanager/SoUpgradeService$1;->downloadSpecifiedSo(Ljava/lang/String;)V

    return-void
.end method

.method private downloadSpecifiedSo(Ljava/lang/String;)V
    .locals 7
    .param p1, "soName"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService$1;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    iget-object v4, v4, Lcom/youku/libmanager/SoUpgradeService;->mOnlineSoInfos:Ljava/util/Map;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService$1;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    iget-object v4, v4, Lcom/youku/libmanager/SoUpgradeService;->mOnlineSoInfos:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 207
    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService$1;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    iget-object v4, v4, Lcom/youku/libmanager/SoUpgradeService;->mOnlineSoInfos:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 208
    .local v2, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/libmanager/SoInfo;>;"
    if-eqz v2, :cond_0

    .line 209
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/libmanager/SoInfo;

    .line 210
    .local v1, "info":Lcom/youku/libmanager/SoInfo;
    new-instance v3, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService$1;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-direct {v3, v4, v1}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;-><init>(Lcom/youku/libmanager/SoUpgradeService;Lcom/youku/libmanager/SoInfo;)V

    .line 211
    .local v3, "soDownloadTask":Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;
    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService$1;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v4}, Lcom/youku/libmanager/SoUpgradeService;->access$000(Lcom/youku/libmanager/SoUpgradeService;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, v1, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {v3}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->startDownload()V

    goto :goto_0

    .line 215
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/youku/libmanager/SoInfo;
    .end local v3    # "soDownloadTask":Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;
    :cond_0
    const-string v4, "SoUpgradeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " info"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .end local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/libmanager/SoInfo;>;"
    :cond_1
    :goto_1
    return-void

    .line 217
    :cond_2
    const-string v4, "SoUpgradeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in OnlineSoInfo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public isSoDownloaded(Ljava/lang/String;)Z
    .locals 5
    .param p1, "soName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 222
    iget-object v2, p0, Lcom/youku/libmanager/SoUpgradeService$1;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v2}, Lcom/youku/libmanager/SoUpgradeService;->access$000(Lcom/youku/libmanager/SoUpgradeService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    .line 223
    .local v0, "singleSoDownloadTask":Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;
    const-string v2, "SoUpgradeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSingleDownloadSoVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService$1;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v4, p1}, Lcom/youku/libmanager/SoUpgradeService;->access$1100(Lcom/youku/libmanager/SoUpgradeService;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$100(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    move-result-object v2

    sget-object v3, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;->DOWNLOADED:Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    if-ne v2, v3, :cond_1

    .line 225
    const-string v2, "SoUpgradeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSoDownloaded:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$100(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_0
    :goto_0
    return v1

    .line 227
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/youku/libmanager/SoUpgradeService;->access$1200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/libmanager/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 230
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerCallback(Lcom/youku/libmanager/ISoUpgradeCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/youku/libmanager/ISoUpgradeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService$1;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v0, p1}, Lcom/youku/libmanager/SoUpgradeService;->access$702(Lcom/youku/libmanager/SoUpgradeService;Lcom/youku/libmanager/ISoUpgradeCallback;)Lcom/youku/libmanager/ISoUpgradeCallback;

    .line 236
    return-void
.end method

.method public startDownloadSo(Ljava/lang/String;)V
    .locals 2
    .param p1, "soName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService$1;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v0}, Lcom/youku/libmanager/SoUpgradeService;->access$1000(Lcom/youku/libmanager/SoUpgradeService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/youku/libmanager/SoUpgradeService$1$1;

    invoke-direct {v1, p0, p1}, Lcom/youku/libmanager/SoUpgradeService$1$1;-><init>(Lcom/youku/libmanager/SoUpgradeService$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    return-void
.end method

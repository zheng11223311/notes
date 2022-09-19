.class Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;
.super Ljava/lang/Object;
.source "SoUpgradeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->startDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;


# direct methods
.method constructor <init>(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)V
    .locals 0

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1106
    const/4 v1, 0x0

    .line 1107
    .local v1, "flag":I
    new-instance v2, Lcom/youku/libmanager/HttpDownloader;

    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    iget-object v4, v4, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-direct {v2, v4}, Lcom/youku/libmanager/HttpDownloader;-><init>(Landroid/content/Context;)V

    .line 1108
    .local v2, "httpDownloader":Lcom/youku/libmanager/HttpDownloader;
    const-string v4, "SoUpgradeService"

    const-string v5, "========== SingleSoDownloadTask start ============"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1111
    const-string v4, "SoUpgradeService"

    const-string v5, "==========network error SingleSoDownloadTask end ============"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    sget-object v5, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;->STOP:Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    invoke-static {v4, v5}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$102(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;Lcom/youku/libmanager/SoUpgradeService$DownloadSate;)Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    .line 1114
    :try_start_0
    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    iget-object v4, v4, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v4}, Lcom/youku/libmanager/SoUpgradeService;->access$700(Lcom/youku/libmanager/SoUpgradeService;)Lcom/youku/libmanager/ISoUpgradeCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1115
    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    iget-object v4, v4, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v4}, Lcom/youku/libmanager/SoUpgradeService;->access$700(Lcom/youku/libmanager/SoUpgradeService;)Lcom/youku/libmanager/ISoUpgradeCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    invoke-static {v5}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$2500(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/youku/libmanager/ISoUpgradeCallback;->onDownloadFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    :cond_0
    :goto_0
    return-void

    .line 1116
    :catch_0
    move-exception v0

    .line 1117
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "SoUpgradeService"

    invoke-static {v4, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1122
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v4, "SoUpgradeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SingleSoDownloadTask name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    invoke-static {v6}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$2500(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", download_url = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    invoke-static {v6}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$2500(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/youku/libmanager/SoInfo;->download_url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    invoke-static {v4}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$2500(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/libmanager/SoInfo;->needDownload:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    iget-object v4, v4, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v4}, Lcom/youku/libmanager/SoUpgradeService;->access$2600(Lcom/youku/libmanager/SoUpgradeService;)I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 1125
    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    invoke-static {v4}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$2500(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/libmanager/SoInfo;->download_url:Ljava/lang/String;

    invoke-static {}, Lcom/youku/libmanager/SoUpgradeService;->access$1200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    invoke-static {v7}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$2500(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/youku/libmanager/HttpDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1126
    if-nez v1, :cond_3

    .line 1127
    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    iget-object v4, v4, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/youku/libmanager/SoUpgradeService;->access$1200()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    invoke-static {v6}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$2500(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    invoke-static {v6}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$2500(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/youku/libmanager/SoInfo;->md5:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/youku/libmanager/SoUpgradeService;->access$1900(Lcom/youku/libmanager/SoUpgradeService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1128
    const/4 v1, -0x1

    .line 1129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/youku/libmanager/SoUpgradeService;->access$1200()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    invoke-static {v5}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$2500(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/libmanager/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 1124
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1135
    :cond_3
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1142
    :cond_4
    if-gez v1, :cond_6

    .line 1143
    const-string v4, "SoUpgradeService"

    const-string v5, "SingleSoDownloadTask Download failed"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    sget-object v5, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;->STOP:Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    invoke-static {v4, v5}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$102(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;Lcom/youku/libmanager/SoUpgradeService$DownloadSate;)Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    .line 1147
    :try_start_1
    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    iget-object v4, v4, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v4}, Lcom/youku/libmanager/SoUpgradeService;->access$700(Lcom/youku/libmanager/SoUpgradeService;)Lcom/youku/libmanager/ISoUpgradeCallback;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1148
    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    iget-object v4, v4, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v4}, Lcom/youku/libmanager/SoUpgradeService;->access$700(Lcom/youku/libmanager/SoUpgradeService;)Lcom/youku/libmanager/ISoUpgradeCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    invoke-static {v5}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$2500(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/youku/libmanager/ISoUpgradeCallback;->onDownloadFailed(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1168
    :cond_5
    :goto_2
    const-string v4, "SoUpgradeService"

    const-string v5, "==========SingleSoDownloadTask mdownloadRunnable end ============"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1149
    :catch_1
    move-exception v0

    .line 1150
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "SoUpgradeService"

    invoke-static {v4, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1153
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    const-string v4, "SoUpgradeService"

    const-string/jumbo v5, "replaceSo()"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/youku/libmanager/SoUpgradeService;->access$1200()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    invoke-static {v5}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$2500(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/libmanager/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 1157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/youku/libmanager/SoUpgradeService;->access$1200()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    invoke-static {v5}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$2500(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/youku/libmanager/SoUpgradeService;->access$1200()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    invoke-static {v6}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$2500(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/libmanager/FileUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1158
    const-string v4, "SoUpgradeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rename "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/youku/libmanager/SoUpgradeService;->access$1200()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    invoke-static {v6}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$2500(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ---> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/youku/libmanager/SoUpgradeService;->access$1200()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    invoke-static {v6}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$2500(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    sget-object v5, Lcom/youku/libmanager/SoUpgradeService$DownloadSate;->DOWNLOADED:Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    invoke-static {v4, v5}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$102(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;Lcom/youku/libmanager/SoUpgradeService$DownloadSate;)Lcom/youku/libmanager/SoUpgradeService$DownloadSate;

    .line 1160
    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    iget-object v4, v4, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    iget-object v5, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    invoke-static {v5}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$2500(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    invoke-static {v6}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$2500(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoInfo;

    move-result-object v6

    iget v6, v6, Lcom/youku/libmanager/SoInfo;->versionCode:I

    invoke-static {v4, v5, v6}, Lcom/youku/libmanager/SoUpgradeService;->access$2700(Lcom/youku/libmanager/SoUpgradeService;Ljava/lang/String;I)V

    .line 1162
    :try_start_2
    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    iget-object v4, v4, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v4}, Lcom/youku/libmanager/SoUpgradeService;->access$700(Lcom/youku/libmanager/SoUpgradeService;)Lcom/youku/libmanager/ISoUpgradeCallback;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1163
    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    iget-object v4, v4, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v4}, Lcom/youku/libmanager/SoUpgradeService;->access$700(Lcom/youku/libmanager/SoUpgradeService;)Lcom/youku/libmanager/ISoUpgradeCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;

    invoke-static {v5}, Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;->access$2500(Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;)Lcom/youku/libmanager/SoInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/youku/libmanager/ISoUpgradeCallback;->onDownloadEnd(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 1164
    :catch_2
    move-exception v0

    .line 1165
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v4, "SoUpgradeService"

    invoke-static {v4, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

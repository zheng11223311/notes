.class Lcom/tudou/service/download/DownloadService$1;
.super Lcom/tudou/service/download/IDownloadService$Stub;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/service/download/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/download/DownloadService;


# direct methods
.method constructor <init>(Lcom/tudou/service/download/DownloadService;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-direct {p0}, Lcom/tudou/service/download/IDownloadService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public appExit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadServiceManager;->appExit()Z

    move-result v0

    return v0
.end method

.method public canUse3GDownload()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadServiceManager;->canUse3GDownload()Z

    move-result v0

    return v0
.end method

.method public canUseAcc()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadServiceManager;->canUseAcc()Z

    move-result v0

    return v0
.end method

.method public createDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "videoName"    # Ljava/lang/String;
    .param p3, "showName"    # Ljava/lang/String;
    .param p4, "showSubTitle"    # Ljava/lang/String;
    .param p5, "xuanjiTitle"    # Ljava/lang/String;
    .param p6, "format"    # I
    .param p7, "language"    # Ljava/lang/String;
    .param p8, "fromto"    # Ljava/lang/String;
    .param p9, "showid"    # Ljava/lang/String;
    .param p10, "imgurl"    # Ljava/lang/String;
    .param p11, "istrailer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/tudou/service/download/DownloadServiceManager;->createDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 48
    return-void
.end method

.method public createDownloads([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "videoIds"    # [Ljava/lang/String;
    .param p2, "videoNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tudou/service/download/DownloadServiceManager;->createDownloads([Ljava/lang/String;[Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1
    .param p1, "taskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tudou/service/download/DownloadServiceManager;->deleteDownloading(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteAll()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadServiceManager;->deleteAllDownloading()Z

    move-result v0

    return v0
.end method

.method public deleteArray([Ljava/lang/String;)Z
    .locals 1
    .param p1, "taskIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tudou/service/download/DownloadServiceManager;->deleteArray([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public down(Ljava/lang/String;)V
    .locals 1
    .param p1, "taskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tudou/service/download/DownloadServiceManager;->startDownload(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public getAccPort()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadServiceManager;->getAccPort()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDownloadSDCardPath()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadServiceManager;->getCurrentDownloadSDCardPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadCreating()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadCreating()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadFormat()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadFormat()I

    move-result v0

    return v0
.end method

.method public getDownloadLanguage()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadLanguage()I

    move-result v0

    return v0
.end method

.method public getDownloadingData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadings(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "vids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tudou/service/download/DownloadServiceManager;->getDownloadings(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public hasDownloadingTask()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadServiceManager;->hasDownloadingTask()Z

    move-result v0

    return v0
.end method

.method public noDisturb()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadServiceManager;->noDisturb()Z

    move-result v0

    return v0
.end method

.method public pause(Ljava/lang/String;)V
    .locals 1
    .param p1, "taskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tudou/service/download/DownloadServiceManager;->pauseDownload(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public pauseAllTask(Z)V
    .locals 1
    .param p1, "pause"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tudou/service/download/DownloadServiceManager;->pauseAllTask(Z)V

    .line 181
    return-void
.end method

.method public refresh()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadServiceManager;->refresh()V

    .line 95
    return-void
.end method

.method public registerCallback(Lcom/tudou/service/download/ICallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/tudou/service/download/ICallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tudou/service/download/DownloadServiceManager;->registerCallback(Lcom/tudou/service/download/ICallback;)V

    .line 85
    return-void
.end method

.method public setAppExit(Z)V
    .locals 1
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tudou/service/download/DownloadServiceManager;->setAppExit(Z)V

    .line 216
    return-void
.end method

.method public setCanUse3GDownload(Z)V
    .locals 1
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tudou/service/download/DownloadServiceManager;->setCanUse3GDownload(Z)V

    .line 126
    return-void
.end method

.method public setCurrentDownloadSDCardPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tudou/service/download/DownloadServiceManager;->setCurrentDownloadSDCardPath(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setDownloadFormat(I)V
    .locals 1
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tudou/service/download/DownloadServiceManager;->setDownloadFormat(I)V

    .line 161
    return-void
.end method

.method public setDownloadLanguage(I)V
    .locals 1
    .param p1, "language"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tudou/service/download/DownloadServiceManager;->setDownloadLanguage(I)V

    .line 171
    return-void
.end method

.method public setNoDisturb(Z)V
    .locals 1
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tudou/service/download/DownloadServiceManager;->setNoDisturb(Z)V

    .line 131
    return-void
.end method

.method public setP2p_switch(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tudou/service/download/DownloadServiceManager;->setP2p_switch(I)V

    .line 146
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tudou/service/download/DownloadServiceManager;->setTimeStamp(J)V

    .line 176
    return-void
.end method

.method public startAllTask()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadServiceManager;->startAllTask()V

    .line 186
    return-void
.end method

.method public startNewTask()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadServiceManager;->startNewTask()V

    .line 100
    return-void
.end method

.method public stopAllTask()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadServiceManager;->stopAllTask()V

    .line 105
    return-void
.end method

.method public unregister()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tudou/service/download/DownloadService$1;->this$0:Lcom/tudou/service/download/DownloadService;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadService;->access$000(Lcom/tudou/service/download/DownloadService;)Lcom/tudou/service/download/DownloadServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadServiceManager;->unregister()V

    .line 90
    return-void
.end method

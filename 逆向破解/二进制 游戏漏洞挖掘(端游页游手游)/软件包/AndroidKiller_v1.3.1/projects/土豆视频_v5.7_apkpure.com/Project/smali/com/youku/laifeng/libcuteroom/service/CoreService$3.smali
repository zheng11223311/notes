.class Lcom/youku/laifeng/libcuteroom/service/CoreService$3;
.super Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerService$Stub;
.source "CoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/service/CoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/service/CoreService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/service/CoreService;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$3;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public pauseDownload(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$3;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$500(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->pause()V

    .line 309
    return-void
.end method

.method public registerListener(Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;)V
    .locals 1
    .param p1, "l"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 313
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$3;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$700(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 314
    :cond_0
    return-void
.end method

.method public startDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$3;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    new-instance v1, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$3;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$600(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;-><init>(Lcom/youku/laifeng/libcuteroom/model/listener/OnAppDownloadListener;)V

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$502(Lcom/youku/laifeng/libcuteroom/service/CoreService;Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;)Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;

    .line 298
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$3;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$500(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 299
    return-void
.end method

.method public stopDownload(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$3;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$500(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/download/AppDownload;->stop()V

    .line 304
    return-void
.end method

.method public unregisterListener(Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;)V
    .locals 1
    .param p1, "l"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDownloadManagerServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 318
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$3;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$700(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 319
    :cond_0
    return-void
.end method

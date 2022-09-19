.class Lcom/tudou/service/download/DownloadManager$2;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/service/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/tudou/service/download/DownloadManager;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/tudou/service/download/DownloadManager$2;->this$0:Lcom/tudou/service/download/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 109
    const-string v1, "Download_Manager"

    const-string v2, "onServiceConnected() called"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager$2;->this$0:Lcom/tudou/service/download/DownloadManager;

    invoke-static {p2}, Lcom/tudou/service/download/IDownloadService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tudou/service/download/IDownloadService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/service/download/DownloadManager;->access$402(Lcom/tudou/service/download/DownloadManager;Lcom/tudou/service/download/IDownloadService;)Lcom/tudou/service/download/IDownloadService;

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager$2;->this$0:Lcom/tudou/service/download/DownloadManager;

    invoke-static {v1}, Lcom/tudou/service/download/DownloadManager;->access$400(Lcom/tudou/service/download/DownloadManager;)Lcom/tudou/service/download/IDownloadService;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/service/download/DownloadManager$2;->this$0:Lcom/tudou/service/download/DownloadManager;

    invoke-static {v2}, Lcom/tudou/service/download/DownloadManager;->access$500(Lcom/tudou/service/download/DownloadManager;)Lcom/tudou/service/download/ICallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tudou/service/download/IDownloadService;->registerCallback(Lcom/tudou/service/download/ICallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Download_Manager"

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 103
    const-string v0, "Download_Manager"

    const-string v1, "onServiceDisconnected() called"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

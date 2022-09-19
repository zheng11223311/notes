.class Lcom/youku/gamecenter/download/DownloadManager$ManagerConnnection;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ManagerConnnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/download/DownloadManager;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadManager$ManagerConnnection;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 438
    const-string v5, "DownloadManager"

    const-string v6, "ServiceConnection.onServiceConnected"

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v5, p0, Lcom/youku/gamecenter/download/DownloadManager$ManagerConnnection;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v5, v6}, Lcom/youku/gamecenter/download/DownloadManager;->setMessenger(Landroid/os/Messenger;)V

    .line 441
    const/4 v5, 0x0

    const/4 v6, 0x4

    :try_start_0
    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 443
    .local v4, "message":Landroid/os/Message;
    new-instance v5, Landroid/os/Messenger;

    new-instance v6, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;

    iget-object v7, p0, Lcom/youku/gamecenter/download/DownloadManager$ManagerConnnection;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {}, Lcom/youku/gamecenter/download/DownloadManager;->access$000()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;-><init>(Lcom/youku/gamecenter/download/DownloadManager;Landroid/os/Looper;)V

    invoke-direct {v5, v6}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v5, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 445
    iget-object v5, p0, Lcom/youku/gamecenter/download/DownloadManager$ManagerConnnection;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v5}, Lcom/youku/gamecenter/download/DownloadManager;->access$200(Lcom/youku/gamecenter/download/DownloadManager;)Landroid/os/Messenger;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 446
    iget-object v5, p0, Lcom/youku/gamecenter/download/DownloadManager$ManagerConnnection;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v5}, Lcom/youku/gamecenter/download/DownloadManager;->access$200(Lcom/youku/gamecenter/download/DownloadManager;)Landroid/os/Messenger;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .end local v4    # "message":Landroid/os/Message;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/youku/gamecenter/download/DownloadManager$ManagerConnnection;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v5}, Lcom/youku/gamecenter/download/DownloadManager;->access$300(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/download/DownloadManager$IServiceConnected;

    .line 451
    .local v2, "iService":Lcom/youku/gamecenter/download/DownloadManager$IServiceConnected;
    invoke-interface {v2}, Lcom/youku/gamecenter/download/DownloadManager$IServiceConnected;->onServiceConnected()V

    goto :goto_1

    .line 447
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "iService":Lcom/youku/gamecenter/download/DownloadManager$IServiceConnected;
    :catch_0
    move-exception v0

    .line 448
    .local v0, "exception":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 452
    .end local v0    # "exception":Landroid/os/RemoteException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v5, p0, Lcom/youku/gamecenter/download/DownloadManager$ManagerConnnection;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v5}, Lcom/youku/gamecenter/download/DownloadManager;->access$300(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 453
    iget-object v5, p0, Lcom/youku/gamecenter/download/DownloadManager$ManagerConnnection;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v5}, Lcom/youku/gamecenter/download/DownloadManager;->access$300(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 455
    :cond_2
    iget-object v5, p0, Lcom/youku/gamecenter/download/DownloadManager$ManagerConnnection;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v5}, Lcom/youku/gamecenter/download/DownloadManager;->access$400(Lcom/youku/gamecenter/download/DownloadManager;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 456
    iget-object v5, p0, Lcom/youku/gamecenter/download/DownloadManager$ManagerConnnection;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v5}, Lcom/youku/gamecenter/download/DownloadManager;->access$500(Lcom/youku/gamecenter/download/DownloadManager;)V

    .line 457
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/youku/gamecenter/download/DownloadManager;->access$000()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/youku/gamecenter/download/DownloadingService;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 458
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadManager;->access$000()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 459
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 463
    const-string v0, "DownloadManager"

    const-string v1, "ServiceConnection.onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager$ManagerConnnection;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/download/DownloadManager;->setMessenger(Landroid/os/Messenger;)V

    .line 465
    return-void
.end method

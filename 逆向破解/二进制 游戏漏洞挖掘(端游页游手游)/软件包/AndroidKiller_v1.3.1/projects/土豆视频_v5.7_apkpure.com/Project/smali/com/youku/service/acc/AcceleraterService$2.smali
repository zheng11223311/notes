.class Lcom/youku/service/acc/AcceleraterService$2;
.super Lcom/youku/service/acc/IAcceleraterService$Stub;
.source "AcceleraterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/service/acc/AcceleraterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/service/acc/AcceleraterService;


# direct methods
.method constructor <init>(Lcom/youku/service/acc/AcceleraterService;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/youku/service/acc/AcceleraterService$2;->this$0:Lcom/youku/service/acc/AcceleraterService;

    invoke-direct {p0}, Lcom/youku/service/acc/IAcceleraterService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public canDownloadWithP2p()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->canDownloadWithP2P()Z

    move-result v0

    return v0
.end method

.method public canPlayWithP2P()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->canPlayWithP2P()Z

    move-result v0

    return v0
.end method

.method public getAccPort()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    sget-object v0, Lcom/youku/service/acc/AcceleraterServiceManager;->ACC_PORT:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/youku/service/acc/AcceleraterService$2;->this$0:Lcom/youku/service/acc/AcceleraterService;

    iget-object v0, v0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v0}, Lcom/youku/service/acc/AcceleraterServiceManager;->getCurrentStatus()I

    move-result v0

    return v0
.end method

.method public getDownloadSwitch()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->getDownloadSwitch()Z

    move-result v0

    return v0
.end method

.method public getHttpProxyPort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/youku/service/acc/AcceleraterService$2;->this$0:Lcom/youku/service/acc/AcceleraterService;

    iget-object v0, v0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v0}, Lcom/youku/service/acc/AcceleraterServiceManager;->getAccHttpProxyPort()I

    move-result v0

    return v0
.end method

.method public getPlaySwitch()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->getPlaySwitch()Z

    move-result v0

    return v0
.end method

.method public getVersionCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->getAccVersionCode()I

    move-result v0

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->getAccVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isACCEnable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->isACCEnable()Z

    move-result v0

    return v0
.end method

.method public isAvailable()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/youku/service/acc/AcceleraterService$2;->this$0:Lcom/youku/service/acc/AcceleraterService;

    iget-object v0, v0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v0}, Lcom/youku/service/acc/AcceleraterServiceManager;->isAccAvailable()I

    move-result v0

    return v0
.end method

.method public pause()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/youku/service/acc/AcceleraterService$2;->this$0:Lcom/youku/service/acc/AcceleraterService;

    iget-object v0, v0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v0}, Lcom/youku/service/acc/AcceleraterServiceManager;->pauseAcc()I

    move-result v0

    return v0
.end method

.method public resume()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/youku/service/acc/AcceleraterService$2;->this$0:Lcom/youku/service/acc/AcceleraterService;

    iget-object v0, v0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v0}, Lcom/youku/service/acc/AcceleraterServiceManager;->resumeAcc()I

    move-result v0

    return v0
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterService$2;->this$0:Lcom/youku/service/acc/AcceleraterService;

    iget-object v2, v2, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    iget-object v3, p0, Lcom/youku/service/acc/AcceleraterService$2;->this$0:Lcom/youku/service/acc/AcceleraterService;

    invoke-virtual {v2, v3}, Lcom/youku/service/acc/AcceleraterServiceManager;->startAcc(Landroid/content/Context;)I

    move-result v0

    .line 76
    .local v0, "flag":I
    if-nez v0, :cond_0

    .line 77
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.youku.acc.ACTION_START_SUCCESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterService$2;->this$0:Lcom/youku/service/acc/AcceleraterService;

    invoke-virtual {v2, v1}, Lcom/youku/service/acc/AcceleraterService;->sendBroadcast(Landroid/content/Intent;)V

    .line 83
    :goto_0
    return-void

    .line 80
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.youku.acc.ACTION_START_FAILURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/youku/service/acc/AcceleraterService$2;->this$0:Lcom/youku/service/acc/AcceleraterService;

    invoke-virtual {v2, v1}, Lcom/youku/service/acc/AcceleraterService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/youku/service/acc/AcceleraterService$2;->this$0:Lcom/youku/service/acc/AcceleraterService;

    iget-object v0, v0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v0}, Lcom/youku/service/acc/AcceleraterServiceManager;->stopAcc()V

    .line 71
    return-void
.end method

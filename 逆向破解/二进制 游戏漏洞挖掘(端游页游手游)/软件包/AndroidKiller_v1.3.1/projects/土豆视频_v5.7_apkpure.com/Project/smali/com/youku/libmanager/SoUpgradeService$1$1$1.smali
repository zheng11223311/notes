.class Lcom/youku/libmanager/SoUpgradeService$1$1$1;
.super Ljava/lang/Object;
.source "SoUpgradeService.java"

# interfaces
.implements Lcom/youku/player/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/libmanager/SoUpgradeService$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/youku/libmanager/SoUpgradeService$1$1;


# direct methods
.method constructor <init>(Lcom/youku/libmanager/SoUpgradeService$1$1;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/youku/libmanager/SoUpgradeService$1$1$1;->this$2:Lcom/youku/libmanager/SoUpgradeService$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 176
    const-string v1, "SoUpgradeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startDownloadSo onFailed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v1, "SoUpgradeService"

    const-string/jumbo v2, "startDownloadSo fail"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService$1$1$1;->this$2:Lcom/youku/libmanager/SoUpgradeService$1$1;

    iget-object v1, v1, Lcom/youku/libmanager/SoUpgradeService$1$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$1;

    iget-object v1, v1, Lcom/youku/libmanager/SoUpgradeService$1;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v1}, Lcom/youku/libmanager/SoUpgradeService;->access$700(Lcom/youku/libmanager/SoUpgradeService;)Lcom/youku/libmanager/ISoUpgradeCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService$1$1$1;->this$2:Lcom/youku/libmanager/SoUpgradeService$1$1;

    iget-object v1, v1, Lcom/youku/libmanager/SoUpgradeService$1$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$1;

    iget-object v1, v1, Lcom/youku/libmanager/SoUpgradeService$1;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v1}, Lcom/youku/libmanager/SoUpgradeService;->access$700(Lcom/youku/libmanager/SoUpgradeService;)Lcom/youku/libmanager/ISoUpgradeCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/libmanager/SoUpgradeService$1$1$1;->this$2:Lcom/youku/libmanager/SoUpgradeService$1$1;

    iget-object v2, v2, Lcom/youku/libmanager/SoUpgradeService$1$1;->val$soName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/youku/libmanager/ISoUpgradeCallback;->onDownloadFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SoUpgradeService"

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/youku/player/network/HttpRequestManager;)V
    .locals 3
    .param p1, "httpRequestManager"    # Lcom/youku/player/network/HttpRequestManager;

    .prologue
    .line 188
    invoke-virtual {p1}, Lcom/youku/player/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "jsonString":Ljava/lang/String;
    const-string v1, "SoUpgradeService"

    const-string v2, "onSuccess"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService$1$1$1;->this$2:Lcom/youku/libmanager/SoUpgradeService$1$1;

    iget-object v1, v1, Lcom/youku/libmanager/SoUpgradeService$1$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$1;

    iget-object v1, v1, Lcom/youku/libmanager/SoUpgradeService$1;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v1, v0}, Lcom/youku/libmanager/SoUpgradeService;->access$800(Lcom/youku/libmanager/SoUpgradeService;Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService$1$1$1;->this$2:Lcom/youku/libmanager/SoUpgradeService$1$1;

    iget-object v1, v1, Lcom/youku/libmanager/SoUpgradeService$1$1;->this$1:Lcom/youku/libmanager/SoUpgradeService$1;

    iget-object v2, p0, Lcom/youku/libmanager/SoUpgradeService$1$1$1;->this$2:Lcom/youku/libmanager/SoUpgradeService$1$1;

    iget-object v2, v2, Lcom/youku/libmanager/SoUpgradeService$1$1;->val$soName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/youku/libmanager/SoUpgradeService$1;->access$900(Lcom/youku/libmanager/SoUpgradeService$1;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    const-string v1, "SoUpgradeService"

    const-string v2, "no response string"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/youku/libmanager/SoUpgradeService$4;
.super Ljava/lang/Object;
.source "SoUpgradeService.java"

# interfaces
.implements Lcom/youku/player/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/libmanager/SoUpgradeService;->checkLibrary()V
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
    .line 831
    iput-object p1, p0, Lcom/youku/libmanager/SoUpgradeService$4;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 835
    const-string v0, "SoUpgradeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v0, "SoUpgradeService"

    const-string/jumbo v1, "so upgrade fail"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService$4;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/libmanager/SoUpgradeService;->access$2300(Lcom/youku/libmanager/SoUpgradeService;Ljava/lang/Boolean;)V

    .line 838
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService$4;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v0}, Lcom/youku/libmanager/SoUpgradeService;->access$1500(Lcom/youku/libmanager/SoUpgradeService;)V

    .line 839
    return-void
.end method

.method public onSuccess(Lcom/youku/player/network/HttpRequestManager;)V
    .locals 3
    .param p1, "httpRequestManager"    # Lcom/youku/player/network/HttpRequestManager;

    .prologue
    .line 843
    invoke-virtual {p1}, Lcom/youku/player/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, "jsonString":Ljava/lang/String;
    const-string v1, "SoUpgradeService"

    const-string v2, "onSuccess"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 846
    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService$4;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v1, v0}, Lcom/youku/libmanager/SoUpgradeService;->access$800(Lcom/youku/libmanager/SoUpgradeService;Ljava/lang/String;)V

    .line 847
    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService$4;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v1}, Lcom/youku/libmanager/SoUpgradeService;->access$2400(Lcom/youku/libmanager/SoUpgradeService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 848
    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService$4;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/libmanager/SoUpgradeService;->access$2300(Lcom/youku/libmanager/SoUpgradeService;Ljava/lang/Boolean;)V

    .line 849
    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService$4;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-virtual {v1}, Lcom/youku/libmanager/SoUpgradeService;->downloadLibs()V

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService$4;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/libmanager/SoUpgradeService;->access$2300(Lcom/youku/libmanager/SoUpgradeService;Ljava/lang/Boolean;)V

    .line 852
    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService$4;->this$0:Lcom/youku/libmanager/SoUpgradeService;

    invoke-static {v1}, Lcom/youku/libmanager/SoUpgradeService;->access$1500(Lcom/youku/libmanager/SoUpgradeService;)V

    goto :goto_0
.end method

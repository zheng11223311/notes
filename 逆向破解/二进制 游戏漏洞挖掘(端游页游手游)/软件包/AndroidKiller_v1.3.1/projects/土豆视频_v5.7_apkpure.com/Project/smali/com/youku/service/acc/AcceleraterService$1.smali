.class Lcom/youku/service/acc/AcceleraterService$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 41
    iput-object p1, p0, Lcom/youku/service/acc/AcceleraterService$1;->this$0:Lcom/youku/service/acc/AcceleraterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/service/acc/AcceleraterService$1;->this$0:Lcom/youku/service/acc/AcceleraterService;

    invoke-static {v0}, Lcom/youku/service/acc/AcceleraterService;->access$000(Lcom/youku/service/acc/AcceleraterService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/youku/service/acc/AcceleraterService$1;->this$0:Lcom/youku/service/acc/AcceleraterService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/service/acc/AcceleraterService;->access$002(Lcom/youku/service/acc/AcceleraterService;Z)Z

    .line 62
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    const-string v0, "Accelerater_Service"

    const-string v1, "network --------> wifi"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/youku/service/acc/AcceleraterService$1;->this$0:Lcom/youku/service/acc/AcceleraterService;

    iget-object v0, v0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v0}, Lcom/youku/service/acc/AcceleraterServiceManager;->resumeAcc()I

    goto :goto_0

    .line 55
    :cond_1
    const-string v0, "Accelerater_Service"

    const-string v1, "network --------> 2/3g"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/youku/service/acc/AcceleraterService$1;->this$0:Lcom/youku/service/acc/AcceleraterService;

    iget-object v0, v0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v0}, Lcom/youku/service/acc/AcceleraterServiceManager;->pauseAcc()I

    goto :goto_0

    .line 59
    :cond_2
    const-string v0, "Accelerater_Service"

    const-string v1, "network --------> no network"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/youku/service/acc/AcceleraterService$1;->this$0:Lcom/youku/service/acc/AcceleraterService;

    iget-object v0, v0, Lcom/youku/service/acc/AcceleraterService;->mAccServiceManager:Lcom/youku/service/acc/AcceleraterServiceManager;

    invoke-virtual {v0}, Lcom/youku/service/acc/AcceleraterServiceManager;->pauseAcc()I

    goto :goto_0
.end method

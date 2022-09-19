.class final Lcom/tudou/ui/fragment/SubscribeFragment$14;
.super Landroid/content/BroadcastReceiver;
.source "SubscribeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SubscribeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 586
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 589
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v0

    .line 591
    .local v0, "iattention":Lcom/tudou/service/attention/IAttention;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-interface {v0, v1}, Lcom/tudou/service/attention/IAttention;->onUserLoginCallBack(Landroid/os/Handler;)V

    .line 593
    .end local v0    # "iattention":Lcom/tudou/service/attention/IAttention;
    :cond_0
    return-void
.end method

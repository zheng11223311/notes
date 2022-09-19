.class Lcom/tudou/ui/fragment/VipBuyFragment$9;
.super Ljava/lang/Object;
.source "VipBuyFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/VipBuyFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/VipBuyFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/VipBuyFragment;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/tudou/ui/fragment/VipBuyFragment$9;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 442
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment$9;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/VipBuyFragment;->access$1200(Lcom/tudou/ui/fragment/VipBuyFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/tudou/ui/fragment/VipBuyFragment$9;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/VipBuyFragment;->access$1200(Lcom/tudou/ui/fragment/VipBuyFragment;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x186a2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 446
    :cond_1
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 416
    :try_start_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "str":Ljava/lang/String;
    const-class v3, Lcom/youku/vo/ListVipPayInfo;

    invoke-static {v1, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ListVipPayInfo;

    .line 419
    .local v2, "vipInfos":Lcom/youku/vo/ListVipPayInfo;
    iget-object v3, p0, Lcom/tudou/ui/fragment/VipBuyFragment$9;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/VipBuyFragment;->access$1200(Lcom/tudou/ui/fragment/VipBuyFragment;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 420
    invoke-static {}, Lcom/youku/service/login/LoginManager;->getInstance()Lcom/youku/service/login/ILogin;

    move-result-object v3

    new-instance v4, Lcom/tudou/ui/fragment/VipBuyFragment$9$1;

    invoke-direct {v4, p0, v2}, Lcom/tudou/ui/fragment/VipBuyFragment$9$1;-><init>(Lcom/tudou/ui/fragment/VipBuyFragment$9;Lcom/youku/vo/ListVipPayInfo;)V

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/youku/service/login/ILogin;->updateMembership(Lcom/youku/service/login/ILogin$IMembershipCallBack;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "vipInfos":Lcom/youku/vo/ListVipPayInfo;
    :cond_0
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/tudou/ui/fragment/VipBuyFragment$9;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/VipBuyFragment;->access$1200(Lcom/tudou/ui/fragment/VipBuyFragment;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 436
    iget-object v3, p0, Lcom/tudou/ui/fragment/VipBuyFragment$9;->this$0:Lcom/tudou/ui/fragment/VipBuyFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/VipBuyFragment;->access$1200(Lcom/tudou/ui/fragment/VipBuyFragment;)Landroid/os/Handler;

    move-result-object v3

    const v4, 0x186a2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

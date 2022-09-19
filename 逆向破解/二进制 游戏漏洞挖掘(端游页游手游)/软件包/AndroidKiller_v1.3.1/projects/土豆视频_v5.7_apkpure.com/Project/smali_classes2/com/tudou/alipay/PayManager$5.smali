.class Lcom/tudou/alipay/PayManager$5;
.super Ljava/lang/Object;
.source "PayManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/alipay/PayManager;->requestTradeUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/alipay/PayManager;


# direct methods
.method constructor <init>(Lcom/tudou/alipay/PayManager;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/tudou/alipay/PayManager$5;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 638
    sget-object v0, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestTradeUrl...onFailed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/tudou/alipay/PayManager$5;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v0}, Lcom/tudou/alipay/PayManager;->access$1200(Lcom/tudou/alipay/PayManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/tudou/alipay/PayManager$5;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v0}, Lcom/tudou/alipay/PayManager;->access$1200(Lcom/tudou/alipay/PayManager;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x493e4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/tudou/alipay/PayManager$5;->this$0:Lcom/tudou/alipay/PayManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/alipay/PayManager;->access$1302(Lcom/tudou/alipay/PayManager;Z)Z

    .line 667
    iget-object v0, p0, Lcom/tudou/alipay/PayManager$5;->this$0:Lcom/tudou/alipay/PayManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/alipay/PayManager;->access$1402(Lcom/tudou/alipay/PayManager;Lcom/youku/network/IHttpRequest;)Lcom/youku/network/IHttpRequest;

    .line 668
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 7
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v6, 0x1

    .line 571
    sget-object v2, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestTradeUrl...onSuccess...isCancel():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->isCancel()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->isCancel()Z

    move-result v2

    if-nez v2, :cond_1

    .line 576
    new-instance v0, Lcom/youku/http/ParseJson;

    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/youku/http/ParseJson;-><init>(Ljava/lang/String;)V

    .line 578
    .local v0, "mParseJson":Lcom/youku/http/ParseJson;
    invoke-virtual {v0}, Lcom/youku/http/ParseJson;->parseTradeInfo()Lcom/tudou/alipay/entity/TradeInfo;

    move-result-object v1

    .line 579
    .local v1, "mTradeInfo":Lcom/tudou/alipay/entity/TradeInfo;
    sget-object v2, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestTradeUrl...mTradeInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    if-eqz v1, :cond_1

    const-string v2, "4"

    invoke-virtual {v1}, Lcom/tudou/alipay/entity/TradeInfo;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 585
    const v2, 0x7f0d0472

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 586
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/youku/vo/UserBean;->setLastTradeStatus(Z)V

    .line 587
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/youku/vo/UserBean;->setLastTradeId(Ljava/lang/String;)V

    .line 588
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/youku/vo/UserBean;->setLastTradeTime(J)V

    .line 589
    sput-boolean v6, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->mRefreshKey:Z

    .line 590
    sput-boolean v6, Lcom/tudou/ui/fragment/MyTudouFragment;->mNeedToRefresh:Z

    .line 591
    sput-boolean v6, Lcom/tudou/ui/fragment/AccountFragment;->isNeedRefresh:Z

    .line 592
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$5;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v2}, Lcom/tudou/alipay/PayManager;->access$1200(Lcom/tudou/alipay/PayManager;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 593
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$5;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v2}, Lcom/tudou/alipay/PayManager;->access$1200(Lcom/tudou/alipay/PayManager;)Landroid/os/Handler;

    move-result-object v2

    const v3, 0x493e3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 596
    :cond_0
    sget-object v2, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    const-string v3, "requestTradeUrl...sendMessage:ALIPAY_PAY_SUCCESS"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    .end local v0    # "mParseJson":Lcom/youku/http/ParseJson;
    .end local v1    # "mTradeInfo":Lcom/tudou/alipay/entity/TradeInfo;
    :cond_1
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$5;->this$0:Lcom/tudou/alipay/PayManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tudou/alipay/PayManager;->access$1302(Lcom/tudou/alipay/PayManager;Z)Z

    .line 633
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$5;->this$0:Lcom/tudou/alipay/PayManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tudou/alipay/PayManager;->access$1402(Lcom/tudou/alipay/PayManager;Lcom/youku/network/IHttpRequest;)Lcom/youku/network/IHttpRequest;

    .line 634
    return-void
.end method

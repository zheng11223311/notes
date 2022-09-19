.class Lcom/tudou/alipay/PayManager$4;
.super Ljava/lang/Object;
.source "PayManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/alipay/PayManager;->requestDoPayUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/alipay/PayManager;

.field final synthetic val$pay_channel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/alipay/PayManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/tudou/alipay/PayManager$4;->this$0:Lcom/tudou/alipay/PayManager;

    iput-object p2, p0, Lcom/tudou/alipay/PayManager$4;->val$pay_channel:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 403
    sget-object v0, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestDoPayUrl...onFailed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 406
    iget-object v0, p0, Lcom/tudou/alipay/PayManager$4;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v0}, Lcom/tudou/alipay/PayManager;->access$400(Lcom/tudou/alipay/PayManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 407
    iget-object v0, p0, Lcom/tudou/alipay/PayManager$4;->this$0:Lcom/tudou/alipay/PayManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/alipay/PayManager;->access$1002(Lcom/tudou/alipay/PayManager;Z)Z

    .line 408
    iget-object v0, p0, Lcom/tudou/alipay/PayManager$4;->this$0:Lcom/tudou/alipay/PayManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/alipay/PayManager;->access$1102(Lcom/tudou/alipay/PayManager;Lcom/youku/network/IHttpRequest;)Lcom/youku/network/IHttpRequest;

    .line 409
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/16 v5, 0x65

    .line 375
    sget-object v2, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestDoPayUrl...onSuccess...isCancel():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->isCancel()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 379
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->isCancel()Z

    move-result v2

    if-nez v2, :cond_0

    .line 380
    new-instance v1, Lcom/youku/http/ParseJson;

    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/youku/http/ParseJson;-><init>(Ljava/lang/String;)V

    .line 382
    .local v1, "mParseJson":Lcom/youku/http/ParseJson;
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$4;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-virtual {v1}, Lcom/youku/http/ParseJson;->parseDoPayData()Lcom/tudou/alipay/entity/DoPayData;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tudou/alipay/PayManager;->access$902(Lcom/tudou/alipay/PayManager;Lcom/tudou/alipay/entity/DoPayData;)Lcom/tudou/alipay/entity/DoPayData;

    .line 383
    sget-object v2, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestDoPayUrl...mDoPayData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/alipay/PayManager$4;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v4}, Lcom/tudou/alipay/PayManager;->access$900(Lcom/tudou/alipay/PayManager;)Lcom/tudou/alipay/entity/DoPayData;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$4;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v2}, Lcom/tudou/alipay/PayManager;->access$900(Lcom/tudou/alipay/PayManager;)Lcom/tudou/alipay/entity/DoPayData;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 386
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$4;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v2}, Lcom/tudou/alipay/PayManager;->access$900(Lcom/tudou/alipay/PayManager;)Lcom/tudou/alipay/entity/DoPayData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/alipay/entity/DoPayData;->getChannel_params()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "channelParams":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 388
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$4;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v2}, Lcom/tudou/alipay/PayManager;->access$400(Lcom/tudou/alipay/PayManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 397
    .end local v0    # "channelParams":Ljava/lang/String;
    .end local v1    # "mParseJson":Lcom/youku/http/ParseJson;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$4;->this$0:Lcom/tudou/alipay/PayManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tudou/alipay/PayManager;->access$1002(Lcom/tudou/alipay/PayManager;Z)Z

    .line 398
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$4;->this$0:Lcom/tudou/alipay/PayManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tudou/alipay/PayManager;->access$1102(Lcom/tudou/alipay/PayManager;Lcom/youku/network/IHttpRequest;)Lcom/youku/network/IHttpRequest;

    .line 399
    return-void

    .line 390
    .restart local v0    # "channelParams":Ljava/lang/String;
    .restart local v1    # "mParseJson":Lcom/youku/http/ParseJson;
    :cond_1
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$4;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v2}, Lcom/tudou/alipay/PayManager;->access$900(Lcom/tudou/alipay/PayManager;)Lcom/tudou/alipay/entity/DoPayData;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/alipay/PayManager$4;->val$pay_channel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tudou/alipay/entity/DoPayData;->setPay_channel(Ljava/lang/String;)V

    .line 391
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$4;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v2}, Lcom/tudou/alipay/PayManager;->access$400(Lcom/tudou/alipay/PayManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 394
    .end local v0    # "channelParams":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$4;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v2}, Lcom/tudou/alipay/PayManager;->access$400(Lcom/tudou/alipay/PayManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.class Lcom/tudou/alipay/PayManager$3;
.super Ljava/lang/Object;
.source "PayManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/alipay/PayManager;->requestPayVodUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 308
    iput-object p1, p0, Lcom/tudou/alipay/PayManager$3;->this$0:Lcom/tudou/alipay/PayManager;

    iput-object p2, p0, Lcom/tudou/alipay/PayManager$3;->val$pay_channel:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 341
    sget-object v0, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPayVodUrl...onFailed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 344
    iget-object v0, p0, Lcom/tudou/alipay/PayManager$3;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v0}, Lcom/tudou/alipay/PayManager;->access$400(Lcom/tudou/alipay/PayManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 345
    iget-object v0, p0, Lcom/tudou/alipay/PayManager$3;->this$0:Lcom/tudou/alipay/PayManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/alipay/PayManager;->access$1002(Lcom/tudou/alipay/PayManager;Z)Z

    .line 346
    iget-object v0, p0, Lcom/tudou/alipay/PayManager$3;->this$0:Lcom/tudou/alipay/PayManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/alipay/PayManager;->access$1102(Lcom/tudou/alipay/PayManager;Lcom/youku/network/IHttpRequest;)Lcom/youku/network/IHttpRequest;

    .line 347
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/16 v5, 0x65

    .line 311
    sget-object v2, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestPayVodUrl...onSuccess...isCancel():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->isCancel()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 315
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->isCancel()Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    new-instance v1, Lcom/youku/vo/PayVodResult;

    invoke-direct {v1}, Lcom/youku/vo/PayVodResult;-><init>()V

    .line 317
    .local v1, "result":Lcom/youku/vo/PayVodResult;
    invoke-virtual {p1, v1}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Lcom/youku/vo/PayVodResult;
    check-cast v1, Lcom/youku/vo/PayVodResult;

    .line 318
    .restart local v1    # "result":Lcom/youku/vo/PayVodResult;
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$3;->this$0:Lcom/tudou/alipay/PayManager;

    new-instance v3, Lcom/tudou/alipay/entity/DoPayData;

    invoke-direct {v3}, Lcom/tudou/alipay/entity/DoPayData;-><init>()V

    invoke-static {v2, v3}, Lcom/tudou/alipay/PayManager;->access$902(Lcom/tudou/alipay/PayManager;Lcom/tudou/alipay/entity/DoPayData;)Lcom/tudou/alipay/entity/DoPayData;

    .line 319
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$3;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v2}, Lcom/tudou/alipay/PayManager;->access$900(Lcom/tudou/alipay/PayManager;)Lcom/tudou/alipay/entity/DoPayData;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/vo/PayVodResult;->result:Lcom/youku/vo/PayVodResult$result;

    iget-object v3, v3, Lcom/youku/vo/PayVodResult$result;->channel_response:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tudou/alipay/entity/DoPayData;->setChannel_params(Ljava/lang/String;)V

    .line 320
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$3;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v2}, Lcom/tudou/alipay/PayManager;->access$900(Lcom/tudou/alipay/PayManager;)Lcom/tudou/alipay/entity/DoPayData;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/vo/PayVodResult;->result:Lcom/youku/vo/PayVodResult$result;

    iget-object v3, v3, Lcom/youku/vo/PayVodResult$result;->order_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tudou/alipay/entity/DoPayData;->setTrade_id(Ljava/lang/String;)V

    .line 321
    sget-object v2, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestPayVodUrl...mDoPayData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/alipay/PayManager$3;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v4}, Lcom/tudou/alipay/PayManager;->access$900(Lcom/tudou/alipay/PayManager;)Lcom/tudou/alipay/entity/DoPayData;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$3;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v2}, Lcom/tudou/alipay/PayManager;->access$900(Lcom/tudou/alipay/PayManager;)Lcom/tudou/alipay/entity/DoPayData;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 324
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$3;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v2}, Lcom/tudou/alipay/PayManager;->access$900(Lcom/tudou/alipay/PayManager;)Lcom/tudou/alipay/entity/DoPayData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/alipay/entity/DoPayData;->getChannel_params()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "channelParams":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 326
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$3;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v2}, Lcom/tudou/alipay/PayManager;->access$400(Lcom/tudou/alipay/PayManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 335
    .end local v0    # "channelParams":Ljava/lang/String;
    .end local v1    # "result":Lcom/youku/vo/PayVodResult;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$3;->this$0:Lcom/tudou/alipay/PayManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tudou/alipay/PayManager;->access$1002(Lcom/tudou/alipay/PayManager;Z)Z

    .line 336
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$3;->this$0:Lcom/tudou/alipay/PayManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tudou/alipay/PayManager;->access$1102(Lcom/tudou/alipay/PayManager;Lcom/youku/network/IHttpRequest;)Lcom/youku/network/IHttpRequest;

    .line 337
    return-void

    .line 328
    .restart local v0    # "channelParams":Ljava/lang/String;
    .restart local v1    # "result":Lcom/youku/vo/PayVodResult;
    :cond_1
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$3;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v2}, Lcom/tudou/alipay/PayManager;->access$900(Lcom/tudou/alipay/PayManager;)Lcom/tudou/alipay/entity/DoPayData;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/alipay/PayManager$3;->val$pay_channel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tudou/alipay/entity/DoPayData;->setPay_channel(Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$3;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v2}, Lcom/tudou/alipay/PayManager;->access$400(Lcom/tudou/alipay/PayManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 332
    .end local v0    # "channelParams":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$3;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v2}, Lcom/tudou/alipay/PayManager;->access$400(Lcom/tudou/alipay/PayManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

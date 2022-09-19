.class Lcom/tudou/alipay/AlipayManager$2;
.super Ljava/lang/Object;
.source "AlipayManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/alipay/AlipayManager;->requestDoPayUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/alipay/AlipayManager;

.field final synthetic val$pay_channel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/alipay/AlipayManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/tudou/alipay/AlipayManager$2;->this$0:Lcom/tudou/alipay/AlipayManager;

    iput-object p2, p0, Lcom/tudou/alipay/AlipayManager$2;->val$pay_channel:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 203
    sget-object v0, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

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

    .line 205
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 206
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager$2;->this$0:Lcom/tudou/alipay/AlipayManager;

    invoke-static {v0}, Lcom/tudou/alipay/AlipayManager;->access$300(Lcom/tudou/alipay/AlipayManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 207
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager$2;->this$0:Lcom/tudou/alipay/AlipayManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/alipay/AlipayManager;->access$402(Lcom/tudou/alipay/AlipayManager;Z)Z

    .line 208
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager$2;->this$0:Lcom/tudou/alipay/AlipayManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/alipay/AlipayManager;->access$502(Lcom/tudou/alipay/AlipayManager;Lcom/youku/network/IHttpRequest;)Lcom/youku/network/IHttpRequest;

    .line 209
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 4
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 180
    sget-object v1, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestDoPayUrl...onSuccess...isCancel():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->isCancel()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 184
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->isCancel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    new-instance v0, Lcom/youku/http/ParseJson;

    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youku/http/ParseJson;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "mParseJson":Lcom/youku/http/ParseJson;
    iget-object v1, p0, Lcom/tudou/alipay/AlipayManager$2;->this$0:Lcom/tudou/alipay/AlipayManager;

    invoke-virtual {v0}, Lcom/youku/http/ParseJson;->parseDoPayData()Lcom/tudou/alipay/entity/DoPayData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/alipay/AlipayManager;->access$202(Lcom/tudou/alipay/AlipayManager;Lcom/tudou/alipay/entity/DoPayData;)Lcom/tudou/alipay/entity/DoPayData;

    .line 188
    sget-object v1, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestDoPayUrl...mDoPayData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/alipay/AlipayManager$2;->this$0:Lcom/tudou/alipay/AlipayManager;

    invoke-static {v3}, Lcom/tudou/alipay/AlipayManager;->access$200(Lcom/tudou/alipay/AlipayManager;)Lcom/tudou/alipay/entity/DoPayData;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/tudou/alipay/AlipayManager$2;->this$0:Lcom/tudou/alipay/AlipayManager;

    invoke-static {v1}, Lcom/tudou/alipay/AlipayManager;->access$200(Lcom/tudou/alipay/AlipayManager;)Lcom/tudou/alipay/entity/DoPayData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/tudou/alipay/AlipayManager$2;->this$0:Lcom/tudou/alipay/AlipayManager;

    invoke-static {v1}, Lcom/tudou/alipay/AlipayManager;->access$200(Lcom/tudou/alipay/AlipayManager;)Lcom/tudou/alipay/entity/DoPayData;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/alipay/AlipayManager$2;->val$pay_channel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tudou/alipay/entity/DoPayData;->setPay_channel(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/tudou/alipay/AlipayManager$2;->this$0:Lcom/tudou/alipay/AlipayManager;

    invoke-static {v1}, Lcom/tudou/alipay/AlipayManager;->access$300(Lcom/tudou/alipay/AlipayManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 197
    .end local v0    # "mParseJson":Lcom/youku/http/ParseJson;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tudou/alipay/AlipayManager$2;->this$0:Lcom/tudou/alipay/AlipayManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tudou/alipay/AlipayManager;->access$402(Lcom/tudou/alipay/AlipayManager;Z)Z

    .line 198
    iget-object v1, p0, Lcom/tudou/alipay/AlipayManager$2;->this$0:Lcom/tudou/alipay/AlipayManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tudou/alipay/AlipayManager;->access$502(Lcom/tudou/alipay/AlipayManager;Lcom/youku/network/IHttpRequest;)Lcom/youku/network/IHttpRequest;

    .line 199
    return-void

    .line 194
    .restart local v0    # "mParseJson":Lcom/youku/http/ParseJson;
    :cond_1
    iget-object v1, p0, Lcom/tudou/alipay/AlipayManager$2;->this$0:Lcom/tudou/alipay/AlipayManager;

    invoke-static {v1}, Lcom/tudou/alipay/AlipayManager;->access$300(Lcom/tudou/alipay/AlipayManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

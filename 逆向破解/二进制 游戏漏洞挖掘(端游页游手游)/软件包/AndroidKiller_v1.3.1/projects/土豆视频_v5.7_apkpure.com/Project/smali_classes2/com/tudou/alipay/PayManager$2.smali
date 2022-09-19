.class Lcom/tudou/alipay/PayManager$2;
.super Ljava/lang/Object;
.source "PayManager.java"

# interfaces
.implements Lcom/alipay/android/app/pay/PayTask$OnPayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/alipay/PayManager;->performAlipay()V
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
    .line 180
    iput-object p1, p0, Lcom/tudou/alipay/PayManager$2;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resultStatus"    # Ljava/lang/String;
    .param p3, "memo"    # Ljava/lang/String;
    .param p4, "result"    # Ljava/lang/String;

    .prologue
    .line 184
    sget-object v1, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PayTask.onPayFailed.resultStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",memo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    invoke-static {p3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 190
    :cond_0
    new-instance v0, Lcom/tudou/alipay/PayManager$AlipayResult;

    iget-object v1, p0, Lcom/tudou/alipay/PayManager$2;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-direct {v0, v1, p2, p4}, Lcom/tudou/alipay/PayManager$AlipayResult;-><init>(Lcom/tudou/alipay/PayManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .local v0, "mAlipayResult":Lcom/tudou/alipay/PayManager$AlipayResult;
    iget-object v1, p0, Lcom/tudou/alipay/PayManager$2;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v1}, Lcom/tudou/alipay/PayManager;->access$400(Lcom/tudou/alipay/PayManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 194
    iget-object v1, p0, Lcom/tudou/alipay/PayManager$2;->this$0:Lcom/tudou/alipay/PayManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tudou/alipay/PayManager;->access$502(Lcom/tudou/alipay/PayManager;Lcom/alipay/android/app/pay/PayTask;)Lcom/alipay/android/app/pay/PayTask;

    .line 195
    iget-object v1, p0, Lcom/tudou/alipay/PayManager$2;->this$0:Lcom/tudou/alipay/PayManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tudou/alipay/PayManager;->access$602(Lcom/tudou/alipay/PayManager;Z)Z

    .line 196
    sget-object v1, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    const-string v2, "performAlipay().mPayTask.pay().end...fail"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public onPaySuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resultStatus"    # Ljava/lang/String;
    .param p3, "memo"    # Ljava/lang/String;
    .param p4, "result"    # Ljava/lang/String;

    .prologue
    .line 202
    sget-object v1, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PayTask.onPaySuccess.resultStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",memo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    invoke-static {p3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 208
    :cond_0
    new-instance v0, Lcom/tudou/alipay/PayManager$AlipayResult;

    iget-object v1, p0, Lcom/tudou/alipay/PayManager$2;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-direct {v0, v1, p2, p4}, Lcom/tudou/alipay/PayManager$AlipayResult;-><init>(Lcom/tudou/alipay/PayManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v0, "mAlipayResult":Lcom/tudou/alipay/PayManager$AlipayResult;
    iget-object v1, p0, Lcom/tudou/alipay/PayManager$2;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-static {v1}, Lcom/tudou/alipay/PayManager;->access$400(Lcom/tudou/alipay/PayManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 212
    iget-object v1, p0, Lcom/tudou/alipay/PayManager$2;->this$0:Lcom/tudou/alipay/PayManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tudou/alipay/PayManager;->access$502(Lcom/tudou/alipay/PayManager;Lcom/alipay/android/app/pay/PayTask;)Lcom/alipay/android/app/pay/PayTask;

    .line 213
    iget-object v1, p0, Lcom/tudou/alipay/PayManager$2;->this$0:Lcom/tudou/alipay/PayManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tudou/alipay/PayManager;->access$602(Lcom/tudou/alipay/PayManager;Z)Z

    .line 214
    sget-object v1, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    const-string v2, "performAlipay().mPayTask.pay().end...success"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

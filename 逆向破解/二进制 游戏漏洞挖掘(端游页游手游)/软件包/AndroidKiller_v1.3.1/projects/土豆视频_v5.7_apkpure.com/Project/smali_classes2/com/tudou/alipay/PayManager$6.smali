.class Lcom/tudou/alipay/PayManager$6;
.super Ljava/lang/Object;
.source "PayManager.java"

# interfaces
.implements Lcom/alipay/android/app/pay/PayTask$OnPayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/alipay/PayManager;->performGiftAlipay(Ljava/lang/String;Landroid/app/Activity;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/alipay/PayManager;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/tudou/alipay/PayManager;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 736
    iput-object p1, p0, Lcom/tudou/alipay/PayManager$6;->this$0:Lcom/tudou/alipay/PayManager;

    iput-object p2, p0, Lcom/tudou/alipay/PayManager$6;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resultStatus"    # Ljava/lang/String;
    .param p3, "memo"    # Ljava/lang/String;
    .param p4, "result"    # Ljava/lang/String;

    .prologue
    .line 740
    const-string v2, "byron"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PayTask.onPayFailed.resultStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",memo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 744
    invoke-static {p3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 746
    :cond_0
    new-instance v0, Lcom/tudou/alipay/PayManager$AlipayResult;

    iget-object v2, p0, Lcom/tudou/alipay/PayManager$6;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-direct {v0, v2, p2, p4}, Lcom/tudou/alipay/PayManager$AlipayResult;-><init>(Lcom/tudou/alipay/PayManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    .local v0, "alipayResult":Lcom/tudou/alipay/PayManager$AlipayResult;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 749
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 750
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 751
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$6;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 752
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$6;->this$0:Lcom/tudou/alipay/PayManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tudou/alipay/PayManager;->access$502(Lcom/tudou/alipay/PayManager;Lcom/alipay/android/app/pay/PayTask;)Lcom/alipay/android/app/pay/PayTask;

    .line 753
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$6;->this$0:Lcom/tudou/alipay/PayManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tudou/alipay/PayManager;->access$602(Lcom/tudou/alipay/PayManager;Z)Z

    .line 754
    const-string v2, "byron"

    const-string v3, "performGiftAlipay(): end...fail"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    return-void
.end method

.method public onPaySuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resultStatus"    # Ljava/lang/String;
    .param p3, "memo"    # Ljava/lang/String;
    .param p4, "result"    # Ljava/lang/String;

    .prologue
    .line 760
    const-string v2, "byron"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PayTask.onPaySuccess.resultStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",memo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 764
    invoke-static {p3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 766
    :cond_0
    new-instance v0, Lcom/tudou/alipay/PayManager$AlipayResult;

    iget-object v2, p0, Lcom/tudou/alipay/PayManager$6;->this$0:Lcom/tudou/alipay/PayManager;

    invoke-direct {v0, v2, p2, p4}, Lcom/tudou/alipay/PayManager$AlipayResult;-><init>(Lcom/tudou/alipay/PayManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    .local v0, "alipayResult":Lcom/tudou/alipay/PayManager$AlipayResult;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 769
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 770
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 771
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$6;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 772
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$6;->this$0:Lcom/tudou/alipay/PayManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tudou/alipay/PayManager;->access$502(Lcom/tudou/alipay/PayManager;Lcom/alipay/android/app/pay/PayTask;)Lcom/alipay/android/app/pay/PayTask;

    .line 773
    iget-object v2, p0, Lcom/tudou/alipay/PayManager$6;->this$0:Lcom/tudou/alipay/PayManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tudou/alipay/PayManager;->access$602(Lcom/tudou/alipay/PayManager;Z)Z

    .line 774
    const-string v2, "byron"

    const-string v3, "performGiftAlipay(): end...success"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    return-void
.end method

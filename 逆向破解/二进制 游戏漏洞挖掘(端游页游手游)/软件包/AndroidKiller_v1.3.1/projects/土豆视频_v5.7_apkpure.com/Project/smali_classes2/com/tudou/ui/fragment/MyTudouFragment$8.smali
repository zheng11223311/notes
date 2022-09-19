.class Lcom/tudou/ui/fragment/MyTudouFragment$8;
.super Ljava/lang/Object;
.source "MyTudouFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MyTudouFragment;->getUserInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

.field final synthetic val$userUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTudouFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$8;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$8;->val$userUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 602
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$8;->val$userUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/tudou/android/TudouApi;->getLocalJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "localJson":Ljava/lang/String;
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$8;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1400(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 605
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$8;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1400(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 606
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 5
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 588
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, "str":Ljava/lang/String;
    const-string v2, "TAG_TUDOU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user====data===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 591
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$8;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1400(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 598
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$8;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1400(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 595
    .local v0, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTudouFragment$8;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1400(Lcom/tudou/ui/fragment/MyTudouFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

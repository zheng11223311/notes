.class Lcom/tudou/ui/fragment/LoginFragment$10;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/LoginFragment;->threeLogin(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/LoginFragment;

.field final synthetic val$sucess:I


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/LoginFragment;I)V
    .locals 0

    .prologue
    .line 907
    iput-object p1, p0, Lcom/tudou/ui/fragment/LoginFragment$10;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    iput p2, p0, Lcom/tudou/ui/fragment/LoginFragment$10;->val$sucess:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 929
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "three login failed====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment$10;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/LoginFragment;->access$1300(Lcom/tudou/ui/fragment/LoginFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 931
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 7
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v6, 0x3

    .line 911
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 912
    .local v1, "str":Ljava/lang/String;
    const-string v3, "TAG_TUDOU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "three login sucess====="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 915
    .local v2, "threeJsonObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    const-string v3, "user"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 916
    iget-object v3, p0, Lcom/tudou/ui/fragment/LoginFragment$10;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/LoginFragment;->access$1300(Lcom/tudou/ui/fragment/LoginFragment;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 925
    .end local v2    # "threeJsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 918
    .restart local v2    # "threeJsonObject":Lorg/json/JSONObject;
    :cond_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/LoginFragment$10;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/LoginFragment;->access$1300(Lcom/tudou/ui/fragment/LoginFragment;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment$10;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/LoginFragment;->access$1300(Lcom/tudou/ui/fragment/LoginFragment;)Landroid/os/Handler;

    move-result-object v4

    iget v5, p0, Lcom/tudou/ui/fragment/LoginFragment$10;->val$sucess:I

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 921
    .end local v2    # "threeJsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 922
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/tudou/ui/fragment/LoginFragment$10;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/LoginFragment;->access$1300(Lcom/tudou/ui/fragment/LoginFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

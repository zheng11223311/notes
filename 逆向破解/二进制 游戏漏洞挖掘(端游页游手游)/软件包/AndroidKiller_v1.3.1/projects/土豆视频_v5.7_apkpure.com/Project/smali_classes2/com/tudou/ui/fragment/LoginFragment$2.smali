.class Lcom/tudou/ui/fragment/LoginFragment$2;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/LoginFragment;->verify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/LoginFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/LoginFragment;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/tudou/ui/fragment/LoginFragment$2;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment$2;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/LoginFragment;->access$400(Lcom/tudou/ui/fragment/LoginFragment;)Lcom/tudou/ui/fragment/LoginFragment$MyHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/LoginFragment$MyHandler;->sendEmptyMessage(I)Z

    .line 438
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 7
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v6, 0x2

    .line 419
    :try_start_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, "str":Ljava/lang/String;
    const-class v4, Lcom/youku/vo/LoginVerificationBean;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/LoginVerificationBean;

    .line 421
    .local v1, "loginVerificationBean":Lcom/youku/vo/LoginVerificationBean;
    iget-object v4, v1, Lcom/youku/vo/LoginVerificationBean;->data:Lcom/youku/vo/LoginVerificationBean$LoginVerificationData;

    if-nez v4, :cond_0

    .line 422
    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment$2;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/LoginFragment;->access$400(Lcom/tudou/ui/fragment/LoginFragment;)Lcom/tudou/ui/fragment/LoginFragment$MyHandler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/tudou/ui/fragment/LoginFragment$MyHandler;->sendEmptyMessage(I)Z

    .line 433
    .end local v1    # "loginVerificationBean":Lcom/youku/vo/LoginVerificationBean;
    .end local v3    # "str":Ljava/lang/String;
    :goto_0
    return-void

    .line 424
    .restart local v1    # "loginVerificationBean":Lcom/youku/vo/LoginVerificationBean;
    .restart local v3    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 425
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->what:I

    .line 426
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 427
    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment$2;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/LoginFragment;->access$400(Lcom/tudou/ui/fragment/LoginFragment;)Lcom/tudou/ui/fragment/LoginFragment$MyHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/tudou/ui/fragment/LoginFragment$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    .end local v1    # "loginVerificationBean":Lcom/youku/vo/LoginVerificationBean;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/tudou/ui/fragment/LoginFragment$2;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/LoginFragment;->access$400(Lcom/tudou/ui/fragment/LoginFragment;)Lcom/tudou/ui/fragment/LoginFragment$MyHandler;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/tudou/ui/fragment/LoginFragment$MyHandler;->sendEmptyMessage(I)Z

    .line 431
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

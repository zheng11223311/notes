.class Lcom/tudou/ui/fragment/AccountFragment$2;
.super Ljava/lang/Object;
.source "AccountFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/AccountFragment;->getUserInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/AccountFragment;

.field final synthetic val$userUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/AccountFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/tudou/ui/fragment/AccountFragment$2;->this$0:Lcom/tudou/ui/fragment/AccountFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/AccountFragment$2;->val$userUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 345
    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountFragment$2;->val$userUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/tudou/android/TudouApi;->getLocalJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "localJson":Ljava/lang/String;
    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountFragment$2;->this$0:Lcom/tudou/ui/fragment/AccountFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AccountFragment;->access$500(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 348
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountFragment$2;->this$0:Lcom/tudou/ui/fragment/AccountFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AccountFragment;->access$500(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;->sendMessage(Landroid/os/Message;)Z

    .line 349
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 4
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 334
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountFragment$2;->this$0:Lcom/tudou/ui/fragment/AccountFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AccountFragment;->access$500(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;->sendEmptyMessage(I)Z

    .line 341
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountFragment$2;->this$0:Lcom/tudou/ui/fragment/AccountFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AccountFragment;->access$500(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 339
    .local v0, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/tudou/ui/fragment/AccountFragment$2;->this$0:Lcom/tudou/ui/fragment/AccountFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AccountFragment;->access$500(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

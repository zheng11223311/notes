.class Lcom/tudou/ui/fragment/LoginFragment$7;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/LoginFragment;->qqLogin()V
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
    .line 707
    iput-object p1, p0, Lcom/tudou/ui/fragment/LoginFragment$7;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 739
    invoke-static {}, Lcom/youku/widget/YoukuLoadingDialog;->dismiss()V

    .line 741
    const-string v0, "TAG_TUDOU"

    const-string v1, "\u53d6\u6d88\u767b\u9646"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 8
    .param p1, "obj0"    # Ljava/lang/Object;

    .prologue
    .line 717
    move-object v1, p1

    check-cast v1, Lorg/json/JSONObject;

    .line 718
    .local v1, "arg0":Lorg/json/JSONObject;
    const-string v5, "openid"

    invoke-static {v1, v5}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 720
    .local v3, "openid":Ljava/lang/String;
    const-string v5, "access_token"

    invoke-static {v1, v5}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, "accessToken":Ljava/lang/String;
    const-string v5, "expires_in"

    invoke-static {v1, v5}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 725
    .local v2, "expiresIn":Ljava/lang/String;
    new-instance v5, Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;-><init>(Lcom/tudou/ui/fragment/LoginFragment$1;)V

    invoke-static {v5}, Lcom/tudou/ui/fragment/LoginFragment;->access$1402(Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;)Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;

    .line 726
    invoke-static {}, Lcom/tudou/ui/fragment/LoginFragment;->access$1400()Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;

    move-result-object v5

    iput-object v3, v5, Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;->openid:Ljava/lang/String;

    .line 727
    invoke-static {}, Lcom/tudou/ui/fragment/LoginFragment;->access$1400()Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;

    move-result-object v5

    iput-object v0, v5, Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;->access_token:Ljava/lang/String;

    .line 728
    invoke-static {}, Lcom/tudou/ui/fragment/LoginFragment;->access$1400()Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;

    move-result-object v5

    iput-object v2, v5, Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;->expires_in:Ljava/lang/String;

    .line 730
    iget-object v5, p0, Lcom/tudou/ui/fragment/LoginFragment$7;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-static {v5, v6, v3, v7}, Lcom/tudou/ui/fragment/LoginFragment;->access$1200(Lcom/tudou/ui/fragment/LoginFragment;ILjava/lang/String;I)V

    .line 731
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 734
    .local v4, "returnString":Ljava/lang/String;
    const-string v5, "TAG_TUDOU"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u81ea\u52a8\u767b\u5f55\u6210\u529f===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 2
    .param p1, "arg0"    # Lcom/tencent/tauth/UiError;

    .prologue
    .line 711
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment$7;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/LoginFragment;->access$1300(Lcom/tudou/ui/fragment/LoginFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 712
    const-string v0, "TAG_TUDOU"

    const-string v1, "\u767b\u9646\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    return-void
.end method

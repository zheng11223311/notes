.class Lcom/tudou/ui/fragment/LoginFragment$5;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lcom/alibaba/sdk/android/login/callback/LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/LoginFragment;->taobaoLogin()V
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
    .line 654
    iput-object p1, p0, Lcom/tudou/ui/fragment/LoginFragment$5;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 664
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u767b\u5f55\u5931\u8d25===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method public onSuccess(Lcom/alibaba/sdk/android/session/model/Session;)V
    .locals 4
    .param p1, "session"    # Lcom/alibaba/sdk/android/session/model/Session;

    .prologue
    .line 657
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7528\u6237id===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/alibaba/sdk/android/session/model/Session;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment$5;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    const/16 v1, 0xb

    invoke-interface {p1}, Lcom/alibaba/sdk/android/session/model/Session;->getUserId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/ui/fragment/LoginFragment;->access$1200(Lcom/tudou/ui/fragment/LoginFragment;ILjava/lang/String;I)V

    .line 660
    return-void
.end method

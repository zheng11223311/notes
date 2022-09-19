.class Lcom/tudou/ui/fragment/LoginFragment$8;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lcom/tudou/videoshare/SinaShare$IAuthCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/LoginFragment;->sinaLogin()V
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
    .line 761
    iput-object p1, p0, Lcom/tudou/ui/fragment/LoginFragment$8;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 781
    return-void
.end method

.method public onFailed()V
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment$8;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/LoginFragment;->access$1300(Lcom/tudou/ui/fragment/LoginFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 777
    return-void
.end method

.method public onSucess(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "aBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x2

    .line 766
    const-string v1, "uid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, "openid":Ljava/lang/String;
    new-instance v1, Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;-><init>(Lcom/tudou/ui/fragment/LoginFragment$1;)V

    invoke-static {v1}, Lcom/tudou/ui/fragment/LoginFragment;->access$1402(Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;)Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;

    .line 769
    invoke-static {}, Lcom/tudou/ui/fragment/LoginFragment;->access$1400()Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;

    move-result-object v1

    iput-object v0, v1, Lcom/tudou/ui/fragment/LoginFragment$ThreeInfo;->openid:Ljava/lang/String;

    .line 773
    iget-object v1, p0, Lcom/tudou/ui/fragment/LoginFragment$8;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v1, v3, v0, v3}, Lcom/tudou/ui/fragment/LoginFragment;->access$1200(Lcom/tudou/ui/fragment/LoginFragment;ILjava/lang/String;I)V

    .line 774
    return-void
.end method

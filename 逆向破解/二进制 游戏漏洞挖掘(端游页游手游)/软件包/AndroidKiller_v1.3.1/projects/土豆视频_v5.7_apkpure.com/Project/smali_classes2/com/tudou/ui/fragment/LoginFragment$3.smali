.class Lcom/tudou/ui/fragment/LoginFragment$3;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lcom/youku/service/login/ILogin$ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/LoginFragment;->requestDoLogin()V
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
    .line 451
    iput-object p1, p0, Lcom/tudou/ui/fragment/LoginFragment$3;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;I)V
    .locals 2
    .param p1, "mes"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    const/4 v1, 0x1

    .line 464
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment$3;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/LoginFragment;->access$208(Lcom/tudou/ui/fragment/LoginFragment;)I

    .line 465
    invoke-static {}, Lcom/youku/widget/YoukuLoadingDialog;->dismiss()V

    .line 466
    invoke-static {p1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment$3;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/LoginFragment;->access$802(Lcom/tudou/ui/fragment/LoginFragment;Z)Z

    .line 468
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment$3;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/LoginFragment;->access$200(Lcom/tudou/ui/fragment/LoginFragment;)I

    move-result v0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment$3;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/LoginFragment;->access$900(Lcom/tudou/ui/fragment/LoginFragment;)V

    .line 469
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment$3;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/LoginFragment;->access$500(Lcom/tudou/ui/fragment/LoginFragment;)V

    .line 456
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment$3;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/LoginFragment;->access$600(Lcom/tudou/ui/fragment/LoginFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tudou/ui/fragment/LoginFragment;->goTarget(Landroid/app/Activity;)V

    .line 457
    invoke-static {}, Lcom/youku/widget/YoukuLoadingDialog;->dismiss()V

    .line 458
    iget-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment$3;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/LoginFragment;->access$700(Lcom/tudou/ui/fragment/LoginFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 459
    const-string v0, "\u767b\u5f55\u6210\u529f"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 460
    return-void
.end method

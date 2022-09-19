.class Lcom/tudou/ui/fragment/RegistFragment$2;
.super Ljava/lang/Object;
.source "RegistFragment.java"

# interfaces
.implements Lcom/youku/service/login/ILogin$ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/RegistFragment;->doRegist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/RegistFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/RegistFragment;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/tudou/ui/fragment/RegistFragment$2;->this$0:Lcom/tudou/ui/fragment/RegistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;I)V
    .locals 2
    .param p1, "mes"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 265
    invoke-static {}, Lcom/youku/widget/YoukuLoadingDialog;->dismiss()V

    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const-string v0, "\u6ce8\u518c\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 271
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment$2;->this$0:Lcom/tudou/ui/fragment/RegistFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RegistFragment;->access$200(Lcom/tudou/ui/fragment/RegistFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 272
    return-void

    .line 269
    :cond_0
    invoke-static {p1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 248
    const-string v0, "\u6ce8\u518c\u6210\u529f"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/youku/widget/YoukuLoadingDialog;->dismiss()V

    .line 250
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment$2;->this$0:Lcom/tudou/ui/fragment/RegistFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RegistFragment;->access$000(Lcom/tudou/ui/fragment/RegistFragment;)V

    .line 251
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment$2;->this$0:Lcom/tudou/ui/fragment/RegistFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RegistFragment;->access$100(Lcom/tudou/ui/fragment/RegistFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tudou/ui/fragment/LoginFragment;->goTarget(Landroid/app/Activity;)V

    .line 252
    sget-object v0, Lcom/tudou/ui/activity/PhoneRegistActivity;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    if-eqz v0, :cond_0

    .line 253
    sget-object v0, Lcom/tudou/ui/activity/PhoneRegistActivity;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 255
    :cond_0
    sget-object v0, Lcom/tudou/ui/activity/LoginActivity;->mActivity:Lcom/tudou/ui/activity/LoginActivity;

    if-eqz v0, :cond_1

    .line 256
    sget-object v0, Lcom/tudou/ui/activity/LoginActivity;->mActivity:Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/LoginActivity;->finish()V

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment$2;->this$0:Lcom/tudou/ui/fragment/RegistFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/RegistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 261
    return-void
.end method

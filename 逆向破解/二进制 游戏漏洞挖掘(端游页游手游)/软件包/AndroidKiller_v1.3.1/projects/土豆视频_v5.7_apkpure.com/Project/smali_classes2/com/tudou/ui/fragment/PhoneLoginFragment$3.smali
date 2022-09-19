.class Lcom/tudou/ui/fragment/PhoneLoginFragment$3;
.super Ljava/lang/Object;
.source "PhoneLoginFragment.java"

# interfaces
.implements Lcom/youku/service/login/ILogin$ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/PhoneLoginFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/PhoneLoginFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/PhoneLoginFragment;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment$3;->this$0:Lcom/tudou/ui/fragment/PhoneLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;I)V
    .locals 1
    .param p1, "mes"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 216
    invoke-static {}, Lcom/youku/widget/YoukuLoadingDialog;->dismiss()V

    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "\u5feb\u901f\u767b\u5f55\u5931\u8d25"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-static {p1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 176
    iget-object v1, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment$3;->this$0:Lcom/tudou/ui/fragment/PhoneLoginFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->access$000(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/tudou/ui/fragment/LoginFragment;->goTarget(Landroid/app/Activity;)V

    .line 177
    const-string v1, "\u5feb\u901f\u767b\u5f55\u6210\u529f"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 179
    sget-object v1, Lcom/tudou/ui/activity/LoginActivity;->mActivity:Lcom/tudou/ui/activity/LoginActivity;

    if-eqz v1, :cond_0

    .line 180
    sget-object v1, Lcom/tudou/ui/activity/LoginActivity;->mActivity:Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/LoginActivity;->finish()V

    .line 205
    :cond_0
    invoke-static {}, Lcom/youku/widget/YoukuLoadingDialog;->dismiss()V

    .line 206
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isNeedSetPwd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment$3;->this$0:Lcom/tudou/ui/fragment/PhoneLoginFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->access$100(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/PasswordSetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment$3;->this$0:Lcom/tudou/ui/fragment/PhoneLoginFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->access$200(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 210
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment$3;->this$0:Lcom/tudou/ui/fragment/PhoneLoginFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->access$300(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 212
    return-void
.end method

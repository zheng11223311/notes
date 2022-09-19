.class Lcom/tudou/ui/fragment/PhoneRegistFragment$4;
.super Ljava/lang/Object;
.source "PhoneRegistFragment.java"

# interfaces
.implements Lcom/youku/service/login/ILogin$ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/PhoneRegistFragment;->doRegist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/PhoneRegistFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/PhoneRegistFragment;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment$4;->this$0:Lcom/tudou/ui/fragment/PhoneRegistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;I)V
    .locals 1
    .param p1, "mes"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 302
    invoke-static {}, Lcom/youku/widget/YoukuLoadingDialog;->dismiss()V

    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const-string v0, "\u6ce8\u518c\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 314
    :goto_0
    return-void

    .line 306
    :cond_0
    const-string v0, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    const-string v0, "\u6ce8\u518c\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_1
    invoke-static {p1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 280
    invoke-static {}, Lcom/youku/widget/YoukuLoadingDialog;->dismiss()V

    .line 282
    iget-object v1, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment$4;->this$0:Lcom/tudou/ui/fragment/PhoneRegistFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->access$200(Lcom/tudou/ui/fragment/PhoneRegistFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/tudou/ui/fragment/LoginFragment;->goTarget(Landroid/app/Activity;)V

    .line 283
    const-string v1, "\u6ce8\u518c\u6210\u529f"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 284
    sget-object v1, Lcom/tudou/ui/activity/LoginActivity;->mActivity:Lcom/tudou/ui/activity/LoginActivity;

    if-eqz v1, :cond_0

    .line 285
    sget-object v1, Lcom/tudou/ui/activity/LoginActivity;->mActivity:Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/LoginActivity;->finish()V

    .line 287
    :cond_0
    sget-object v1, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    iget-object v1, v1, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    iget-object v1, v1, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    iget v1, v1, Lcom/youku/vo/TudouSwitchesBean$Switches;->tudou_subscription_guide:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    iget-object v1, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment$4;->this$0:Lcom/tudou/ui/fragment/PhoneRegistFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/tudou/ui/fragment/DiscoveryFragment;->showDouXiaowu(Landroid/app/Activity;)V

    .line 296
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment$4;->this$0:Lcom/tudou/ui/fragment/PhoneRegistFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->access$500(Lcom/tudou/ui/fragment/PhoneRegistFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 298
    return-void

    .line 290
    :cond_2
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isNeedSetPwd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment$4;->this$0:Lcom/tudou/ui/fragment/PhoneRegistFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->access$300(Lcom/tudou/ui/fragment/PhoneRegistFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/PasswordSetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment$4;->this$0:Lcom/tudou/ui/fragment/PhoneRegistFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->access$400(Lcom/tudou/ui/fragment/PhoneRegistFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

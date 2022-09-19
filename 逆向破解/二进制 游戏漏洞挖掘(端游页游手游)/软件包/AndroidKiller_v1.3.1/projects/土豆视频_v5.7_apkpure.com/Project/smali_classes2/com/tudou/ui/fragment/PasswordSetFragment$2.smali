.class Lcom/tudou/ui/fragment/PasswordSetFragment$2;
.super Ljava/lang/Object;
.source "PasswordSetFragment.java"

# interfaces
.implements Lcom/youku/service/login/ILogin$ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/PasswordSetFragment;->setPwd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/PasswordSetFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/PasswordSetFragment;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/tudou/ui/fragment/PasswordSetFragment$2;->this$0:Lcom/tudou/ui/fragment/PasswordSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;I)V
    .locals 2
    .param p1, "mes"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 196
    invoke-static {}, Lcom/youku/widget/YoukuLoadingDialog;->dismiss()V

    .line 197
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment$2;->this$0:Lcom/tudou/ui/fragment/PasswordSetFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/PasswordSetFragment;->access$200(Lcom/tudou/ui/fragment/PasswordSetFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "\u5bc6\u7801\u8bbe\u7f6e\u5931\u8d25"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-static {p1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 187
    invoke-static {}, Lcom/youku/widget/YoukuLoadingDialog;->dismiss()V

    .line 188
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment$2;->this$0:Lcom/tudou/ui/fragment/PasswordSetFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/PasswordSetFragment;->access$000(Lcom/tudou/ui/fragment/PasswordSetFragment;)V

    .line 189
    const-string v0, "\u5bc6\u7801\u8bbe\u7f6e\u6210\u529f"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment$2;->this$0:Lcom/tudou/ui/fragment/PasswordSetFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/PasswordSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 191
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment$2;->this$0:Lcom/tudou/ui/fragment/PasswordSetFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/PasswordSetFragment;->access$100(Lcom/tudou/ui/fragment/PasswordSetFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 192
    return-void
.end method

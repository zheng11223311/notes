.class Lcom/tudou/ui/fragment/PhoneRegistFragment$3;
.super Ljava/lang/Object;
.source "PhoneRegistFragment.java"

# interfaces
.implements Lcom/youku/service/login/ILogin$ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/PhoneRegistFragment;->getMsg()V
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
    .line 231
    iput-object p1, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment$3;->this$0:Lcom/tudou/ui/fragment/PhoneRegistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;I)V
    .locals 1
    .param p1, "mes"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 244
    invoke-static {}, Lcom/youku/widget/YoukuLoadingDialog;->dismiss()V

    .line 245
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const-string v0, "\u83b7\u53d6\u77ed\u4fe1\u9a8c\u8bc1\u7801\u5931\u8d25"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-static {p1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 7

    .prologue
    .line 235
    invoke-static {}, Lcom/youku/widget/YoukuLoadingDialog;->dismiss()V

    .line 236
    iget-object v6, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment$3;->this$0:Lcom/tudou/ui/fragment/PhoneRegistFragment;

    new-instance v0, Lcom/tudou/ui/fragment/PhoneRegistFragment$TimeCount;

    iget-object v1, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment$3;->this$0:Lcom/tudou/ui/fragment/PhoneRegistFragment;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    invoke-direct/range {v0 .. v5}, Lcom/tudou/ui/fragment/PhoneRegistFragment$TimeCount;-><init>(Lcom/tudou/ui/fragment/PhoneRegistFragment;JJ)V

    invoke-static {v6, v0}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->access$002(Lcom/tudou/ui/fragment/PhoneRegistFragment;Lcom/tudou/ui/fragment/PhoneRegistFragment$TimeCount;)Lcom/tudou/ui/fragment/PhoneRegistFragment$TimeCount;

    .line 237
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment$3;->this$0:Lcom/tudou/ui/fragment/PhoneRegistFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->access$000(Lcom/tudou/ui/fragment/PhoneRegistFragment;)Lcom/tudou/ui/fragment/PhoneRegistFragment$TimeCount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/PhoneRegistFragment$TimeCount;->start()Landroid/os/CountDownTimer;

    .line 238
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment$3;->this$0:Lcom/tudou/ui/fragment/PhoneRegistFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->access$100(Lcom/tudou/ui/fragment/PhoneRegistFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/tudou/ui/fragment/LoginFragment;->setFocus(Landroid/widget/EditText;)V

    .line 240
    return-void
.end method

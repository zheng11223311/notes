.class Lcom/tudou/ui/fragment/PasswordSetFragment$3;
.super Landroid/os/Handler;
.source "PasswordSetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/PasswordSetFragment;
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
    .line 215
    iput-object p1, p0, Lcom/tudou/ui/fragment/PasswordSetFragment$3;->this$0:Lcom/tudou/ui/fragment/PasswordSetFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 219
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_0

    .line 220
    iget-object v1, p0, Lcom/tudou/ui/fragment/PasswordSetFragment$3;->this$0:Lcom/tudou/ui/fragment/PasswordSetFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/PasswordSetFragment;->access$300(Lcom/tudou/ui/fragment/PasswordSetFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/tudou/ui/fragment/PasswordSetFragment$3;->this$0:Lcom/tudou/ui/fragment/PasswordSetFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/PasswordSetFragment;->access$200(Lcom/tudou/ui/fragment/PasswordSetFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/tudou/ui/fragment/LoginFragment;->setTextEnable(Landroid/widget/TextView;Z)V

    .line 223
    iget-object v1, p0, Lcom/tudou/ui/fragment/PasswordSetFragment$3;->this$0:Lcom/tudou/ui/fragment/PasswordSetFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/PasswordSetFragment;->access$400(Lcom/tudou/ui/fragment/PasswordSetFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/tudou/ui/fragment/LoginFragment;->setTextVertifyEnable(Landroid/widget/TextView;Z)V

    .line 230
    .end local v0    # "password":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 231
    return-void

    .line 225
    .restart local v0    # "password":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/PasswordSetFragment$3;->this$0:Lcom/tudou/ui/fragment/PasswordSetFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/PasswordSetFragment;->access$200(Lcom/tudou/ui/fragment/PasswordSetFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/LoginFragment;->setTextEnable(Landroid/widget/TextView;Z)V

    .line 226
    iget-object v1, p0, Lcom/tudou/ui/fragment/PasswordSetFragment$3;->this$0:Lcom/tudou/ui/fragment/PasswordSetFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/PasswordSetFragment;->access$400(Lcom/tudou/ui/fragment/PasswordSetFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/LoginFragment;->setTextVertifyEnable(Landroid/widget/TextView;Z)V

    goto :goto_0
.end method

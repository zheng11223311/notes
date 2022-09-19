.class Lcom/tudou/ui/fragment/LoginFragment$17;
.super Landroid/os/Handler;
.source "LoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/LoginFragment;
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
    .line 1330
    iput-object p1, p0, Lcom/tudou/ui/fragment/LoginFragment$17;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 1334
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_1

    .line 1335
    iget-object v2, p0, Lcom/tudou/ui/fragment/LoginFragment$17;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/LoginFragment;->access$2400(Lcom/tudou/ui/fragment/LoginFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1336
    .local v1, "userName":Ljava/lang/String;
    iget-object v2, p0, Lcom/tudou/ui/fragment/LoginFragment$17;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/LoginFragment;->access$2500(Lcom/tudou/ui/fragment/LoginFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1337
    .local v0, "password":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1338
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/LoginFragment$17;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/LoginFragment;->access$2600(Lcom/tudou/ui/fragment/LoginFragment;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tudou/ui/fragment/LoginFragment;->setTextEnable(Landroid/widget/TextView;Z)V

    .line 1344
    .end local v0    # "password":Ljava/lang/String;
    .end local v1    # "userName":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1345
    return-void

    .line 1340
    .restart local v0    # "password":Ljava/lang/String;
    .restart local v1    # "userName":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/LoginFragment$17;->this$0:Lcom/tudou/ui/fragment/LoginFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/LoginFragment;->access$2600(Lcom/tudou/ui/fragment/LoginFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/tudou/ui/fragment/LoginFragment;->setTextEnable(Landroid/widget/TextView;Z)V

    goto :goto_0
.end method

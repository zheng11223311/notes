.class Lcom/tudou/ui/fragment/RegistFragment$3;
.super Landroid/os/Handler;
.source "RegistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/RegistFragment;
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
    .line 282
    iput-object p1, p0, Lcom/tudou/ui/fragment/RegistFragment$3;->this$0:Lcom/tudou/ui/fragment/RegistFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 286
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_1

    .line 287
    iget-object v3, p0, Lcom/tudou/ui/fragment/RegistFragment$3;->this$0:Lcom/tudou/ui/fragment/RegistFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/RegistFragment;->access$300(Lcom/tudou/ui/fragment/RegistFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "userName":Ljava/lang/String;
    iget-object v3, p0, Lcom/tudou/ui/fragment/RegistFragment$3;->this$0:Lcom/tudou/ui/fragment/RegistFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/RegistFragment;->access$400(Lcom/tudou/ui/fragment/RegistFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "nickName":Ljava/lang/String;
    iget-object v3, p0, Lcom/tudou/ui/fragment/RegistFragment$3;->this$0:Lcom/tudou/ui/fragment/RegistFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/RegistFragment;->access$500(Lcom/tudou/ui/fragment/RegistFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "password":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 291
    :cond_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/RegistFragment$3;->this$0:Lcom/tudou/ui/fragment/RegistFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/RegistFragment;->access$200(Lcom/tudou/ui/fragment/RegistFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/tudou/ui/fragment/LoginFragment;->setTextEnable(Landroid/widget/TextView;Z)V

    .line 295
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 296
    iget-object v3, p0, Lcom/tudou/ui/fragment/RegistFragment$3;->this$0:Lcom/tudou/ui/fragment/RegistFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/RegistFragment;->access$600(Lcom/tudou/ui/fragment/RegistFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/tudou/ui/fragment/LoginFragment;->setTextVertifyEnable(Landroid/widget/TextView;Z)V

    .line 301
    .end local v0    # "nickName":Ljava/lang/String;
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "userName":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 302
    return-void

    .line 293
    .restart local v0    # "nickName":Ljava/lang/String;
    .restart local v1    # "password":Ljava/lang/String;
    .restart local v2    # "userName":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/tudou/ui/fragment/RegistFragment$3;->this$0:Lcom/tudou/ui/fragment/RegistFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/RegistFragment;->access$200(Lcom/tudou/ui/fragment/RegistFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/tudou/ui/fragment/LoginFragment;->setTextEnable(Landroid/widget/TextView;Z)V

    goto :goto_0

    .line 298
    :cond_3
    iget-object v3, p0, Lcom/tudou/ui/fragment/RegistFragment$3;->this$0:Lcom/tudou/ui/fragment/RegistFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/RegistFragment;->access$600(Lcom/tudou/ui/fragment/RegistFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/tudou/ui/fragment/LoginFragment;->setTextVertifyEnable(Landroid/widget/TextView;Z)V

    goto :goto_1
.end method

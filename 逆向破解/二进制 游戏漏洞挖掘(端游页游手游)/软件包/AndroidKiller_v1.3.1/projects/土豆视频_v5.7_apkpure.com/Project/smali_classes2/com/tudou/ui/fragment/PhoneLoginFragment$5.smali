.class Lcom/tudou/ui/fragment/PhoneLoginFragment$5;
.super Landroid/os/Handler;
.source "PhoneLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/PhoneLoginFragment;
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
    .line 296
    iput-object p1, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment$5;->this$0:Lcom/tudou/ui/fragment/PhoneLoginFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 300
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v6, :cond_3

    .line 301
    iget-object v2, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment$5;->this$0:Lcom/tudou/ui/fragment/PhoneLoginFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->access$600(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "userName":Ljava/lang/String;
    iget-object v2, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment$5;->this$0:Lcom/tudou/ui/fragment/PhoneLoginFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->access$500(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "password":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment$5;->this$0:Lcom/tudou/ui/fragment/PhoneLoginFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->access$700(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/tudou/ui/fragment/LoginFragment;->setTextEnable(Landroid/widget/TextView;Z)V

    .line 308
    :goto_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment$5;->this$0:Lcom/tudou/ui/fragment/PhoneLoginFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->access$800(Lcom/tudou/ui/fragment/PhoneLoginFragment;)J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 319
    .end local v0    # "password":Ljava/lang/String;
    .end local v1    # "userName":Ljava/lang/String;
    :goto_1
    return-void

    .line 306
    .restart local v0    # "password":Ljava/lang/String;
    .restart local v1    # "userName":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment$5;->this$0:Lcom/tudou/ui/fragment/PhoneLoginFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->access$700(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/tudou/ui/fragment/LoginFragment;->setTextEnable(Landroid/widget/TextView;Z)V

    goto :goto_0

    .line 311
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 312
    iget-object v2, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment$5;->this$0:Lcom/tudou/ui/fragment/PhoneLoginFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->access$900(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/tudou/ui/fragment/LoginFragment;->setTextVertifyEnable(Landroid/widget/TextView;Z)V

    .line 318
    .end local v0    # "password":Ljava/lang/String;
    .end local v1    # "userName":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 314
    .restart local v0    # "password":Ljava/lang/String;
    .restart local v1    # "userName":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment$5;->this$0:Lcom/tudou/ui/fragment/PhoneLoginFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->access$900(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/tudou/ui/fragment/LoginFragment;->setTextVertifyEnable(Landroid/widget/TextView;Z)V

    goto :goto_2
.end method

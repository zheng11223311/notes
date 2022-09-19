.class Lcom/tudou/ui/fragment/PhoneRegistFragment$5;
.super Landroid/os/Handler;
.source "PhoneRegistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/PhoneRegistFragment;
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
    .line 321
    iput-object p1, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment$5;->this$0:Lcom/tudou/ui/fragment/PhoneRegistFragment;

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

    .line 325
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v6, :cond_3

    .line 326
    iget-object v2, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment$5;->this$0:Lcom/tudou/ui/fragment/PhoneRegistFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->access$600(Lcom/tudou/ui/fragment/PhoneRegistFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "userName":Ljava/lang/String;
    iget-object v2, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment$5;->this$0:Lcom/tudou/ui/fragment/PhoneRegistFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->access$100(Lcom/tudou/ui/fragment/PhoneRegistFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "password":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment$5;->this$0:Lcom/tudou/ui/fragment/PhoneRegistFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->access$700(Lcom/tudou/ui/fragment/PhoneRegistFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/tudou/ui/fragment/LoginFragment;->setTextEnable(Landroid/widget/TextView;Z)V

    .line 333
    :goto_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment$5;->this$0:Lcom/tudou/ui/fragment/PhoneRegistFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->access$800(Lcom/tudou/ui/fragment/PhoneRegistFragment;)J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 343
    .end local v0    # "password":Ljava/lang/String;
    .end local v1    # "userName":Ljava/lang/String;
    :goto_1
    return-void

    .line 331
    .restart local v0    # "password":Ljava/lang/String;
    .restart local v1    # "userName":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment$5;->this$0:Lcom/tudou/ui/fragment/PhoneRegistFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->access$700(Lcom/tudou/ui/fragment/PhoneRegistFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/tudou/ui/fragment/LoginFragment;->setTextEnable(Landroid/widget/TextView;Z)V

    goto :goto_0

    .line 336
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 337
    iget-object v2, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment$5;->this$0:Lcom/tudou/ui/fragment/PhoneRegistFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->access$900(Lcom/tudou/ui/fragment/PhoneRegistFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/tudou/ui/fragment/LoginFragment;->setTextVertifyEnable(Landroid/widget/TextView;Z)V

    .line 342
    .end local v0    # "password":Ljava/lang/String;
    .end local v1    # "userName":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 339
    .restart local v0    # "password":Ljava/lang/String;
    .restart local v1    # "userName":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment$5;->this$0:Lcom/tudou/ui/fragment/PhoneRegistFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->access$900(Lcom/tudou/ui/fragment/PhoneRegistFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/tudou/ui/fragment/LoginFragment;->setTextVertifyEnable(Landroid/widget/TextView;Z)V

    goto :goto_2
.end method

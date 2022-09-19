.class Lcom/tudou/ui/fragment/LoginFragment$MyHandler;
.super Landroid/os/Handler;
.source "LoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/LoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyHandler"
.end annotation


# instance fields
.field wr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tudou/ui/fragment/LoginFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tudou/ui/fragment/LoginFragment;)V
    .locals 1
    .param p1, "fg"    # Lcom/tudou/ui/fragment/LoginFragment;

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 201
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/LoginFragment$MyHandler;->wr:Ljava/lang/ref/WeakReference;

    .line 202
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x2

    .line 206
    iget-object v3, p0, Lcom/tudou/ui/fragment/LoginFragment$MyHandler;->wr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/ui/fragment/LoginFragment;

    .line 207
    .local v2, "fg":Lcom/tudou/ui/fragment/LoginFragment;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 212
    :pswitch_0
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tudou/ui/fragment/LoginFragment;->access$002(Lcom/tudou/ui/fragment/LoginFragment;Z)Z

    .line 214
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/LoginVerificationBean;

    .line 215
    .local v0, "bean":Lcom/youku/vo/LoginVerificationBean;
    iget-object v3, v0, Lcom/youku/vo/LoginVerificationBean;->data:Lcom/youku/vo/LoginVerificationBean$LoginVerificationData;

    iget-object v3, v3, Lcom/youku/vo/LoginVerificationBean$LoginVerificationData;->needCaptcha:Ljava/lang/String;

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 216
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    iget-object v4, v0, Lcom/youku/vo/LoginVerificationBean;->data:Lcom/youku/vo/LoginVerificationBean$LoginVerificationData;

    iget-object v4, v4, Lcom/youku/vo/LoginVerificationBean$LoginVerificationData;->codeid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/youku/vo/UserBean;->setCodeid(Ljava/lang/String;)V

    .line 217
    iget-object v3, v0, Lcom/youku/vo/LoginVerificationBean;->data:Lcom/youku/vo/LoginVerificationBean$LoginVerificationData;

    iget-object v3, v3, Lcom/youku/vo/LoginVerificationBean$LoginVerificationData;->captcha_img_url:Ljava/lang/String;

    invoke-static {v2}, Lcom/tudou/ui/fragment/LoginFragment;->access$100(Lcom/tudou/ui/fragment/LoginFragment;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tudou/ui/fragment/LoginFragment;->setVerificationImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    .end local v0    # "bean":Lcom/youku/vo/LoginVerificationBean;
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    invoke-virtual {p0, v5}, Lcom/tudou/ui/fragment/LoginFragment$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 219
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bean":Lcom/youku/vo/LoginVerificationBean;
    :cond_2
    const/4 v3, 0x2

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/tudou/ui/fragment/LoginFragment$MyHandler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 227
    .end local v0    # "bean":Lcom/youku/vo/LoginVerificationBean;
    :pswitch_1
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/youku/vo/UserBean;->setCodeid(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/youku/vo/UserBean;->setVcode(Ljava/lang/String;)V

    .line 229
    invoke-static {v2}, Lcom/tudou/ui/fragment/LoginFragment;->access$200(Lcom/tudou/ui/fragment/LoginFragment;)I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    invoke-static {v2}, Lcom/tudou/ui/fragment/LoginFragment;->access$300(Lcom/tudou/ui/fragment/LoginFragment;)V

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class Lcom/tudou/alipay/data/MobileSecurePayHelper$2;
.super Landroid/os/Handler;
.source "MobileSecurePayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/alipay/data/MobileSecurePayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/alipay/data/MobileSecurePayHelper;


# direct methods
.method constructor <init>(Lcom/tudou/alipay/data/MobileSecurePayHelper;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 401
    :try_start_0
    sget-object v3, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MobileSecurePayHelper.handleMessage...msg ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 406
    :pswitch_0
    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayHelper;

    invoke-virtual {v3}, Lcom/tudou/alipay/data/MobileSecurePayHelper;->closeProgress()V

    .line 408
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 410
    .local v0, "cachePath":Ljava/lang/String;
    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayHelper;

    iget-object v4, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayHelper;

    iget-object v4, v4, Lcom/tudou/alipay/data/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v0}, Lcom/tudou/alipay/data/MobileSecurePayHelper;->access$100(Lcom/tudou/alipay/data/MobileSecurePayHelper;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    .end local v0    # "cachePath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 432
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 415
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 417
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 419
    .restart local v0    # "cachePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayHelper;

    iget-object v3, v3, Lcom/tudou/alipay/data/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 420
    sget-object v3, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v4, "MobileSecurePayHelper.handleMessage...RQF_INSTALL"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayHelper$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayHelper;

    iget-object v3, v3, Lcom/tudou/alipay/data/MobileSecurePayHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

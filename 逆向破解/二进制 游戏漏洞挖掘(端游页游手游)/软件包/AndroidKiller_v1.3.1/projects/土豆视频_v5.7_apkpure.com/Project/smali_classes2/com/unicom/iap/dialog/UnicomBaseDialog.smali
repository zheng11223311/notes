.class public Lcom/unicom/iap/dialog/UnicomBaseDialog;
.super Landroid/app/Dialog;
.source "UnicomBaseDialog.java"


# instance fields
.field protected myProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unicom/iap/dialog/UnicomBaseDialog;->requestWindowFeature(I)Z

    .line 17
    invoke-virtual {p0}, Lcom/unicom/iap/dialog/UnicomBaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unicom/iap/dialog/UnicomBaseDialog;->setCanceledOnTouchOutside(Z)V

    .line 19
    invoke-static {p1}, Lcom/unicom/iap/utils/UICommonUtils;->initResourcesID(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected closeProgress()V
    .locals 2

    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/unicom/iap/dialog/UnicomBaseDialog;->myProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unicom/iap/dialog/UnicomBaseDialog;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/unicom/iap/dialog/UnicomBaseDialog;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected showProgress(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 29
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomBaseDialog;->myProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/unicom/iap/dialog/UnicomBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unicom/iap/dialog/UnicomBaseDialog;->myProgressDialog:Landroid/app/ProgressDialog;

    .line 32
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomBaseDialog;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 33
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomBaseDialog;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomBaseDialog;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 35
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomBaseDialog;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomBaseDialog;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/unicom/iap/dialog/UnicomBaseDialog;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 43
    :cond_1
    return-void
.end method

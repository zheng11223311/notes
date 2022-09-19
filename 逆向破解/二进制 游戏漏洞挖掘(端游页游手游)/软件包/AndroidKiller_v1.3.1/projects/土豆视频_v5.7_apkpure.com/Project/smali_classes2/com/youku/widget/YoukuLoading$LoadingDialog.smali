.class Lcom/youku/widget/YoukuLoading$LoadingDialog;
.super Landroid/app/Dialog;
.source "YoukuLoading.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/YoukuLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadingDialog"
.end annotation


# instance fields
.field private isTouchModal:Z

.field private loading:Lcom/youku/widget/Loading;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    const v0, 0x7f0e0050

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/widget/YoukuLoading$LoadingDialog;->isTouchModal:Z

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isOnBack"    # Z

    .prologue
    .line 234
    const v0, 0x7f0e0050

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/widget/YoukuLoading$LoadingDialog;->isTouchModal:Z

    .line 236
    invoke-virtual {p0, p2}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->setCancelable(Z)V

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isTouchModal"    # Z
    .param p3, "isOnBack"    # Z

    .prologue
    .line 228
    const v0, 0x7f0e0050

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/widget/YoukuLoading$LoadingDialog;->isTouchModal:Z

    .line 229
    iput-boolean p2, p0, Lcom/youku/widget/YoukuLoading$LoadingDialog;->isTouchModal:Z

    .line 230
    invoke-virtual {p0, p3}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->setCancelable(Z)V

    .line 231
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 255
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 256
    iget-object v0, p0, Lcom/youku/widget/YoukuLoading$LoadingDialog;->loading:Lcom/youku/widget/Loading;

    invoke-virtual {v0}, Lcom/youku/widget/Loading;->stopAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 242
    const v0, 0x7f030215

    invoke-virtual {p0, v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->setContentView(I)V

    .line 243
    const v0, 0x7f0c09d5

    invoke-virtual {p0, v0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/Loading;

    iput-object v0, p0, Lcom/youku/widget/YoukuLoading$LoadingDialog;->loading:Lcom/youku/widget/Loading;

    .line 244
    iget-boolean v0, p0, Lcom/youku/widget/YoukuLoading$LoadingDialog;->isTouchModal:Z

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/youku/widget/YoukuLoading$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 248
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/youku/widget/YoukuLoading$LoadingDialog;->loading:Lcom/youku/widget/Loading;

    invoke-virtual {v0}, Lcom/youku/widget/Loading;->clearAnimation()V

    .line 251
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 266
    iget-object v0, p0, Lcom/youku/widget/YoukuLoading$LoadingDialog;->loading:Lcom/youku/widget/Loading;

    invoke-virtual {v0}, Lcom/youku/widget/Loading;->startAnimation()V

    .line 268
    return-void
.end method

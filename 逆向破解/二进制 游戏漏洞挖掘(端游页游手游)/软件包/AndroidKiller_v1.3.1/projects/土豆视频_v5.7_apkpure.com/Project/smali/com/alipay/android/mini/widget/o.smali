.class public Lcom/alipay/android/mini/widget/o;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    const-string v0, "ProgressDialog"

    invoke-static {v0}, Lj/i;->h(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 18
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Lcom/alipay/android/mini/widget/o;
    .locals 2

    .prologue
    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/widget/o;->b:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iput-object p1, p0, Lcom/alipay/android/mini/widget/o;->b:Ljava/lang/CharSequence;

    .line 28
    iget-object v0, p0, Lcom/alipay/android/mini/widget/o;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/alipay/android/mini/widget/o;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/mini/widget/o;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_0
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/android/mini/widget/o;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 59
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/widget/o;->a:Landroid/widget/TextView;

    .line 60
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const-string v0, "msp_dialog_progress"

    invoke-static {v0}, Lj/i;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/o;->setContentView(I)V

    .line 42
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/o;->a:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/alipay/android/mini/widget/o;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/alipay/android/mini/widget/o;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/mini/widget/o;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_0
    return-void
.end method

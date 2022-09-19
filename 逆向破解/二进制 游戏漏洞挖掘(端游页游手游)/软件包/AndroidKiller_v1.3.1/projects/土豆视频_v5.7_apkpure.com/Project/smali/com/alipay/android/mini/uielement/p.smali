.class Lcom/alipay/android/mini/uielement/p;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/m;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/m;JJ)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/p;->a:Lcom/alipay/android/mini/uielement/m;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/p;->a:Lcom/alipay/android/mini/uielement/m;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/m;->a(Lcom/alipay/android/mini/uielement/m;)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/p;->a:Lcom/alipay/android/mini/uielement/m;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/m;->a(Lcom/alipay/android/mini/uielement/m;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/p;->a:Lcom/alipay/android/mini/uielement/m;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/m;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/p;->a:Lcom/alipay/android/mini/uielement/m;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/m;->a(Lcom/alipay/android/mini/uielement/m;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/p;->a:Lcom/alipay/android/mini/uielement/m;

    invoke-virtual {v1}, Lcom/alipay/android/mini/uielement/m;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 7

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/p;->a:Lcom/alipay/android/mini/uielement/m;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/m;->a(Lcom/alipay/android/mini/uielement/m;)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/p;->a:Lcom/alipay/android/mini/uielement/m;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/m;->a(Lcom/alipay/android/mini/uielement/m;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/p;->a:Lcom/alipay/android/mini/uielement/m;

    invoke-static {v1}, Lcom/alipay/android/mini/uielement/m;->a(Lcom/alipay/android/mini/uielement/m;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mini_countdown_info"

    invoke-static {v3}, Lj/i;->g(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

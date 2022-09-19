.class public Lcom/alipay/android/mini/uielement/bd;
.super Lcom/alipay/android/mini/uielement/c;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/c;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 21
    check-cast p2, Landroid/widget/Button;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/mini/uielement/bd;->a(Landroid/app/Activity;Landroid/widget/Button;)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Landroid/widget/Button;)V
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/bd;->k()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/bd;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/bd;->q()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 43
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/bd;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/bd;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_1
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/bd;->x()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/alipay/android/mini/uielement/c;->i()V

    .line 60
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 29
    const-string v0, "mini_ui_button"

    invoke-static {v0}, Lj/i;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

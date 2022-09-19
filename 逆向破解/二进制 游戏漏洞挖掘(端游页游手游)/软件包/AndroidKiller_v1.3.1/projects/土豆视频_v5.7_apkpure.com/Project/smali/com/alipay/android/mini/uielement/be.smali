.class public Lcom/alipay/android/mini/uielement/be;
.super Lcom/alipay/android/mini/uielement/c;
.source "SourceFile"


# instance fields
.field private e:Landroid/widget/EditText;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/c;-><init>()V

    .line 30
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
    .line 23
    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/mini/uielement/be;->a(Landroid/app/Activity;Landroid/widget/EditText;)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Landroid/widget/EditText;)V
    .locals 2

    .prologue
    .line 54
    iput-object p2, p0, Lcom/alipay/android/mini/uielement/be;->e:Landroid/widget/EditText;

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/be;->q()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 56
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/be;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/be;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/be;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/be;->k()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/be;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_1
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/c;->a(Lorg/json/JSONObject;)V

    .line 35
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/be;->e:Landroid/widget/EditText;

    .line 45
    invoke-static {v0}, Lcom/alipay/android/mini/uielement/g;->a(Landroid/view/View;)V

    .line 46
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/be;->x()Lorg/json/JSONObject;

    move-result-object v1

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/be;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/be;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-object v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/alipay/android/mini/uielement/c;->i()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/be;->e:Landroid/widget/EditText;

    .line 84
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 39
    const-string v0, "mini_ui_textarea"

    invoke-static {v0}, Lj/i;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

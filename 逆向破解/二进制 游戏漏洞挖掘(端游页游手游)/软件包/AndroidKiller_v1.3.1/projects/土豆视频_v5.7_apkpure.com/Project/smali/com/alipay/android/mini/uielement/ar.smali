.class public Lcom/alipay/android/mini/uielement/ar;
.super Lcom/alipay/android/mini/uielement/c;
.source "SourceFile"


# instance fields
.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/c;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/ar;->e:Landroid/widget/TextView;

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
    .line 22
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/mini/uielement/ar;->a(Landroid/app/Activity;Landroid/widget/TextView;)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 48
    iput-object p2, p0, Lcom/alipay/android/mini/uielement/ar;->e:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ar;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ar;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ar;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<u>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ar;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</u>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ar;->q()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 62
    new-instance v0, Lcom/alipay/android/mini/uielement/as;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/uielement/as;-><init>(Lcom/alipay/android/mini/uielement/ar;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ar;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/c;->a(Lorg/json/JSONObject;)V

    .line 29
    return-void
.end method

.method public e()I
    .locals 2

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/ar;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ar;->e:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/g;->a(Landroid/view/View;)V

    .line 41
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ar;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    .line 43
    :cond_0
    return v0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ar;->x()Lorg/json/JSONObject;

    move-result-object v1

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ar;->k()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ar;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ar;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ar;->k()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-object v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/alipay/android/mini/uielement/c;->i()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/ar;->e:Landroid/widget/TextView;

    .line 91
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 33
    const-string v0, "mini_ui_link"

    invoke-static {v0}, Lj/i;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

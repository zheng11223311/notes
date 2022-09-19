.class public Lcom/alipay/android/mini/uielement/au;
.super Lcom/alipay/android/mini/uielement/c;
.source "SourceFile"


# instance fields
.field private e:Landroid/widget/RadioGroup;

.field private f:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/c;-><init>()V

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
    .line 27
    check-cast p2, Landroid/widget/RadioGroup;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/mini/uielement/au;->a(Landroid/app/Activity;Landroid/widget/RadioGroup;)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Landroid/widget/RadioGroup;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/au;->f:Landroid/util/SparseArray;

    .line 52
    iput-object p2, p0, Lcom/alipay/android/mini/uielement/au;->e:Landroid/widget/RadioGroup;

    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/au;->k()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move-object v2, v0

    .line 56
    :goto_0
    if-eqz v2, :cond_3

    .line 57
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    add-int/lit8 v1, v0, 0x1

    .line 59
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    new-instance v5, Landroid/widget/RadioButton;

    invoke-direct {v5, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setId(I)V

    .line 63
    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/au;->q()F

    move-result v0

    invoke-virtual {v5, v6, v0}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 65
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/au;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/au;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_2
    invoke-virtual {p2, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/au;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/au;->k()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/au;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    move v0, v1

    .line 79
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/au;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 83
    :cond_3
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/au;->e:Landroid/widget/RadioGroup;

    .line 42
    invoke-static {v0}, Lcom/alipay/android/mini/uielement/g;->a(Landroid/view/View;)V

    .line 43
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/au;->x()Lorg/json/JSONObject;

    move-result-object v1

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/au;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/au;->f:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/au;->e:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lcom/alipay/android/mini/uielement/c;->i()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/au;->e:Landroid/widget/RadioGroup;

    .line 101
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 36
    const-string v0, "mini_ui_radio"

    invoke-static {v0}, Lj/i;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

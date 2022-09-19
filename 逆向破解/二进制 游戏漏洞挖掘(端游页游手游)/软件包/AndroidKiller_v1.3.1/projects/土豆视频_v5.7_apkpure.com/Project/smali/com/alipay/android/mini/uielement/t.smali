.class public Lcom/alipay/android/mini/uielement/t;
.super Lcom/alipay/android/mini/uielement/c;
.source "SourceFile"


# instance fields
.field private e:Ljava/util/Map;

.field private f:Landroid/widget/Spinner;

.field private g:Ljava/util/List;

.field private h:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/c;-><init>()V

    .line 43
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
    .line 31
    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/mini/uielement/t;->a(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 5

    .prologue
    .line 68
    const-string v0, "mini_combox_spinner"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/t;->f:Landroid/widget/Spinner;

    .line 69
    const-string v0, "mini_combox_label"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/t;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/t;->k()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    .line 78
    :goto_1
    if-eqz v1, :cond_3

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/t;->e:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/t;->g:Ljava/util/List;

    .line 81
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    iget-object v3, p0, Lcom/alipay/android/mini/uielement/t;->e:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v3, p0, Lcom/alipay/android/mini/uielement/t;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 73
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/t;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/t;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    goto :goto_1

    .line 86
    :cond_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    const-string v1, "mini_ui_label"

    invoke-static {v1}, Lj/i;->f(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/t;->g:Ljava/util/List;

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 88
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 89
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/t;->f:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 90
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/t;->k()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/t;->f:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/t;->g:Ljava/util/List;

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/t;->k()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 96
    :cond_3
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/c;->a(Lorg/json/JSONObject;)V

    .line 48
    const-string v0, "label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/t;->h:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/t;->f:Landroid/widget/Spinner;

    .line 59
    invoke-static {v0}, Lcom/alipay/android/mini/uielement/g;->a(Landroid/view/View;)V

    .line 60
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/t;->x()Lorg/json/JSONObject;

    move-result-object v1

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/t;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/t;->e:Ljava/util/Map;

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/t;->f:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-super {p0}, Lcom/alipay/android/mini/uielement/c;->i()V

    .line 112
    iput-object v0, p0, Lcom/alipay/android/mini/uielement/t;->f:Landroid/widget/Spinner;

    .line 113
    iput-object v0, p0, Lcom/alipay/android/mini/uielement/t;->h:Ljava/lang/String;

    .line 114
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 53
    const-string v0, "mini_ui_combobox"

    invoke-static {v0}, Lj/i;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.class public Lcom/alipay/android/mini/uielement/r;
.super Lcom/alipay/android/mini/uielement/c;
.source "SourceFile"


# instance fields
.field private e:Lcom/alipay/android/mini/widget/CustomCheckbox;

.field private f:Z

.field private g:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/c;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/r;->f:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/r;->g:Z

    .line 37
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
    .line 25
    check-cast p2, Lcom/alipay/android/mini/widget/CustomCheckbox;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/mini/uielement/r;->a(Landroid/app/Activity;Lcom/alipay/android/mini/widget/CustomCheckbox;)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Lcom/alipay/android/mini/widget/CustomCheckbox;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 63
    iput-object p2, p0, Lcom/alipay/android/mini/uielement/r;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    .line 64
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/r;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomCheckbox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 65
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/r;->q()F

    move-result v0

    .line 66
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 67
    invoke-static {p1}, Lcom/alipay/android/mini/util/n;->c(Landroid/app/Activity;)F

    move-result v4

    sub-float v5, v0, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    :goto_0
    mul-float/2addr v0, v4

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 69
    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v0, v3, v0

    float-to-int v0, v0

    .line 70
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 71
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/r;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "mini_ui_check_mark"

    invoke-static {v3}, Lj/i;->e(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/widget/CustomCheckbox;->a(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/r;->k()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    const-string/jumbo v0, "true"

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/r;->k()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/r;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomCheckbox;->a(Z)V

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/mini/uielement/r;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/r;->g:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/alipay/android/mini/widget/CustomCheckbox;->setEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/r;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    new-instance v1, Lcom/alipay/android/mini/uielement/s;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/s;-><init>(Lcom/alipay/android/mini/uielement/r;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomCheckbox;->a(Lcom/alipay/android/mini/widget/CustomCheckbox$a;)V

    .line 86
    return-void

    .line 67
    :cond_1
    const/high16 v0, 0x41400000    # 12.0f

    goto :goto_0

    .line 79
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/c;->a(Lorg/json/JSONObject;)V

    .line 42
    const-string v0, "disable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/r;->g:Z

    .line 43
    const-string v0, "must"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/r;->f:Z

    .line 44
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/r;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    .line 54
    invoke-static {v0}, Lcom/alipay/android/mini/uielement/g;->a(Landroid/view/View;)V

    .line 55
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 89
    iget-boolean v1, p0, Lcom/alipay/android/mini/uielement/r;->f:Z

    if-nez v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/r;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/r;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-boolean v1, p0, Lcom/alipay/android/mini/uielement/r;->f:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/r;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    invoke-virtual {v1}, Lcom/alipay/android/mini/widget/CustomCheckbox;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/r;->f()Z

    move-result v0

    return v0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/r;->x()Lorg/json/JSONObject;

    move-result-object v1

    .line 109
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/r;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/r;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomCheckbox;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/r;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/r;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    invoke-virtual {v2}, Lcom/alipay/android/mini/widget/CustomCheckbox;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/alipay/android/mini/uielement/c;->i()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/r;->e:Lcom/alipay/android/mini/widget/CustomCheckbox;

    .line 123
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 48
    const-string v0, "mini_ui_checkbox"

    invoke-static {v0}, Lj/i;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

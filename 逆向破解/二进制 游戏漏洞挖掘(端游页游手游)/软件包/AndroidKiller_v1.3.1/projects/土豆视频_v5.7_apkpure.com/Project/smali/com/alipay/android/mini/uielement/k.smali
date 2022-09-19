.class public Lcom/alipay/android/mini/uielement/k;
.super Lcom/alipay/android/mini/uielement/a;
.source "SourceFile"

# interfaces
.implements Lr/b;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/view/ViewGroup;

.field private h:Z

.field private i:Landroid/widget/ScrollView;

.field private j:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/a;-><init>()V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/k;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->i:Landroid/widget/ScrollView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 94
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 95
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->f:Ljava/lang/String;

    const-string/jumbo v1, "scroll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/k;->h:Z

    .line 97
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->i:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    .line 98
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 99
    const-string v1, "mini_ui_scroll"

    invoke-static {v1}, Lj/i;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/k;->i:Landroid/widget/ScrollView;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->i:Landroid/widget/ScrollView;

    invoke-super {p0, p1, v0, p3}, Lcom/alipay/android/mini/uielement/a;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move-result-object v2

    .line 103
    invoke-virtual {v2, v4, v4}, Landroid/view/ViewGroup;->measure(II)V

    .line 104
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/uielement/k;->j:I

    .line 105
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 106
    iget v1, p0, Lcom/alipay/android/mini/uielement/k;->j:I

    if-le v1, v0, :cond_1

    iget v0, p0, Lcom/alipay/android/mini/uielement/k;->j:I

    :cond_1
    iput v0, p0, Lcom/alipay/android/mini/uielement/k;->j:I

    .line 107
    iget v0, p0, Lcom/alipay/android/mini/uielement/k;->j:I

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/k;->i:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v1

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/k;->i:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/mini/uielement/k;->j:I

    .line 108
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->i:Landroid/widget/ScrollView;

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 110
    instance-of v0, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 111
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 113
    :cond_2
    if-eqz v1, :cond_3

    iget v0, p0, Lcom/alipay/android/mini/uielement/k;->j:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/alipay/android/mini/uielement/k;->j:I

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v0, v3, :cond_3

    .line 115
    iget v0, p0, Lcom/alipay/android/mini/uielement/k;->j:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4, v4}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 120
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->i:Landroid/widget/ScrollView;

    .line 123
    :goto_0
    return-object v0

    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/mini/uielement/a;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;IIII)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->i:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    .line 131
    invoke-super/range {v0 .. v5}, Lcom/alipay/android/mini/uielement/a;->a(Landroid/view/ViewGroup$LayoutParams;IIII)V

    .line 132
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v5}, Lcom/alipay/android/mini/uielement/a;->a(Landroid/view/ViewGroup$LayoutParams;IIII)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/alipay/android/mini/uielement/a;->a(Landroid/view/ViewGroup$LayoutParams;IIII)V

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/app/Activity;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/k;->g:Landroid/view/ViewGroup;

    .line 152
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->b:Ljava/lang/String;

    new-instance v1, Lcom/alipay/android/mini/uielement/l;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/mini/uielement/l;-><init>(Lcom/alipay/android/mini/uielement/k;Landroid/view/ViewGroup;)V

    invoke-static {v0, v1}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;Lk/a;)V

    .line 205
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->i:Landroid/widget/ScrollView;

    if-eqz v0, :cond_4

    .line 207
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 211
    :goto_1
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/k;->e:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 213
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/k;->h:Z

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->i:Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/k;->g:Landroid/view/ViewGroup;

    .line 217
    :cond_2
    return-void

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 209
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/a;->a(Lorg/json/JSONObject;)V

    .line 65
    const-string v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/k;->b:Ljava/lang/String;

    .line 69
    :cond_0
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/k;->c:Ljava/lang/String;

    .line 72
    :cond_1
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/k;->e:Ljava/lang/String;

    .line 75
    :cond_2
    const-string v0, "overflow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    const-string v0, "overflow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/k;->f:Ljava/lang/String;

    .line 78
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/k;->h:Z

    .line 80
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 221
    iget-boolean v2, p0, Lcom/alipay/android/mini/uielement/k;->h:Z

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/alipay/android/mini/uielement/k;->i:Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/alipay/android/mini/uielement/k;->g:Landroid/view/ViewGroup;

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/mini/uielement/k;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 225
    iget-object v2, p0, Lcom/alipay/android/mini/uielement/k;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 231
    :goto_0
    return v0

    .line 227
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/mini/uielement/k;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 228
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/k;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 231
    goto :goto_0
.end method

.method public synthetic b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/mini/uielement/k;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method protected b(IIII)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->i:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/android/mini/uielement/a;->b(IIII)V

    goto :goto_0
.end method

.method public i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 236
    invoke-super {p0}, Lcom/alipay/android/mini/uielement/a;->i()V

    .line 237
    iput-object v0, p0, Lcom/alipay/android/mini/uielement/k;->i:Landroid/widget/ScrollView;

    .line 238
    iput-object v0, p0, Lcom/alipay/android/mini/uielement/k;->g:Landroid/view/ViewGroup;

    .line 239
    return-void
.end method

.method protected j()I
    .locals 1

    .prologue
    .line 89
    const-string v0, "mini_ui_block"

    invoke-static {v0}, Lj/i;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/k;->e:Ljava/lang/String;

    return-object v0
.end method

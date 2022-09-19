.class public Lcom/alipay/android/mini/uielement/an;
.super Lcom/alipay/android/mini/uielement/c;
.source "SourceFile"


# instance fields
.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Landroid/widget/TextView;

.field private i:[Ljava/lang/String;

.field private j:[Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/c;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/an;->g:Z

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/an;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/an;->h:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public I()Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/an;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method protected bridge synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 31
    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/mini/uielement/an;->a(Landroid/app/Activity;Landroid/widget/TextView;)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Landroid/widget/TextView;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x1

    .line 85
    iput-object p2, p0, Lcom/alipay/android/mini/uielement/an;->h:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/an;->i:[Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 87
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/an;->i:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v2, :cond_6

    .line 88
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/an;->i:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/mini/util/n;->a(Landroid/content/Context;[Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/an;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/an;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/an;->f:Z

    if-eqz v0, :cond_9

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/an;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/an;->q()F

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 141
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/an;->j:[Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/an;->j:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v2, :cond_a

    .line 142
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/an;->j:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/mini/util/n;->b(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_2

    .line 145
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/an;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 157
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/an;->g:Z

    if-eqz v0, :cond_3

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "mini_text_shadow"

    invoke-static {v2}, Lj/i;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {p2, v3, v0, v3, v1}, Lcom/alipay/android/mini/util/n;->a(Landroid/widget/TextView;FFFI)V

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/an;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 162
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/an;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/mini/util/n;->b(Ljava/lang/String;)I

    move-result v0

    .line 163
    if-eqz v0, :cond_4

    .line 164
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/an;->k:Ljava/lang/String;

    const-string v1, "line-through"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 168
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 172
    :cond_5
    :goto_3
    return-void

    .line 93
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/an;->i:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v2, :cond_7

    .line 94
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/an;->v()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/mini/uielement/ao;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/ao;-><init>(Lcom/alipay/android/mini/uielement/an;)V

    invoke-static {v0, v1}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;Lk/a;)V

    goto/16 :goto_0

    .line 122
    :cond_7
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/an;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 125
    :cond_8
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/an;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 137
    :cond_9
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/an;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 147
    :cond_a
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/an;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 149
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/an;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 150
    :catch_1
    move-exception v0

    .line 151
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 154
    :cond_b
    iput-boolean v2, p0, Lcom/alipay/android/mini/uielement/an;->g:Z

    goto/16 :goto_2

    .line 169
    :cond_c
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/an;->k:Ljava/lang/String;

    const-string/jumbo v1, "underline"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 170
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_3
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/c;->a(Lorg/json/JSONObject;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/an;->f:Z

    .line 47
    const-string/jumbo v0, "text-align"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/an;->e:Ljava/lang/String;

    .line 48
    const-string v0, "encoded"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/an;->f:Z

    .line 49
    const-string/jumbo v0, "shadow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/an;->g:Z

    .line 51
    const-string v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string v1, "color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/an;->i:[Ljava/lang/String;

    .line 56
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/an;->j:[Ljava/lang/String;

    .line 60
    :cond_1
    const-string/jumbo v0, "text-decoration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/an;->k:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/an;->h:Landroid/widget/TextView;

    .line 75
    invoke-static {v0}, Lcom/alipay/android/mini/uielement/g;->a(Landroid/view/View;)V

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/an;->x()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Lcom/alipay/android/mini/uielement/c;->i()V

    .line 182
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 65
    const-string v0, "mini_ui_label"

    invoke-static {v0}, Lj/i;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

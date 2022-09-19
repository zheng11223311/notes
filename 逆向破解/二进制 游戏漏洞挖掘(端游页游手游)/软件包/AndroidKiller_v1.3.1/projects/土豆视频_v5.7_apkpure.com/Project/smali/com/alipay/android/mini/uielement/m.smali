.class public Lcom/alipay/android/mini/uielement/m;
.super Lcom/alipay/android/mini/uielement/c;
.source "SourceFile"


# instance fields
.field private e:I

.field private f:I

.field private g:Landroid/os/CountDownTimer;

.field private h:Landroid/widget/Button;

.field private i:Z

.field private j:[Ljava/lang/String;

.field private k:[Ljava/lang/String;

.field private l:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/c;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/m;->i:Z

    .line 50
    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/m;->l:Z

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/m;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/m;->h:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected A()V
    .locals 6

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/m;->l:Z

    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/m;->a()Lcom/alipay/android/mini/uielement/i;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/a;

    .line 183
    if-eqz v0, :cond_1

    .line 184
    iget-object v0, v0, Lcom/alipay/android/mini/uielement/a;->a:Ljava/util/List;

    .line 185
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/j;

    .line 186
    instance-of v2, v0, Lcom/alipay/android/mini/uielement/z;

    if-eqz v2, :cond_0

    .line 187
    check-cast v0, Lcom/alipay/android/mini/uielement/z;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/z;->D()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/n;->a(Landroid/widget/EditText;)V

    .line 192
    :cond_1
    const v0, 0xea60

    iput v0, p0, Lcom/alipay/android/mini/uielement/m;->e:I

    .line 193
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alipay/android/mini/uielement/m;->f:I

    .line 194
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/m;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 195
    new-instance v0, Lcom/alipay/android/mini/uielement/p;

    iget v1, p0, Lcom/alipay/android/mini/uielement/m;->e:I

    int-to-long v2, v1

    iget v1, p0, Lcom/alipay/android/mini/uielement/m;->f:I

    int-to-long v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/mini/uielement/p;-><init>(Lcom/alipay/android/mini/uielement/m;JJ)V

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/m;->g:Landroid/os/CountDownTimer;

    .line 218
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/m;->g:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 220
    :cond_2
    return-void
.end method

.method public I()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/m;->i:Z

    return v0
.end method

.method public J()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/m;->h:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/mini/uielement/m;->e:I

    if-nez v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/m;->h:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/android/mini/uielement/q;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/q;-><init>(Lcom/alipay/android/mini/uielement/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public K()Landroid/view/View;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/m;->h:Landroid/widget/Button;

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
    .line 34
    check-cast p2, Landroid/widget/Button;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/mini/uielement/m;->a(Landroid/app/Activity;Landroid/widget/Button;)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Landroid/widget/Button;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 102
    iput-object p2, p0, Lcom/alipay/android/mini/uielement/m;->h:Landroid/widget/Button;

    .line 103
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/m;->j:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 104
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/m;->j:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v2, :cond_3

    .line 105
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/m;->j:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/mini/util/n;->a(Landroid/content/Context;[Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/m;->h:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/m;->k:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/m;->k:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v2, :cond_6

    .line 145
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/m;->k:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/mini/util/n;->b(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_1

    .line 148
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/m;->h:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 160
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/m;->q()F

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 161
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/m;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/m;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :cond_2
    new-instance v0, Lcom/alipay/android/mini/uielement/o;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/uielement/o;-><init>(Lcom/alipay/android/mini/uielement/m;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    return-void

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/m;->j:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v2, :cond_4

    .line 110
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/m;->v()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/mini/uielement/n;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/n;-><init>(Lcom/alipay/android/mini/uielement/m;)V

    invoke-static {v0, v1}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;Lk/a;)V

    goto :goto_0

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/m;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 141
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/m;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 151
    :cond_6
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/m;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/m;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/c;->a(Lorg/json/JSONObject;)V

    .line 59
    const-string/jumbo v0, "time"

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/uielement/m;->f:I

    .line 61
    iput-object v2, p0, Lcom/alipay/android/mini/uielement/m;->j:[Ljava/lang/String;

    .line 62
    iput-object v2, p0, Lcom/alipay/android/mini/uielement/m;->k:[Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "submit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/m;->i:Z

    .line 64
    const-string v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    const-string/jumbo v2, "sms"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/android/mini/uielement/m;->l:Z

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/m;->j:[Ljava/lang/String;

    .line 70
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/m;->k:[Ljava/lang/String;

    .line 74
    :cond_1
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/m;->h:Landroid/widget/Button;

    .line 93
    invoke-static {v0}, Lcom/alipay/android/mini/uielement/g;->a(Landroid/view/View;)V

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/m;->x()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 238
    invoke-super {p0}, Lcom/alipay/android/mini/uielement/c;->i()V

    .line 239
    iput-object v0, p0, Lcom/alipay/android/mini/uielement/m;->g:Landroid/os/CountDownTimer;

    .line 240
    iput-object v0, p0, Lcom/alipay/android/mini/uielement/m;->h:Landroid/widget/Button;

    .line 241
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 87
    const-string v0, "mini_ui_button"

    invoke-static {v0}, Lj/i;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

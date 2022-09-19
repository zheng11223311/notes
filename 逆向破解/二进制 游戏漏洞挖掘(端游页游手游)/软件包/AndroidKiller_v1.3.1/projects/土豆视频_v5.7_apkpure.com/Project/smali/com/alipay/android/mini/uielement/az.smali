.class public Lcom/alipay/android/mini/uielement/az;
.super Lcom/alipay/android/mini/uielement/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/mini/uielement/az$a;
    }
.end annotation


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;

.field private g:Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

.field private h:Z

.field private i:Landroid/widget/LinearLayout;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Landroid/app/Activity;

.field private p:Ls/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/c;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/az;->e:Ljava/lang/String;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/az;->m:Z

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/az;)Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->g:Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/az;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/az;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/az;Ls/b;)Ls/b;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/az;->p:Ls/b;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/az;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/alipay/android/mini/uielement/az;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/mini/uielement/az;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->o:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/mini/uielement/az;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private c(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 344
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 345
    if-ge v1, p1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 351
    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/alipay/android/mini/uielement/az;)Ls/b;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->p:Ls/b;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/mini/uielement/az;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/mini/uielement/az;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/az;->h:Z

    return v0
.end method


# virtual methods
.method protected A()V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->l:Ljava/lang/String;

    return-object v0
.end method

.method public D()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->g:Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    return-object v0
.end method

.method public I()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/az;->n:Z

    return v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->g:Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/EditTextPostProcessor;->getText(I)Ljava/lang/String;

    move-result-object v0

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
    .line 42
    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/mini/uielement/az;->a(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 7

    .prologue
    .line 214
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/az;->o:Landroid/app/Activity;

    .line 216
    const-string v0, "mini_linSimplePwdComponent"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/az;->i:Landroid/widget/LinearLayout;

    .line 220
    const-string v0, "mini_spwd_iv_1"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 222
    const-string v1, "mini_spwd_iv_2"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 224
    const-string v2, "mini_spwd_iv_3"

    invoke-static {v2}, Lj/i;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 226
    const-string v3, "mini_spwd_iv_4"

    invoke-static {v3}, Lj/i;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 228
    const-string v4, "mini_spwd_iv_5"

    invoke-static {v4}, Lj/i;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 230
    const-string v5, "mini_spwd_iv_6"

    invoke-static {v5}, Lj/i;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 232
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/alipay/android/mini/uielement/az;->f:Ljava/util/List;

    .line 233
    iget-object v6, p0, Lcom/alipay/android/mini/uielement/az;->f:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->f:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->f:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    const-string v0, "mini_spwd_input"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/az;->g:Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    .line 241
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->i:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alipay/android/mini/uielement/bb;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/bb;-><init>(Lcom/alipay/android/mini/uielement/az;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->g:Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    new-instance v1, Lcom/alipay/android/mini/uielement/az$a;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/az$a;-><init>(Lcom/alipay/android/mini/uielement/az;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 253
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/az;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alipay/android/mini/util/n;->a(Landroid/app/Activity;)I

    move-result v0

    .line 255
    :goto_0
    int-to-float v0, v0

    invoke-static {p1}, Lcom/alipay/android/mini/util/n;->c(Landroid/app/Activity;)F

    move-result v1

    const/high16 v2, 0x41600000    # 14.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 256
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 257
    div-int/lit8 v0, v0, 0x6

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 258
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->g:Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;->setInputType(I)V

    .line 259
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->g:Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 261
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->g:Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 262
    return-void

    .line 253
    :cond_0
    invoke-static {p1}, Lcom/alipay/android/mini/util/n;->e(Landroid/app/Activity;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/c;->a(Lorg/json/JSONObject;)V

    .line 81
    const-string v0, "auto"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/az;->h:Z

    .line 82
    const-string v0, "format"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/az;->j:Ljava/lang/String;

    .line 83
    const-string v0, "format_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/az;->k:Ljava/lang/String;

    .line 84
    const-string v0, "format_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/az;->l:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "verifyweak"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/az;->n:Z

    .line 86
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->g:Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/az;->m:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->g:Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    new-instance v1, Lcom/alipay/android/mini/uielement/ba;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/ba;-><init>(Lcom/alipay/android/mini/uielement/az;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/alipay/android/mini/uielement/az;->m:Z

    .line 76
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->g:Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->g:Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/az;->e:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/android/mini/uielement/az;->c(I)V

    .line 114
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->g:Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/EditTextPostProcessor;->clear(I)V

    .line 116
    :cond_0
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->g:Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    .line 205
    invoke-static {v0}, Lcom/alipay/android/mini/uielement/g;->a(Landroid/view/View;)V

    .line 206
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 120
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/az;->i:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/az;->m()Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/az;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 126
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 4

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/az;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->g:Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 133
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/az;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/az;->g:Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    invoke-virtual {v1}, Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/android/mini/util/EditTextPostProcessor;->getTextMD5(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/az;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/android/app/encrypt/MD5;->encryptMd5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/az;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const-string v1, "mini_format_error"

    invoke-static {v1}, Lj/i;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/az;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/uielement/az;->l:Ljava/lang/String;

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/az;->p:Ls/b;

    invoke-virtual {v1}, Ls/b;->d()V

    .line 164
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/az;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/mini/widget/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/az;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    const/4 v0, 0x0

    .line 178
    :goto_0
    return v0

    .line 168
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 178
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/az;->f()Z

    move-result v0

    goto :goto_0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/az;->x()Lorg/json/JSONObject;

    move-result-object v1

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/az;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/az;->g:Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    invoke-virtual {v2}, Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/alipay/android/mini/util/EditTextPostProcessor;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string v0, "encryptType"

    const-string v2, "RSA"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->g:Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/EditTextPostProcessor;->clear(I)V

    .line 190
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->p:Ls/b;

    invoke-virtual {v0}, Ls/b;->d()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-object v1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 330
    invoke-super {p0}, Lcom/alipay/android/mini/uielement/c;->i()V

    .line 331
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 334
    :cond_0
    iput-object v1, p0, Lcom/alipay/android/mini/uielement/az;->e:Ljava/lang/String;

    .line 335
    iput-object v1, p0, Lcom/alipay/android/mini/uielement/az;->g:Lcom/alipay/android/mini/widget/CustomSimplePasswordEditText;

    .line 336
    iput-object v1, p0, Lcom/alipay/android/mini/uielement/az;->i:Landroid/widget/LinearLayout;

    .line 338
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->p:Ls/b;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/az;->p:Ls/b;

    invoke-virtual {v0}, Ls/b;->d()V

    .line 341
    :cond_1
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 199
    const-string v0, "mini_ui_simple_password"

    invoke-static {v0}, Lj/i;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

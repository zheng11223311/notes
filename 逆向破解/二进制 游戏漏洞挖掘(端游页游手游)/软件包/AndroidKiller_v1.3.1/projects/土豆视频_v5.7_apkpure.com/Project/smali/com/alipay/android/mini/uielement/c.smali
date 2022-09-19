.class public abstract Lcom/alipay/android/mini/uielement/c;
.super Lcom/alipay/android/mini/uielement/j;
.source "SourceFile"


# static fields
.field private static D:I


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Lcom/alipay/android/mini/uielement/i;

.field private E:Z

.field private F:[I

.field private G:Ljava/lang/String;

.field protected a:Z

.field protected b:Lcom/alipay/android/mini/uielement/f;

.field protected c:Lcom/alipay/android/mini/uielement/f;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:F

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Lcom/alipay/android/mini/uielement/f;

.field private r:Ljava/lang/String;

.field private s:Landroid/view/View;

.field private t:Ljava/lang/String;

.field private u:[I

.field private v:[I

.field private w:Z

.field private x:I

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/mini/uielement/c;->D:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/j;-><init>()V

    .line 89
    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/c;->a:Z

    .line 91
    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/c;->E:Z

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/c;->F:[I

    .line 101
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/c;->u:[I

    .line 102
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/c;->v:[I

    .line 103
    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/c;->w:Z

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/c;->h:Z

    .line 105
    const/4 v0, -0x2

    iput v0, p0, Lcom/alipay/android/mini/uielement/c;->x:I

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/mini/uielement/c;->y:I

    .line 107
    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/c;->B:Z

    .line 108
    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/c;->m:Z

    .line 109
    return-void
.end method

.method private I()V
    .locals 6

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/c;->w:Z

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->s:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/c;->v:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/c;->v:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/c;->v:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    iget-object v4, p0, Lcom/alipay/android/mini/uielement/c;->v:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 379
    :cond_0
    return-void
.end method

.method private a(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 366
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 367
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->u:[I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/c;->u:[I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/c;->u:[I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/c;->u:[I

    aget v3, v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 370
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->u:[I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/c;->u:[I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/c;->u:[I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/c;->u:[I

    aget v3, v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/c;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/c;->B:Z

    return v0
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/c;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/alipay/android/mini/uielement/c;->B:Z

    return p1
.end method


# virtual methods
.method protected A()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->b:Lcom/alipay/android/mini/uielement/f;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->b:Lcom/alipay/android/mini/uielement/f;

    invoke-static {v0}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lcom/alipay/android/mini/uielement/c;->a(Ljava/lang/Object;[Lr/a;)V

    .line 363
    :cond_0
    return-void
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/c;->m:Z

    return v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    const-string v0, ""

    return-object v0
.end method

.method public D()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 263
    iput-boolean p3, p0, Lcom/alipay/android/mini/uielement/c;->a:Z

    .line 264
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/c;->s:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/c;->z()I

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 266
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/c;->z()I

    move-result v2

    invoke-virtual {v1, v2, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/uielement/c;->s:Landroid/view/View;

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/c;->c:Lcom/alipay/android/mini/uielement/f;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/c;->p()Lcom/alipay/android/mini/uielement/f;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/c;->s:Landroid/view/View;

    new-instance v2, Lcom/alipay/android/mini/uielement/d;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/uielement/d;-><init>(Lcom/alipay/android/mini/uielement/c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/c;->z:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 286
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/c;->z:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/c;->F:[I

    invoke-static {v1, p1, v2}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;Landroid/app/Activity;[I)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/mini/uielement/c;->x:I

    .line 290
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/c;->A:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 291
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/c;->A:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/mini/uielement/c;->y:I

    .line 294
    :cond_4
    iget-boolean v1, p0, Lcom/alipay/android/mini/uielement/c;->h:Z

    if-eqz v1, :cond_8

    .line 295
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/c;->s:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_6

    .line 298
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/c;->z:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 299
    iget v1, p0, Lcom/alipay/android/mini/uielement/c;->x:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 301
    :cond_5
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/c;->A:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 302
    iget v1, p0, Lcom/alipay/android/mini/uielement/c;->y:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 305
    :cond_6
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/c;->I()V

    .line 306
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/mini/uielement/c;->a(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->s:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/mini/uielement/c;->a(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/mini/uielement/e;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/e;-><init>(Lcom/alipay/android/mini/uielement/c;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 322
    sget v0, Lcom/alipay/android/mini/uielement/c;->D:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/android/mini/uielement/c;->D:I

    .line 323
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->s:Landroid/view/View;

    sget v1, Lcom/alipay/android/mini/uielement/c;->D:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 325
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_7

    .line 326
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->s:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFilterTouchesWhenObscured(Z)V

    .line 327
    :cond_7
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->s:Landroid/view/View;

    return-object v0

    .line 294
    :cond_8
    const/16 v0, 0x8

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a()Lcom/alipay/android/mini/uielement/i;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->C:Lcom/alipay/android/mini/uielement/i;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 390
    iput p1, p0, Lcom/alipay/android/mini/uielement/c;->x:I

    .line 391
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->F:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 113
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->F:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 114
    return-void
.end method

.method public a(IIII)V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->u:[I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 348
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->u:[I

    const/4 v1, 0x3

    aput p3, v0, v1

    .line 349
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->u:[I

    const/4 v1, 0x2

    aput p4, v0, v1

    .line 350
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->u:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 352
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Landroid/view/View;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation
.end method

.method public a(Lcom/alipay/android/mini/uielement/i;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/c;->C:Lcom/alipay/android/mini/uielement/i;

    .line 123
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 142
    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/j;->a(Lorg/json/JSONObject;)V

    .line 143
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/c;->e:Ljava/lang/String;

    .line 144
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/c;->f:Ljava/lang/Object;

    .line 145
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/c;->g:Ljava/lang/String;

    .line 146
    const-string v0, "display"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/c;->h:Z

    .line 147
    const-string/jumbo v0, "size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/n;->c(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/uielement/c;->i:F

    .line 149
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/c;->j:Ljava/lang/String;

    .line 150
    const-string/jumbo v0, "tip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/c;->k:Ljava/lang/String;

    .line 151
    const-string v0, "hint"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/c;->l:Ljava/lang/String;

    .line 152
    const-string/jumbo v0, "underline"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/c;->m:Z

    .line 153
    const-string v0, "crossline"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/c;->n:Z

    .line 154
    const-string v0, "overline"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/c;->o:Z

    .line 155
    const-string v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/c;->p:Ljava/lang/String;

    .line 156
    const-string v0, "action"

    invoke-static {p1, v0}, Lcom/alipay/android/mini/uielement/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/f;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/c;->q:Lcom/alipay/android/mini/uielement/f;

    .line 157
    const-string v0, "params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/c;->r:Ljava/lang/String;

    .line 158
    const-string v0, "padding"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string v1, "margin"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/uielement/c;->t:Ljava/lang/String;

    .line 160
    const-string v1, "content"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/uielement/c;->G:Ljava/lang/String;

    .line 161
    const-string v1, "onclick"

    invoke-static {p1, v1}, Lcom/alipay/android/mini/uielement/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/f;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/uielement/c;->c:Lcom/alipay/android/mini/uielement/f;

    .line 162
    const-string v1, "onload"

    invoke-static {p1, v1}, Lcom/alipay/android/mini/uielement/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/f;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/uielement/c;->b:Lcom/alipay/android/mini/uielement/f;

    .line 164
    const-string v1, "cursor"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/c;->E:Z

    .line 166
    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/uielement/c;->z:Ljava/lang/String;

    .line 170
    :cond_0
    const-string v1, "height"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    const-string v1, "height"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/uielement/c;->A:Ljava/lang/String;

    .line 173
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 174
    iput-boolean v2, p0, Lcom/alipay/android/mini/uielement/c;->w:Z

    .line 175
    invoke-static {v0}, Lcom/alipay/android/mini/util/n;->d(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/c;->v:[I

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 178
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/mini/util/n;->e(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/c;->u:[I

    .line 181
    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->s:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 403
    return-void
.end method

.method public synthetic b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/mini/uielement/c;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 133
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->s:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/c;->f:Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x1

    return v0
.end method

.method public i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 383
    iput-object v1, p0, Lcom/alipay/android/mini/uielement/c;->s:Landroid/view/View;

    .line 384
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->d:Lr/h;

    if-eqz v0, :cond_0

    .line 385
    iput-object v1, p0, Lcom/alipay/android/mini/uielement/c;->d:Lr/h;

    .line 387
    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/c;->E:Z

    return v0
.end method

.method public k()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected m()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/c;->h:Z

    return v0
.end method

.method protected n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected o()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/c;->n:Z

    return v0
.end method

.method public p()Lcom/alipay/android/mini/uielement/f;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->q:Lcom/alipay/android/mini/uielement/f;

    return-object v0
.end method

.method protected q()F
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/alipay/android/mini/uielement/c;->i:F

    return v0
.end method

.method protected r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method protected t()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/c;->m:Z

    return v0
.end method

.method protected u()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/c;->o:Z

    return v0
.end method

.method protected v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->G:Ljava/lang/String;

    return-object v0
.end method

.method public x()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 245
    .line 247
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/c;->r:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-object v0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method protected y()[I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/c;->v:[I

    return-object v0
.end method

.method protected abstract z()I
.end method

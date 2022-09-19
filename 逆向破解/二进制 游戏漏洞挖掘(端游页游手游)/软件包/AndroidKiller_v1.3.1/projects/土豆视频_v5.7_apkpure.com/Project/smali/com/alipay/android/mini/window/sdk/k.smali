.class public abstract Lcom/alipay/android/mini/window/sdk/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/c;
.implements Lr/h;


# instance fields
.field protected f:Lb/e;

.field protected g:Lcom/alipay/android/mini/window/sdk/j;

.field protected h:Landroid/app/Activity;

.field protected i:Ljava/lang/String;

.field protected j:Z

.field protected k:Ljava/lang/String;

.field protected l:[Ljava/lang/String;

.field protected m:[Ljava/lang/String;

.field protected n:I

.field protected o:Lcom/alipay/android/mini/uielement/f;

.field protected p:Z

.field protected q:Ljava/lang/Object;

.field r:Ljava/util/Map;

.field protected s:Lorg/json/JSONObject;

.field protected t:Lcom/alipay/android/mini/uielement/f;

.field protected u:Lcom/alipay/android/mini/window/sdk/l;

.field protected v:Lorg/json/JSONArray;

.field protected w:I

.field protected x:Ljava/lang/String;

.field protected y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb/e;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/k;->j:Z

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->k:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/k;->l:[Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/k;->m:[Ljava/lang/String;

    .line 59
    iput v2, p0, Lcom/alipay/android/mini/window/sdk/k;->n:I

    .line 65
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/k;->s:Lorg/json/JSONObject;

    .line 68
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/k;->v:Lorg/json/JSONArray;

    .line 69
    iput v2, p0, Lcom/alipay/android/mini/window/sdk/k;->w:I

    .line 74
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/k;->f:Lb/e;

    .line 75
    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 373
    const/4 v0, 0x0

    .line 375
    :try_start_0
    const-string v2, "com.eg.android.AlipayGphone"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    const/4 v0, 0x1

    .line 379
    :goto_0
    return v0

    .line 377
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/alipay/android/mini/window/sdk/k;->w:I

    .line 83
    return-void
.end method

.method abstract a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation
.end method

.method a(Lcom/alipay/android/mini/window/sdk/j;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/k;->g:Lcom/alipay/android/mini/window/sdk/j;

    .line 144
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/k;->q:Ljava/lang/Object;

    .line 304
    return-void
.end method

.method a(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 86
    const-string v1, "form"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 88
    const-string v2, "menu"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const-string v2, "menu"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/mini/window/sdk/k;->v:Lorg/json/JSONArray;

    .line 92
    :cond_0
    const-string v2, "height"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    const-string v2, "height"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/mini/window/sdk/k;->x:Ljava/lang/String;

    .line 96
    :cond_1
    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/mini/window/sdk/k;->y:Ljava/lang/String;

    .line 100
    :cond_2
    const-string v2, "onload"

    invoke-static {v1, v2}, Lcom/alipay/android/mini/uielement/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/f;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/mini/window/sdk/k;->o:Lcom/alipay/android/mini/uielement/f;

    .line 101
    const-string v2, "exit"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    const-string v2, "exit"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/mini/window/sdk/k;->k:Ljava/lang/String;

    .line 104
    :cond_3
    const-string v2, "allowBack"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 105
    const-string v2, "allowBack"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/k;->j:Z

    .line 110
    :goto_0
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->l:[Ljava/lang/String;

    .line 111
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->m:[Ljava/lang/String;

    .line 112
    const-string v0, "confirm"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_6

    .line 114
    const-string v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    const-string v1, "color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 117
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->l:[Ljava/lang/String;

    .line 119
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 120
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->m:[Ljava/lang/String;

    .line 123
    :cond_6
    return-void

    .line 108
    :cond_7
    iput-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/k;->j:Z

    goto :goto_0
.end method

.method public a(Lr/a;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 385
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 387
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/k;->g:Lcom/alipay/android/mini/window/sdk/j;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/alipay/android/mini/window/sdk/j;->a(Landroid/content/Intent;Lcom/alipay/android/mini/window/sdk/az;)V

    .line 390
    :cond_0
    return-void
.end method

.method protected a(Lr/a;[Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x3

    .line 258
    const/4 v4, 0x0

    .line 260
    sget-object v0, Lr/a;->D:Lr/a;

    if-ne p1, v0, :cond_1

    .line 261
    array-length v0, p2

    if-le v0, v5, :cond_0

    aget-object v0, p2, v5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    aget-object v0, p2, v5

    invoke-static {v0, p1}, Lcom/alipay/android/mini/uielement/f;->a(Ljava/lang/String;Lr/a;)Lcom/alipay/android/mini/uielement/f;

    move-result-object v0

    invoke-static {v0}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v4

    .line 274
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->g:Lcom/alipay/android/mini/window/sdk/j;

    aget-object v1, p2, v1

    aget-object v2, p2, v2

    const/4 v3, 0x2

    aget-object v3, p2, v3

    const-string v5, ""

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/mini/window/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lr/a;Ljava/lang/String;[Lr/a;)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    array-length v0, p2

    if-le v0, v3, :cond_3

    aget-object v0, p2, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 279
    aget-object v0, p2, v3

    invoke-static {v0, p1}, Lcom/alipay/android/mini/uielement/f;->a(Ljava/lang/String;Lr/a;)Lcom/alipay/android/mini/uielement/f;

    move-result-object v0

    invoke-static {v0}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v4

    .line 284
    :cond_2
    :goto_1
    array-length v0, p2

    if-le v0, v6, :cond_4

    aget-object v0, p2, v6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 285
    aget-object v0, p2, v6

    invoke-static {v0, p1}, Lcom/alipay/android/mini/uielement/f;->a(Ljava/lang/String;Lr/a;)Lcom/alipay/android/mini/uielement/f;

    move-result-object v0

    invoke-static {v0}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v6

    .line 290
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->g:Lcom/alipay/android/mini/window/sdk/j;

    aget-object v1, p2, v1

    aget-object v2, p2, v2

    const/4 v3, 0x2

    aget-object v3, p2, v3

    aget-object v5, p2, v5

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/mini/window/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lr/a;Ljava/lang/String;[Lr/a;)V

    goto :goto_0

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->t:Lcom/alipay/android/mini/uielement/f;

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->t:Lcom/alipay/android/mini/uielement/f;

    invoke-static {v0}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v4

    goto :goto_1

    .line 288
    :cond_4
    new-array v6, v2, [Lr/a;

    sget-object v0, Lr/a;->B:Lr/a;

    aput-object v0, v6, v1

    goto :goto_2
.end method

.method protected abstract a(Lr/c;)V
.end method

.method protected final varargs a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->g:Lcom/alipay/android/mini/window/sdk/j;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->g:Lcom/alipay/android/mini/window/sdk/j;

    invoke-interface {v0, p1}, Lcom/alipay/android/mini/window/sdk/j;->a([Ljava/lang/String;)V

    .line 166
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;[Lr/a;)Z
    .locals 5

    .prologue
    .line 393
    const/4 v1, 0x1

    .line 394
    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    .line 395
    new-instance v4, Lr/c;

    invoke-direct {v4, v3}, Lr/c;-><init>(Lr/a;)V

    invoke-virtual {p0, p1, v4}, Lcom/alipay/android/mini/window/sdk/k;->a(Ljava/lang/Object;Ld/b;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_0
    return v1
.end method

.method protected abstract a(Lr/a;)Z
.end method

.method protected abstract b()V
.end method

.method b(I)V
    .locals 0

    .prologue
    .line 139
    iput p1, p0, Lcom/alipay/android/mini/window/sdk/k;->n:I

    .line 140
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/k;->i:Ljava/lang/String;

    .line 136
    return-void
.end method

.method abstract b(Lorg/json/JSONObject;)V
.end method

.method protected b(Lr/c;)V
    .locals 0

    .prologue
    .line 169
    invoke-static {p1}, Lcom/alipay/android/mini/util/m;->a(Lr/c;)V

    .line 170
    return-void
.end method

.method protected b(Lr/a;)Z
    .locals 5

    .prologue
    .line 185
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 186
    invoke-virtual {p1}, Lr/a;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/k;->r()Lorg/json/JSONObject;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_0

    .line 189
    invoke-static {v0, v1}, Lj/g;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 192
    :cond_0
    invoke-virtual {p1}, Lr/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lj/g;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 193
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->f:Lb/e;

    invoke-interface {v0}, Lb/e;->f()Lb/m;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Lb/m;->g()Lcom/alipay/android/app/net/e;

    move-result-object v3

    .line 195
    invoke-virtual {p1}, Lr/a;->k()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/net/e;->b(Z)V

    .line 196
    invoke-virtual {v3}, Lcom/alipay/android/app/net/e;->a()Lcom/alipay/android/app/net/a;

    move-result-object v0

    invoke-virtual {p1}, Lr/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/net/a;->d(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v3}, Lcom/alipay/android/app/net/e;->a()Lcom/alipay/android/app/net/a;

    move-result-object v0

    invoke-virtual {p1}, Lr/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/net/a;->b(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Lr/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 202
    const-string v0, "com.alipay.mobilecashier"

    .line 204
    :cond_1
    invoke-virtual {v3}, Lcom/alipay/android/app/net/e;->a()Lcom/alipay/android/app/net/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/net/a;->c(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Lr/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 208
    const-string v0, "4.0.0"

    .line 210
    :cond_2
    invoke-virtual {v3}, Lcom/alipay/android/app/net/e;->a()Lcom/alipay/android/app/net/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/net/a;->e(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Lr/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 214
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->c()Lcom/alipay/android/app/pay/channel/ChannelInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/pay/channel/ChannelInfo;->b()Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_3
    invoke-virtual {v3}, Lcom/alipay/android/app/net/e;->a()Lcom/alipay/android/app/net/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/net/a;->a(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->f:Lb/e;

    invoke-interface {v0}, Lb/e;->l()Lb/j;

    move-result-object v0

    .line 219
    invoke-virtual {p1}, Lr/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lb/j;->a(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Lr/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lb/j;->b(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v2, v1}, Lb/m;->a(Lorg/json/JSONObject;)V

    .line 223
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->f:Lb/e;

    invoke-interface {v0}, Lb/e;->c()Lb/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/g;->h()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Lcom/alipay/android/mini/uielement/c;
    .locals 3

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/k;->c()Ljava/util/List;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_1

    .line 405
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/j;

    .line 406
    instance-of v2, v0, Lcom/alipay/android/mini/uielement/c;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    check-cast v0, Lcom/alipay/android/mini/uielement/c;

    .line 412
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract c()Ljava/util/List;
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 159
    invoke-static {p1}, Lj/f;->b(Lorg/json/JSONObject;)V

    .line 160
    return-void
.end method

.method protected c(Lr/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 307
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->h:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {p1}, Lr/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 311
    const/4 v0, 0x0

    aget-object v2, v1, v0

    .line 314
    const-string/jumbo v0, "\u670d\u52a1\u534f\u8bae"

    .line 315
    array-length v3, v1

    if-le v3, v4, :cond_1

    .line 316
    aget-object v0, v1, v4

    .line 319
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/k;->h:Landroid/app/Activity;

    const-class v4, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->g:Lcom/alipay/android/mini/window/sdk/j;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/mini/window/sdk/j;->a(Landroid/content/Intent;Lcom/alipay/android/mini/window/sdk/az;)V

    goto :goto_0
.end method

.method protected d(Lr/a;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 326
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/k;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    invoke-virtual {p1}, Lr/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 329
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 330
    const/4 v3, 0x1

    aget-object v0, v0, v3

    .line 333
    const-string v3, "loginpwd"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 334
    const-string v0, "20000015"

    .line 341
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    const-string v4, "alipays://platformapi/startApp?appId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&sourceId=trustedMsp&logonId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&fromWhich="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Le/a;->A()Le/a;

    move-result-object v2

    invoke-virtual {v2}, Le/a;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 348
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 350
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/k;->g:Lcom/alipay/android/mini/window/sdk/j;

    invoke-interface {v2, v0, v1}, Lcom/alipay/android/mini/window/sdk/j;->a(Landroid/content/Intent;Lcom/alipay/android/mini/window/sdk/az;)V

    .line 358
    :goto_1
    return-void

    .line 335
    :cond_0
    const-string v3, "paypwd"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 336
    const-string v0, "20000013"

    goto :goto_0

    .line 337
    :cond_1
    const-string/jumbo v3, "simplepwd"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 338
    const-string v0, "20000060"

    goto :goto_0

    .line 353
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 354
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string v2, "http://d.alipay.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 356
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/k;->g:Lcom/alipay/android/mini/window/sdk/j;

    invoke-interface {v2, v0, v1}, Lcom/alipay/android/mini/window/sdk/j;->a(Landroid/content/Intent;Lcom/alipay/android/mini/window/sdk/az;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->q:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->q:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alipay/android/mini/uielement/m;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->q:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/android/mini/uielement/m;

    .line 298
    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/m;->J()V

    .line 300
    :cond_0
    return-void
.end method

.method abstract f()V
.end method

.method abstract g()V
.end method

.method public i()V
    .locals 0

    .prologue
    .line 369
    return-void
.end method

.method abstract j()V
.end method

.method protected abstract k()Lcom/alipay/android/mini/window/sdk/bg;
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->i:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/k;->j:Z

    return v0
.end method

.method protected final o()Lcom/alipay/android/mini/uielement/f;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->o:Lcom/alipay/android/mini/uielement/f;

    return-object v0
.end method

.method p()Lr/h;
    .locals 0

    .prologue
    .line 155
    return-object p0
.end method

.method protected abstract q()Z
.end method

.method protected abstract r()Lorg/json/JSONObject;
.end method

.method protected s()V
    .locals 5

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/k;->f:Lb/e;

    invoke-interface {v0}, Lb/e;->f()Lb/m;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lb/m;->e()Lorg/json/JSONObject;

    move-result-object v1

    .line 232
    :try_start_0
    const-string v0, "minipay"

    .line 233
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 238
    const-string v0, "protocol"

    .line 239
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 242
    :cond_1
    sget-object v2, Lm/d;->a:Lm/d;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/k;->r()Lorg/json/JSONObject;

    move-result-object v2

    .line 245
    if-eqz v2, :cond_2

    .line 246
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 247
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 254
    :cond_2
    return-void
.end method

.class public abstract Lcom/alipay/android/mini/window/sdk/a;
.super Lcom/alipay/android/mini/window/sdk/k;
.source "SourceFile"


# static fields
.field protected static b:Z


# instance fields
.field private A:Lorg/json/JSONObject;

.field private B:Ljava/lang/String;

.field private C:Lcom/alipay/android/mini/util/j;

.field private D:Lcom/alipay/android/mini/window/sdk/bg;

.field private E:Z

.field protected a:Lcom/alipay/android/mini/window/sdk/ak;

.field protected c:Z

.field protected d:Z

.field protected e:Z

.field private z:Ljava/util/List;


# direct methods
.method protected constructor <init>(Lb/e;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1}, Lcom/alipay/android/mini/window/sdk/k;-><init>(Lb/e;)V

    .line 47
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/a;->z:Ljava/util/List;

    .line 48
    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/a;->A:Lorg/json/JSONObject;

    .line 59
    iput-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/a;->d:Z

    .line 60
    iput-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/a;->e:Z

    .line 64
    iput-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/a;->p:Z

    .line 65
    iput-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/a;->E:Z

    .line 66
    sput-boolean v0, Lcom/alipay/android/mini/window/sdk/a;->b:Z

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->r:Ljava/util/Map;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/a;Lcom/alipay/android/mini/window/sdk/bg;)Lcom/alipay/android/mini/window/sdk/bg;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/a;->D:Lcom/alipay/android/mini/window/sdk/bg;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/a;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/a;->t()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/mini/window/sdk/a;)Lcom/alipay/android/mini/window/sdk/bg;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->D:Lcom/alipay/android/mini/window/sdk/bg;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 293
    invoke-static {p1}, Lcom/alipay/android/mini/util/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 294
    aget-object v1, v1, v0

    .line 295
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/a;->h:Landroid/app/Activity;

    .line 297
    const-string v0, "mini_layout"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 299
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/alipay/android/mini/util/n;->a(Landroid/os/IBinder;Landroid/content/Context;)V

    .line 300
    new-instance v3, Lcom/alipay/android/mini/window/sdk/c;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/alipay/android/mini/window/sdk/c;-><init>(Lcom/alipay/android/mini/window/sdk/a;Ljava/lang/String;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 316
    const/4 v0, 0x1

    .line 319
    :cond_0
    return v0
.end method

.method private t()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 351
    iget-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/a;->p:Z

    if-nez v0, :cond_1

    .line 352
    iput-boolean v1, p0, Lcom/alipay/android/mini/window/sdk/a;->p:Z

    .line 354
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/a;->u()V

    .line 356
    new-instance v0, Lr/c;

    sget-object v1, Lr/a;->t:Lr/a;

    invoke-direct {v0, v1}, Lr/c;-><init>(Lr/a;)V

    invoke-virtual {p0, v2, v0}, Lcom/alipay/android/mini/window/sdk/a;->a(Ljava/lang/Object;Lr/c;)Z

    .line 357
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->o:Lcom/alipay/android/mini/uielement/f;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->o:Lcom/alipay/android/mini/uielement/f;

    invoke-static {v0}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v0

    .line 360
    invoke-virtual {p0, p0, v0}, Lcom/alipay/android/mini/window/sdk/a;->a(Ljava/lang/Object;[Lr/a;)Z

    .line 362
    :cond_0
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->d()Lcom/alipay/android/app/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->a:Lcom/alipay/android/mini/window/sdk/ak;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/ak;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 366
    const/4 v1, 0x1

    new-array v4, v1, [I

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/a;->a:Lcom/alipay/android/mini/window/sdk/ak;

    iget-object v1, v1, Lcom/alipay/android/mini/window/sdk/ak;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/mini/uielement/j;

    invoke-virtual {v1}, Lcom/alipay/android/mini/uielement/j;->e()I

    move-result v1

    aput v1, v4, v5

    .line 368
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/a;->r:Ljava/util/Map;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    .line 386
    :cond_1
    return-void

    .line 371
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 372
    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/a;->r:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/a;->r:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2
.end method

.method private u()V
    .locals 5

    .prologue
    .line 389
    const/4 v0, 0x0

    .line 390
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 391
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/a;->c()Ljava/util/List;

    move-result-object v1

    .line 392
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/j;

    .line 393
    instance-of v4, v0, Lcom/alipay/android/mini/uielement/z;

    if-eqz v4, :cond_0

    .line 394
    check-cast v0, Lcom/alipay/android/mini/uielement/z;

    .line 395
    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/uielement/z;->c(I)I

    move-result v1

    .line 396
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move v0, v1

    move v1, v0

    .line 397
    goto :goto_0

    .line 399
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/z;

    .line 400
    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/uielement/z;->c(I)I

    goto :goto_1

    .line 402
    :cond_2
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    .line 105
    .line 106
    iget-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/a;->e:Z

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "mini_scroll_linBlocksConpent"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 113
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    return-object v0

    .line 110
    :cond_0
    const-string v0, "mini_linBlocksConpent"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)Lcom/alipay/android/mini/window/sdk/bg;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->A:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->A:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    :cond_0
    const/4 v0, 0x0

    .line 285
    :goto_0
    return-object v0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->A:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/a;->D:Lcom/alipay/android/mini/window/sdk/bg;

    if-nez v1, :cond_2

    .line 275
    new-instance v1, Lcom/alipay/android/mini/window/sdk/bg;

    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/a;->f:Lb/e;

    invoke-direct {v1, v2}, Lcom/alipay/android/mini/window/sdk/bg;-><init>(Lb/e;)V

    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/a;->D:Lcom/alipay/android/mini/window/sdk/bg;

    .line 277
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 280
    :try_start_0
    const-string v2, "form"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->D:Lcom/alipay/android/mini/window/sdk/bg;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/window/sdk/bg;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->D:Lcom/alipay/android/mini/window/sdk/bg;

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->B:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/a;->h:Landroid/app/Activity;

    .line 128
    invoke-virtual {p0, p2}, Lcom/alipay/android/mini/window/sdk/a;->a(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 129
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 131
    invoke-static {}, Ls/b;->c()Ls/b;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ls/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v0}, Ls/b;->d()V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->z:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 137
    iget-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/a;->e:Z

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->z:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/i;

    .line 139
    instance-of v1, v0, Lcom/alipay/android/mini/uielement/a;

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/i;->k()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/a;->z:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 143
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/a;->h:Landroid/app/Activity;

    const-string v2, "mini_title_block"

    invoke-static {v2}, Lj/i;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 146
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/a;->h:Landroid/app/Activity;

    iget-boolean v4, p0, Lcom/alipay/android/mini/window/sdk/a;->c:Z

    invoke-virtual {v0, v2, v1, v4}, Lcom/alipay/android/mini/uielement/i;->b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/a;->z:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/a;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/mini/uielement/i;

    .line 152
    instance-of v2, v1, Lcom/alipay/android/mini/uielement/a;

    if-eqz v2, :cond_2

    .line 153
    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/i;->k()Ljava/lang/String;

    move-result-object v2

    const-string v4, "bottom"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/a;->z:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 156
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/a;->h:Landroid/app/Activity;

    const-string v2, "mini_bottom_block"

    invoke-static {v2}, Lj/i;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 159
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/a;->h:Landroid/app/Activity;

    iget-boolean v4, p0, Lcom/alipay/android/mini/window/sdk/a;->c:Z

    invoke-virtual {v0, v2, v1, v4}, Lcom/alipay/android/mini/uielement/i;->b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/i;

    .line 166
    iget-boolean v2, p0, Lcom/alipay/android/mini/window/sdk/a;->c:Z

    invoke-virtual {v0, p1, v3, v2}, Lcom/alipay/android/mini/uielement/i;->b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 168
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/mini/window/sdk/b;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/window/sdk/b;-><init>(Lcom/alipay/android/mini/window/sdk/a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 179
    return-void
.end method

.method public final a(Lcom/alipay/android/mini/window/sdk/j;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/a;->g:Lcom/alipay/android/mini/window/sdk/j;

    .line 290
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/alipay/android/mini/window/sdk/k;->a(Lorg/json/JSONObject;)V

    .line 78
    const-string v0, "form"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 79
    const-string v1, "guide"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "guide"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/mini/window/sdk/a;->d:Z

    .line 82
    :cond_0
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string v2, "fullscreen"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/mini/window/sdk/a;->c:Z

    .line 84
    new-instance v1, Lcom/alipay/android/mini/window/sdk/ak;

    invoke-direct {v1}, Lcom/alipay/android/mini/window/sdk/ak;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/a;->a:Lcom/alipay/android/mini/window/sdk/ak;

    .line 85
    const-string v1, "disableBack"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/mini/window/sdk/a;->E:Z

    .line 86
    const-string v1, "image"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/a;->B:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/a;->a:Lcom/alipay/android/mini/window/sdk/ak;

    const-string v2, "blocks"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/alipay/android/mini/window/sdk/ak;->a(Lr/h;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/window/sdk/a;->z:Ljava/util/List;

    .line 89
    const-string/jumbo v1, "scroll"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    const-string/jumbo v1, "scroll"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/a;->e:Z

    .line 92
    :cond_1
    new-instance v0, Lcom/alipay/android/mini/window/sdk/l;

    iget-boolean v1, p0, Lcom/alipay/android/mini/window/sdk/a;->j:Z

    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/a;->k:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alipay/android/mini/window/sdk/a;->E:Z

    iget-boolean v4, p0, Lcom/alipay/android/mini/window/sdk/a;->c:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/mini/window/sdk/l;-><init>(ZLjava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->u:Lcom/alipay/android/mini/window/sdk/l;

    .line 94
    return-void
.end method

.method protected a(Lr/c;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 330
    invoke-virtual {p1}, Lr/c;->b()Lr/a;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Lr/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 332
    aget-object v3, v2, v7

    .line 333
    invoke-static {v3}, Lcom/alipay/android/mini/util/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 334
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/a;->c()Ljava/util/List;

    move-result-object v0

    .line 336
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/j;

    .line 337
    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/j;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 338
    instance-of v4, v0, Lcom/alipay/android/mini/uielement/z;

    if-eqz v4, :cond_1

    .line 339
    check-cast v0, Lcom/alipay/android/mini/uielement/z;

    .line 340
    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/z;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/android/mini/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    .line 347
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/alipay/android/mini/window/sdk/a;->a(Lr/a;[Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ld/b;)Z
    .locals 1

    .prologue
    .line 44
    check-cast p2, Lr/c;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/mini/window/sdk/a;->a(Ljava/lang/Object;Lr/c;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Lr/c;)Z
    .locals 8

    .prologue
    const/4 v6, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 183
    .line 184
    if-eqz p2, :cond_7

    .line 185
    invoke-virtual {p2}, Lr/c;->b()Lr/a;

    move-result-object v2

    .line 186
    sget-object v3, Lr/a;->j:Lr/a;

    if-ne v2, v3, :cond_2

    .line 187
    const-string v3, "SPSafePay"

    iget-object v4, p0, Lcom/alipay/android/mini/window/sdk/a;->i:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alipay/android/mini/util/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    :goto_0
    sget-object v3, Lr/a;->k:Lr/a;

    if-ne v2, v3, :cond_5

    .line 199
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/a;->h:Landroid/app/Activity;

    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v1, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v6, v3}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :goto_1
    move v1, v0

    .line 216
    :cond_1
    return v1

    .line 188
    :cond_2
    sget-object v3, Lr/a;->d:Lr/a;

    if-ne v2, v3, :cond_3

    .line 189
    const-string v3, "SPSafePay"

    iget-object v4, p0, Lcom/alipay/android/mini/window/sdk/a;->i:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alipay/android/mini/util/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_3
    sget-object v3, Lr/a;->l:Lr/a;

    if-ne v2, v3, :cond_4

    .line 191
    const-string v3, "SPSafePay"

    invoke-static {v3}, Lcom/alipay/android/mini/util/h;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_4
    sget-object v3, Lr/a;->t:Lr/a;

    if-eq v2, v3, :cond_0

    sget-object v3, Lr/a;->B:Lr/a;

    if-eq v2, v3, :cond_0

    .line 194
    const-string v3, "SPSafePay"

    iget-object v4, p0, Lcom/alipay/android/mini/window/sdk/a;->i:Ljava/lang/String;

    invoke-virtual {v2}, Lr/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alipay/android/mini/util/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_5
    sget-object v3, Lr/a;->l:Lr/a;

    if-ne v2, v3, :cond_6

    .line 203
    sget-boolean v3, Lcom/alipay/android/mini/window/sdk/a;->b:Z

    if-nez v3, :cond_1

    .line 206
    sput-boolean v0, Lcom/alipay/android/mini/window/sdk/a;->b:Z

    .line 207
    invoke-virtual {v2}, Lr/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/mini/window/sdk/a;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 210
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->u:Lcom/alipay/android/mini/window/sdk/l;

    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/a;->g:Lcom/alipay/android/mini/window/sdk/j;

    iget-object v4, p0, Lcom/alipay/android/mini/window/sdk/a;->h:Landroid/app/Activity;

    iget-object v5, p0, Lcom/alipay/android/mini/window/sdk/a;->f:Lb/e;

    iget-object v7, p0, Lcom/alipay/android/mini/window/sdk/a;->q:Ljava/lang/Object;

    move-object v1, p1

    move-object v2, p2

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/mini/window/sdk/l;->a(Ljava/lang/Object;Lr/c;Lcom/alipay/android/mini/window/sdk/j;Landroid/app/Activity;Lb/e;Lcom/alipay/android/mini/window/sdk/k;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->D:Lcom/alipay/android/mini/window/sdk/bg;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/sdk/bg;->i()V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->D:Lcom/alipay/android/mini/window/sdk/bg;

    .line 223
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/a;->A:Lorg/json/JSONObject;

    .line 98
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->a:Lcom/alipay/android/mini/window/sdk/ak;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/sdk/ak;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final d()Ljava/util/List;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->z:Ljava/util/List;

    return-object v0
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 323
    invoke-super {p0}, Lcom/alipay/android/mini/window/sdk/k;->e()V

    .line 324
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->C:Lcom/alipay/android/mini/util/j;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->C:Lcom/alipay/android/mini/util/j;

    invoke-virtual {v0}, Lcom/alipay/android/mini/util/j;->a()Lr/f;

    move-result-object v0

    invoke-virtual {v0}, Lr/f;->c()V

    .line 327
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->h:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/mini/window/sdk/d;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/window/sdk/d;-><init>(Lcom/alipay/android/mini/window/sdk/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 418
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->h:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/mini/window/sdk/e;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/window/sdk/e;-><init>(Lcom/alipay/android/mini/window/sdk/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 432
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->h:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 448
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->h:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/mini/window/sdk/f;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/window/sdk/f;-><init>(Lcom/alipay/android/mini/window/sdk/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->z:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/i;

    .line 229
    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/i;->i()V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->C:Lcom/alipay/android/mini/util/j;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->C:Lcom/alipay/android/mini/util/j;

    invoke-virtual {v0}, Lcom/alipay/android/mini/util/j;->c()V

    .line 235
    :cond_1
    iput-object v2, p0, Lcom/alipay/android/mini/window/sdk/a;->z:Ljava/util/List;

    .line 236
    iput-object v2, p0, Lcom/alipay/android/mini/window/sdk/a;->a:Lcom/alipay/android/mini/window/sdk/ak;

    .line 237
    iput-object v2, p0, Lcom/alipay/android/mini/window/sdk/a;->g:Lcom/alipay/android/mini/window/sdk/j;

    .line 238
    iput-object v2, p0, Lcom/alipay/android/mini/window/sdk/a;->f:Lb/e;

    .line 239
    iput-object v2, p0, Lcom/alipay/android/mini/window/sdk/a;->q:Ljava/lang/Object;

    .line 241
    invoke-static {}, Ls/b;->c()Ls/b;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ls/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    invoke-virtual {v0}, Ls/b;->d()V

    .line 246
    :cond_2
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->h:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/mini/window/sdk/g;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/window/sdk/g;-><init>(Lcom/alipay/android/mini/window/sdk/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 466
    return-void
.end method

.method protected k()Lcom/alipay/android/mini/window/sdk/bg;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/a;->D:Lcom/alipay/android/mini/window/sdk/bg;

    return-object v0
.end method

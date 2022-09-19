.class public Lcn/domob/android/ads/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/e$b$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lorg/json/JSONArray;

.field private C:Lorg/json/JSONObject;

.field private D:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private E:I

.field final synthetic a:Lcn/domob/android/ads/e;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcn/domob/android/ads/e$b$a;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:[I

.field private w:F

.field private x:F

.field private y:J

.field private z:Z


# direct methods
.method public constructor <init>(Lcn/domob/android/ads/e;Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 269
    iput-object p1, p0, Lcn/domob/android/ads/e$b;->a:Lcn/domob/android/ads/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const/4 v0, -0x1

    iput v0, p0, Lcn/domob/android/ads/e$b;->E:I

    .line 270
    if-eqz p2, :cond_1

    .line 271
    const-string v0, "id"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$b;->b:Ljava/lang/String;

    .line 272
    const-string v0, "format"

    sget-object v1, Lcn/domob/android/ads/l;->H:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$b;->c:Ljava/lang/String;

    .line 273
    const-string v0, "ct"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$b;->d:Ljava/lang/String;

    .line 274
    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$b;->e:Ljava/lang/String;

    .line 275
    const-string v0, "base_url"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$b;->f:Ljava/lang/String;

    .line 276
    const-string v0, "content"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$b;->g:Ljava/lang/String;

    .line 277
    const-string/jumbo v0, "width"

    invoke-virtual {p2, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/e$b;->h:I

    .line 278
    const-string v0, "height"

    invoke-virtual {p2, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/e$b;->i:I

    .line 279
    const-string v0, "adWidth"

    invoke-virtual {p2, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/e$b;->j:I

    .line 280
    const-string v0, "adHeight"

    invoke-virtual {p2, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/e$b;->k:I

    .line 281
    const-string v0, "adop"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/domob/android/ads/e$b;->b(Ljava/lang/String;)V

    .line 282
    const-string v0, "expandable"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    .line 284
    new-instance v1, Lcn/domob/android/ads/e$b$a;

    invoke-direct {v1, p0, v0}, Lcn/domob/android/ads/e$b$a;-><init>(Lcn/domob/android/ads/e$b;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcn/domob/android/ads/e$b;->n:Lcn/domob/android/ads/e$b$a;

    .line 287
    :cond_0
    const-string v0, "click_tracker"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$b;->o:Ljava/lang/String;

    .line 288
    const-string v0, "imp_tracker"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$b;->p:Ljava/lang/String;

    .line 289
    const-string v0, "event_tracker"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$b;->q:Ljava/lang/String;

    .line 290
    const-string/jumbo v0, "tracker"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$b;->r:Ljava/lang/String;

    .line 291
    const-string v0, "animation"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/e$b;->s:I

    .line 292
    const-string v0, "o"

    const-string/jumbo v1, "v"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$b;->t:Ljava/lang/String;

    .line 293
    const-string v0, "cls_btn"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/e$b;->u:Z

    .line 294
    const-string v0, "cls_pos"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/domob/android/ads/e$b;->a(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$b;->v:[I

    .line 295
    const-string v0, "imp_min"

    invoke-virtual {p2, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/domob/android/ads/e$b;->w:F

    .line 296
    const-string v0, "imp_min"

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/domob/android/ads/e$b;->w:F

    .line 297
    const-string v0, "imp_cls"

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/domob/android/ads/e$b;->x:F

    .line 298
    const-string v0, "expire"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/32 v4, 0x2a300

    add-long/2addr v2, v4

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/domob/android/ads/e$b;->y:J

    .line 302
    const-string v0, "rc"

    invoke-virtual {p2, v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/e$b;->z:Z

    .line 303
    const-string v0, "pkg"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$b;->A:Ljava/lang/String;

    .line 305
    const-string v0, "freq"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$b;->B:Lorg/json/JSONArray;

    .line 306
    const-string/jumbo v0, "vav"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$b;->C:Lorg/json/JSONObject;

    .line 307
    const-string v0, "imp_progress"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/domob/android/ads/e$b;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e$b;->D:Ljava/util/HashMap;

    .line 309
    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 597
    if-eqz p1, :cond_1

    .line 599
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 600
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 602
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 603
    const/4 v0, 0x0

    .line 604
    invoke-static {v4}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v5, :cond_0

    .line 605
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 606
    const/4 v1, 0x0

    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_0

    .line 607
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 608
    aput-object v6, v0, v1

    .line 606
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 611
    :cond_0
    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 613
    :catch_0
    move-exception v0

    .line 614
    invoke-static {}, Lcn/domob/android/ads/e;->h()Lcn/domob/android/ads/c/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    .line 617
    :cond_1
    return-object v2
.end method

.method private a(Ljava/lang/String;)[I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 312
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 313
    invoke-static {p1}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 315
    if-eqz v1, :cond_0

    array-length v2, v1

    if-ne v2, v3, :cond_0

    .line 317
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    .line 318
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_0
    :goto_0
    return-object v0

    .line 319
    :catch_0
    move-exception v1

    .line 320
    invoke-static {}, Lcn/domob/android/ads/e;->h()Lcn/domob/android/ads/c/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 324
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 312
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 333
    iput v0, p0, Lcn/domob/android/ads/e$b;->l:I

    .line 334
    iput v0, p0, Lcn/domob/android/ads/e$b;->m:I

    .line 335
    invoke-static {p1}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 337
    array-length v1, v2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 340
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 341
    const/4 v3, 0x1

    :try_start_1
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 345
    :goto_0
    invoke-static {v1, v0}, Lcn/domob/android/ads/c/e;->a(II)I

    move-result v2

    .line 346
    div-int/2addr v1, v2

    iput v1, p0, Lcn/domob/android/ads/e$b;->l:I

    .line 347
    div-int/2addr v0, v2

    iput v0, p0, Lcn/domob/android/ads/e$b;->m:I

    .line 350
    :cond_0
    return-void

    .line 342
    :catch_0
    move-exception v1

    move-object v2, v1

    move v1, v0

    .line 343
    :goto_1
    invoke-static {}, Lcn/domob/android/ads/e;->h()Lcn/domob/android/ads/c/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 342
    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Lcn/domob/android/ads/e$b;->z:Z

    return v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcn/domob/android/ads/e$b;->A:Ljava/lang/String;

    return-object v0
.end method

.method public C()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcn/domob/android/ads/e$b;->E:I

    return v0
.end method

.method public D()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcn/domob/android/ads/e$b;->B:Lorg/json/JSONArray;

    return-object v0
.end method

.method public E()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcn/domob/android/ads/e$b;->C:Lorg/json/JSONObject;

    return-object v0
.end method

.method public F()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 592
    iget-object v0, p0, Lcn/domob/android/ads/e$b;->D:Ljava/util/HashMap;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcn/domob/android/ads/e$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 557
    iput p1, p0, Lcn/domob/android/ads/e$b;->E:I

    .line 558
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcn/domob/android/ads/e$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcn/domob/android/ads/e$b;->h:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcn/domob/android/ads/e$b;->i:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcn/domob/android/ads/e$b;->j:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcn/domob/android/ads/e$b;->k:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcn/domob/android/ads/e$b;->l:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lcn/domob/android/ads/e$b;->m:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcn/domob/android/ads/e$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcn/domob/android/ads/e$b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcn/domob/android/ads/e$b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcn/domob/android/ads/e$b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public m()Lcn/domob/android/ads/e$b$a;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcn/domob/android/ads/e$b;->n:Lcn/domob/android/ads/e$b$a;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcn/domob/android/ads/e$b;->o:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcn/domob/android/ads/e$b;->p:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcn/domob/android/ads/e$b;->q:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcn/domob/android/ads/e$b;->r:Ljava/lang/String;

    return-object v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Lcn/domob/android/ads/e$b;->s:I

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcn/domob/android/ads/e$b;->t:Ljava/lang/String;

    return-object v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcn/domob/android/ads/e$b;->u:Z

    return v0
.end method

.method public u()[I
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcn/domob/android/ads/e$b;->v:[I

    return-object v0
.end method

.method public v()F
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcn/domob/android/ads/e$b;->w:F

    return v0
.end method

.method public w()Z
    .locals 2

    .prologue
    .line 513
    iget v0, p0, Lcn/domob/android/ads/e$b;->w:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()F
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcn/domob/android/ads/e$b;->x:F

    return v0
.end method

.method public y()Z
    .locals 2

    .prologue
    .line 527
    iget v0, p0, Lcn/domob/android/ads/e$b;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z()J
    .locals 2

    .prologue
    .line 534
    iget-wide v0, p0, Lcn/domob/android/ads/e$b;->y:J

    return-wide v0
.end method

.class public Lb/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/g$1;
    }
.end annotation


# instance fields
.field private a:Lb/a;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Lm/f;

.field private e:Lb/f;

.field private f:Ljava/util/Queue;

.field private g:Lb/f;

.field private h:J

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Lm/d;

.field private p:Ljava/lang/Object;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>(Lb/a;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/g;->p:Ljava/lang/Object;

    .line 65
    iput-boolean v1, p0, Lb/g;->q:Z

    .line 66
    iput-boolean v2, p0, Lb/g;->r:Z

    .line 68
    iput-boolean v1, p0, Lb/g;->s:Z

    .line 69
    iput-boolean v2, p0, Lb/g;->t:Z

    .line 72
    iput-boolean v2, p0, Lb/g;->m:Z

    .line 73
    iput-object p1, p0, Lb/g;->a:Lb/a;

    .line 75
    sget-object v0, Lb/f;->a:Lb/f;

    iput-object v0, p0, Lb/g;->e:Lb/f;

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lb/g;->f:Ljava/util/Queue;

    .line 77
    iget-object v0, p0, Lb/g;->f:Ljava/util/Queue;

    iget-object v1, p0, Lb/g;->e:Lb/f;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v0, Lm/f;

    invoke-virtual {p1}, Lb/a;->l()Lb/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lm/f;-><init>(Lb/j;)V

    iput-object v0, p0, Lb/g;->d:Lm/f;

    .line 80
    invoke-virtual {p1}, Lb/a;->m()Lb/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lb/h;->a(Lb/i;)V

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lb/g;->h:J

    .line 82
    iput v2, p0, Lb/g;->i:I

    .line 83
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 429
    iget-object v0, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->m()Lb/h;

    move-result-object v0

    invoke-virtual {v0}, Lb/h;->a()Lm/a;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    .line 431
    :goto_0
    iget-object v3, p0, Lb/g;->o:Lm/d;

    sget-object v4, Lm/d;->a:Lm/d;

    if-ne v3, v4, :cond_2

    if-nez v0, :cond_2

    move v2, v1

    .line 436
    :cond_0
    :goto_1
    iget-object v0, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->j()Lo/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v2}, Lo/d;->a(Lb/g;Ljava/lang/Exception;I)V

    .line 437
    return-void

    :cond_1
    move v0, v2

    .line 429
    goto :goto_0

    .line 433
    :cond_2
    iget-object v1, p0, Lb/g;->o:Lm/d;

    sget-object v3, Lm/d;->b:Lm/d;

    if-ne v1, v3, :cond_0

    if-nez v0, :cond_0

    .line 434
    const/4 v2, 0x4

    goto :goto_1
.end method

.method private declared-synchronized a(Lb/f;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 524
    monitor-enter p0

    const/4 v1, 0x0

    .line 534
    :try_start_0
    sget-object v2, Lb/f;->g:Lb/f;

    if-ne p1, v2, :cond_0

    .line 535
    sget-object v1, Lb/f;->g:Lb/f;

    iput-object v1, p0, Lb/g;->e:Lb/f;

    .line 536
    sget-object v1, Lb/f;->g:Lb/f;

    iput-object v1, p0, Lb/g;->g:Lb/f;

    .line 537
    iget-object v1, p0, Lb/g;->f:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 538
    iget-object v1, p0, Lb/g;->f:Ljava/util/Queue;

    sget-object v2, Lb/f;->g:Lb/f;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v1, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v1}, Lb/a;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    :goto_0
    monitor-exit p0

    return v0

    .line 541
    :cond_0
    :try_start_1
    sget-object v2, Lb/f;->c:Lb/f;

    if-ne p1, v2, :cond_1

    .line 542
    sget-object v1, Lb/f;->c:Lb/f;

    iput-object v1, p0, Lb/g;->e:Lb/f;

    .line 543
    sget-object v1, Lb/f;->c:Lb/f;

    iput-object v1, p0, Lb/g;->g:Lb/f;

    .line 544
    iget-object v1, p0, Lb/g;->f:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 545
    iget-object v1, p0, Lb/g;->f:Ljava/util/Queue;

    sget-object v2, Lb/f;->c:Lb/f;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object v1, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v1}, Lb/a;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 548
    :cond_1
    :try_start_2
    iget-boolean v2, p0, Lb/g;->n:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lb/g;->g:Lb/f;

    if-eq v2, p1, :cond_3

    :cond_2
    iget-object v2, p0, Lb/g;->f:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lb/g;->f:Ljava/util/Queue;

    sget-object v3, Lb/f;->f:Lb/f;

    invoke-interface {v2, v3}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 551
    iput-object p1, p0, Lb/g;->g:Lb/f;

    .line 552
    iget-object v1, p0, Lb/g;->f:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v1, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v1}, Lb/a;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private a(Lm/a;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 440
    if-nez p1, :cond_1

    .line 462
    :cond_0
    :goto_0
    return v0

    .line 444
    :cond_1
    instance-of v1, p1, Lo/c;

    if-eqz v1, :cond_0

    .line 445
    check-cast p1, Lo/c;

    .line 446
    invoke-virtual {p1}, Lo/c;->d()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 457
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 446
    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private b(Lm/a;)V
    .locals 2

    .prologue
    .line 485
    invoke-virtual {p1}, Lm/a;->k()Lcom/alipay/android/app/net/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/net/e;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lb/g;->h:J

    .line 486
    invoke-virtual {p1}, Lm/a;->l()I

    move-result v0

    iput v0, p0, Lb/g;->i:I

    .line 487
    return-void
.end method

.method private c(Lm/a;)V
    .locals 5

    .prologue
    .line 491
    :try_start_0
    invoke-virtual {p1}, Lm/a;->m()Lorg/json/JSONObject;

    move-result-object v0

    .line 492
    if-eqz v0, :cond_0

    .line 493
    const-string v1, "global_functions"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 494
    if-eqz v1, :cond_0

    .line 495
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 496
    iget-object v2, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v2}, Lb/a;->f()Lb/m;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "script"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lb/m;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    .line 504
    :cond_0
    return-void
.end method

.method private o()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/NetErrorException;,
            Lcom/alipay/android/app/exception/FailOperatingException;,
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 225
    iget-boolean v0, p0, Lb/g;->m:Z

    if-eqz v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v4

    .line 228
    :cond_1
    iget-object v0, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->m()Lb/h;

    move-result-object v0

    invoke-virtual {v0}, Lb/h;->a()Lm/a;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lm/a;->k()Lcom/alipay/android/app/net/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/net/e;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    :cond_2
    iput-boolean v2, p0, Lb/g;->m:Z

    .line 236
    iput-boolean v2, p0, Lb/g;->n:Z

    move v1, v2

    move-object v3, v0

    .line 239
    :goto_1
    iget-object v0, p0, Lb/g;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 240
    iget-object v0, p0, Lb/g;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f;

    iput-object v0, p0, Lb/g;->e:Lb/f;

    .line 243
    :cond_3
    iget-object v0, p0, Lb/g;->e:Lb/f;

    sget-object v5, Lb/f;->c:Lb/f;

    if-eq v0, v5, :cond_0

    .line 246
    iget-object v0, p0, Lb/g;->e:Lb/f;

    sget-object v5, Lb/f;->g:Lb/f;

    if-ne v0, v5, :cond_4

    move v4, v2

    .line 247
    goto :goto_0

    .line 249
    :cond_4
    iget-object v0, p0, Lb/g;->e:Lb/f;

    sget-object v5, Lb/f;->f:Lb/f;

    if-ne v0, v5, :cond_5

    move v4, v2

    .line 250
    goto :goto_0

    .line 257
    :cond_5
    invoke-direct {p0}, Lb/g;->t()V

    .line 259
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->b()Landroid/content/Context;

    move-result-object v5

    .line 260
    iget-object v0, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->f()Lb/m;

    move-result-object v0

    invoke-virtual {v0}, Lb/m;->b()Lcom/alipay/android/app/net/Request;

    move-result-object v0

    .line 261
    if-nez v0, :cond_6

    .line 263
    iget-object v0, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->f()Lb/m;

    move-result-object v0

    invoke-virtual {v0}, Lb/m;->e()Lorg/json/JSONObject;

    move-result-object v0

    .line 264
    iget-object v6, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v6}, Lb/a;->l()Lb/j;

    move-result-object v6

    iget-object v7, p0, Lb/g;->b:Ljava/lang/String;

    iget-boolean v8, p0, Lb/g;->s:Z

    invoke-static {v6, v7, v0, v8}, Lj/f;->a(Lb/j;Ljava/lang/String;Lorg/json/JSONObject;Z)Lcom/alipay/android/app/net/Request;

    move-result-object v0

    .line 267
    :cond_6
    invoke-virtual {v0}, Lcom/alipay/android/app/net/Request;->f()Lm/d;

    move-result-object v6

    iput-object v6, p0, Lb/g;->o:Lm/d;

    .line 269
    iget-object v6, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v6}, Lb/a;->f()Lb/m;

    move-result-object v6

    invoke-virtual {v6}, Lb/m;->h()V

    .line 271
    :try_start_0
    iget-object v6, p0, Lb/g;->d:Lm/f;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v0, v7}, Lm/f;->a(Landroid/content/Context;Lcom/alipay/android/app/net/Request;Z)Lm/a;
    :try_end_0
    .catch Lcom/alipay/android/app/exception/UnZipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 281
    :cond_7
    :goto_2
    if-eqz v3, :cond_e

    .line 282
    invoke-direct {p0, v3}, Lb/g;->a(Lm/a;)Z

    move-result v1

    .line 283
    invoke-virtual {v3}, Lm/a;->k()Lcom/alipay/android/app/net/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/net/e;->f()Z

    move-result v0

    iput-boolean v0, p0, Lb/g;->m:Z

    .line 284
    if-nez v1, :cond_8

    iget-boolean v0, p0, Lb/g;->m:Z

    if-eqz v0, :cond_b

    :cond_8
    move v0, v4

    :goto_3
    iput-boolean v0, p0, Lb/g;->n:Z

    .line 285
    invoke-direct {p0, v3}, Lb/g;->b(Lm/a;)V

    .line 287
    iget-object v0, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->m()Lb/h;

    move-result-object v0

    invoke-virtual {v0, v3}, Lb/h;->a(Lm/a;)V

    .line 288
    invoke-direct {p0, v3}, Lb/g;->c(Lm/a;)V

    move v0, v1

    .line 291
    :goto_4
    iget-boolean v1, p0, Lb/g;->n:Z

    if-eqz v1, :cond_d

    .line 293
    invoke-direct {p0}, Lb/g;->t()V

    .line 294
    iget-boolean v1, p0, Lb/g;->m:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lb/g;->t:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lb/g;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 299
    :cond_9
    const/4 v1, 0x0

    iput-object v1, p0, Lb/g;->j:Ljava/lang/String;

    .line 300
    invoke-virtual {v3}, Lm/a;->k()Lcom/alipay/android/app/net/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/net/e;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/g;->j:Ljava/lang/String;

    .line 301
    invoke-virtual {v3}, Lm/a;->k()Lcom/alipay/android/app/net/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/net/e;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/g;->k:Ljava/lang/String;

    .line 305
    :cond_a
    if-eqz v0, :cond_c

    move v4, v2

    .line 306
    goto/16 :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    iput-boolean v2, p0, Lb/g;->s:Z

    .line 274
    iget-object v0, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->f()Lb/m;

    move-result-object v0

    invoke-virtual {v0}, Lb/m;->g()Lcom/alipay/android/app/net/e;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_7

    .line 277
    invoke-virtual {v0, v2}, Lcom/alipay/android/app/net/e;->a(Z)V

    goto :goto_2

    :cond_b
    move v0, v2

    .line 284
    goto :goto_3

    .line 308
    :cond_c
    iget-boolean v4, p0, Lb/g;->m:Z

    goto/16 :goto_0

    :cond_d
    move v1, v0

    goto/16 :goto_1

    :cond_e
    move v0, v1

    goto :goto_4
.end method

.method private p()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 319
    :try_start_0
    iget-object v0, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->m()Lb/h;

    move-result-object v0

    invoke-virtual {v0}, Lb/h;->b()Z

    move-result v0

    .line 320
    if-eqz v0, :cond_0

    .line 321
    iget-object v1, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v1}, Lb/a;->m()Lb/h;

    move-result-object v1

    invoke-virtual {v1}, Lb/h;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_0
    :goto_0
    return v0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    .line 326
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private q()Z
    .locals 1

    .prologue
    .line 332
    :try_start_0
    iget-object v0, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->m()Lb/h;

    move-result-object v0

    invoke-virtual {v0}, Lb/h;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 336
    :goto_0
    return v0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    .line 336
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private r()Z
    .locals 2

    .prologue
    .line 342
    :try_start_0
    iget-object v0, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->m()Lb/h;

    move-result-object v0

    invoke-virtual {v0}, Lb/h;->d()Z

    move-result v0

    .line 343
    if-eqz v0, :cond_0

    .line 344
    iget-object v1, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v1}, Lb/a;->m()Lb/h;

    move-result-object v1

    invoke-virtual {v1}, Lb/h;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :cond_0
    :goto_0
    return v0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    .line 349
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private s()Z
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->f()Lb/m;

    move-result-object v0

    invoke-virtual {v0}, Lb/m;->c()V

    .line 355
    iget-object v0, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->m()Lb/h;

    move-result-object v0

    invoke-virtual {v0}, Lb/h;->f()V

    .line 356
    iget-object v0, p0, Lb/g;->f:Ljava/util/Queue;

    sget-object v1, Lb/f;->a:Lb/f;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method private t()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 471
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 472
    iget-wide v4, p0, Lb/g;->h:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    move-wide v0, v2

    .line 473
    :goto_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget v4, p0, Lb/g;->i:I

    if-lez v4, :cond_0

    iget v4, p0, Lb/g;->i:I

    int-to-long v4, v4

    sub-long/2addr v4, v0

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    .line 475
    :try_start_0
    iget v2, p0, Lb/g;->i:I

    int-to-long v2, v2

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :cond_0
    :goto_1
    return-void

    .line 472
    :cond_1
    iget-wide v4, p0, Lb/g;->h:J

    sub-long/2addr v0, v4

    goto :goto_0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lb/g;->r:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lb/g;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lb/g;->p:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/g;->r:Z

    .line 95
    monitor-exit v1

    .line 97
    :cond_0
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lb/h;Lm/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 514
    instance-of v0, p2, Lo/c;

    if-eqz v0, :cond_1

    .line 515
    check-cast p2, Lo/c;

    .line 516
    if-eqz p2, :cond_0

    .line 517
    invoke-virtual {p2}, Lo/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/g;->l:Ljava/lang/String;

    .line 519
    :cond_0
    iget-object v0, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->j()Lo/d;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lo/d;->a(Lb/g;Lo/c;)V

    .line 521
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lb/g;->j:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lb/g;->b:Ljava/lang/String;

    .line 87
    iput-wide p2, p0, Lb/g;->c:J

    .line 88
    return-void
.end method

.method protected a(Lcom/alipay/android/app/net/Request;)Z
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->f()Lb/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/m;->a(Lcom/alipay/android/app/net/Request;)V

    .line 362
    invoke-virtual {p0}, Lb/g;->h()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 412
    :try_start_0
    iget-object v0, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->m()Lb/h;

    move-result-object v0

    invoke-virtual {v0}, Lb/h;->e()V

    .line 413
    const-string v0, ""

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resultStatus={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    iput-object v0, p0, Lb/g;->j:Ljava/lang/String;

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/g;->t:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_0
    sget-object v0, Lb/f;->c:Lb/f;

    invoke-direct {p0, v0}, Lb/g;->a(Lb/f;)Z

    move-result v0

    return v0

    .line 419
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lj/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lb/g;->q:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lb/g;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lb/g;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :try_start_1
    iget-object v0, p0, Lb/g;->p:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    :cond_0
    iget-boolean v0, p0, Lb/g;->q:Z

    if-eqz v0, :cond_1

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/g;->q:Z

    .line 113
    :cond_1
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lb/g;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->d()Lcom/alipay/android/app/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/d;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6001"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/g;->j:Ljava/lang/String;

    .line 120
    :cond_0
    iget-object v0, p0, Lb/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lb/g;->k:Ljava/lang/String;

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lb/g;->c:J

    return-wide v0
.end method

.method public f()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 142
    move v0, v1

    .line 144
    :goto_0
    if-nez v0, :cond_2

    :try_start_0
    iget-object v3, p0, Lb/g;->f:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 146
    invoke-direct {p0}, Lb/g;->t()V

    .line 147
    iget-object v0, p0, Lb/g;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f;

    iput-object v0, p0, Lb/g;->e:Lb/f;

    .line 148
    sget-object v0, Lb/g$1;->a:[I

    iget-object v3, p0, Lb/g;->e:Lb/f;

    invoke-virtual {v3}, Lb/f;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 184
    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 151
    goto :goto_0

    .line 153
    :pswitch_1
    invoke-direct {p0}, Lb/g;->o()Z

    move-result v0

    goto :goto_0

    .line 156
    :pswitch_2
    invoke-direct {p0}, Lb/g;->p()Z

    move-result v0

    goto :goto_0

    .line 159
    :pswitch_3
    invoke-direct {p0}, Lb/g;->q()Z

    move-result v0

    goto :goto_0

    .line 162
    :pswitch_4
    invoke-direct {p0}, Lb/g;->r()Z

    move-result v0

    goto :goto_0

    .line 165
    :pswitch_5
    invoke-direct {p0}, Lb/g;->s()Z
    :try_end_0
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 169
    :pswitch_6
    :try_start_1
    iget-object v0, p0, Lb/g;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "no show first window"

    iput-object v0, p0, Lb/g;->l:Ljava/lang/String;

    .line 172
    :cond_0
    iget-boolean v0, p0, Lb/g;->m:Z

    if-nez v0, :cond_1

    .line 174
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v0

    iget-object v3, p0, Lb/g;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lf/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->m()Lb/h;

    move-result-object v0

    invoke-virtual {v0}, Lb/h;->e()V
    :try_end_2
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v2

    .line 180
    goto :goto_0

    .line 209
    :cond_2
    iput-object v5, p0, Lb/g;->g:Lb/f;

    .line 210
    iput-object v5, p0, Lb/g;->e:Lb/f;

    .line 213
    :goto_2
    return v0

    .line 187
    :catch_0
    move-exception v0

    .line 189
    :try_start_3
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v2

    invoke-virtual {v2}, Lh/b;->d()Lcom/alipay/android/app/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/d;->p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "6002"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/alipay/android/app/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lb/g;->j:Ljava/lang/String;

    .line 191
    invoke-direct {p0, v0}, Lb/g;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    iput-object v5, p0, Lb/g;->g:Lb/f;

    .line 210
    iput-object v5, p0, Lb/g;->e:Lb/f;

    move v0, v1

    .line 211
    goto :goto_2

    .line 193
    :catch_1
    move-exception v0

    .line 195
    :try_start_4
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v2

    invoke-virtual {v2}, Lh/b;->d()Lcom/alipay/android/app/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/d;->q()Ljava/lang/String;

    move-result-object v2

    const-string v3, "4000"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/alipay/android/app/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lb/g;->j:Ljava/lang/String;

    .line 197
    invoke-direct {p0, v0}, Lb/g;->a(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 209
    iput-object v5, p0, Lb/g;->g:Lb/f;

    .line 210
    iput-object v5, p0, Lb/g;->e:Lb/f;

    move v0, v1

    .line 211
    goto :goto_2

    .line 199
    :catch_2
    move-exception v0

    .line 200
    :try_start_5
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    .line 201
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v2

    const-string v3, "crash"

    invoke-virtual {v2, v0, v3}, Lf/c;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v2

    invoke-virtual {v2}, Lh/b;->d()Lcom/alipay/android/app/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/d;->r()Ljava/lang/String;

    move-result-object v2

    const-string v3, "4000"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/alipay/android/app/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lb/g;->j:Ljava/lang/String;

    .line 205
    invoke-direct {p0, v0}, Lb/g;->a(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 209
    iput-object v5, p0, Lb/g;->g:Lb/f;

    .line 210
    iput-object v5, p0, Lb/g;->e:Lb/f;

    move v0, v1

    .line 211
    goto :goto_2

    .line 209
    :catchall_0
    move-exception v0

    iput-object v5, p0, Lb/g;->g:Lb/f;

    .line 210
    iput-object v5, p0, Lb/g;->e:Lb/f;

    throw v0

    .line 176
    :catch_3
    move-exception v0

    goto/16 :goto_1

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 366
    sget-object v0, Lb/f;->f:Lb/f;

    invoke-direct {p0, v0}, Lb/g;->a(Lb/f;)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 373
    sget-object v0, Lb/f;->a:Lb/f;

    invoke-direct {p0, v0}, Lb/g;->a(Lb/f;)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 380
    sget-object v0, Lb/f;->b:Lb/f;

    invoke-direct {p0, v0}, Lb/g;->a(Lb/f;)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 384
    sget-object v0, Lb/f;->e:Lb/f;

    invoke-direct {p0, v0}, Lb/g;->a(Lb/f;)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 393
    sget-object v0, Lb/f;->d:Lb/f;

    invoke-direct {p0, v0}, Lb/g;->a(Lb/f;)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 401
    :try_start_0
    iget-object v0, p0, Lb/g;->a:Lb/a;

    invoke-virtual {v0}, Lb/a;->m()Lb/h;

    move-result-object v0

    invoke-virtual {v0}, Lb/h;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    sget-object v0, Lb/f;->c:Lb/f;

    invoke-direct {p0, v0}, Lb/g;->a(Lb/f;)Z

    move-result v0

    return v0

    .line 402
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 425
    sget-object v0, Lb/f;->g:Lb/f;

    invoke-direct {p0, v0}, Lb/g;->a(Lb/f;)Z

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lb/g;->b:Ljava/lang/String;

    return-object v0
.end method

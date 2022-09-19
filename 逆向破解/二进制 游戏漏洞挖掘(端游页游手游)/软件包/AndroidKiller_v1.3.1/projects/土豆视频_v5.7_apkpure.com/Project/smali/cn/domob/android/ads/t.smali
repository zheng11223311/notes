.class public Lcn/domob/android/ads/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/t$d;,
        Lcn/domob/android/ads/t$a;,
        Lcn/domob/android/ads/t$b;,
        Lcn/domob/android/ads/t$c;
    }
.end annotation


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x4d0

.field public static final c:Ljava/lang/String; = "d_close.png"

.field public static final d:Ljava/lang/String; = "d_close_interstitial.png"

.field public static final e:I = 0x24

.field public static final f:I = 0x24

.field public static final g:I = 0x6

.field public static final h:I = 0x6

.field public static final i:I = 0x2

.field public static final j:I = 0xc

.field private static k:Lcn/domob/android/ads/c/f; = null

.field private static final n:Ljava/lang/String; = "d_border_black.png"

.field private static final o:Ljava/lang/String; = "d_border_white.png"

.field private static final p:I = 0x258

.field private static final q:I = 0x280

.field private static final r:I = 0x21c

.field private static final s:I = 0x140

.field private static final t:I = 0x10e


# instance fields
.field private l:Landroid/os/Handler;

.field private m:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/t;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/t;->k:Lcn/domob/android/ads/c/f;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/t;->l:Landroid/os/Handler;

    .line 237
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcn/domob/android/ads/t$1;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcn/domob/android/ads/t;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/t;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/domob/android/ads/t;->m:Landroid/app/Dialog;

    return-object v0
.end method

.method private a(Landroid/view/View;Lcn/domob/android/ads/t$d;)V
    .locals 18

    .prologue
    .line 270
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 271
    :cond_0
    sget-object v4, Lcn/domob/android/ads/t;->k:Lcn/domob/android/ads/c/f;

    const-string/jumbo v5, "\u9700\u8981\u5f39\u51fa\u663e\u793a\u7684View\u5df2\u7ecf\u88ab\u52a0\u8f7d\u5176\u4ed6ViewGroup\u4e2d\uff0c\u9700\u8981remove\u4e4b\u540e\u663e\u793a\u3002"

    invoke-virtual {v4, v5}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 476
    :cond_1
    :goto_0
    return-void

    .line 275
    :cond_2
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->a(Lcn/domob/android/ads/t$d;)Landroid/content/Context;

    move-result-object v12

    .line 276
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->b(Lcn/domob/android/ads/t$d;)I

    move-result v7

    .line 277
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->c(Lcn/domob/android/ads/t$d;)I

    move-result v5

    .line 281
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->d(Lcn/domob/android/ads/t$d;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, -0x1

    if-eq v7, v4, :cond_1b

    .line 282
    int-to-float v4, v7

    invoke-static {v12}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v6

    div-float/2addr v4, v6

    float-to-int v4, v4

    const/16 v6, 0x258

    if-ne v4, v6, :cond_10

    .line 283
    const/high16 v4, 0x44200000    # 640.0f

    invoke-static {v12}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v6

    mul-float/2addr v4, v6

    float-to-int v6, v4

    .line 285
    const/high16 v4, 0x44070000    # 540.0f

    invoke-static {v12}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v8

    mul-float/2addr v4, v8

    float-to-int v4, v4

    .line 294
    :goto_1
    sget-object v8, Lcn/domob/android/ads/t;->k:Lcn/domob/android/ads/c/f;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Borderwidth:borderheight]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcn/domob/android/ads/t;->a(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 297
    new-instance v8, Landroid/app/Dialog;

    const v9, 0x1030011

    invoke-direct {v8, v12, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcn/domob/android/ads/t;->m:Landroid/app/Dialog;

    .line 301
    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/domob/android/ads/t;->m:Landroid/app/Dialog;

    new-instance v9, Lcn/domob/android/ads/t$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v9, v0, v1, v2}, Lcn/domob/android/ads/t$1;-><init>(Lcn/domob/android/ads/t;Landroid/view/View;Lcn/domob/android/ads/t$d;)V

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 315
    new-instance v13, Landroid/widget/RelativeLayout;

    invoke-direct {v13, v12}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 317
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 319
    invoke-virtual {v13, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->g(Lcn/domob/android/ads/t$d;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 322
    const/16 v8, 0x96

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v13, v8}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 325
    :cond_3
    sget-object v8, Lcn/domob/android/ads/t;->k:Lcn/domob/android/ads/c/f;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[width:height]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 327
    new-instance v14, Landroid/widget/RelativeLayout;

    invoke-direct {v14, v12}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 329
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->d(Lcn/domob/android/ads/t$d;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 331
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->h(Lcn/domob/android/ads/t$d;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_12

    .line 332
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->h(Lcn/domob/android/ads/t$d;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->i(Lcn/domob/android/ads/t$d;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v12}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v6

    mul-float/2addr v4, v6

    float-to-int v6, v4

    .line 335
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->j(Lcn/domob/android/ads/t$d;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v12}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v8

    mul-float/2addr v4, v8

    float-to-int v4, v4

    .line 337
    sget-object v8, Lcn/domob/android/ads/t;->k:Lcn/domob/android/ads/c/f;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "final border width&height:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 358
    :cond_4
    :goto_3
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->d(Lcn/domob/android/ads/t$d;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 359
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 362
    :goto_4
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->l(Lcn/domob/android/ads/t$d;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->m(Lcn/domob/android/ads/t$d;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->n(Lcn/domob/android/ads/t$d;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->o(Lcn/domob/android/ads/t$d;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 363
    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 365
    :cond_5
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->l(Lcn/domob/android/ads/t$d;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 366
    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 368
    :cond_6
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->n(Lcn/domob/android/ads/t$d;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 369
    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 371
    :cond_7
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->m(Lcn/domob/android/ads/t$d;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 372
    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 374
    :cond_8
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->o(Lcn/domob/android/ads/t$d;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 375
    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 378
    :cond_9
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 379
    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 380
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    const/16 v9, 0x4d0

    invoke-virtual {v14, v9}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 382
    const/4 v9, 0x0

    .line 384
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->p(Lcn/domob/android/ads/t$d;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 385
    const/high16 v9, 0x42100000    # 36.0f

    invoke-static {v12}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v10, v9

    .line 386
    const/high16 v9, 0x42100000    # 36.0f

    invoke-static {v12}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v11

    mul-float/2addr v9, v11

    float-to-int v15, v9

    .line 388
    new-instance v11, Landroid/widget/ImageButton;

    invoke-direct {v11, v12}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 389
    const/16 v9, 0x8

    invoke-virtual {v11, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 390
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->d(Lcn/domob/android/ads/t$d;)Z

    move-result v9

    if-eqz v9, :cond_17

    const-string v9, "d_close_interstitial.png"

    .line 391
    :goto_5
    invoke-static {v12, v9}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v16

    invoke-direct {v0, v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 394
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->d(Lcn/domob/android/ads/t$d;)Z

    move-result v9

    if-eqz v9, :cond_19

    const/4 v9, -0x1

    if-eq v7, v9, :cond_19

    .line 395
    sget-object v9, Lcn/domob/android/ads/t;->k:Lcn/domob/android/ads/c/f;

    const-string v10, "margin is set"

    invoke-virtual {v9, v10}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 397
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->q(Lcn/domob/android/ads/t$d;)[I

    move-result-object v9

    if-eqz v9, :cond_18

    .line 398
    sub-int v9, v6, v7

    div-int/lit8 v9, v9, 0x2

    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->q(Lcn/domob/android/ads/t$d;)[I

    move-result-object v10

    const/4 v15, 0x0

    aget v10, v10, v15

    invoke-static {v12, v10}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;I)I

    move-result v10

    add-int/2addr v10, v9

    .line 399
    sub-int v9, v4, v5

    div-int/lit8 v9, v9, 0x2

    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->q(Lcn/domob/android/ads/t$d;)[I

    move-result-object v15

    const/16 v17, 0x1

    aget v15, v15, v17

    invoke-static {v12, v15}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;I)I

    move-result v12

    add-int/2addr v9, v12

    .line 404
    :goto_6
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->a(Lcn/domob/android/ads/t$d;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcn/domob/android/b/a;->H(Landroid/content/Context;)I

    move-result v12

    sub-int/2addr v12, v5

    sub-int v15, v4, v5

    sub-int/2addr v12, v15

    neg-int v12, v12

    div-int/lit8 v12, v12, 0x2

    .line 405
    if-le v12, v9, :cond_a

    move v9, v12

    .line 408
    :cond_a
    if-lt v6, v7, :cond_b

    .line 409
    move-object/from16 v0, v16

    iput v10, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 411
    :cond_b
    if-lt v4, v5, :cond_c

    .line 412
    move-object/from16 v0, v16

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 414
    :cond_c
    const/4 v4, 0x5

    const/16 v5, 0x4d0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 418
    :goto_7
    const/4 v4, 0x6

    const/16 v5, 0x4d0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 420
    move-object/from16 v0, v16

    invoke-virtual {v13, v11, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    new-instance v4, Lcn/domob/android/ads/t$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcn/domob/android/ads/t$2;-><init>(Lcn/domob/android/ads/t;)V

    invoke-virtual {v11, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/domob/android/ads/t;->l:Landroid/os/Handler;

    new-instance v5, Lcn/domob/android/ads/t$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v11}, Lcn/domob/android/ads/t$3;-><init>(Lcn/domob/android/ads/t;Landroid/widget/ImageButton;)V

    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->r(Lcn/domob/android/ads/t$d;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object v4, v11

    .line 440
    :goto_8
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->s(Lcn/domob/android/ads/t$d;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 441
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/domob/android/ads/t;->m:Landroid/app/Dialog;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 442
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/domob/android/ads/t;->l:Landroid/os/Handler;

    new-instance v6, Lcn/domob/android/ads/t$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v6, v0, v1}, Lcn/domob/android/ads/t$4;-><init>(Lcn/domob/android/ads/t;Lcn/domob/android/ads/t$d;)V

    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->r(Lcn/domob/android/ads/t$d;)I

    move-result v7

    int-to-long v10, v7

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 454
    :cond_d
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->t(Lcn/domob/android/ads/t$d;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 455
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/domob/android/ads/t;->l:Landroid/os/Handler;

    new-instance v6, Lcn/domob/android/ads/t$5;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcn/domob/android/ads/t$5;-><init>(Lcn/domob/android/ads/t;)V

    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->u(Lcn/domob/android/ads/t$d;)I

    move-result v7

    int-to-long v10, v7

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 466
    :cond_e
    invoke-virtual {v13, v14, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    if-eqz v4, :cond_f

    .line 468
    invoke-virtual {v4}, Landroid/widget/ImageButton;->bringToFront()V

    .line 470
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/domob/android/ads/t;->m:Landroid/app/Dialog;

    invoke-virtual {v4, v13}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/domob/android/ads/t;->m:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 473
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->f(Lcn/domob/android/ads/t$d;)Lcn/domob/android/ads/t$b;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 474
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->f(Lcn/domob/android/ads/t$d;)Lcn/domob/android/ads/t$b;

    move-result-object v4

    invoke-interface {v4}, Lcn/domob/android/ads/t$b;->a()V

    goto/16 :goto_0

    .line 288
    :cond_10
    const/high16 v4, 0x43a00000    # 320.0f

    invoke-static {v12}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v6

    mul-float/2addr v4, v6

    float-to-int v6, v4

    .line 290
    const/high16 v4, 0x43870000    # 270.0f

    invoke-static {v12}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v8

    mul-float/2addr v4, v8

    float-to-int v4, v4

    goto/16 :goto_1

    .line 299
    :cond_11
    new-instance v8, Landroid/app/Dialog;

    const v9, 0x1030010

    invoke-direct {v8, v12, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcn/domob/android/ads/t;->m:Landroid/app/Dialog;

    goto/16 :goto_2

    .line 339
    :cond_12
    sget-object v8, Lcn/domob/android/ads/t;->k:Lcn/domob/android/ads/c/f;

    const-string v9, "built in border type"

    invoke-virtual {v8, v9}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 340
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->k(Lcn/domob/android/ads/t$d;)Lcn/domob/android/ads/InterstitialAd$BorderType;

    move-result-object v8

    sget-object v9, Lcn/domob/android/ads/InterstitialAd$BorderType;->White:Lcn/domob/android/ads/InterstitialAd$BorderType;

    if-ne v8, v9, :cond_14

    .line 341
    const-string v8, "d_border_white.png"

    invoke-static {v12, v8}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 343
    if-eqz v8, :cond_13

    .line 344
    invoke-virtual {v14, v8}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    :cond_13
    sget-object v8, Lcn/domob/android/ads/t;->k:Lcn/domob/android/ads/c/f;

    const-string/jumbo v9, "white border is set"

    invoke-virtual {v8, v9}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 346
    :cond_14
    invoke-static/range {p2 .. p2}, Lcn/domob/android/ads/t$d;->k(Lcn/domob/android/ads/t$d;)Lcn/domob/android/ads/InterstitialAd$BorderType;

    move-result-object v8

    sget-object v9, Lcn/domob/android/ads/InterstitialAd$BorderType;->Black:Lcn/domob/android/ads/InterstitialAd$BorderType;

    if-ne v8, v9, :cond_15

    .line 347
    const-string v8, "d_border_black.png"

    invoke-static {v12, v8}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 349
    if-eqz v8, :cond_4

    .line 350
    invoke-virtual {v14, v8}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 353
    :cond_15
    sget-object v8, Lcn/domob/android/ads/t;->k:Lcn/domob/android/ads/c/f;

    const-string v9, "border is not set"

    invoke-virtual {v8, v9}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 361
    :cond_16
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_4

    .line 390
    :cond_17
    const-string v9, "d_close.png"

    goto/16 :goto_5

    .line 401
    :cond_18
    sub-int v9, v6, v7

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v7

    const/16 v10, 0x24

    invoke-static {v12, v10}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;I)I

    move-result v10

    sub-int v10, v9, v10

    .line 402
    sub-int v9, v4, v5

    div-int/lit8 v9, v9, 0x2

    const/16 v15, 0x24

    invoke-static {v12, v15}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;I)I

    move-result v12

    sub-int/2addr v9, v12

    goto/16 :goto_6

    .line 416
    :cond_19
    const/4 v4, 0x7

    const/16 v5, 0x4d0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_7

    :cond_1a
    move-object v4, v9

    goto/16 :goto_8

    :cond_1b
    move v4, v5

    move v6, v7

    goto/16 :goto_1
.end method

.method static synthetic a(Lcn/domob/android/ads/t;Landroid/view/View;Lcn/domob/android/ads/t$d;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/t;->a(Landroid/view/View;Lcn/domob/android/ads/t$d;)V

    return-void
.end method

.method private a(II)Z
    .locals 2

    .prologue
    .line 258
    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 259
    ushr-int v1, p1, v0

    rem-int/lit8 v1, v1, 0x2

    .line 260
    ushr-int v0, p2, v0

    rem-int/lit8 v0, v0, 0x2

    .line 261
    if-ne v1, v0, :cond_0

    .line 262
    const/4 v0, 0x1

    .line 264
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 250
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 251
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 252
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x400

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/t;->a(II)Z

    move-result v0

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()Lcn/domob/android/ads/c/f;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcn/domob/android/ads/t;->k:Lcn/domob/android/ads/c/f;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcn/domob/android/ads/t;->m:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/t;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/t;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    sget-object v1, Lcn/domob/android/ads/t;->k:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

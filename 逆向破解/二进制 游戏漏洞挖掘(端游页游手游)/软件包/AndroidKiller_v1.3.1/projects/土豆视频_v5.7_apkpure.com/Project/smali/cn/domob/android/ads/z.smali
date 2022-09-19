.class Lcn/domob/android/ads/z;
.super Lcn/domob/android/ads/AdView;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/z$b;,
        Lcn/domob/android/ads/z$a;
    }
.end annotation


# static fields
.field private static final C:I = 0x4d1

.field private static p:Lcn/domob/android/ads/c/f; = null

.field private static final q:I = 0x10

.field private static final r:I = 0x9

.field private static final s:I = 0x6

.field private static final t:I = 0x5


# instance fields
.field private A:Lcn/domob/android/f/a;

.field private B:Z

.field private D:Lcn/domob/android/ads/VideoIsPlayingListener;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Lcn/domob/android/ads/c/d;

.field private K:Z

.field private L:I

.field private M:I

.field private N:Z

.field private O:Lcn/domob/android/ads/c/d;

.field private P:Lcn/domob/android/ads/c/d;

.field private Q:Lcn/domob/android/ads/z$a;

.field private u:Landroid/os/Handler;

.field private v:Lcn/domob/android/ads/VideoInterstitialAdListener;

.field private w:Lcn/domob/android/ads/PreRollAdListener;

.field private x:Lcn/domob/android/ads/z$b;

.field private y:Lcn/domob/android/ads/SceneInfo;

.field private z:Lcn/domob/android/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/z;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/AdView$a;Lcn/domob/android/ads/VideoIsPlayingListener;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/domob/android/ads/z;->u:Landroid/os/Handler;

    .line 48
    iput-boolean v2, p0, Lcn/domob/android/ads/z;->B:Z

    .line 56
    iput-boolean v2, p0, Lcn/domob/android/ads/z;->E:Z

    .line 60
    iput-boolean v2, p0, Lcn/domob/android/ads/z;->F:Z

    .line 64
    iput-boolean v2, p0, Lcn/domob/android/ads/z;->G:Z

    .line 68
    iput-boolean v2, p0, Lcn/domob/android/ads/z;->H:Z

    .line 72
    iput-boolean v2, p0, Lcn/domob/android/ads/z;->I:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/z;->K:Z

    .line 83
    const/16 v0, 0x1388

    iput v0, p0, Lcn/domob/android/ads/z;->L:I

    .line 133
    iput p7, p0, Lcn/domob/android/ads/z;->M:I

    .line 134
    iput-object p6, p0, Lcn/domob/android/ads/z;->D:Lcn/domob/android/ads/VideoIsPlayingListener;

    .line 135
    iget-object v0, p0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/b;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/b;->a(Z)V

    .line 137
    iget-object v0, p0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/b;->b(Z)V

    .line 139
    :cond_0
    invoke-virtual {p5}, Lcn/domob/android/ads/AdView$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/z;->b:I

    .line 140
    return-void
.end method

.method private a(Landroid/widget/ImageButton;)Lcn/domob/android/ads/c/d$b;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcn/domob/android/ads/z$3;

    invoke-direct {v0, p0, p1}, Lcn/domob/android/ads/z$3;-><init>(Lcn/domob/android/ads/z;Landroid/widget/ImageButton;)V

    return-object v0
.end method

.method private a(J)Lcn/domob/android/ads/c/d;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Lcn/domob/android/ads/c/d;

    iget-object v1, p0, Lcn/domob/android/ads/z;->u:Landroid/os/Handler;

    new-instance v2, Lcn/domob/android/ads/z$1;

    invoke-direct {v2, p0, p1, p2}, Lcn/domob/android/ads/z$1;-><init>(Lcn/domob/android/ads/z;J)V

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/c/d;-><init>(Landroid/os/Handler;Lcn/domob/android/ads/c/d$b;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcn/domob/android/ads/z$b;Landroid/widget/RelativeLayout;)V
    .locals 6

    .prologue
    .line 543
    invoke-direct {p0}, Lcn/domob/android/ads/z;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcn/domob/android/ads/z$b;->z()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iget-object v2, p0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v2}, Lcn/domob/android/ads/b;->h()J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_0
    long-to-int v0, v0

    .line 545
    if-gtz v0, :cond_1

    .line 572
    :goto_1
    return-void

    .line 543
    :cond_0
    invoke-virtual {p2}, Lcn/domob/android/ads/z$b;->z()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_0

    .line 548
    :cond_1
    invoke-virtual {p2}, Lcn/domob/android/ads/z$b;->u()I

    move-result v1

    .line 549
    invoke-virtual {p2}, Lcn/domob/android/ads/z$b;->v()I

    move-result v2

    .line 550
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcn/domob/android/ads/z;->c:Landroid/content/Context;

    invoke-virtual {p2, v4}, Lcn/domob/android/ads/z$b;->d(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcn/domob/android/ads/z;->c:Landroid/content/Context;

    invoke-virtual {p2, v5}, Lcn/domob/android/ads/z$b;->e(Landroid/content/Context;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 552
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 553
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 555
    new-instance v1, Lcn/domob/android/a/a/a;

    invoke-direct {v1, p1, v0}, Lcn/domob/android/a/a/a;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcn/domob/android/ads/z;->z:Lcn/domob/android/a/a/a;

    .line 556
    iget-object v0, p0, Lcn/domob/android/ads/z;->z:Lcn/domob/android/a/a/a;

    new-instance v1, Lcn/domob/android/ads/z$8;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/z$8;-><init>(Lcn/domob/android/ads/z;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/a/a/a;->a(Lcn/domob/android/a/a/a$a;)V

    .line 570
    iget-object v0, p0, Lcn/domob/android/ads/z;->z:Lcn/domob/android/a/a/a;

    invoke-virtual {p3, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    iget-object v0, p0, Lcn/domob/android/ads/z;->z:Lcn/domob/android/a/a/a;

    invoke-virtual {v0}, Lcn/domob/android/a/a/a;->b()V

    goto :goto_1
.end method

.method private a(Lcn/domob/android/a/a/b;Lcn/domob/android/ads/z$b;)V
    .locals 1

    .prologue
    .line 441
    new-instance v0, Lcn/domob/android/ads/z$6;

    invoke-direct {v0, p0, p2}, Lcn/domob/android/ads/z$6;-><init>(Lcn/domob/android/ads/z;Lcn/domob/android/ads/z$b;)V

    invoke-virtual {p1, v0}, Lcn/domob/android/a/a/b;->a(Lcn/domob/android/a/a/b$a;)V

    .line 453
    return-void
.end method

.method private a(Lcn/domob/android/ads/c/d;)V
    .locals 0

    .prologue
    .line 778
    if-eqz p1, :cond_0

    .line 779
    invoke-virtual {p1}, Lcn/domob/android/ads/c/d;->f()V

    .line 782
    :cond_0
    return-void
.end method

.method private a(Lcn/domob/android/ads/z$b;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x6

    const/16 v7, 0x4d1

    .line 315
    iput-object p1, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    .line 316
    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 317
    iget-object v0, p0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/b;

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->i()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcn/domob/android/ads/b;->a:Landroid/content/Context;

    .line 320
    invoke-direct {p0, p1}, Lcn/domob/android/ads/z;->d(Lcn/domob/android/ads/z$b;)V

    .line 323
    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->r()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 324
    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->r()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 325
    new-instance v2, Lcn/domob/android/a/a/b;

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->i()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/domob/android/a/a/b;-><init>(Landroid/content/Context;)V

    .line 326
    invoke-direct {p0, v2, p1}, Lcn/domob/android/ads/z;->a(Lcn/domob/android/a/a/b;Lcn/domob/android/ads/z$b;)V

    .line 327
    invoke-virtual {p1, v2}, Lcn/domob/android/ads/z$b;->a(Landroid/widget/RelativeLayout;)V

    .line 328
    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->r()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 330
    sget-object v3, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    const-string/jumbo v4, "secure area parent relativeLyaout width:%d\uff0c height:%d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 334
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->i()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 335
    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 336
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->w()I

    move-result v3

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->x()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 338
    sget-object v3, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    const-string/jumbo v4, "secure area width:%d height:%d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->w()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->x()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->s()I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 341
    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->t()I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 342
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 343
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 344
    invoke-virtual {v2, v0, v1}, Lcn/domob/android/a/a/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->k()I

    move-result v2

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->l()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 349
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 350
    iget-object v2, p0, Lcn/domob/android/ads/z;->g:Lcn/domob/android/ads/g;

    invoke-virtual {v2}, Lcn/domob/android/ads/g;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    iget-object v1, p0, Lcn/domob/android/ads/z;->g:Lcn/domob/android/ads/g;

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->k()I

    move-result v2

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->l()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/g;->a(II)V

    .line 355
    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->A()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    :cond_0
    iget-object v1, p0, Lcn/domob/android/ads/z;->g:Lcn/domob/android/ads/g;

    invoke-virtual {v1}, Lcn/domob/android/ads/g;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setId(I)V

    .line 357
    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/domob/android/ads/z$b;->b(Landroid/content/Context;)I

    move-result v1

    .line 358
    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->i()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/domob/android/ads/z$b;->c(Landroid/content/Context;)I

    move-result v2

    .line 359
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 361
    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->j()I

    move-result v4

    if-ne v4, v9, :cond_5

    .line 362
    const/4 v1, 0x7

    invoke-virtual {v3, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 363
    invoke-virtual {v3, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 381
    :cond_1
    :goto_0
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->i()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 382
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 383
    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->i()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    new-instance v2, Lcn/domob/android/ads/z$5;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/z$5;-><init>(Lcn/domob/android/ads/z;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    invoke-direct {p0}, Lcn/domob/android/ads/z;->t()Z

    move-result v2

    if-nez v2, :cond_7

    .line 395
    new-instance v2, Lcn/domob/android/ads/c/d;

    iget-object v3, p0, Lcn/domob/android/ads/z;->u:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcn/domob/android/ads/z;->a(Landroid/widget/ImageButton;)Lcn/domob/android/ads/c/d$b;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcn/domob/android/ads/c/d;-><init>(Landroid/os/Handler;Lcn/domob/android/ads/c/d$b;)V

    iput-object v2, p0, Lcn/domob/android/ads/z;->P:Lcn/domob/android/ads/c/d;

    .line 398
    iget-object v1, p0, Lcn/domob/android/ads/z;->P:Lcn/domob/android/ads/c/d;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/c/d;->a(J)V

    .line 417
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->A()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcn/domob/android/ads/z;->G:Z

    if-nez v1, :cond_3

    .line 418
    iget-object v1, p0, Lcn/domob/android/ads/z;->c:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v0}, Lcn/domob/android/ads/z;->a(Landroid/content/Context;Lcn/domob/android/ads/z$b;Landroid/widget/RelativeLayout;)V

    .line 421
    :cond_3
    invoke-direct {p0}, Lcn/domob/android/ads/z;->t()Z

    move-result v0

    if-nez v0, :cond_4

    .line 422
    invoke-direct {p0, p1}, Lcn/domob/android/ads/z;->e(Lcn/domob/android/ads/z$b;)V

    .line 430
    :cond_4
    :goto_2
    return-void

    .line 364
    :cond_5
    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->j()I

    move-result v4

    if-ne v4, v11, :cond_6

    .line 365
    invoke-virtual {v3, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 366
    const/4 v1, 0x7

    invoke-virtual {v3, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 367
    neg-int v1, v2

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->i()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v9}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 370
    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;I)I

    move-result v1

    neg-int v1, v1

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 372
    :cond_6
    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->j()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 373
    invoke-virtual {v3, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 374
    const/4 v2, 0x7

    invoke-virtual {v3, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 375
    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->i()Landroid/content/Context;

    move-result-object v2

    const/16 v4, 0xc

    invoke-static {v2, v4}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;I)I

    move-result v2

    neg-int v2, v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 377
    neg-int v1, v1

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->i()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_0

    .line 404
    :cond_7
    iget-object v2, p0, Lcn/domob/android/ads/z;->P:Lcn/domob/android/ads/c/d;

    if-eqz v2, :cond_2

    .line 406
    iget-object v2, p0, Lcn/domob/android/ads/z;->P:Lcn/domob/android/ads/c/d;

    invoke-virtual {v2}, Lcn/domob/android/ads/c/d;->g()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 408
    invoke-virtual {v1, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 411
    :cond_8
    iget-object v2, p0, Lcn/domob/android/ads/z;->P:Lcn/domob/android/ads/c/d;

    invoke-direct {p0, v1}, Lcn/domob/android/ads/z;->a(Landroid/widget/ImageButton;)Lcn/domob/android/ads/c/d$b;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/c/d;->a(Lcn/domob/android/ads/c/d$b;)V

    goto :goto_1

    .line 425
    :cond_9
    invoke-virtual {p0}, Lcn/domob/android/ads/z;->q()V

    .line 426
    iget-boolean v0, p0, Lcn/domob/android/ads/z;->E:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcn/domob/android/ads/z;->F:Z

    if-eqz v0, :cond_4

    .line 427
    sget-object v0, Lcn/domob/android/ads/AdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/AdManager$ErrorCode;

    invoke-virtual {p0, p0, v0}, Lcn/domob/android/ads/z;->onAdFailed(Lcn/domob/android/ads/AdView;Lcn/domob/android/ads/AdManager$ErrorCode;)V

    goto :goto_2
.end method

.method private a(Lcn/domob/android/ads/z$b;IIII)V
    .locals 6

    .prologue
    .line 614
    const-string v0, "ad area width:%d height:%d, ad proportions width:%d, height:%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 616
    if-lez p2, :cond_3

    if-lez p3, :cond_3

    if-lez p4, :cond_3

    if-lez p5, :cond_3

    .line 617
    mul-int v0, p2, p5

    mul-int v2, p4, p3

    if-le v0, v2, :cond_1

    .line 619
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    const-string v2, "Advertising area can be filled with too wide"

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 621
    rem-int v0, p3, p5

    sub-int v0, p3, v0

    .line 623
    int-to-double v2, v0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v4

    int-to-double v4, p3

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    move p3, v0

    .line 627
    :cond_0
    mul-int v0, p3, p4

    div-int/2addr v0, p5

    invoke-virtual {p1, v0}, Lcn/domob/android/ads/z$b;->d(I)V

    .line 629
    invoke-virtual {p1, p3}, Lcn/domob/android/ads/z$b;->e(I)V

    .line 644
    :goto_0
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 648
    :goto_1
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    const-string v1, "after corrected, ad width:%d, height:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->k()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->l()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 650
    return-void

    .line 632
    :cond_1
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    const-string v2, "Advertising area can be filled with too high"

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 634
    rem-int v0, p2, p4

    sub-int v0, p2, v0

    .line 636
    int-to-double v2, v0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v4

    int-to-double v4, p2

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    move p2, v0

    .line 640
    :cond_2
    invoke-virtual {p1, p2}, Lcn/domob/android/ads/z$b;->d(I)V

    .line 642
    mul-int v0, p2, p5

    div-int/2addr v0, p4

    invoke-virtual {p1, v0}, Lcn/domob/android/ads/z$b;->e(I)V

    goto :goto_0

    .line 646
    :cond_3
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcn/domob/android/ads/z;Lcn/domob/android/ads/z$b;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcn/domob/android/ads/z;->c(Lcn/domob/android/ads/z$b;)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/z;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/ads/z;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lcn/domob/android/ads/z;->g:Lcn/domob/android/ads/g;

    invoke-virtual {p0}, Lcn/domob/android/ads/z;->o()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcn/domob/android/ads/g;->a(Ljava/util/HashMap;Ljava/lang/String;J)V

    .line 802
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/z;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcn/domob/android/ads/z;->N:Z

    return v0
.end method

.method static synthetic a(Lcn/domob/android/ads/z;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcn/domob/android/ads/z;->N:Z

    return p1
.end method

.method static synthetic b(Lcn/domob/android/ads/z;)Lcn/domob/android/ads/PreRollAdListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/domob/android/ads/z;->w:Lcn/domob/android/ads/PreRollAdListener;

    return-object v0
.end method

.method private b(Lcn/domob/android/ads/z$b;)V
    .locals 3

    .prologue
    .line 461
    new-instance v0, Lcn/domob/android/f/a;

    iget-object v1, p0, Lcn/domob/android/ads/z;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcn/domob/android/ads/z$7;

    invoke-direct {v2, p0, p1}, Lcn/domob/android/ads/z$7;-><init>(Lcn/domob/android/ads/z;Lcn/domob/android/ads/z$b;)V

    invoke-direct {v0, v1, v2}, Lcn/domob/android/f/a;-><init>(Landroid/content/Context;Lcn/domob/android/f/a$a;)V

    iput-object v0, p0, Lcn/domob/android/ads/z;->A:Lcn/domob/android/f/a;

    .line 475
    iget-object v0, p0, Lcn/domob/android/ads/z;->A:Lcn/domob/android/f/a;

    invoke-virtual {v0}, Lcn/domob/android/f/a;->a()V

    .line 476
    return-void
.end method

.method static synthetic b(Lcn/domob/android/ads/z;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcn/domob/android/ads/z;->K:Z

    return p1
.end method

.method private c(Lcn/domob/android/ads/z$b;)V
    .locals 1

    .prologue
    .line 485
    invoke-direct {p0}, Lcn/domob/android/ads/z;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 486
    iget-object v0, p0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->g()V

    .line 487
    iget-object v0, p0, Lcn/domob/android/ads/z;->z:Lcn/domob/android/a/a/a;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcn/domob/android/ads/z;->z:Lcn/domob/android/a/a/a;

    invoke-virtual {v0}, Lcn/domob/android/a/a/a;->d()V

    .line 490
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/z;->J:Lcn/domob/android/ads/c/d;

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcn/domob/android/ads/z;->J:Lcn/domob/android/ads/c/d;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/d;->c()V

    .line 493
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/z;->P:Lcn/domob/android/ads/c/d;

    if-eqz v0, :cond_2

    .line 494
    iget-object v0, p0, Lcn/domob/android/ads/z;->P:Lcn/domob/android/ads/c/d;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/d;->c()V

    .line 496
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/z;->O:Lcn/domob/android/ads/c/d;

    if-eqz v0, :cond_3

    .line 497
    iget-object v0, p0, Lcn/domob/android/ads/z;->O:Lcn/domob/android/ads/c/d;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/d;->c()V

    .line 500
    :cond_3
    return-void
.end method

.method static synthetic c(Lcn/domob/android/ads/z;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/domob/android/ads/z;->u()V

    return-void
.end method

.method private d(Lcn/domob/android/ads/z$b;)V
    .locals 6

    .prologue
    .line 580
    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->w()I

    move-result v0

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->o()I

    move-result v1

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->p()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    sub-int v2, v0, v1

    .line 582
    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->x()I

    move-result v0

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->n()I

    move-result v1

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->m()I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x2

    sub-int v3, v0, v1

    .line 584
    iget-object v0, p0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->B()Lcn/domob/android/ads/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/e$b;->g()I

    move-result v4

    .line 585
    iget-object v0, p0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->B()Lcn/domob/android/ads/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/e$b;->h()I

    move-result v5

    .line 587
    if-lez v4, :cond_0

    if-gtz v5, :cond_1

    .line 588
    :cond_0
    iget v0, p0, Lcn/domob/android/ads/z;->b:I

    sget-object v1, Lcn/domob/android/ads/AdView$a;->h:Lcn/domob/android/ads/AdView$a;

    invoke-virtual {v1}, Lcn/domob/android/ads/AdView$a;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 589
    const/16 v4, 0x10

    .line 590
    const/16 v5, 0x9

    :cond_1
    :goto_0
    move-object v0, p0

    move-object v1, p1

    .line 596
    invoke-direct/range {v0 .. v5}, Lcn/domob/android/ads/z;->a(Lcn/domob/android/ads/z$b;IIII)V

    .line 597
    return-void

    .line 591
    :cond_2
    iget v0, p0, Lcn/domob/android/ads/z;->b:I

    sget-object v1, Lcn/domob/android/ads/AdView$a;->g:Lcn/domob/android/ads/AdView$a;

    invoke-virtual {v1}, Lcn/domob/android/ads/AdView$a;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 592
    const/4 v4, 0x6

    .line 593
    const/4 v5, 0x5

    goto :goto_0
.end method

.method static synthetic d(Lcn/domob/android/ads/z;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcn/domob/android/ads/z;->K:Z

    return v0
.end method

.method private e(Lcn/domob/android/ads/z$b;)V
    .locals 4

    .prologue
    .line 659
    iget-object v0, p0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/b;->a(J)V

    .line 661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/z;->F:Z

    .line 663
    iget-object v0, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    invoke-virtual {v0}, Lcn/domob/android/ads/z$b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    invoke-direct {p0}, Lcn/domob/android/ads/z;->s()Lcn/domob/android/ads/c/d;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/z;->O:Lcn/domob/android/ads/c/d;

    .line 665
    iget-object v0, p0, Lcn/domob/android/ads/z;->O:Lcn/domob/android/ads/c/d;

    iget-object v1, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    invoke-virtual {v1}, Lcn/domob/android/ads/z$b;->h()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/c/d;->a(J)V

    .line 668
    :cond_0
    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    invoke-virtual {v0}, Lcn/domob/android/ads/z$b;->f()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/z;->a(J)Lcn/domob/android/ads/c/d;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/z;->J:Lcn/domob/android/ads/c/d;

    .line 670
    iget-object v0, p0, Lcn/domob/android/ads/z;->J:Lcn/domob/android/ads/c/d;

    invoke-virtual {p1}, Lcn/domob/android/ads/z$b;->f()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/c/d;->a(J)V

    .line 673
    :cond_1
    const-string/jumbo v0, "s"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcn/domob/android/ads/z;->a(Ljava/lang/String;J)V

    .line 675
    iget-object v0, p0, Lcn/domob/android/ads/z;->g:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->d()V

    .line 677
    iget-object v0, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/z;->b(Lcn/domob/android/ads/z$b;)V

    .line 679
    iget-object v0, p0, Lcn/domob/android/ads/z;->w:Lcn/domob/android/ads/PreRollAdListener;

    if-eqz v0, :cond_3

    .line 680
    iget-object v0, p0, Lcn/domob/android/ads/z;->w:Lcn/domob/android/ads/PreRollAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/PreRollAdListener;->onPreRollAdPresent()V

    .line 684
    :cond_2
    :goto_0
    return-void

    .line 681
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/z;->v:Lcn/domob/android/ads/VideoInterstitialAdListener;

    if-eqz v0, :cond_2

    .line 682
    iget-object v0, p0, Lcn/domob/android/ads/z;->v:Lcn/domob/android/ads/VideoInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/VideoInterstitialAdListener;->onVideoInterstitialAdPresent()V

    goto :goto_0
.end method

.method static synthetic r()Lcn/domob/android/ads/c/f;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    return-object v0
.end method

.method private s()Lcn/domob/android/ads/c/d;
    .locals 3

    .prologue
    .line 107
    new-instance v0, Lcn/domob/android/ads/c/d;

    iget-object v1, p0, Lcn/domob/android/ads/z;->u:Landroid/os/Handler;

    new-instance v2, Lcn/domob/android/ads/z$2;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/z$2;-><init>(Lcn/domob/android/ads/z;)V

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/c/d;-><init>(Landroid/os/Handler;Lcn/domob/android/ads/c/d$b;)V

    return-object v0
.end method

.method private t()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcn/domob/android/ads/z;->F:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/android/ads/z;->E:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()V
    .locals 6

    .prologue
    .line 507
    invoke-direct {p0}, Lcn/domob/android/ads/z;->t()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 508
    iget-object v0, p0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->e()V

    .line 509
    iget-object v0, p0, Lcn/domob/android/ads/z;->z:Lcn/domob/android/a/a/a;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcn/domob/android/ads/z;->z:Lcn/domob/android/a/a/a;

    invoke-virtual {v0}, Lcn/domob/android/a/a/a;->c()V

    .line 511
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countdown timeing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    invoke-virtual {v2}, Lcn/domob/android/ads/z$b;->h()I

    move-result v2

    iget-object v3, p0, Lcn/domob/android/ads/z;->z:Lcn/domob/android/a/a/a;

    invoke-virtual {v3}, Lcn/domob/android/a/a/a;->a()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 514
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/z;->J:Lcn/domob/android/ads/c/d;

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcn/domob/android/ads/z;->J:Lcn/domob/android/ads/c/d;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/d;->b()V

    .line 516
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "impReport timeing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    invoke-virtual {v2}, Lcn/domob/android/ads/z$b;->f()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcn/domob/android/ads/z;->J:Lcn/domob/android/ads/c/d;

    invoke-virtual {v4}, Lcn/domob/android/ads/c/d;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 519
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/z;->O:Lcn/domob/android/ads/c/d;

    if-eqz v0, :cond_2

    .line 520
    iget-object v0, p0, Lcn/domob/android/ads/z;->O:Lcn/domob/android/ads/c/d;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/d;->b()V

    .line 521
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoClose timeing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    invoke-virtual {v2}, Lcn/domob/android/ads/z$b;->f()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcn/domob/android/ads/z;->O:Lcn/domob/android/ads/c/d;

    invoke-virtual {v4}, Lcn/domob/android/ads/c/d;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 524
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/z;->P:Lcn/domob/android/ads/c/d;

    if-eqz v0, :cond_3

    .line 525
    iget-object v0, p0, Lcn/domob/android/ads/z;->P:Lcn/domob/android/ads/c/d;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/d;->b()V

    .line 526
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closebutton timeing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    invoke-virtual {v2}, Lcn/domob/android/ads/z$b;->f()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcn/domob/android/ads/z;->P:Lcn/domob/android/ads/c/d;

    invoke-virtual {v4}, Lcn/domob/android/ads/c/d;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 529
    :cond_3
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controller timeing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v2}, Lcn/domob/android/ads/b;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 531
    :cond_4
    return-void
.end method

.method private v()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 788
    iput-boolean v0, p0, Lcn/domob/android/ads/z;->I:Z

    .line 789
    iput-boolean v0, p0, Lcn/domob/android/ads/z;->H:Z

    .line 790
    iget-object v0, p0, Lcn/domob/android/ads/z;->v:Lcn/domob/android/ads/VideoInterstitialAdListener;

    if-eqz v0, :cond_1

    .line 791
    iget-object v0, p0, Lcn/domob/android/ads/z;->v:Lcn/domob/android/ads/VideoInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/VideoInterstitialAdListener;->onVideoInterstitialAdDismiss()V

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/z;->w:Lcn/domob/android/ads/PreRollAdListener;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcn/domob/android/ads/z;->w:Lcn/domob/android/ads/PreRollAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/PreRollAdListener;->onPreRollAdDismiss()V

    goto :goto_0
.end method

.method private w()V
    .locals 1

    .prologue
    .line 829
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/z;->G:Z

    .line 830
    iget-object v0, p0, Lcn/domob/android/ads/z;->z:Lcn/domob/android/a/a/a;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/z;->a(Landroid/view/View;)V

    .line 831
    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/z;->B:Z

    .line 165
    iget-object v0, p0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/b;->b(I)V

    .line 166
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 720
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 722
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 723
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 724
    :catch_0
    move-exception v0

    .line 725
    sget-object v1, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected a(Lcn/domob/android/ads/PreRollAdListener;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcn/domob/android/ads/z;->w:Lcn/domob/android/ads/PreRollAdListener;

    .line 149
    return-void
.end method

.method protected a(Lcn/domob/android/ads/SceneInfo;Lcn/domob/android/ads/z$b;)V
    .locals 4

    .prologue
    .line 199
    invoke-virtual {p0}, Lcn/domob/android/ads/z;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/domob/android/ads/z;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcn/domob/android/ads/z;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 203
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/z;->b(Lcn/domob/android/ads/SceneInfo;Lcn/domob/android/ads/z$b;)V

    .line 211
    :cond_1
    :goto_1
    iget v0, p0, Lcn/domob/android/ads/z;->M:I

    if-nez v0, :cond_3

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/z;->N:Z

    .line 213
    iget-object v0, p0, Lcn/domob/android/ads/z;->u:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcn/domob/android/ads/z;->Q:Lcn/domob/android/ads/z$a;

    if-nez v0, :cond_2

    .line 215
    new-instance v0, Lcn/domob/android/ads/z$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/domob/android/ads/z$a;-><init>(Lcn/domob/android/ads/z;Lcn/domob/android/ads/z$1;)V

    iput-object v0, p0, Lcn/domob/android/ads/z;->Q:Lcn/domob/android/ads/z$a;

    .line 217
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/z;->u:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/z;->Q:Lcn/domob/android/ads/z$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    iget-object v0, p0, Lcn/domob/android/ads/z;->u:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/z;->Q:Lcn/domob/android/ads/z$a;

    iget v2, p0, Lcn/domob/android/ads/z;->L:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    :cond_3
    invoke-super {p0}, Lcn/domob/android/ads/AdView;->requestRefreshAd()V

    goto :goto_0

    .line 205
    :cond_4
    iput-object p1, p0, Lcn/domob/android/ads/z;->y:Lcn/domob/android/ads/SceneInfo;

    .line 206
    iput-object p2, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    .line 207
    invoke-super {p0, p0}, Lcn/domob/android/ads/AdView;->setAdEventListener(Lcn/domob/android/ads/AdEventListener;)V

    .line 208
    iget-object v0, p0, Lcn/domob/android/ads/z;->w:Lcn/domob/android/ads/PreRollAdListener;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcn/domob/android/ads/z;->w:Lcn/domob/android/ads/PreRollAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/PreRollAdListener;->onPreRollAdStartLoadData()V

    goto :goto_1
.end method

.method protected a(Lcn/domob/android/ads/VideoInterstitialAdListener;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcn/domob/android/ads/z;->v:Lcn/domob/android/ads/VideoInterstitialAdListener;

    .line 158
    return-void
.end method

.method protected a(Lcn/domob/android/ads/g;[Landroid/view/animation/AnimationSet;)V
    .locals 2

    .prologue
    .line 239
    iput-object p1, p0, Lcn/domob/android/ads/z;->g:Lcn/domob/android/ads/g;

    .line 240
    iget-object v0, p0, Lcn/domob/android/ads/z;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/z$4;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/z$4;-><init>(Lcn/domob/android/ads/z;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 248
    iget-object v0, p0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->D()V

    .line 249
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 806
    invoke-static {p1}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    invoke-virtual {v0}, Lcn/domob/android/ads/z$b;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 807
    const-string v0, "download"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "launch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "vibrate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 810
    :cond_0
    invoke-direct {p0}, Lcn/domob/android/ads/z;->w()V

    .line 811
    iget-object v0, p0, Lcn/domob/android/ads/z;->P:Lcn/domob/android/ads/c/d;

    if-eqz v0, :cond_1

    .line 812
    iget-object v0, p0, Lcn/domob/android/ads/z;->P:Lcn/domob/android/ads/c/d;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/d;->d()V

    .line 814
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/z;->O:Lcn/domob/android/ads/c/d;

    if-eqz v0, :cond_2

    .line 815
    iget-object v0, p0, Lcn/domob/android/ads/z;->O:Lcn/domob/android/ads/c/d;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/d;->f()V

    .line 823
    :cond_2
    :goto_0
    return-void

    .line 817
    :cond_3
    const-string v0, "inapp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 820
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/z;->a(Z)V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 757
    iget-boolean v0, p0, Lcn/domob/android/ads/z;->E:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/domob/android/ads/z;->F:Z

    if-nez v0, :cond_2

    .line 759
    iput-boolean v1, p0, Lcn/domob/android/ads/z;->G:Z

    .line 760
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/z;->I:Z

    .line 761
    iget-object v0, p0, Lcn/domob/android/ads/z;->A:Lcn/domob/android/f/a;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcn/domob/android/ads/z;->A:Lcn/domob/android/f/a;

    invoke-virtual {v0}, Lcn/domob/android/f/a;->b()V

    .line 764
    :cond_0
    iput-boolean v1, p0, Lcn/domob/android/ads/z;->E:Z

    .line 765
    iget-object v0, p0, Lcn/domob/android/ads/z;->J:Lcn/domob/android/ads/c/d;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/z;->a(Lcn/domob/android/ads/c/d;)V

    .line 766
    iget-object v0, p0, Lcn/domob/android/ads/z;->O:Lcn/domob/android/ads/c/d;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/z;->a(Lcn/domob/android/ads/c/d;)V

    .line 767
    iget-object v0, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    invoke-virtual {v0}, Lcn/domob/android/ads/z$b;->c()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/z;->a(Landroid/view/View;)V

    .line 768
    iget-object v0, p0, Lcn/domob/android/ads/z;->g:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->e()V

    .line 769
    const-string v0, "f"

    iget-object v1, p0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v1}, Lcn/domob/android/ads/b;->h()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcn/domob/android/ads/z;->a(Ljava/lang/String;J)V

    .line 770
    iget-boolean v0, p0, Lcn/domob/android/ads/z;->H:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 771
    invoke-direct {p0}, Lcn/domob/android/ads/z;->v()V

    .line 773
    :cond_1
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    const-string v1, "close ad successfully"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 775
    :cond_2
    return-void
.end method

.method protected b(Lcn/domob/android/ads/SceneInfo;Lcn/domob/android/ads/z$b;)V
    .locals 8

    .prologue
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 259
    iget-object v0, p0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->B()Lcn/domob/android/ads/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v1

    .line 262
    invoke-virtual {p1}, Lcn/domob/android/ads/SceneInfo;->f()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/domob/android/ads/z$b;->a(Landroid/view/ViewGroup;)V

    .line 263
    invoke-virtual {p1}, Lcn/domob/android/ads/SceneInfo;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/domob/android/ads/z$b;->a(Landroid/content/Context;)V

    .line 264
    invoke-virtual {p1}, Lcn/domob/android/ads/SceneInfo;->i()I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/domob/android/ads/z$b;->j(I)V

    .line 265
    invoke-virtual {p1}, Lcn/domob/android/ads/SceneInfo;->j()I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/domob/android/ads/z$b;->k(I)V

    .line 266
    invoke-virtual {p1}, Lcn/domob/android/ads/SceneInfo;->g()I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/domob/android/ads/z$b;->f(I)V

    .line 267
    invoke-virtual {p1}, Lcn/domob/android/ads/SceneInfo;->h()I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/domob/android/ads/z$b;->g(I)V

    .line 268
    invoke-virtual {p1}, Lcn/domob/android/ads/SceneInfo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/domob/android/ads/z$b;->a(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Lcn/domob/android/ads/z$b;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-boolean v0, p0, Lcn/domob/android/ads/z;->B:Z

    if-eqz v0, :cond_4

    .line 273
    iget-object v0, p0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->N()I

    move-result v0

    .line 283
    :goto_0
    invoke-virtual {p2, v0}, Lcn/domob/android/ads/z$b;->m(I)V

    .line 287
    :cond_0
    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->t()Z

    move-result v0

    .line 288
    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->v()F

    move-result v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 289
    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->w()Z

    move-result v3

    .line 290
    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->x()F

    move-result v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 291
    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->y()Z

    move-result v5

    .line 292
    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->b()Ljava/lang/String;

    move-result-object v1

    .line 293
    iget-object v6, p0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/b;

    invoke-virtual {p1}, Lcn/domob/android/ads/SceneInfo;->e()Landroid/content/Context;

    move-result-object v7

    iput-object v7, v6, Lcn/domob/android/ads/b;->b:Landroid/content/Context;

    .line 294
    const-string/jumbo v6, "video"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcn/domob/android/ads/z$b;->b(Z)V

    .line 298
    :cond_1
    if-eqz v5, :cond_2

    .line 299
    invoke-virtual {p2, v4}, Lcn/domob/android/ads/z$b;->b(I)V

    .line 301
    :cond_2
    if-eqz v3, :cond_3

    .line 302
    invoke-virtual {p2, v2}, Lcn/domob/android/ads/z$b;->a(I)V

    .line 304
    :cond_3
    invoke-virtual {p2, v0}, Lcn/domob/android/ads/z$b;->a(Z)V

    .line 306
    invoke-direct {p0, p2}, Lcn/domob/android/ads/z;->a(Lcn/domob/android/ads/z$b;)V

    .line 307
    return-void

    .line 276
    :cond_4
    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->y()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 277
    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->x()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 280
    :cond_5
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected c(Lcn/domob/android/ads/SceneInfo;Lcn/domob/android/ads/z$b;)V
    .locals 2

    .prologue
    .line 708
    iget-boolean v0, p0, Lcn/domob/android/ads/z;->F:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/android/ads/z;->E:Z

    if-eqz v0, :cond_0

    .line 709
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    const-string v1, "Scene change, remove ad "

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    invoke-virtual {v0}, Lcn/domob/android/ads/z$b;->c()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/z;->a(Landroid/view/View;)V

    .line 711
    iget-object v0, p0, Lcn/domob/android/ads/z;->g:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/z;->a(Landroid/view/View;)V

    .line 712
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/z;->b(Lcn/domob/android/ads/SceneInfo;Lcn/domob/android/ads/z$b;)V

    .line 714
    :cond_0
    return-void
.end method

.method protected k()V
    .locals 0

    .prologue
    .line 743
    invoke-virtual {p0}, Lcn/domob/android/ads/z;->q()V

    .line 744
    return-void
.end method

.method protected m()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcn/domob/android/ads/z;->E:Z

    return v0
.end method

.method protected n()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcn/domob/android/ads/z;->F:Z

    return v0
.end method

.method protected o()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 692
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 693
    const-string v1, "eid"

    iget-object v2, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    invoke-virtual {v2}, Lcn/domob/android/ads/z$b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    const-string v1, "gdim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/ads/z;->c:Landroid/content/Context;

    iget-object v4, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    invoke-virtual {v4}, Lcn/domob/android/ads/z$b;->w()I

    move-result v4

    invoke-static {v3, v4}, Lcn/domob/android/ads/c/e;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/z;->c:Landroid/content/Context;

    iget-object v4, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    invoke-virtual {v4}, Lcn/domob/android/ads/z$b;->x()I

    move-result v4

    invoke-static {v3, v4}, Lcn/domob/android/ads/c/e;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    const-string v1, "adim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/ads/z;->c:Landroid/content/Context;

    iget-object v4, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    invoke-virtual {v4}, Lcn/domob/android/ads/z$b;->k()I

    move-result v4

    invoke-static {v3, v4}, Lcn/domob/android/ads/c/e;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/z;->c:Landroid/content/Context;

    iget-object v4, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    invoke-virtual {v4}, Lcn/domob/android/ads/z$b;->l()I

    move-result v4

    invoke-static {v3, v4}, Lcn/domob/android/ads/c/e;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    return-object v0
.end method

.method public onAdClicked(Lcn/domob/android/ads/AdView;)V
    .locals 2
    .param p1, "adView"    # Lcn/domob/android/ads/AdView;

    .prologue
    .line 1364
    iget-object v0, p0, Lcn/domob/android/ads/z;->v:Lcn/domob/android/ads/VideoInterstitialAdListener;

    if-eqz v0, :cond_1

    .line 1365
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    const-string v1, "Notify user clicks on the VideoInterstitial ad."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 1366
    iget-object v0, p0, Lcn/domob/android/ads/z;->v:Lcn/domob/android/ads/VideoInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/VideoInterstitialAdListener;->onVideoInterstitialAdClicked()V

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 1367
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/z;->w:Lcn/domob/android/ads/PreRollAdListener;

    if-eqz v0, :cond_0

    .line 1368
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    const-string v1, "Notify user clicks on the Pre-Roll ad."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 1369
    iget-object v0, p0, Lcn/domob/android/ads/z;->w:Lcn/domob/android/ads/PreRollAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/PreRollAdListener;->onPreRollAdClicked()V

    goto :goto_0
.end method

.method public onAdFailed(Lcn/domob/android/ads/AdView;Lcn/domob/android/ads/AdManager$ErrorCode;)V
    .locals 2
    .param p1, "adView"    # Lcn/domob/android/ads/AdView;
    .param p2, "code"    # Lcn/domob/android/ads/AdManager$ErrorCode;

    .prologue
    .line 1310
    iget-object v0, p0, Lcn/domob/android/ads/z;->v:Lcn/domob/android/ads/VideoInterstitialAdListener;

    if-eqz v0, :cond_1

    .line 1311
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    const-string v1, "Notify VideoInterstitial ad failed."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 1312
    iget-object v0, p0, Lcn/domob/android/ads/z;->v:Lcn/domob/android/ads/VideoInterstitialAdListener;

    invoke-interface {v0, p2}, Lcn/domob/android/ads/VideoInterstitialAdListener;->onVideoInterstitialAdFailed(Lcn/domob/android/ads/AdManager$ErrorCode;)V

    .line 1320
    :cond_0
    :goto_0
    return-void

    .line 1313
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/z;->w:Lcn/domob/android/ads/PreRollAdListener;

    if-eqz v0, :cond_0

    .line 1314
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    const-string v1, "Notify PreRoll ad failed."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 1315
    iget-boolean v0, p0, Lcn/domob/android/ads/z;->N:Z

    if-nez v0, :cond_0

    .line 1316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/z;->N:Z

    .line 1317
    iget-object v0, p0, Lcn/domob/android/ads/z;->w:Lcn/domob/android/ads/PreRollAdListener;

    invoke-interface {v0, p2}, Lcn/domob/android/ads/PreRollAdListener;->onPreRollAdFailed(Lcn/domob/android/ads/AdManager$ErrorCode;)V

    goto :goto_0
.end method

.method public onAdOverlayDismissed(Lcn/domob/android/ads/AdView;)V
    .locals 2
    .param p1, "adView"    # Lcn/domob/android/ads/AdView;

    .prologue
    .line 1336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/z;->H:Z

    .line 1337
    iget-object v0, p0, Lcn/domob/android/ads/z;->v:Lcn/domob/android/ads/VideoInterstitialAdListener;

    if-eqz v0, :cond_2

    .line 1338
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    const-string v1, "Notify VideoInterstitial ad landing page close."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 1339
    iget-object v0, p0, Lcn/domob/android/ads/z;->v:Lcn/domob/android/ads/VideoInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/VideoInterstitialAdListener;->onLandingPageClose()V

    .line 1344
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcn/domob/android/ads/z;->I:Z

    if-eqz v0, :cond_1

    .line 1348
    :cond_1
    return-void

    .line 1340
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/z;->w:Lcn/domob/android/ads/PreRollAdListener;

    if-eqz v0, :cond_0

    .line 1341
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    const-string v1, "Notify PreRoll ad landing page close."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 1342
    iget-object v0, p0, Lcn/domob/android/ads/z;->w:Lcn/domob/android/ads/PreRollAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/PreRollAdListener;->onLandingPageClose()V

    goto :goto_0
.end method

.method public onAdOverlayPresented(Lcn/domob/android/ads/AdView;)V
    .locals 2
    .param p1, "adView"    # Lcn/domob/android/ads/AdView;

    .prologue
    .line 1324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/z;->H:Z

    .line 1325
    iget-object v0, p0, Lcn/domob/android/ads/z;->v:Lcn/domob/android/ads/VideoInterstitialAdListener;

    if-eqz v0, :cond_1

    .line 1326
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    const-string v1, "Notify VideoInterstitial ad landing page open."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 1327
    iget-object v0, p0, Lcn/domob/android/ads/z;->v:Lcn/domob/android/ads/VideoInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/VideoInterstitialAdListener;->onLandingPageOpen()V

    .line 1332
    :cond_0
    :goto_0
    return-void

    .line 1328
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/z;->w:Lcn/domob/android/ads/PreRollAdListener;

    if-eqz v0, :cond_0

    .line 1329
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    const-string v1, "Notify PreRoll ad landing page open."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 1330
    iget-object v0, p0, Lcn/domob/android/ads/z;->w:Lcn/domob/android/ads/PreRollAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/PreRollAdListener;->onLandingPageOpen()V

    goto :goto_0
.end method

.method public onAdRequiresCurrentContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Lcn/domob/android/ads/z;->a:Lcn/domob/android/ads/b;

    iget-object v0, v0, Lcn/domob/android/ads/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method public onAdReturned(Lcn/domob/android/ads/AdView;)V
    .locals 3
    .param p1, "adView"    # Lcn/domob/android/ads/AdView;

    .prologue
    const/4 v2, 0x1

    .line 1285
    iput-boolean v2, p0, Lcn/domob/android/ads/z;->F:Z

    .line 1286
    iput-boolean v2, p0, Lcn/domob/android/ads/z;->E:Z

    .line 1287
    iget-object v0, p0, Lcn/domob/android/ads/z;->v:Lcn/domob/android/ads/VideoInterstitialAdListener;

    if-eqz v0, :cond_1

    .line 1288
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    const-string v1, "Notify VideoInterstitialAd is ready."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 1289
    iget-object v0, p0, Lcn/domob/android/ads/z;->v:Lcn/domob/android/ads/VideoInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/VideoInterstitialAdListener;->onVideoInterstitialAdReady()V

    .line 1294
    :cond_0
    :goto_0
    iget v0, p0, Lcn/domob/android/ads/z;->M:I

    if-nez v0, :cond_3

    .line 1295
    iget-boolean v0, p0, Lcn/domob/android/ads/z;->N:Z

    if-eqz v0, :cond_2

    .line 1296
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    const-string/jumbo v1, "this request time out give up show."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 1306
    :goto_1
    return-void

    .line 1290
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/z;->w:Lcn/domob/android/ads/PreRollAdListener;

    if-eqz v0, :cond_0

    .line 1291
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    const-string v1, "Notify Pre-Roll Ad is ready."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 1292
    iget-object v0, p0, Lcn/domob/android/ads/z;->w:Lcn/domob/android/ads/PreRollAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/PreRollAdListener;->onPreRollAdReady()V

    goto :goto_0

    .line 1299
    :cond_2
    iput-boolean v2, p0, Lcn/domob/android/ads/z;->N:Z

    .line 1301
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/z;->D:Lcn/domob/android/ads/VideoIsPlayingListener;

    invoke-interface {v0}, Lcn/domob/android/ads/VideoIsPlayingListener;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1302
    iget-object v0, p0, Lcn/domob/android/ads/z;->y:Lcn/domob/android/ads/SceneInfo;

    iget-object v1, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    invoke-virtual {p0, v0, v1}, Lcn/domob/android/ads/z;->b(Lcn/domob/android/ads/SceneInfo;Lcn/domob/android/ads/z$b;)V

    goto :goto_1

    .line 1304
    :cond_4
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    const-string v1, "Video is playing give up show."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onLeaveApplication(Lcn/domob/android/ads/AdView;)V
    .locals 2
    .param p1, "adView"    # Lcn/domob/android/ads/AdView;

    .prologue
    .line 1352
    iget-object v0, p0, Lcn/domob/android/ads/z;->v:Lcn/domob/android/ads/VideoInterstitialAdListener;

    if-eqz v0, :cond_1

    .line 1353
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    const-string v1, "Notify VideoInterstitial ad leaving application."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 1354
    iget-object v0, p0, Lcn/domob/android/ads/z;->v:Lcn/domob/android/ads/VideoInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/VideoInterstitialAdListener;->onVideoInterstitialAdLeaveApplication()V

    .line 1360
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/z;->w:Lcn/domob/android/ads/PreRollAdListener;

    if-eqz v0, :cond_0

    .line 1356
    sget-object v0, Lcn/domob/android/ads/z;->p:Lcn/domob/android/ads/c/f;

    const-string v1, "Notify PreRoll ad leaving application."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 1357
    iget-object v0, p0, Lcn/domob/android/ads/z;->w:Lcn/domob/android/ads/PreRollAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/PreRollAdListener;->onPreRollAdLeaveApplication()V

    goto :goto_0
.end method

.method protected p()Z
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    invoke-virtual {v0}, Lcn/domob/android/ads/z$b;->c()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/z;->x:Lcn/domob/android/ads/z$b;

    invoke-virtual {v0}, Lcn/domob/android/ads/z$b;->c()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected q()V
    .locals 1

    .prologue
    .line 747
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/z;->a(Z)V

    .line 748
    return-void
.end method

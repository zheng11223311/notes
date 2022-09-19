.class public Lcn/domob/android/ads/AdView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/AdView$a;
    }
.end annotation


# static fields
.field public static final INLINE_SIZE_300X250:Ljava/lang/String; = "300x250"

.field public static final INLINE_SIZE_320X50:Ljava/lang/String; = "320x50"

.field public static final INLINE_SIZE_600X500:Ljava/lang/String; = "600x500"

.field public static final INLINE_SIZE_600X94:Ljava/lang/String; = "600x94"

.field public static final INLINE_SIZE_728X90:Ljava/lang/String; = "728x90"

.field public static final INLINE_SIZE_FLEXIBLE:Ljava/lang/String; = "FLEXIBLE_BANNER"

.field private static p:Lcn/domob/android/ads/c/f; = null

.field private static final r:Ljava/lang/String; = "0x90"

.field private static final s:Ljava/lang/String; = "0x50"


# instance fields
.field protected a:Lcn/domob/android/ads/b;

.field protected b:I

.field protected c:Landroid/content/Context;

.field protected d:Z

.field protected e:Z

.field protected f:Lcn/domob/android/ads/m;

.field protected g:Lcn/domob/android/ads/g;

.field protected h:Ljava/lang/String;

.field protected i:I

.field protected j:I

.field protected k:Z

.field protected l:Z

.field protected m:Z

.field protected n:Lcn/domob/android/ads/AdListener;

.field protected o:Lcn/domob/android/ads/AdEventListener;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/AdView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/AdView;->p:Lcn/domob/android/ads/c/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 107
    const-string v4, "320x50"

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/domob/android/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "placementID"    # Ljava/lang/String;
    .param p4, "size"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/domob/android/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "placementID"    # Ljava/lang/String;
    .param p4, "size"    # Ljava/lang/String;
    .param p5, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, p5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object v3, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    .line 32
    iput-boolean v0, p0, Lcn/domob/android/ads/AdView;->d:Z

    .line 34
    iput-boolean v1, p0, Lcn/domob/android/ads/AdView;->e:Z

    .line 38
    iput v0, p0, Lcn/domob/android/ads/AdView;->i:I

    .line 39
    iput v0, p0, Lcn/domob/android/ads/AdView;->j:I

    .line 40
    iput-boolean v1, p0, Lcn/domob/android/ads/AdView;->k:Z

    .line 41
    iput-boolean v0, p0, Lcn/domob/android/ads/AdView;->l:Z

    .line 42
    iput-boolean v0, p0, Lcn/domob/android/ads/AdView;->m:Z

    .line 45
    iput-boolean v1, p0, Lcn/domob/android/ads/AdView;->q:Z

    .line 113
    sget-object v0, Lcn/domob/android/ads/c/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current SDK version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/domob/android/ads/c/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " built at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/domob/android/ads/c/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iput-object p1, p0, Lcn/domob/android/ads/AdView;->c:Landroid/content/Context;

    .line 117
    new-instance v0, Lcn/domob/android/ads/m;

    invoke-direct {v0, p1}, Lcn/domob/android/ads/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    .line 120
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/m;->setVisibility(I)V

    .line 121
    invoke-virtual {p0, p2, p3}, Lcn/domob/android/ads/AdView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {p1}, Lcn/domob/android/b/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/AdView;->addView(Landroid/view/View;)V

    .line 125
    if-eqz p4, :cond_2

    .line 126
    const-string v0, "FLEXIBLE_BANNER"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-static {p1}, Lcn/domob/android/b/a;->E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "0x90"

    iput-object v0, p0, Lcn/domob/android/ads/AdView;->h:Ljava/lang/String;

    .line 140
    :goto_0
    sget-object v0, Lcn/domob/android/ads/AdView$a;->b:Lcn/domob/android/ads/AdView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/AdView;->b:I

    .line 141
    invoke-static {p0}, Lcn/domob/android/ads/c/e;->a(Landroid/view/View;)V

    .line 142
    return-void

    .line 130
    :cond_0
    const-string v0, "0x50"

    iput-object v0, p0, Lcn/domob/android/ads/AdView;->h:Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_1
    iput-object p4, p0, Lcn/domob/android/ads/AdView;->h:Ljava/lang/String;

    goto :goto_0

    .line 137
    :cond_2
    iput-object v3, p0, Lcn/domob/android/ads/AdView;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "placementID"    # Ljava/lang/String;
    .param p4, "size"    # Ljava/lang/String;
    .param p5, "isRefreshable"    # Z

    .prologue
    const/4 v6, 0x0

    .line 76
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/domob/android/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 78
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    if-eqz v0, :cond_0

    if-nez p5, :cond_0

    .line 79
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0, v6}, Lcn/domob/android/ads/b;->a(Z)V

    .line 80
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0, v6}, Lcn/domob/android/ads/b;->b(Z)V

    .line 82
    :cond_0
    return-void
.end method

.method static synthetic l()Lcn/domob/android/ads/c/f;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcn/domob/android/ads/AdView;->p:Lcn/domob/android/ads/c/f;

    return-object v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    invoke-virtual {p0}, Lcn/domob/android/ads/AdView;->requestRefreshAd()V

    .line 416
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(II)V
    .locals 0

    .prologue
    .line 279
    iput p1, p0, Lcn/domob/android/ads/AdView;->i:I

    .line 280
    iput p2, p0, Lcn/domob/android/ads/AdView;->j:I

    .line 281
    return-void
.end method

.method protected a(Lcn/domob/android/ads/g;)V
    .locals 6

    .prologue
    .line 392
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {p1}, Lcn/domob/android/ads/g;->c()Lcn/domob/android/ads/e;

    move-result-object v1

    const-string/jumbo v2, "s"

    const-string/jumbo v3, "s"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/e;Ljava/lang/String;Ljava/lang/String;J)V

    .line 396
    return-void
.end method

.method protected a(Lcn/domob/android/ads/g;[Landroid/view/animation/AnimationSet;)V
    .locals 3

    .prologue
    .line 311
    sget-object v0, Lcn/domob/android/ads/AdView;->p:Lcn/domob/android/ads/c/f;

    const-string v1, "Switch AD with/without animation."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 312
    iput-object p1, p0, Lcn/domob/android/ads/AdView;->g:Lcn/domob/android/ads/g;

    .line 313
    invoke-virtual {p1}, Lcn/domob/android/ads/g;->b()Landroid/view/View;

    move-result-object v1

    .line 316
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcn/domob/android/ads/AdView$1;

    invoke-direct {v2, p0, p2, v1, p1}, Lcn/domob/android/ads/AdView$1;-><init>(Lcn/domob/android/ads/AdView;[Landroid/view/animation/AnimationSet;Landroid/view/View;Lcn/domob/android/ads/g;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 382
    invoke-virtual {p0, p1}, Lcn/domob/android/ads/AdView;->a(Lcn/domob/android/ads/g;)V

    .line 383
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->D()V

    .line 384
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 584
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcn/domob/android/ads/b;

    invoke-direct {v0, p0, p1, p2}, Lcn/domob/android/ads/b;-><init>(Lcn/domob/android/ads/AdView;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    .line 150
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->c:Landroid/content/Context;

    invoke-static {v0, p0}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;Landroid/widget/RelativeLayout;)Z

    move-result v0

    return v0
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 224
    :try_start_0
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 225
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 229
    :goto_0
    return v0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    sget-object v1, Lcn/domob/android/ads/AdView;->p:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    .line 229
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->c:Landroid/content/Context;

    return-object v0
.end method

.method protected b(Lcn/domob/android/ads/g;)V
    .locals 0

    .prologue
    .line 404
    invoke-virtual {p1}, Lcn/domob/android/ads/g;->d()V

    .line 405
    return-void
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcn/domob/android/ads/AdView;->d:Z

    return v0
.end method

.method public clean()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 540
    :try_start_0
    iget-object v1, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v1}, Lcn/domob/android/ads/b;->c()V

    .line 541
    sget-object v1, Lcn/domob/android/ads/AdView;->p:Lcn/domob/android/ads/c/f;

    const-string v2, "Clean AdView."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    invoke-virtual {v1}, Lcn/domob/android/ads/m;->getChildCount()I

    move-result v2

    .line 543
    sget-object v1, Lcn/domob/android/ads/AdView;->p:Lcn/domob/android/ads/c/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WebView to DESTROY."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    move v1, v0

    .line 544
    :goto_0
    if-ge v1, v2, :cond_2

    .line 546
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/m;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/domob/android/ads/h;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/m;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/h;

    .line 548
    if-eqz v0, :cond_1

    .line 549
    iget-object v3, p0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    invoke-virtual {v3, v0}, Lcn/domob/android/ads/m;->removeView(Landroid/view/View;)V

    .line 550
    invoke-virtual {v0}, Lcn/domob/android/ads/h;->destroy()V

    .line 544
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 554
    :cond_1
    sget-object v0, Lcn/domob/android/ads/AdView;->p:Lcn/domob/android/ads/c/f;

    const-string v3, "WebView has already been destroyed."

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 558
    :catch_0
    move-exception v0

    .line 559
    sget-object v1, Lcn/domob/android/ads/AdView;->p:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    .line 561
    :cond_2
    return-void
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcn/domob/android/ads/AdView;->e:Z

    return v0
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcn/domob/android/ads/AdView;->b:I

    return v0
.end method

.method protected f()Lcn/domob/android/ads/AdListener;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->n:Lcn/domob/android/ads/AdListener;

    return-object v0
.end method

.method protected g()Lcn/domob/android/ads/AdEventListener;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->o:Lcn/domob/android/ads/AdEventListener;

    return-object v0
.end method

.method protected h()Lcn/domob/android/ads/g;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->g:Lcn/domob/android/ads/g;

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->h:Ljava/lang/String;

    return-object v0
.end method

.method protected j()Z
    .locals 3

    .prologue
    .line 286
    const/4 v2, 0x1

    .line 287
    invoke-virtual {p0}, Lcn/domob/android/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 288
    :goto_0
    if-eqz v1, :cond_2

    .line 290
    instance-of v0, v1, Landroid/view/View;

    if-nez v0, :cond_0

    move v0, v2

    .line 299
    :goto_1
    return v0

    :cond_0
    move-object v0, v1

    .line 293
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    const/4 v0, 0x0

    .line 295
    goto :goto_1

    .line 297
    :cond_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method protected k()V
    .locals 0

    .prologue
    .line 400
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 525
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b;->a(Z)V

    .line 527
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b;->c(Z)V

    .line 528
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/b;->g(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0, p2}, Lcn/domob/android/ads/b;->h(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->G()V

    .line 533
    :goto_0
    return-void

    .line 532
    :cond_0
    sget-object v0, Lcn/domob/android/ads/AdView;->p:Lcn/domob/android/ads/c/f;

    const-string v1, "mAdController is not initialized!"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 182
    sget-object v0, Lcn/domob/android/ads/AdView;->p:Lcn/domob/android/ads/c/f;

    const-string v1, "onAttachedToWindow"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcn/domob/android/ads/AdView;->p:Lcn/domob/android/ads/c/f;

    const-string v1, "Start to load AD."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lcn/domob/android/ads/AdView;->m()V

    .line 185
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 190
    :try_start_0
    sget-object v1, Lcn/domob/android/ads/AdView;->p:Lcn/domob/android/ads/c/f;

    const-string v2, "onDetachedFromWindow"

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v1}, Lcn/domob/android/ads/b;->c()V

    .line 192
    iget-boolean v1, p0, Lcn/domob/android/ads/AdView;->q:Z

    if-eqz v1, :cond_2

    .line 193
    sget-object v1, Lcn/domob/android/ads/AdView;->p:Lcn/domob/android/ads/c/f;

    const-string v2, "Clean AdView."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    invoke-virtual {v1}, Lcn/domob/android/ads/m;->getChildCount()I

    move-result v2

    .line 195
    sget-object v1, Lcn/domob/android/ads/AdView;->p:Lcn/domob/android/ads/c/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WebView to DESTROY."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    move v1, v0

    .line 196
    :goto_0
    if-ge v1, v2, :cond_3

    .line 198
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/m;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/domob/android/ads/h;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/m;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/h;

    .line 200
    if-eqz v0, :cond_1

    .line 201
    iget-object v3, p0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    invoke-virtual {v3, v0}, Lcn/domob/android/ads/m;->removeView(Landroid/view/View;)V

    .line 202
    invoke-virtual {v0}, Lcn/domob/android/ads/h;->destroy()V

    .line 196
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 206
    :cond_1
    sget-object v0, Lcn/domob/android/ads/AdView;->p:Lcn/domob/android/ads/c/f;

    const-string v3, "WebView has already been destroyed."

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    :try_start_1
    sget-object v1, Lcn/domob/android/ads/AdView;->p:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 220
    :goto_2
    return-void

    .line 211
    :cond_2
    :try_start_2
    sget-object v0, Lcn/domob/android/ads/AdView;->p:Lcn/domob/android/ads/c/f;

    const-string v1, "ad detached from window, but do not clean flipper"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    :cond_3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    throw v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 155
    sget-object v0, Lcn/domob/android/ads/AdView;->p:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 156
    iput-boolean p1, p0, Lcn/domob/android/ads/AdView;->e:Z

    .line 158
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    if-eqz v0, :cond_0

    .line 159
    iget-boolean v0, p0, Lcn/domob/android/ads/AdView;->e:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/domob/android/ads/AdView;->d:Z

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->f()V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->k()V

    goto :goto_0

    .line 165
    :cond_2
    iget-boolean v0, p0, Lcn/domob/android/ads/AdView;->e:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/domob/android/ads/AdView;->d:Z

    if-nez v0, :cond_0

    .line 166
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->d()V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 5
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 174
    sget-object v3, Lcn/domob/android/ads/AdView;->p:Lcn/domob/android/ads/c/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWindowVisibilityChanged:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 175
    if-nez p1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcn/domob/android/ads/AdView;->d:Z

    .line 176
    return-void

    :cond_0
    move v0, v2

    .line 174
    goto :goto_0

    :cond_1
    move v1, v2

    .line 175
    goto :goto_1
.end method

.method public orientationChanged()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/AdView;->f:Lcn/domob/android/ads/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/AdView;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/AdView;->h:Ljava/lang/String;

    const-string v1, "0x50"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/AdView;->h:Ljava/lang/String;

    const-string v1, "0x90"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->c:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->u(Landroid/content/Context;)I

    move-result v0

    .line 574
    iget v1, p0, Lcn/domob/android/ads/AdView;->i:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcn/domob/android/ads/AdView;->i:I

    if-eq v1, v0, :cond_1

    .line 575
    invoke-virtual {p0}, Lcn/domob/android/ads/AdView;->onDetachedFromWindow()V

    .line 576
    iput v0, p0, Lcn/domob/android/ads/AdView;->i:I

    .line 577
    invoke-virtual {p0}, Lcn/domob/android/ads/AdView;->requestRefreshAd()V

    .line 580
    :cond_1
    return-void
.end method

.method public requestAdForAggregationPlatform()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 511
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b;->a(Z)V

    .line 513
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b;->b(Z)V

    .line 516
    :cond_0
    invoke-virtual {p0}, Lcn/domob/android/ads/AdView;->requestRefreshAd()V

    .line 517
    return-void
.end method

.method public requestRefreshAd()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->C()V

    .line 505
    :cond_0
    return-void
.end method

.method public setAdEventListener(Lcn/domob/android/ads/AdEventListener;)V
    .locals 0
    .param p1, "eventListener"    # Lcn/domob/android/ads/AdEventListener;

    .prologue
    .line 493
    iput-object p1, p0, Lcn/domob/android/ads/AdView;->o:Lcn/domob/android/ads/AdEventListener;

    .line 494
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 433
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/b;->b(Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method public setOnAdListener(Lcn/domob/android/ads/AdListener;)V
    .locals 0
    .param p1, "adListener"    # Lcn/domob/android/ads/AdListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 483
    iput-object p1, p0, Lcn/domob/android/ads/AdView;->n:Lcn/domob/android/ads/AdListener;

    .line 484
    return-void
.end method

.method public setRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .prologue
    .line 472
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/b;->a(Z)V

    .line 475
    :cond_0
    return-void
.end method

.method public setSpots(Ljava/lang/String;)V
    .locals 1
    .param p1, "spot"    # Ljava/lang/String;

    .prologue
    .line 422
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/b;->f(Ljava/lang/String;)V

    .line 425
    :cond_0
    return-void
.end method

.method public setUserBirthdayStr(Ljava/lang/String;)V
    .locals 1
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 453
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/b;->e(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .locals 1
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 443
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/b;->d(Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public setUserPostcode(Ljava/lang/String;)V
    .locals 1
    .param p1, "pc"    # Ljava/lang/String;

    .prologue
    .line 463
    iget-object v0, p0, Lcn/domob/android/ads/AdView;->a:Lcn/domob/android/ads/b;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/b;->c(Ljava/lang/String;)V

    .line 464
    return-void
.end method

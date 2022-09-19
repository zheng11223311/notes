.class public Lcn/domob/android/ads/a/d;
.super Lcn/domob/android/ads/g;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/a/a$a;
.implements Lcn/domob/android/ads/a/e$a;
.implements Lcn/domob/android/ads/n$a;


# static fields
.field private static final A:Ljava/lang/String; = "rt"

.field private static final B:Ljava/lang/String; = "pattern"

.field private static final C:Ljava/lang/String; = "url"

.field private static final D:Ljava/lang/String; = "clk"

.field private static final E:Ljava/lang/String; = "imp"

.field private static final F:Ljava/lang/String; = "event"

.field private static final G:Ljava/lang/String; = "visit"

.field private static final H:Ljava/lang/String; = "url"

.field private static final I:Ljava/lang/String; = "phase"

.field private static final J:Ljava/lang/String; = "wtai://wp/mc;"

.field private static final K:Ljava/lang/String; = "banner"

.field private static final L:Ljava/lang/String; = "expandable"

.field private static final M:Ljava/lang/String; = "tc"

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String; = "cache"

.field public static final j:Ljava/lang/String; = "groupID"

.field public static final k:Ljava/lang/String; = "resourceID"

.field public static final l:Ljava/lang/String; = "downloadUrl"

.field private static m:Lcn/domob/android/ads/c/f; = null

.field private static final s:Ljava/lang/String; = "report"

.field private static final t:Ljava/lang/String; = "custom"

.field private static final u:Ljava/lang/String; = "expand"

.field private static final v:Ljava/lang/String; = "close"

.field private static final w:Ljava/lang/String; = "form"

.field private static final x:Ljava/lang/String; = "fetch"

.field private static final y:Ljava/lang/String; = "url"

.field private static final z:Ljava/lang/String; = "name"


# instance fields
.field protected g:Landroid/os/Handler;

.field private n:Lcn/domob/android/ads/a/b;

.field private o:Lcn/domob/android/ads/t$a;

.field private p:Z

.field private q:Z

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/a/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    .line 64
    sget-object v0, Lcn/domob/android/ads/l;->a:Ljava/lang/String;

    sput-object v0, Lcn/domob/android/ads/a/d;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/android/ads/f;Lcn/domob/android/ads/e;Lcn/domob/android/ads/b;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/g;-><init>(Landroid/content/Context;Lcn/domob/android/ads/f;Lcn/domob/android/ads/e;Lcn/domob/android/ads/b;)V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->g:Landroid/os/Handler;

    .line 60
    iput-boolean v2, p0, Lcn/domob/android/ads/a/d;->p:Z

    .line 61
    iput-boolean v2, p0, Lcn/domob/android/ads/a/d;->q:Z

    .line 62
    iput-boolean v2, p0, Lcn/domob/android/ads/a/d;->r:Z

    .line 94
    sget-object v0, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    const-string v1, "New HTMLAdAdapter instance."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/a/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8

    .prologue
    .line 638
    if-eqz p1, :cond_4

    .line 639
    const-string/jumbo v0, "url"

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/a/d;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 640
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/domob/android/ads/a/d;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-object p1

    .line 643
    :cond_1
    const-string v0, "auto_run"

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/a/d;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 645
    :goto_1
    const-string v1, "name"

    invoke-direct {p0, p1, v1}, Lcn/domob/android/ads/a/d;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 646
    const-string v1, "pkg"

    invoke-direct {p0, p1, v1}, Lcn/domob/android/ads/a/d;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 647
    const-string/jumbo v1, "vc"

    invoke-direct {p0, p1, v1}, Lcn/domob/android/ads/a/d;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 649
    :goto_2
    const-string/jumbo v5, "vn"

    invoke-direct {p0, p1, v5}, Lcn/domob/android/ads/a/d;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 651
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 653
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 654
    const-string/jumbo v7, "url"

    invoke-virtual {v2, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 655
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 658
    const-string/jumbo v7, "url"

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    const-string v2, "auto_run"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    const-string v0, "name"

    invoke-virtual {v6, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    const-string v0, "pkg"

    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string/jumbo v0, "vc"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-string/jumbo v0, "vn"

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    invoke-static {v6}, Lcn/domob/android/ads/c/e;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/domob/android/ads/a/d;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    sget-object v1, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 667
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto/16 :goto_0

    .line 643
    :cond_2
    const-string v0, "auto_run"

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/a/d;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_1

    .line 647
    :cond_3
    const-string/jumbo v1, "vc"

    invoke-direct {p0, p1, v1}, Lcn/domob/android/ads/a/d;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_2

    .line 669
    :cond_4
    const/4 p1, 0x0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcn/domob/android/ads/a/d;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcn/domob/android/ads/a/d;->f:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcn/domob/android/ads/a/d;Lcn/domob/android/ads/a/b;)Lcn/domob/android/ads/a/b;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcn/domob/android/ads/a/d;->n:Lcn/domob/android/ads/a/b;

    return-object p1
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 628
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 634
    :goto_0
    return-object v0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    sget-object v1, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    .line 634
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcn/domob/android/ads/a/b;Lcn/domob/android/ads/e$b$a;Z)V
    .locals 6

    .prologue
    .line 229
    invoke-virtual {p2}, Lcn/domob/android/ads/e$b$a;->h()I

    move-result v0

    .line 230
    if-gez v0, :cond_3

    .line 231
    const/4 v0, 0x5

    .line 235
    :cond_0
    :goto_0
    sget-object v1, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expandable timeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1, v0}, Lcn/domob/android/ads/a/b;->a(I)V

    .line 239
    if-eqz p3, :cond_1

    .line 240
    new-instance v0, Lcn/domob/android/ads/a/d$2;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/a/d$2;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {p1, v0}, Lcn/domob/android/ads/a/b;->a(Lcn/domob/android/ads/h$b;)V

    .line 270
    :cond_1
    new-instance v0, Lcn/domob/android/ads/a/d$3;

    invoke-direct {v0, p0, p1}, Lcn/domob/android/ads/a/d$3;-><init>(Lcn/domob/android/ads/a/d;Lcn/domob/android/ads/a/b;)V

    invoke-virtual {p1, v0}, Lcn/domob/android/ads/a/b;->a(Lcn/domob/android/ads/h$a;)V

    .line 289
    invoke-virtual {p2}, Lcn/domob/android/ads/e$b$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {v0}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 291
    sget-object v0, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    const-string v1, "Content type of expandable is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 292
    sget-object v0, Lcn/domob/android/ads/AdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/AdManager$ErrorCode;

    const-string v1, "Content type of expandable is null or empty."

    invoke-virtual {p0, v0, v1}, Lcn/domob/android/ads/a/d;->a(Lcn/domob/android/ads/AdManager$ErrorCode;Ljava/lang/String;)V

    .line 308
    :cond_2
    :goto_1
    return-void

    .line 232
    :cond_3
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v1}, Lcn/domob/android/ads/b;->y()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/b;->y()I

    move-result v0

    goto :goto_0

    .line 295
    :cond_4
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 296
    invoke-virtual {p2}, Lcn/domob/android/ads/e$b$a;->c()Ljava/lang/String;

    move-result-object v0

    .line 297
    sget-object v1, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get an WebView instance for EXPANDABLE and load with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 298
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcn/domob/android/ads/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 299
    :cond_5
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    invoke-virtual {p2}, Lcn/domob/android/ads/e$b$a;->d()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-virtual {p2}, Lcn/domob/android/ads/e$b$a;->e()Ljava/lang/String;

    move-result-object v1

    .line 302
    sget-object v2, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    const-string v3, "Get an WebView instance for EXPANDABLE and load data = [%s] with base URL=[%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1, v0, v1}, Lcn/domob/android/ads/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcn/domob/android/ads/a/d;Lcn/domob/android/ads/AdManager$ErrorCode;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/a/d;->a(Lcn/domob/android/ads/AdManager$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/a/d;Lcn/domob/android/ads/a/b;Lcn/domob/android/ads/e$b$a;Z)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/ads/a/d;->a(Lcn/domob/android/ads/a/b;Lcn/domob/android/ads/e$b$a;Z)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/a/d;Lcn/domob/android/ads/e$b$a;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcn/domob/android/ads/a/d;->a(Lcn/domob/android/ads/e$b$a;)V

    return-void
.end method

.method private a(Lcn/domob/android/ads/e$b$a;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, -0x1

    .line 314
    sget-object v0, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    const-string v2, "Show expandable part of current creative."

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->n:Lcn/domob/android/ads/a/b;

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {p1}, Lcn/domob/android/ads/e$b$a;->k()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 319
    invoke-virtual {p1}, Lcn/domob/android/ads/e$b$a;->k()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 321
    :goto_0
    invoke-virtual {p1}, Lcn/domob/android/ads/e$b$a;->l()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 322
    invoke-virtual {p1}, Lcn/domob/android/ads/e$b$a;->l()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 324
    :cond_0
    sget-object v2, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    const-string v3, "Expandable size is: %d * %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 326
    new-instance v2, Lcn/domob/android/ads/t$a;

    iget-object v3, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcn/domob/android/ads/t$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0, v1}, Lcn/domob/android/ads/t$a;->a(II)Lcn/domob/android/ads/t$a;

    move-result-object v0

    invoke-virtual {v0, v6, v6, v6, v7}, Lcn/domob/android/ads/t$a;->a(ZZZZ)Lcn/domob/android/ads/t$a;

    move-result-object v0

    invoke-virtual {p1}, Lcn/domob/android/ads/e$b$a;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/t$a;->a(Z)Lcn/domob/android/ads/t$a;

    move-result-object v0

    new-instance v1, Lcn/domob/android/ads/a/d$4;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$4;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/t$a;->a(Lcn/domob/android/ads/t$c;)Lcn/domob/android/ads/t$a;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->o:Lcn/domob/android/ads/t$a;

    .line 340
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->o:Lcn/domob/android/ads/t$a;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->n:Lcn/domob/android/ads/a/b;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/t$a;->a(Landroid/view/View;)V

    .line 342
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->n:Lcn/domob/android/ads/a/b;

    sget-object v1, Lcn/domob/android/ads/l;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/a/b;->loadUrl(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcn/domob/android/ads/a/d;->j()V

    .line 348
    :goto_1
    return-void

    .line 346
    :cond_1
    sget-object v0, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    const-string v1, "Expandable part is null."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcn/domob/android/ads/n;)V
    .locals 6

    .prologue
    .line 903
    new-instance v0, Lcn/domob/android/ads/u;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/a/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v2}, Lcn/domob/android/ads/b;->n()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 904
    new-instance v4, Lcn/domob/android/ads/u$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/u$c;-><init>(Lcn/domob/android/ads/u;)V

    .line 905
    invoke-virtual {p2}, Lcn/domob/android/ads/n;->a()Lcn/domob/android/ads/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/u$c;->a:Ljava/lang/String;

    .line 906
    invoke-virtual {p2}, Lcn/domob/android/ads/n;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/u$c;->d:Ljava/lang/String;

    .line 907
    invoke-virtual {p2}, Lcn/domob/android/ads/n;->d()I

    move-result v1

    iput v1, v4, Lcn/domob/android/ads/u$c;->e:I

    .line 908
    invoke-virtual {p2}, Lcn/domob/android/ads/n;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/u$c;->f:Ljava/lang/String;

    .line 909
    invoke-virtual {p2}, Lcn/domob/android/ads/n;->a()Lcn/domob/android/ads/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->p()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/u$h;->b:Lcn/domob/android/ads/u$h;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/u;->a(Ljava/lang/String;Lcn/domob/android/ads/u$h;Ljava/lang/String;Lcn/domob/android/ads/u$c;Ljava/util/HashMap;)V

    .line 911
    return-void
.end method

.method static synthetic b(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/f;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Lcn/domob/android/ads/f;

    return-object v0
.end method

.method private b(Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 679
    const-string/jumbo v0, "tc"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    :cond_0
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->u()V

    .line 683
    :cond_1
    return-void
.end method

.method static synthetic b(Lcn/domob/android/ads/a/d;Lcn/domob/android/ads/AdManager$ErrorCode;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/a/d;->a(Lcn/domob/android/ads/AdManager$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 779
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 783
    new-instance v0, Lcn/domob/android/ads/u;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/a/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v2}, Lcn/domob/android/ads/b;->n()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 784
    new-instance v4, Lcn/domob/android/ads/u$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/u$c;-><init>(Lcn/domob/android/ads/u;)V

    .line 785
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->c:Lcn/domob/android/ads/e;

    invoke-virtual {v1}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/u$c;->a:Ljava/lang/String;

    .line 786
    if-eqz p2, :cond_0

    .line 787
    iput-object p2, v4, Lcn/domob/android/ads/u$c;->h:Ljava/lang/String;

    .line 790
    :cond_0
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->c:Lcn/domob/android/ads/e;

    invoke-virtual {v1}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->p()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/u$h;->c:Lcn/domob/android/ads/u$h;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/u;->a(Ljava/lang/String;Lcn/domob/android/ads/u$h;Ljava/lang/String;Lcn/domob/android/ads/u$c;Ljava/util/HashMap;)V

    .line 792
    return-void
.end method

.method static synthetic c(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/f;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Lcn/domob/android/ads/f;

    return-object v0
.end method

.method static synthetic c(Lcn/domob/android/ads/a/d;Lcn/domob/android/ads/AdManager$ErrorCode;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/a/d;->a(Lcn/domob/android/ads/AdManager$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 838
    new-instance v0, Lcn/domob/android/ads/u;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/a/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v2}, Lcn/domob/android/ads/b;->n()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 839
    new-instance v4, Lcn/domob/android/ads/u$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/u$c;-><init>(Lcn/domob/android/ads/u;)V

    .line 840
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->c:Lcn/domob/android/ads/e;

    invoke-virtual {v1}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/u$c;->a:Ljava/lang/String;

    .line 841
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->c:Lcn/domob/android/ads/e;

    invoke-virtual {v1}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->p()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/u$h;->h:Lcn/domob/android/ads/u$h;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/u;->a(Ljava/lang/String;Lcn/domob/android/ads/u$h;Ljava/lang/String;Lcn/domob/android/ads/u$c;Ljava/util/HashMap;)V

    .line 843
    return-void
.end method

.method static synthetic d(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/e;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->c:Lcn/domob/android/ads/e;

    return-object v0
.end method

.method static synthetic d(Lcn/domob/android/ads/a/d;Lcn/domob/android/ads/AdManager$ErrorCode;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/a/d;->a(Lcn/domob/android/ads/AdManager$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcn/domob/android/ads/a/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/a/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->n:Lcn/domob/android/ads/a/b;

    return-object v0
.end method

.method static synthetic g(Lcn/domob/android/ads/a/d;)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcn/domob/android/ads/a/d;->g()V

    return-void
.end method

.method static synthetic h(Lcn/domob/android/ads/a/d;)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcn/domob/android/ads/a/d;->g()V

    return-void
.end method

.method static synthetic i(Lcn/domob/android/ads/a/d;)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcn/domob/android/ads/a/d;->g()V

    return-void
.end method

.method static synthetic j(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/e;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->c:Lcn/domob/android/ads/e;

    return-object v0
.end method

.method static synthetic k(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/e;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->c:Lcn/domob/android/ads/e;

    return-object v0
.end method

.method static synthetic l(Lcn/domob/android/ads/a/d;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->t()V

    return-void
.end method

.method static synthetic m(Lcn/domob/android/ads/a/d;)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcn/domob/android/ads/a/d;->k()V

    return-void
.end method

.method static synthetic n(Lcn/domob/android/ads/a/d;)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcn/domob/android/ads/a/d;->j()V

    return-void
.end method

.method static synthetic o(Lcn/domob/android/ads/a/d;)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcn/domob/android/ads/a/d;->k()V

    return-void
.end method

.method static synthetic p(Lcn/domob/android/ads/a/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic r()Lcn/domob/android/ads/c/f;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    return-object v0
.end method

.method private s()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->c:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->g:Landroid/os/Handler;

    new-instance v2, Lcn/domob/android/ads/a/d$1;

    invoke-direct {v2, p0, v0}, Lcn/domob/android/ads/a/d$1;-><init>(Lcn/domob/android/ads/a/d;Lcn/domob/android/ads/e$b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    return-void
.end method

.method private t()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->o:Lcn/domob/android/ads/t$a;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->o:Lcn/domob/android/ads/t$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/t$a;->a()V

    .line 354
    :cond_0
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->d:Lcn/domob/android/ads/b;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->c:Lcn/domob/android/ads/e;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/e;)V

    .line 675
    invoke-virtual {p0}, Lcn/domob/android/ads/a/d;->h()V

    .line 676
    return-void
.end method

.method private v()Z
    .locals 1

    .prologue
    .line 799
    iget-boolean v0, p0, Lcn/domob/android/ads/a/d;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/android/ads/a/d;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/android/ads/a/d;->q:Z

    if-nez v0, :cond_0

    .line 800
    const/4 v0, 0x1

    .line 803
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private w()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 810
    iput-boolean v0, p0, Lcn/domob/android/ads/a/d;->p:Z

    .line 811
    iput-boolean v0, p0, Lcn/domob/android/ads/a/d;->q:Z

    .line 812
    iput-boolean v0, p0, Lcn/domob/android/ads/a/d;->r:Z

    .line 813
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 914
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 915
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-object v0

    .line 918
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 919
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 920
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 922
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcn/domob/android/ads/a/d;->h:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 923
    const-string/jumbo v2, "rgid"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 924
    const-string/jumbo v3, "rid"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 925
    const-string/jumbo v4, "url"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 926
    const-string v4, "groupID"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    const-string/jumbo v2, "resourceID"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    const-string v2, "downloadUrl"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 100
    sget-object v0, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    const-string v1, "Start to load HTML adapter."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->s()V

    .line 102
    return-void
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 939
    return-void
.end method

.method public a(Lcn/domob/android/ads/n;)V
    .locals 1

    .prologue
    .line 848
    const-string v0, "download_finish"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/d;->a(Ljava/lang/String;Lcn/domob/android/ads/n;)V

    .line 849
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 3

    .prologue
    .line 726
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->c:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/e$b;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    const-string v0, "lp_url"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 731
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 732
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 733
    invoke-static {v1}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 748
    :cond_1
    :goto_0
    return-void

    .line 738
    :cond_2
    sget-object v2, Lcn/domob/android/ads/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "inapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    const-string v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 742
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcn/domob/android/ads/a/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 744
    :catch_0
    move-exception v0

    .line 745
    sget-object v1, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    const-string v2, "Error while parsing landingpage URL."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 746
    sget-object v1, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 754
    sget-object v0, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    const-string v1, "LandingPage \u5185\u4e0b\u8f7d\uff0c\u5730\u5740\u4e3a%s\uff0cinfoURL\u4e3a%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 758
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 761
    invoke-static {v0}, Lcn/domob/android/ads/c/e;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 762
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    :cond_0
    invoke-static {v0}, Lcn/domob/android/ads/c/e;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/domob/android/ads/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://download?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 772
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcn/domob/android/ads/a/d;->b(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    .line 776
    :goto_1
    return-void

    .line 769
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/domob/android/ads/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://download?url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 773
    :catch_0
    move-exception v0

    .line 774
    sget-object v0, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    const-string/jumbo v1, "\u89e3\u6790LandingPage\u4e2d\u4e0b\u8f7d\u51fa\u73b0\u9519\u8bef\uff0c\u5730\u5740\u4e3a%s\uff0cinfoURL\u4e3a%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljava/util/HashMap;Ljava/lang/String;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 943
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Lcn/domob/android/ads/b;

    iget-object v2, p0, Lcn/domob/android/ads/a/d;->c:Lcn/domob/android/ads/e;

    const-string/jumbo v5, "s"

    const/4 v8, 0x0

    iget-object v9, p0, Lcn/domob/android/ads/a/d;->f:Landroid/view/View;

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p3

    invoke-virtual/range {v1 .. v9}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/e;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/view/View;)V

    .line 945
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 366
    :try_start_0
    sget-object v1, Lcn/domob/android/ads/a/d;->h:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 368
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 369
    sget-object v2, Lcn/domob/android/ads/a/d;->h:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 370
    sget-object v1, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    const-string v2, "Scheme  action."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0, p1, p2, p3}, Lcn/domob/android/ads/a/d;->b(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result v0

    .line 435
    :goto_0
    return v0

    .line 373
    :cond_0
    const-string v1, "http"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "voicemail:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "sms:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mailto:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "geo:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "wtai://wp/mc;"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 377
    :cond_1
    sget-object v1, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    const-string v2, "Handle other phone intents."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 378
    if-eqz p3, :cond_2

    .line 379
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->u()V

    .line 383
    :cond_2
    const-string v1, "http"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 385
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/domob/android/ads/c/e;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 386
    if-nez v1, :cond_3

    .line 387
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 390
    :cond_3
    invoke-virtual {p0}, Lcn/domob/android/ads/a/d;->l()V

    .line 391
    iget-object v2, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 435
    :cond_4
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 393
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 394
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 396
    const-string/jumbo v2, "wtai://wp/mc;"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 397
    sget-object v1, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    const-string v2, "Create intent for: wtai://wp/mc;"

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 398
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "wtai://wp/mc;"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 403
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 404
    invoke-virtual {p0}, Lcn/domob/android/ads/a/d;->l()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 405
    :catch_0
    move-exception v1

    .line 406
    :try_start_2
    sget-object v1, Lcn/domob/android/ads/c/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not handle intent with URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Is this intent unsupported on your phone?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 429
    :catch_1
    move-exception v1

    .line 430
    sget-object v2, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    const-string v3, "Exception in click."

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 431
    sget-object v2, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 412
    :cond_7
    :try_start_3
    sget-object v1, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    const-string v2, "Handle unknown intents."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lcn/domob/android/ads/a/d;->l()V

    .line 415
    if-eqz p3, :cond_8

    .line 416
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->u()V

    .line 419
    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 420
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 422
    :try_start_4
    iget-object v2, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 423
    invoke-virtual {p0}, Lcn/domob/android/ads/a/d;->l()V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 424
    :catch_2
    move-exception v1

    .line 425
    :try_start_5
    sget-object v1, Lcn/domob/android/ads/c/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not handle intent with URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Is this intent unsupported on your phone?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1
.end method

.method public a_()V
    .locals 1

    .prologue
    .line 818
    const-string v0, "la_success"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/d;->c(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p0}, Lcn/domob/android/ads/a/d;->l()V

    .line 820
    return-void
.end method

.method public a_(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 830
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcn/domob/android/ads/a/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    const-string v0, "la_failsafe_success"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/d;->c(Ljava/lang/String;)V

    .line 835
    :goto_0
    return-void

    .line 833
    :cond_0
    const-string v0, "la_failsafe_failed"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/d;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcn/domob/android/ads/n;)V
    .locals 1

    .prologue
    .line 853
    const-string v0, "download_failed"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/d;->a(Ljava/lang/String;Lcn/domob/android/ads/n;)V

    .line 854
    return-void
.end method

.method protected b(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 447
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 451
    const-string v1, "inapp"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 452
    if-eqz p3, :cond_0

    .line 453
    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/d;->b(Landroid/net/Uri;)V

    .line 456
    :cond_0
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 458
    sget-object v0, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Open landing page with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Lcn/domob/android/ads/a/d;->i()Landroid/content/Context;

    move-result-object v0

    .line 460
    if-eqz v0, :cond_1

    .line 461
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->w()V

    .line 462
    new-instance v2, Lcn/domob/android/ads/a/e;

    invoke-direct {v2, v0, v1, p2, p0}, Lcn/domob/android/ads/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a/e$a;)V

    invoke-virtual {v2}, Lcn/domob/android/ads/a/e;->a()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 463
    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/a/d$5;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$5;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 621
    :cond_1
    :goto_0
    invoke-virtual {p0, v9}, Lcn/domob/android/ads/a/d;->a(Ljava/lang/String;)V

    .line 622
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 470
    :cond_2
    const-string v1, "download"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 471
    if-eqz p3, :cond_3

    .line 472
    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/d;->b(Landroid/net/Uri;)V

    .line 474
    :cond_3
    if-eqz v0, :cond_1

    .line 475
    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/d;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 476
    new-instance v0, Lcn/domob/android/ads/n;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    iget-object v3, p0, Lcn/domob/android/ads/a/d;->c:Lcn/domob/android/ads/e;

    iget-object v4, p0, Lcn/domob/android/ads/a/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v4}, Lcn/domob/android/ads/b;->n()Ljava/lang/String;

    move-result-object v5

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcn/domob/android/ads/n;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcn/domob/android/ads/e;Lcn/domob/android/ads/n$a;Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0}, Lcn/domob/android/ads/n;->i()V

    goto :goto_0

    .line 480
    :cond_4
    const-string v1, "launch"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 481
    if-eqz p3, :cond_5

    .line 482
    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/d;->b(Landroid/net/Uri;)V

    .line 485
    :cond_5
    new-instance v1, Lcn/domob/android/ads/a/a;

    iget-object v2, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p0}, Lcn/domob/android/ads/a/a;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcn/domob/android/ads/a/a$a;)V

    invoke-virtual {v1}, Lcn/domob/android/ads/a/a;->a()V

    goto :goto_0

    .line 486
    :cond_6
    const-string v1, "expand"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 487
    if-eqz p3, :cond_7

    .line 488
    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/d;->b(Landroid/net/Uri;)V

    .line 491
    :cond_7
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->c:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/e$b;->m()Lcn/domob/android/ads/e$b$a;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 492
    sget-object v0, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expandable part url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/a/d;->c:Lcn/domob/android/ads/e;

    invoke-virtual {v2}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/e$b;->m()Lcn/domob/android/ads/e$b$a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/e$b$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 494
    sget-object v0, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expandable part base and content:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/a/d;->c:Lcn/domob/android/ads/e;

    invoke-virtual {v2}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/e$b;->m()Lcn/domob/android/ads/e$b$a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/e$b$a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " || "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/a/d;->c:Lcn/domob/android/ads/e;

    invoke-virtual {v2}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/e$b;->m()Lcn/domob/android/ads/e$b$a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/e$b$a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->c:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/e$b;->m()Lcn/domob/android/ads/e$b$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/d;->a(Lcn/domob/android/ads/e$b$a;)V

    goto/16 :goto_0

    .line 500
    :cond_8
    sget-object v0, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    const-string/jumbo v1, "\u5e7f\u544a\u5e94\u7b54\u65e0Expandable\u90e8\u5206\uff0c\u65e0\u6cd5\u8fdb\u884cexpand action\u3002"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 501
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 503
    :cond_9
    const-string/jumbo v1, "report"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 507
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 508
    if-eqz v1, :cond_a

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    .line 509
    :cond_a
    sget-object v0, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    const-string v1, "There is no report type."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 510
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 512
    :cond_b
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 513
    const-string v2, "imp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 514
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 515
    invoke-static {v0}, Lcn/domob/android/ads/c/e;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 516
    const-string/jumbo v4, "s"

    .line 517
    const-string v0, "phase"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 518
    const-string v0, "phase"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 519
    const-string v1, "phase"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    .line 521
    :cond_c
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Lcn/domob/android/ads/b;

    iget-object v2, p0, Lcn/domob/android/ads/a/d;->c:Lcn/domob/android/ads/e;

    const-string v5, "ac"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/e;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 523
    :cond_d
    const-string v2, "event"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 524
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 525
    invoke-static {v0}, Lcn/domob/android/ads/c/e;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 526
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->c:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/e$b;->p()Ljava/lang/String;

    move-result-object v1

    .line 527
    const-string/jumbo v0, "url"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 528
    const-string/jumbo v0, "url"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 529
    const-string/jumbo v1, "url"

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 532
    :cond_e
    new-instance v0, Lcn/domob/android/ads/u;

    iget-object v2, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    iget-object v3, p0, Lcn/domob/android/ads/a/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v3}, Lcn/domob/android/ads/b;->n()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcn/domob/android/ads/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 533
    new-instance v4, Lcn/domob/android/ads/u$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/u$c;-><init>(Lcn/domob/android/ads/u;)V

    .line 534
    iget-object v2, p0, Lcn/domob/android/ads/a/d;->c:Lcn/domob/android/ads/e;

    invoke-virtual {v2}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/e$b;->q()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcn/domob/android/ads/u$c;->a:Ljava/lang/String;

    .line 535
    const-string v2, "ac"

    iput-object v2, v4, Lcn/domob/android/ads/u$c;->b:Ljava/lang/String;

    .line 537
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/u;->a(Ljava/lang/String;Lcn/domob/android/ads/u$h;Ljava/lang/String;Lcn/domob/android/ads/u$c;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 538
    :cond_f
    const-string v2, "clk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 539
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 540
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Lcn/domob/android/ads/b;

    iget-object v2, p0, Lcn/domob/android/ads/a/d;->c:Lcn/domob/android/ads/e;

    invoke-static {v0}, Lcn/domob/android/ads/c/e;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "ac"

    invoke-virtual {v1, v2, v0, v3}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/e;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 542
    invoke-virtual {p0}, Lcn/domob/android/ads/a/d;->h()V

    goto/16 :goto_0

    .line 543
    :cond_10
    const-string/jumbo v2, "visit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 545
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    new-instance v1, Lcn/domob/android/ads/k;

    iget-object v2, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcn/domob/android/ads/k;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/ads/k$a;)V

    invoke-virtual {v1}, Lcn/domob/android/ads/k;->b()V

    goto/16 :goto_0

    .line 548
    :cond_11
    sget-object v0, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    const-string v1, "Unknown reprot type."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 550
    :cond_12
    const-string v1, "close"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 551
    invoke-virtual {p0}, Lcn/domob/android/ads/a/d;->m()V

    goto/16 :goto_0

    .line 552
    :cond_13
    const-string v1, "custom"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 554
    const-string v1, "form"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 555
    if-eqz p3, :cond_14

    .line 556
    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/d;->b(Landroid/net/Uri;)V

    .line 559
    :cond_14
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/ads/c/e;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 560
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 561
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 562
    iget-object v2, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    const-class v3, Lcn/domob/android/ads/DmActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 563
    sget-object v2, Lcn/domob/android/ads/DmActivity;->ACTIVITY_TYPE:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 564
    const-string/jumbo v2, "webview_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    invoke-virtual {p0}, Lcn/domob/android/ads/a/d;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 567
    :cond_15
    const-string v1, "fetch"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 568
    if-eqz p3, :cond_16

    .line 569
    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/d;->b(Landroid/net/Uri;)V

    .line 572
    :cond_16
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/ads/c/e;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 573
    const-string/jumbo v0, "url"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 574
    const-string v1, "name"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 575
    const-string/jumbo v3, "rt"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 576
    const/4 v3, 0x1

    .line 577
    invoke-static {v2}, Lcn/domob/android/ads/c/e;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 578
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 580
    :goto_2
    iget-object v3, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcn/domob/android/ads/n;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    goto/16 :goto_0

    .line 581
    :cond_17
    const-string/jumbo v1, "vibrate"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 587
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/b/a;->F(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 588
    sget-object v0, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    const-string v1, "Vibration function can not be achieved, because there is no authority or device does not support"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->d(Ljava/lang/String;)V

    .line 589
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 591
    :cond_18
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/ads/c/e;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 592
    const-string v1, "pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 593
    if-eqz v0, :cond_1a

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 594
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 595
    array-length v0, v1

    new-array v2, v0, [J

    .line 597
    const/4 v0, 0x0

    :goto_3
    :try_start_0
    array-length v3, v1

    if-ge v0, v3, :cond_19

    .line 598
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 597
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 600
    :cond_19
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 601
    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    sget-object v0, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    const-string v1, "action vibrate, parse data error or other"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 604
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 607
    :cond_1a
    sget-object v0, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    const-string v1, "action vibrate, pattern is empty"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 609
    :cond_1b
    const-string/jumbo v0, "video"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 617
    sget-object v0, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle unknown action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 618
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_1c
    move v2, v3

    goto/16 :goto_2
.end method

.method public b_()V
    .locals 1

    .prologue
    .line 824
    const-string v0, "la_failed"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/d;->c(Ljava/lang/String;)V

    .line 825
    return-void
.end method

.method public c(Lcn/domob/android/ads/n;)V
    .locals 1

    .prologue
    .line 858
    const-string v0, "download_start"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/d;->a(Ljava/lang/String;Lcn/domob/android/ads/n;)V

    .line 859
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/view/View;

    instance-of v0, v0, Lcn/domob/android/ads/h;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/view/View;

    check-cast v0, Lcn/domob/android/ads/h;

    sget-object v1, Lcn/domob/android/ads/l;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/h;->loadUrl(Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method public d(Lcn/domob/android/ads/n;)V
    .locals 1

    .prologue
    .line 863
    const-string v0, "download_cancel"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/d;->a(Ljava/lang/String;Lcn/domob/android/ads/n;)V

    .line 864
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/view/View;

    instance-of v0, v0, Lcn/domob/android/ads/h;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/view/View;

    check-cast v0, Lcn/domob/android/ads/h;

    sget-object v1, Lcn/domob/android/ads/l;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/h;->loadUrl(Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method public e(Lcn/domob/android/ads/n;)V
    .locals 2

    .prologue
    .line 868
    const-string v0, "download_repeat"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/d;->a(Ljava/lang/String;Lcn/domob/android/ads/n;)V

    .line 869
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/a/d$7;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$7;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 877
    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    sget-object v0, Lcn/domob/android/ads/a/d;->m:Lcn/domob/android/ads/c/f;

    const-string v1, "Destroy DmWebViews."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/view/View;

    instance-of v0, v0, Lcn/domob/android/ads/h;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/view/View;

    check-cast v0, Lcn/domob/android/ads/h;

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->destroy()V

    .line 123
    iput-object v2, p0, Lcn/domob/android/ads/a/d;->f:Landroid/view/View;

    .line 126
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->n:Lcn/domob/android/ads/a/b;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->n:Lcn/domob/android/ads/a/b;

    invoke-virtual {v0}, Lcn/domob/android/ads/a/b;->destroy()V

    .line 128
    iput-object v2, p0, Lcn/domob/android/ads/a/d;->n:Lcn/domob/android/ads/a/b;

    .line 130
    :cond_1
    return-void
.end method

.method public f(Lcn/domob/android/ads/n;)V
    .locals 0

    .prologue
    .line 882
    return-void
.end method

.method public g(Lcn/domob/android/ads/n;)V
    .locals 1

    .prologue
    .line 886
    const-string v0, "download_md5_failed"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/d;->a(Ljava/lang/String;Lcn/domob/android/ads/n;)V

    .line 887
    return-void
.end method

.method public h(Lcn/domob/android/ads/n;)V
    .locals 8

    .prologue
    .line 892
    new-instance v0, Lcn/domob/android/ads/v;

    invoke-virtual {p1}, Lcn/domob/android/ads/n;->a()Lcn/domob/android/ads/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/domob/android/ads/n;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/domob/android/ads/n;->d()I

    move-result v3

    invoke-virtual {p1}, Lcn/domob/android/ads/n;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcn/domob/android/ads/n;->a()Lcn/domob/android/ads/e;

    move-result-object v5

    invoke-virtual {v5}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v5

    invoke-virtual {v5}, Lcn/domob/android/ads/e$b;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcn/domob/android/ads/n;->f()Z

    move-result v6

    invoke-virtual {p1}, Lcn/domob/android/ads/n;->j()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcn/domob/android/ads/v;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 896
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Lcn/domob/android/ads/b;

    invoke-virtual {v1}, Lcn/domob/android/ads/b;->a()Lcn/domob/android/ads/a;

    move-result-object v1

    .line 897
    if-eqz v1, :cond_0

    .line 898
    invoke-virtual {v1, v0}, Lcn/domob/android/ads/a;->a(Lcn/domob/android/ads/v;)V

    .line 900
    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 689
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    const-string v0, "load_success"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/d;->b(Ljava/lang/String;)V

    .line 691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/a/d;->p:Z

    .line 693
    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 697
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    const-string v0, "load_failed"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/d;->b(Ljava/lang/String;)V

    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/a/d;->r:Z

    .line 701
    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 705
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    const-string v0, "load_cancel"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/d;->b(Ljava/lang/String;)V

    .line 707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/a/d;->q:Z

    .line 709
    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/a/d$6;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$6;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 720
    const-string v0, "close_lp"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/d;->b(Ljava/lang/String;)V

    .line 721
    return-void
.end method

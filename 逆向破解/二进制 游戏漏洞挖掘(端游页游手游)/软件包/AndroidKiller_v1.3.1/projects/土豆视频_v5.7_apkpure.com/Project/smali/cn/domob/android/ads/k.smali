.class public Lcn/domob/android/ads/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/k$c;,
        Lcn/domob/android/ads/k$b;,
        Lcn/domob/android/ads/k$a;
    }
.end annotation


# static fields
.field private static final F:I = 0x1000

.field private static final G:Ljava/lang/String; = "ctwap"

.field static final b:Ljava/lang/String; = "GET"

.field static final c:Ljava/lang/String; = "POST"

.field static final d:I = 0x4e20

.field private static e:Lcn/domob/android/ads/c/f; = null

.field private static f:Z = false

.field private static g:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:I = 0x2

.field private static final m:Ljava/lang/String; = "connection"

.field private static final n:Ljava/lang/String; = "time"

.field private static final o:J = -0x1L

.field private static z:Lcn/domob/android/ads/k$b;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Ljava/lang/String;

.field private E:[B

.field protected a:Ljava/net/URL;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Lcn/domob/android/ads/c/b;

.field private l:Z

.field private p:Ljava/net/HttpURLConnection;

.field private q:Landroid/content/Context;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/net/Proxy;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Lcn/domob/android/ads/k$a;

.field private y:Lcn/domob/android/ads/k$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/k;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcn/domob/android/ads/k;->f:Z

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/domob/android/ads/k;->g:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/ads/k$a;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 122
    const-string v5, "GET"

    const/16 v7, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v6, v3

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcn/domob/android/ads/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/android/ads/k$a;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/k$a;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 136
    const-string v5, "POST"

    const/16 v7, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v6, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcn/domob/android/ads/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/android/ads/k$a;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/android/ads/k$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcn/domob/android/ads/k$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcn/domob/android/ads/k;->i:Z

    .line 42
    iput-boolean v0, p0, Lcn/domob/android/ads/k;->l:Z

    .line 157
    iput-object p1, p0, Lcn/domob/android/ads/k;->q:Landroid/content/Context;

    .line 158
    iput-object p3, p0, Lcn/domob/android/ads/k;->s:Ljava/lang/String;

    .line 159
    iput-object p4, p0, Lcn/domob/android/ads/k;->t:Ljava/util/HashMap;

    .line 160
    iput-object p5, p0, Lcn/domob/android/ads/k;->r:Ljava/lang/String;

    .line 161
    iput-object p6, p0, Lcn/domob/android/ads/k;->v:Ljava/lang/String;

    .line 162
    iput p7, p0, Lcn/domob/android/ads/k;->w:I

    .line 163
    iput-object p8, p0, Lcn/domob/android/ads/k;->x:Lcn/domob/android/ads/k$a;

    .line 164
    iput-object p2, p0, Lcn/domob/android/ads/k;->j:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcn/domob/android/ads/k;->q:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/k;->r:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 173
    const-string v0, "GET"

    iput-object v0, p0, Lcn/domob/android/ads/k;->r:Ljava/lang/String;

    .line 175
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/k;->v:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 176
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcn/domob/android/ads/k;->A:Ljava/lang/String;

    .line 181
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcn/domob/android/ads/k;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    sget-object v1, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    const-string v2, "get error when dealing with apn"

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 184
    sget-object v1, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 186
    :catch_1
    move-exception v0

    .line 187
    sget-object v1, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    const-string v2, "get error when dealing with apn"

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 188
    sget-object v1, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Lcn/domob/android/ads/k$b;)V
    .locals 0

    .prologue
    .line 194
    sput-object p0, Lcn/domob/android/ads/k;->z:Lcn/domob/android/ads/k$b;

    .line 195
    return-void
.end method

.method private final a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 238
    sget-object v0, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProxy -- proxy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "| port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcn/domob/android/ads/k;->u:Ljava/net/Proxy;

    .line 240
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcn/domob/android/ads/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/k;->j:Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcn/domob/android/ads/k;->y:Lcn/domob/android/ads/k$c;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcn/domob/android/ads/k;->y:Lcn/domob/android/ads/k$c;

    iget-object v1, p0, Lcn/domob/android/ads/k;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/k$c;->a(Ljava/lang/String;)V

    .line 422
    :cond_0
    sget-object v0, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    const-string/jumbo v1, "try to use the new domain(%s) to connect again"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/domob/android/ads/k;->j:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->d(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Lcn/domob/android/ads/k;->run()V

    .line 424
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 434
    const/4 v5, 0x0

    .line 435
    iget-object v0, p0, Lcn/domob/android/ads/k;->y:Lcn/domob/android/ads/k$c;

    if-eqz v0, :cond_6

    .line 436
    iget-object v0, p0, Lcn/domob/android/ads/k;->y:Lcn/domob/android/ads/k$c;

    invoke-interface {v0}, Lcn/domob/android/ads/k$c;->b()[Ljava/lang/String;

    move-result-object v6

    .line 438
    if-eqz v6, :cond_6

    array-length v0, v6

    if-lez v0, :cond_6

    move v1, v2

    move v0, v2

    .line 440
    :goto_0
    array-length v3, v6

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_5

    .line 441
    if-nez v0, :cond_0

    aget-object v3, v6, v1

    invoke-static {v3}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    aget-object v3, v6, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 443
    :cond_0
    sget-object v0, Lcn/domob/android/ads/k;->g:Ljava/util/HashMap;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v6, v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcn/domob/android/ads/k;->g:Ljava/util/HashMap;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v6, v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 445
    :goto_1
    const/4 v3, 0x2

    if-ge v0, v3, :cond_3

    .line 446
    add-int/lit8 v0, v1, 0x1

    aget-object v0, v6, v0

    .line 451
    :goto_2
    if-nez v0, :cond_1

    array-length v1, v6

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v6, v1

    if-eqz v1, :cond_1

    .line 452
    array-length v1, v6

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v6, v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    sput-boolean v4, Lcn/domob/android/ads/k;->f:Z

    .line 454
    invoke-direct {p0}, Lcn/domob/android/ads/k;->l()V

    .line 455
    iget-object v1, p0, Lcn/domob/android/ads/k;->y:Lcn/domob/android/ads/k$c;

    iget-object v2, p0, Lcn/domob/android/ads/k;->y:Lcn/domob/android/ads/k$c;

    invoke-interface {v2}, Lcn/domob/android/ads/k$c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/domob/android/ads/k$c;->a(Ljava/lang/String;)V

    .line 456
    sget-object v1, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    const-string v2, "all domains have been masked"

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->d(Ljava/lang/String;)V

    .line 461
    :cond_1
    :goto_3
    return-object v0

    :cond_2
    move v0, v2

    .line 443
    goto :goto_1

    :cond_3
    move v3, v4

    .line 440
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_4
    move v3, v0

    goto :goto_4

    :cond_5
    move-object v0, v5

    goto :goto_2

    :cond_6
    move-object v0, v5

    goto :goto_3
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 525
    const-string v0, ""

    .line 526
    invoke-static {p1}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 527
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 528
    if-ltz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 529
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 532
    :cond_0
    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 543
    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Lcn/domob/android/ads/c/e;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 544
    const-string v1, ".*\\d.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 554
    .line 556
    invoke-static {p1}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :goto_0
    if-eqz v1, :cond_0

    .line 563
    const-string/jumbo v2, "sid"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 566
    :cond_0
    invoke-static {v0}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/k;->q:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    const/4 v0, 0x1

    .line 569
    :goto_1
    return v0

    .line 559
    :catch_0
    move-exception v1

    .line 560
    sget-object v2, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_0

    .line 569
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private i()V
    .locals 7

    .prologue
    .line 201
    iget-object v0, p0, Lcn/domob/android/ads/k;->q:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    const/4 v1, 0x0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/k;->q:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/b;->t(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 209
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 210
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 211
    const-string v0, "proxy"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    const-string v2, "port"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 216
    const-string v3, "apn"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 218
    sget-object v4, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current apnType is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    sget-object v4, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "proxy:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "| port:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    const-string v4, "ctwap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 223
    sget-object v3, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    const-string v4, "ad request use proxy"

    invoke-virtual {v3, p0, v4}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, v0, v2}, Lcn/domob/android/ads/k;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_2
    if-eqz v1, :cond_0

    .line 232
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    :try_start_1
    sget-object v2, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    const-string/jumbo v3, "\u83b7\u53d6APN\u5931\u8d25\u3002"

    invoke-virtual {v2, p0, v3}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    sget-object v2, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    if-eqz v1, :cond_0

    .line 232
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 231
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 232
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 503
    iget-object v0, p0, Lcn/domob/android/ads/k;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 504
    sget-object v0, Lcn/domob/android/ads/k;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/domob/android/ads/k;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 505
    :goto_0
    sget-object v2, Lcn/domob/android/ads/k;->g:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    .line 507
    invoke-direct {p0, v1}, Lcn/domob/android/ads/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-static {v0}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 509
    invoke-direct {p0, v0}, Lcn/domob/android/ads/k;->b(Ljava/lang/String;)V

    .line 516
    :goto_1
    return-void

    .line 504
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 511
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/k;->l:Z

    goto :goto_1

    .line 514
    :cond_2
    invoke-direct {p0, v1}, Lcn/domob/android/ads/k;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private k()Lcn/domob/android/ads/c/b;
    .locals 3

    .prologue
    .line 585
    iget-object v0, p0, Lcn/domob/android/ads/k;->k:Lcn/domob/android/ads/c/b;

    if-nez v0, :cond_0

    .line 586
    new-instance v0, Lcn/domob/android/ads/c/b;

    iget-object v1, p0, Lcn/domob/android/ads/k;->q:Landroid/content/Context;

    const-string v2, "connection"

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/k;->k:Lcn/domob/android/ads/c/b;

    .line 588
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/k;->k:Lcn/domob/android/ads/c/b;

    return-object v0
.end method

.method private l()V
    .locals 6

    .prologue
    .line 592
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 593
    const-string/jumbo v1, "time"

    new-instance v2, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    invoke-direct {p0}, Lcn/domob/android/ads/k;->k()Lcn/domob/android/ads/c/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/b;->a(Ljava/util/HashMap;)V

    .line 595
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcn/domob/android/ads/k;->B:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcn/domob/android/ads/k$c;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcn/domob/android/ads/k;->y:Lcn/domob/android/ads/k$c;

    .line 582
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcn/domob/android/ads/k;->B:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 577
    iput-boolean p1, p0, Lcn/domob/android/ads/k;->i:Z

    .line 578
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 262
    sget-object v0, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    const-string v1, "Do HTTP connection."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 264
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 271
    .line 274
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/k;->j:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/domob/android/ads/k;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 275
    iget-object v0, p0, Lcn/domob/android/ads/k;->r:Ljava/lang/String;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/domob/android/ads/k;->v:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 277
    iget-object v0, p0, Lcn/domob/android/ads/k;->j:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 278
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/ads/k;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/domob/android/ads/k;->v:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/k;->a:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 293
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcn/domob/android/ads/k;->a:Ljava/net/URL;

    if-eqz v0, :cond_12

    .line 294
    sget-object v0, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection URL = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/domob/android/ads/k;->a:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 297
    iget-object v0, p0, Lcn/domob/android/ads/k;->u:Ljava/net/Proxy;

    if-eqz v0, :cond_7

    .line 298
    iget-object v0, p0, Lcn/domob/android/ads/k;->a:Ljava/net/URL;

    iget-object v1, p0, Lcn/domob/android/ads/k;->u:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/domob/android/ads/k;->p:Ljava/net/HttpURLConnection;

    .line 303
    :goto_1
    iget-object v0, p0, Lcn/domob/android/ads/k;->p:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_12

    .line 304
    iget-object v0, p0, Lcn/domob/android/ads/k;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/k;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcn/domob/android/ads/k;->p:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    iget-object v3, p0, Lcn/domob/android/ads/k;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/k;->p:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 311
    iget-object v0, p0, Lcn/domob/android/ads/k;->p:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcn/domob/android/ads/k;->w:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 312
    iget-object v0, p0, Lcn/domob/android/ads/k;->p:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcn/domob/android/ads/k;->w:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 314
    iget-object v0, p0, Lcn/domob/android/ads/k;->t:Ljava/util/HashMap;

    if-eqz v0, :cond_a

    .line 315
    iget-object v0, p0, Lcn/domob/android/ads/k;->t:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 316
    iget-object v1, p0, Lcn/domob/android/ads/k;->t:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 317
    if-eqz v1, :cond_1

    .line 318
    iget-object v4, p0, Lcn/domob/android/ads/k;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 379
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 380
    :goto_3
    :try_start_2
    sget-object v3, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    const-string v4, "Error happened in connection."

    invoke-virtual {v3, p0, v4}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    sget-object v3, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    invoke-virtual {v3, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 384
    if-eqz v2, :cond_2

    .line 385
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 392
    :cond_2
    :goto_4
    if-eqz v1, :cond_3

    .line 393
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 399
    :cond_3
    :goto_5
    return-void

    .line 280
    :cond_4
    :try_start_5
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/ads/k;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/domob/android/ads/k;->v:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/k;->a:Ljava/net/URL;
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 289
    :catch_1
    move-exception v0

    .line 290
    sget-object v0, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URL string:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/domob/android/ads/k;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Failed to init connector."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 284
    :cond_5
    :try_start_6
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcn/domob/android/ads/k;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/k;->a:Ljava/net/URL;

    goto/16 :goto_0

    .line 287
    :cond_6
    sget-object v0, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    const-string v1, "Request URL is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 300
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcn/domob/android/ads/k;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/domob/android/ads/k;->p:Ljava/net/HttpURLConnection;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 383
    :catchall_0
    move-exception v0

    move-object v3, v2

    .line 384
    :goto_6
    if-eqz v3, :cond_8

    .line 385
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 392
    :cond_8
    :goto_7
    if-eqz v2, :cond_9

    .line 393
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 397
    :cond_9
    :goto_8
    throw v0

    .line 323
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcn/domob/android/ads/k;->r:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcn/domob/android/ads/k;->v:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 324
    sget-object v0, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    const-string v1, "Connector do HTTP POST."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcn/domob/android/ads/k;->p:Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcn/domob/android/ads/k;->p:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 327
    iget-object v0, p0, Lcn/domob/android/ads/k;->p:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    iget-object v3, p0, Lcn/domob/android/ads/k;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcn/domob/android/ads/k;->p:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Length"

    iget-object v3, p0, Lcn/domob/android/ads/k;->v:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcn/domob/android/ads/k;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 332
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x1000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 334
    if-eqz v1, :cond_b

    .line 335
    iget-object v3, p0, Lcn/domob/android/ads/k;->v:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 337
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 338
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 349
    :cond_b
    :goto_9
    iget-object v0, p0, Lcn/domob/android/ads/k;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/k;->C:I

    .line 352
    :goto_a
    iget v0, p0, Lcn/domob/android/ads/k;->C:I

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcn/domob/android/ads/k;->C:I

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_e

    .line 353
    :cond_c
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcn/domob/android/ads/k;->p:Ljava/net/HttpURLConnection;

    const-string v3, "Location"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/domob/android/ads/k;->p:Ljava/net/HttpURLConnection;

    .line 355
    iget-object v0, p0, Lcn/domob/android/ads/k;->p:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 356
    iget-object v0, p0, Lcn/domob/android/ads/k;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/k;->C:I

    goto :goto_a

    .line 343
    :cond_d
    sget-object v0, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    const-string v1, "Connector do HTTP GET."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcn/domob/android/ads/k;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_9

    .line 359
    :cond_e
    iget v0, p0, Lcn/domob/android/ads/k;->C:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_11

    iget v0, p0, Lcn/domob/android/ads/k;->C:I

    const/16 v1, 0x130

    if-gt v0, v1, :cond_11

    .line 361
    sget-object v0, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL after connection/redirection:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/domob/android/ads/k;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 363
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v0, p0, Lcn/domob/android/ads/k;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-direct {v3, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 365
    const/16 v0, 0x1000

    :try_start_b
    new-array v0, v0, [B

    .line 367
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x1000

    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 368
    :goto_b
    :try_start_c
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    if-eq v2, v5, :cond_f

    .line 369
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_b

    .line 379
    :catch_2
    move-exception v0

    move-object v2, v3

    goto/16 :goto_3

    .line 372
    :cond_f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/k;->E:[B

    .line 373
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcn/domob/android/ads/k;->E:[B

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/k;->D:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object v2, v3

    .line 376
    :goto_c
    :try_start_d
    iget-object v0, p0, Lcn/domob/android/ads/k;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object v0, v2

    move-object v2, v1

    .line 384
    :goto_d
    if-eqz v0, :cond_10

    .line 385
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 392
    :cond_10
    :goto_e
    if-eqz v2, :cond_3

    .line 393
    :try_start_f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_5

    .line 395
    :catch_3
    move-exception v0

    .line 396
    sget-object v1, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 387
    :catch_4
    move-exception v0

    .line 388
    sget-object v1, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_e

    .line 387
    :catch_5
    move-exception v0

    .line 388
    sget-object v2, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 395
    :catch_6
    move-exception v0

    .line 396
    sget-object v1, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 387
    :catch_7
    move-exception v1

    .line 388
    sget-object v3, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    invoke-virtual {v3, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 395
    :catch_8
    move-exception v1

    .line 396
    sget-object v2, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 383
    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_6

    .line 379
    :catch_9
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_3

    :catch_a
    move-exception v0

    goto/16 :goto_3

    :cond_11
    move-object v1, v2

    goto :goto_c

    :cond_12
    move-object v0, v2

    goto :goto_d
.end method

.method public d()[B
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcn/domob/android/ads/k;->E:[B

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcn/domob/android/ads/k;->D:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcn/domob/android/ads/k;->C:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcn/domob/android/ads/k;->v:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lcn/domob/android/ads/k;->i:Z

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 466
    invoke-virtual {p0}, Lcn/domob/android/ads/k;->c()V

    .line 467
    iput-boolean v6, p0, Lcn/domob/android/ads/k;->l:Z

    .line 468
    iget-boolean v0, p0, Lcn/domob/android/ads/k;->i:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/domob/android/ads/k;->y:Lcn/domob/android/ads/k$c;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcn/domob/android/ads/k;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/domob/android/ads/k;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 469
    sget-object v0, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/android/ads/k;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been masked!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->d(Ljava/lang/String;)V

    .line 470
    sget-boolean v0, Lcn/domob/android/ads/k;->f:Z

    if-eqz v0, :cond_4

    .line 471
    invoke-direct {p0}, Lcn/domob/android/ads/k;->k()Lcn/domob/android/ads/c/b;

    move-result-object v0

    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, v8, v9}, Lcn/domob/android/ads/c/b;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 472
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    const-wide/32 v2, 0x5265c00

    add-long/2addr v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 473
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/domob/android/ads/k;->g:Ljava/util/HashMap;

    .line 474
    sput-boolean v6, Lcn/domob/android/ads/k;->f:Z

    .line 475
    invoke-direct {p0}, Lcn/domob/android/ads/k;->j()V

    .line 488
    :goto_0
    iget-boolean v0, p0, Lcn/domob/android/ads/k;->l:Z

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcn/domob/android/ads/k;->x:Lcn/domob/android/ads/k$a;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcn/domob/android/ads/k;->x:Lcn/domob/android/ads/k$a;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/k$a;->a(Lcn/domob/android/ads/k;)V

    .line 492
    :cond_0
    sget-object v0, Lcn/domob/android/ads/k;->z:Lcn/domob/android/ads/k$b;

    if-eqz v0, :cond_1

    .line 493
    sget-object v0, Lcn/domob/android/ads/k;->e:Lcn/domob/android/ads/c/f;

    const-string v1, "Call test listener"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    sget-object v0, Lcn/domob/android/ads/k;->z:Lcn/domob/android/ads/k$b;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/k$b;->a(Lcn/domob/android/ads/k;)V

    .line 497
    :cond_1
    return-void

    .line 477
    :cond_2
    cmp-long v0, v0, v8

    if-nez v0, :cond_3

    .line 478
    invoke-direct {p0}, Lcn/domob/android/ads/k;->l()V

    .line 480
    :cond_3
    iput-boolean v7, p0, Lcn/domob/android/ads/k;->l:Z

    goto :goto_0

    .line 483
    :cond_4
    invoke-direct {p0}, Lcn/domob/android/ads/k;->j()V

    goto :goto_0

    .line 486
    :cond_5
    iput-boolean v7, p0, Lcn/domob/android/ads/k;->l:Z

    goto :goto_0
.end method

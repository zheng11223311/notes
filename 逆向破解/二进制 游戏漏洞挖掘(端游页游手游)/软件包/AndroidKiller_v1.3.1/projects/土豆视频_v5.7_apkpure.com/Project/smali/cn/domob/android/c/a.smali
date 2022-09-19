.class public Lcn/domob/android/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:I = 0x3e8

.field private static B:I = 0x0

.field private static C:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static D:Ljava/util/Vector; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final G:I = 0x5

.field private static final H:I = 0x64

.field private static N:Z = false

.field private static R:Ljava/util/concurrent/ExecutorService; = null

.field private static final S:I = 0x5

.field public static a:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcn/domob/android/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "typeCancel"

.field public static final d:Ljava/lang/String; = "typeInstall"

.field public static final e:Ljava/lang/String; = "actType"

.field public static final f:Ljava/lang/String; = "appName"

.field public static final g:Ljava/lang/String; = "appId"

.field public static final h:Ljava/lang/String; = "notifyId"

.field public static final i:Ljava/lang/String; = "downloadPath"

.field public static final j:I = 0x200

.field public static final k:I = 0x201

.field public static final l:I = 0x204

.field public static final m:I = 0x0

.field public static final n:I = 0x1

.field public static final o:I = 0x2

.field public static final p:I = 0x3

.field public static final q:I = -0x1

.field private static r:Lcn/domob/android/ads/c/f;

.field private static s:Landroid/content/Context;

.field private static t:Landroid/content/Context;


# instance fields
.field private final E:I

.field private F:I

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Z

.field private O:Z

.field private P:J

.field private Q:I

.field private T:Landroid/app/PendingIntent;

.field private U:Landroid/os/Handler;

.field private V:Lcn/domob/android/c/e;

.field private u:Landroid/app/Notification;

.field private v:Landroid/app/NotificationManager;

.field private w:I

.field private x:I

.field private y:Lcn/domob/android/c/b;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/c/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/c/a;->r:Lcn/domob/android/ads/c/f;

    .line 37
    sput-object v2, Lcn/domob/android/c/a;->s:Landroid/content/Context;

    .line 38
    sput-object v2, Lcn/domob/android/c/a;->t:Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    sput v0, Lcn/domob/android/c/a;->B:I

    .line 51
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/domob/android/c/a;->a:Ljava/util/Hashtable;

    .line 53
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/domob/android/c/a;->C:Ljava/util/Hashtable;

    .line 55
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/domob/android/c/a;->b:Ljava/util/Hashtable;

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcn/domob/android/c/a;->D:Ljava/util/Vector;

    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Lcn/domob/android/c/a;->N:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IZ)V
    .locals 6

    .prologue
    const/16 v5, 0x1e

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    .line 40
    iput-object v1, p0, Lcn/domob/android/c/a;->v:Landroid/app/NotificationManager;

    .line 41
    iput v4, p0, Lcn/domob/android/c/a;->w:I

    .line 42
    iput v4, p0, Lcn/domob/android/c/a;->x:I

    .line 43
    iput-object v1, p0, Lcn/domob/android/c/a;->y:Lcn/domob/android/c/b;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/c/a;->z:Ljava/lang/String;

    .line 59
    iput v5, p0, Lcn/domob/android/c/a;->E:I

    .line 60
    iput v4, p0, Lcn/domob/android/c/a;->F:I

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/c/a;->I:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/c/a;->J:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/c/a;->K:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcn/domob/android/c/a;->L:Ljava/lang/String;

    .line 95
    iput-boolean v4, p0, Lcn/domob/android/c/a;->M:Z

    .line 100
    iput-boolean v4, p0, Lcn/domob/android/c/a;->O:Z

    .line 112
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/domob/android/c/a;->P:J

    .line 114
    iput v2, p0, Lcn/domob/android/c/a;->Q:I

    .line 308
    new-instance v0, Lcn/domob/android/c/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/domob/android/c/a$1;-><init>(Lcn/domob/android/c/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/domob/android/c/a;->U:Landroid/os/Handler;

    .line 236
    sput-object p6, Lcn/domob/android/c/a;->t:Landroid/content/Context;

    .line 238
    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcn/domob/android/c/a;->s:Landroid/content/Context;

    .line 240
    iput-boolean p8, p0, Lcn/domob/android/c/a;->O:Z

    .line 242
    iput-object p1, p0, Lcn/domob/android/c/a;->I:Ljava/lang/String;

    .line 244
    iput-object p2, p0, Lcn/domob/android/c/a;->J:Ljava/lang/String;

    .line 246
    iput-object p3, p0, Lcn/domob/android/c/a;->K:Ljava/lang/String;

    .line 248
    if-eq p7, v2, :cond_0

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/c/a;->M:Z

    .line 252
    :cond_0
    iput p7, p0, Lcn/domob/android/c/a;->Q:I

    .line 253
    iput-object p5, p0, Lcn/domob/android/c/a;->L:Ljava/lang/String;

    .line 254
    sget-object v0, Lcn/domob/android/c/a;->r:Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/c/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start to download. appName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pkgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcn/domob/android/c/a;->C:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 258
    sget v0, Lcn/domob/android/c/a;->B:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/domob/android/c/a;->B:I

    .line 259
    sget-object v0, Lcn/domob/android/c/a;->C:Ljava/util/Hashtable;

    sget v1, Lcn/domob/android/c/a;->B:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget v0, Lcn/domob/android/c/a;->B:I

    iput v0, p0, Lcn/domob/android/c/a;->w:I

    .line 265
    :goto_0
    sget-object v0, Lcn/domob/android/c/a;->r:Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/c/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " notification_id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/domob/android/c/a;->w:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    if-eqz p4, :cond_1

    .line 267
    sget-object v0, Lcn/domob/android/c/a;->b:Ljava/util/Hashtable;

    iget v1, p0, Lcn/domob/android/c/a;->w:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcn/domob/android/c/a;->D:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v0, Lcn/domob/android/c/a;->D:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v5, :cond_1

    .line 272
    sget-object v1, Lcn/domob/android/c/a;->r:Lcn/domob/android/ads/c/f;

    const-class v2, Lcn/domob/android/c/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcn/domob/android/c/a;->D:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " from AppPkgMapping"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcn/domob/android/c/a;->b:Ljava/util/Hashtable;

    sget-object v1, Lcn/domob/android/c/a;->D:Ljava/util/Vector;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcn/domob/android/c/a;->D:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 277
    :cond_1
    invoke-direct {p0}, Lcn/domob/android/c/a;->i()V

    .line 278
    return-void

    .line 262
    :cond_2
    sget-object v0, Lcn/domob/android/c/a;->r:Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/c/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " notification_id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcn/domob/android/c/a;->C:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/domob/android/c/a;->w:I

    goto/16 :goto_0
.end method

.method static synthetic a(Lcn/domob/android/c/a;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcn/domob/android/c/a;->F:I

    return v0
.end method

.method static synthetic a(Lcn/domob/android/c/a;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcn/domob/android/c/a;->F:I

    return p1
.end method

.method static synthetic a(Lcn/domob/android/c/a;J)J
    .locals 1

    .prologue
    .line 34
    iput-wide p1, p0, Lcn/domob/android/c/a;->P:J

    return-wide p1
.end method

.method static synthetic a(Lcn/domob/android/c/a;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcn/domob/android/c/a;->T:Landroid/app/PendingIntent;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 570
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcn/domob/android/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 584
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 586
    invoke-static {v1}, Lcn/domob/android/c/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 587
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    move-object v2, p4

    .line 599
    :cond_0
    :goto_0
    new-instance v0, Lcn/domob/android/c/h;

    const/4 v5, -0x1

    move-object v1, p0

    move-object v3, p1

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcn/domob/android/c/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILcn/domob/android/c/i;)V

    .line 602
    invoke-virtual {v0}, Lcn/domob/android/c/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 603
    if-nez v0, :cond_2

    .line 611
    :goto_1
    return-object v6

    .line 589
    :cond_1
    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    .line 591
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 592
    :catch_0
    move-exception v0

    .line 593
    sget-object v1, Lcn/domob/android/c/a;->r:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 606
    :cond_2
    if-nez p3, :cond_3

    .line 607
    sget-object v1, Lcn/domob/android/c/a;->r:Lcn/domob/android/ads/c/f;

    const-class v2, Lcn/domob/android/c/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    invoke-static {v0}, Lcn/domob/android/c/a;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    goto :goto_1

    .line 610
    :cond_3
    sget-object v1, Lcn/domob/android/c/a;->r:Lcn/domob/android/ads/c/f;

    const-class v2, Lcn/domob/android/c/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    invoke-static {v0}, Lcn/domob/android/c/a;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 430
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/c/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcn/domob/android/c/a;->z:Ljava/lang/String;

    return-object p1
.end method

.method public static a(I)V
    .locals 3

    .prologue
    .line 636
    :try_start_0
    sget-object v0, Lcn/domob/android/c/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 637
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 639
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 641
    sget-object v2, Lcn/domob/android/c/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/c/a;

    .line 642
    iget v2, v0, Lcn/domob/android/c/a;->Q:I

    if-ne v2, p0, :cond_0

    .line 643
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/domob/android/c/a;->a(Z)V

    .line 644
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 647
    :catch_0
    move-exception v0

    .line 648
    sget-object v1, Lcn/domob/android/c/a;->r:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    .line 650
    :cond_1
    return-void
.end method

.method static synthetic a(Lcn/domob/android/c/a;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/c/a;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private a(Lcn/domob/android/c/b;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcn/domob/android/c/a;->y:Lcn/domob/android/c/b;

    .line 285
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 8

    .prologue
    .line 535
    sget-object v0, Lcn/domob/android/c/a;->r:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin download in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    new-instance v1, Lcn/domob/android/c/e;

    iget-object v2, p0, Lcn/domob/android/c/a;->I:Ljava/lang/String;

    new-instance v6, Lcn/domob/android/c/a$3;

    invoke-direct {v6, p0}, Lcn/domob/android/c/a$3;-><init>(Lcn/domob/android/c/a;)V

    sget-object v7, Lcn/domob/android/c/a;->s:Landroid/content/Context;

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v7}, Lcn/domob/android/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;JLcn/domob/android/c/d;Landroid/content/Context;)V

    iput-object v1, p0, Lcn/domob/android/c/a;->V:Lcn/domob/android/c/e;

    .line 556
    sget-object v0, Lcn/domob/android/c/a;->R:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/domob/android/c/a;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/domob/android/c/a;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    sget-object v0, Lcn/domob/android/c/a;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/domob/android/c/a;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    sget-object v0, Lcn/domob/android/c/a;->R:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcn/domob/android/c/a;->V:Lcn/domob/android/c/e;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 560
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 207
    const-string v1, ""

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    move-object v7, p3

    invoke-static/range {v0 .. v8}, Lcn/domob/android/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 208
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;Ljava/lang/String;I)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 195
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    move-object v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcn/domob/android/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 196
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 231
    sget-boolean v6, Lcn/domob/android/c/a;->N:Z

    const/4 v8, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, v5

    invoke-static/range {v0 .. v8}, Lcn/domob/android/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 232
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 223
    const/4 v7, 0x0

    const/4 v8, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v8}, Lcn/domob/android/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 224
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 10

    .prologue
    .line 137
    sget-object v1, Lcn/domob/android/c/a;->r:Lcn/domob/android/ads/c/f;

    const-class v2, Lcn/domob/android/c/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    sget-object v3, Lcn/domob/android/c/a;->r:Lcn/domob/android/ads/c/f;

    const-class v4, Lcn/domob/android/c/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download uri path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object v3, Lcn/domob/android/c/a;->r:Lcn/domob/android/ads/c/f;

    const-class v4, Lcn/domob/android/c/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download uri host: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    const-string v4, ""

    .line 144
    const/4 v3, 0x2

    move/from16 v0, p8

    if-eq v0, v3, :cond_1

    .line 145
    if-nez p7, :cond_0

    .line 147
    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 158
    :goto_0
    sget-object v1, Lcn/domob/android/c/a;->r:Lcn/domob/android/ads/c/f;

    const-class v2, Lcn/domob/android/c/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download filename(md5) "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    sget-object v1, Lcn/domob/android/c/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    const/16 v1, 0x200

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f53\u524d\u5e94\u7528\u5df2\u5728\u4e0b\u8f7d,fileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v1, v2}, Lcn/domob/android/c/b;->a(ILjava/lang/String;)V

    .line 163
    sget-object v1, Lcn/domob/android/c/a;->r:Lcn/domob/android/ads/c/f;

    const-class v2, Lcn/domob/android/c/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is downloading"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    :goto_1
    return-void

    .line 148
    :catch_0
    move-exception v1

    .line 149
    sget-object v2, Lcn/domob/android/c/a;->r:Lcn/domob/android/ads/c/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    .line 150
    const/16 v1, 0x204

    const-string/jumbo v2, "\u5f53\u524d\u6587\u4ef6\u7684\u4e0b\u8f7d\u5730\u5740\u6709\u8bef"

    invoke-interface {p4, v1, v2}, Lcn/domob/android/c/b;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, p7

    .line 153
    goto :goto_0

    .line 156
    :cond_1
    invoke-static {v2}, Lcn/domob/android/c/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 166
    :cond_2
    sget-object v1, Lcn/domob/android/c/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_3

    .line 167
    const/16 v1, 0x201

    const-string/jumbo v2, "\u6700\u5927\u4e0b\u8f7d\u6570\u4e3a1000\u4e2a"

    invoke-interface {p4, v1, v2}, Lcn/domob/android/c/b;->a(ILjava/lang/String;)V

    .line 168
    sget-object v1, Lcn/domob/android/c/a;->r:Lcn/domob/android/ads/c/f;

    const-class v2, Lcn/domob/android/c/a;

    const-string v3, "Maximum download number is 1000"

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 171
    :cond_3
    new-instance v1, Lcn/domob/android/c/a;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p5

    move-object v7, p3

    move/from16 v8, p8

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcn/domob/android/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IZ)V

    .line 173
    invoke-direct {v1, p4}, Lcn/domob/android/c/a;->a(Lcn/domob/android/c/b;)V

    .line 174
    if-eqz p6, :cond_4

    .line 175
    invoke-direct {v1}, Lcn/domob/android/c/a;->e()V

    .line 178
    :cond_4
    invoke-direct {v1}, Lcn/domob/android/c/a;->h()V

    .line 179
    invoke-interface {p4}, Lcn/domob/android/c/b;->a()V

    goto :goto_1
.end method

.method static synthetic b(Lcn/domob/android/c/a;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcn/domob/android/c/a;->x:I

    return p1
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcn/domob/android/c/a;->s:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 34
    invoke-static {p0}, Lcn/domob/android/c/a;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/c/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcn/domob/android/c/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcn/domob/android/c/a;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcn/domob/android/c/a;->O:Z

    return v0
.end method

.method static synthetic c(Lcn/domob/android/c/a;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcn/domob/android/c/a;->Q:I

    return p1
.end method

.method static synthetic c()Lcn/domob/android/ads/c/f;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcn/domob/android/c/a;->r:Lcn/domob/android/ads/c/f;

    return-object v0
.end method

.method static synthetic c(Lcn/domob/android/c/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/domob/android/c/a;->J:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 653
    invoke-static {p0}, Lcn/domob/android/ads/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 654
    return-object v0
.end method

.method static synthetic d(Lcn/domob/android/c/a;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/domob/android/c/a;->T:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcn/domob/android/c/a;->t:Landroid/content/Context;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 658
    iget-boolean v0, p0, Lcn/domob/android/c/a;->O:Z

    if-nez v0, :cond_0

    .line 668
    :goto_0
    return-void

    .line 661
    :cond_0
    sget-object v0, Lcn/domob/android/c/a;->s:Landroid/content/Context;

    iget v1, p0, Lcn/domob/android/c/a;->w:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 663
    iget-object v1, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    const v2, 0x1080078

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 664
    iget-object v1, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/c/a;->J:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 665
    iget-object v1, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    sget-object v2, Lcn/domob/android/c/a;->s:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/domob/android/c/a;->J:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 666
    iget-object v0, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 667
    iget-object v0, p0, Lcn/domob/android/c/a;->v:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/domob/android/c/a;->w:I

    iget-object v2, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method static synthetic e(Lcn/domob/android/c/a;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 671
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 672
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    sget-object v1, Lcn/domob/android/c/a;->t:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 674
    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 292
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    .line 293
    iget-object v0, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    const v1, 0x1080081

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 295
    iget-object v0, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/android/c/a;->J:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u6b63\u5728\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 297
    sget-object v0, Lcn/domob/android/c/a;->s:Landroid/content/Context;

    iget v1, p0, Lcn/domob/android/c/a;->w:I

    invoke-direct {p0}, Lcn/domob/android/c/a;->g()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/c/a;->T:Landroid/app/PendingIntent;

    .line 299
    iget-object v0, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    sget-object v1, Lcn/domob/android/c/a;->s:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/c/a;->J:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u6b63\u5728\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lcn/domob/android/c/a;->T:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 301
    sget-object v0, Lcn/domob/android/c/a;->s:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/domob/android/c/a;->v:Landroid/app/NotificationManager;

    .line 303
    invoke-direct {p0}, Lcn/domob/android/c/a;->f()V

    .line 304
    return-void
.end method

.method static synthetic f(Lcn/domob/android/c/a;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcn/domob/android/c/a;->w:I

    return v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lcn/domob/android/c/a;->v:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/domob/android/c/a;->w:I

    iget-object v2, p0, Lcn/domob/android/c/a;->u:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 426
    return-void
.end method

.method static synthetic g(Lcn/domob/android/c/a;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/domob/android/c/a;->v:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private g()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 437
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 438
    sget-object v1, Lcn/domob/android/c/a;->s:Landroid/content/Context;

    const-class v2, Lcn/domob/android/ads/DmActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 439
    const-string v1, "appName"

    iget-object v2, p0, Lcn/domob/android/c/a;->J:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v1, "appId"

    iget-object v2, p0, Lcn/domob/android/c/a;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v1, "actType"

    const-string/jumbo v2, "typeCancel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    sget-object v1, Lcn/domob/android/ads/DmActivity;->ACTIVITY_TYPE:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 443
    return-object v0
.end method

.method static synthetic h(Lcn/domob/android/c/a;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcn/domob/android/c/a;->x:I

    return v0
.end method

.method private h()V
    .locals 7

    .prologue
    .line 448
    new-instance v0, Lcn/domob/android/c/h;

    sget-object v1, Lcn/domob/android/c/a;->s:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/c/a;->K:Ljava/lang/String;

    iget-object v3, p0, Lcn/domob/android/c/a;->I:Ljava/lang/String;

    iget-boolean v4, p0, Lcn/domob/android/c/a;->M:Z

    iget v5, p0, Lcn/domob/android/c/a;->Q:I

    new-instance v6, Lcn/domob/android/c/a$2;

    invoke-direct {v6, p0}, Lcn/domob/android/c/a$2;-><init>(Lcn/domob/android/c/a;)V

    invoke-direct/range {v0 .. v6}, Lcn/domob/android/c/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILcn/domob/android/c/i;)V

    .line 529
    invoke-virtual {v0}, Lcn/domob/android/c/h;->start()V

    .line 530
    return-void
.end method

.method static synthetic i(Lcn/domob/android/c/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/domob/android/c/a;->z:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 684
    sget-object v0, Lcn/domob/android/c/a;->R:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 685
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/domob/android/c/a;->R:Ljava/util/concurrent/ExecutorService;

    .line 687
    :cond_0
    return-void
.end method

.method static synthetic j(Lcn/domob/android/c/a;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcn/domob/android/c/a;->Q:I

    return v0
.end method

.method static synthetic k(Lcn/domob/android/c/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/domob/android/c/a;->K:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcn/domob/android/c/a;)Lcn/domob/android/c/b;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/domob/android/c/a;->y:Lcn/domob/android/c/b;

    return-object v0
.end method

.method static synthetic m(Lcn/domob/android/c/a;)J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcn/domob/android/c/a;->P:J

    return-wide v0
.end method

.method static synthetic n(Lcn/domob/android/c/a;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcn/domob/android/c/a;->M:Z

    return v0
.end method

.method static synthetic o(Lcn/domob/android/c/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/domob/android/c/a;->L:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcn/domob/android/c/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/domob/android/c/a;->U:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()Lcn/domob/android/c/b;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcn/domob/android/c/a;->y:Lcn/domob/android/c/b;

    return-object v0
.end method

.method public a(Z)V
    .locals 4

    .prologue
    .line 621
    sget-object v0, Lcn/domob/android/c/a;->r:Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/c/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop download  and cancel notify if is UI mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/domob/android/c/a;->w:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcn/domob/android/c/a;->V:Lcn/domob/android/c/e;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcn/domob/android/c/a;->V:Lcn/domob/android/c/e;

    invoke-virtual {v0}, Lcn/domob/android/c/e;->b()V

    .line 626
    :cond_0
    iget-boolean v0, p0, Lcn/domob/android/c/a;->O:Z

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Lcn/domob/android/c/a;->v:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/domob/android/c/a;->w:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 629
    :cond_1
    if-eqz p1, :cond_2

    .line 630
    sget-object v0, Lcn/domob/android/c/a;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/domob/android/c/a;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    :cond_2
    return-void
.end method

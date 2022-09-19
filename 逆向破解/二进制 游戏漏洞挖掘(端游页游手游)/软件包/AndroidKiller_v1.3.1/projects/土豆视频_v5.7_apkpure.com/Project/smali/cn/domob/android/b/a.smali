.class public Lcn/domob/android/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final A:Ljava/lang/String; = "locinfo"

.field protected static final B:Ljava/lang/String; = "locacc"

.field protected static final C:Ljava/lang/String; = "locaccmeters"

.field protected static final D:Ljava/lang/String; = "locstatus"

.field protected static final E:Ljava/lang/String; = "loctime"

.field protected static final F:Ljava/lang/String; = "ama"

.field protected static final G:Ljava/lang/String; = "ssid"

.field protected static final H:Ljava/lang/String; = "ma"

.field protected static final I:Ljava/lang/String; = "areacode"

.field protected static final J:Ljava/lang/String; = "cellid"

.field protected static final K:Ljava/lang/String; = "language"

.field protected static final L:Ljava/lang/String; = "scan"

.field protected static final M:Ljava/lang/String; = "istab"

.field protected static final N:Ljava/lang/String; = "aaid"

.field protected static final O:Ljava/lang/String; = "esh"

.field private static P:Lcn/domob/android/ads/c/f; = null

.field private static Q:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static R:Ljava/lang/String; = null

.field private static S:I = 0x0

.field private static T:I = 0x0

.field private static U:Ljava/lang/String; = null

.field private static V:Ljava/lang/String; = null

.field private static final W:Ljava/lang/String; = "sdk"

.field protected static final a:Ljava/lang/String; = "pkgname"

.field protected static final b:Ljava/lang/String; = "vc"

.field protected static final c:Ljava/lang/String; = "vn"

.field protected static final d:Ljava/lang/String; = "appname"

.field protected static final e:Ljava/lang/String; = "useragent"

.field protected static final f:Ljava/lang/String; = "ua"

.field protected static final g:Ljava/lang/String; = "install"

.field protected static final h:Ljava/lang/String; = "idv"

.field protected static final i:Ljava/lang/String; = "imei"

.field protected static final j:Ljava/lang/String; = "imsi"

.field protected static final k:Ljava/lang/String; = "andoidid"

.field protected static final l:Ljava/lang/String; = "osv"

.field protected static final m:Ljava/lang/String; = "devicemodel"

.field protected static final n:Ljava/lang/String; = "networktype"

.field protected static final o:Ljava/lang/String; = "networkavailable"

.field protected static final p:Ljava/lang/String; = "ip"

.field protected static final q:Ljava/lang/String; = "timezone"

.field protected static final r:Ljava/lang/String; = "carrier"

.field protected static final s:Ljava/lang/String; = "orientation"

.field protected static final t:Ljava/lang/String; = "isemulator"

.field protected static final u:Ljava/lang/String; = "rsd"

.field protected static final v:Ljava/lang/String; = "csd"

.field protected static final w:Ljava/lang/String; = "rsw"

.field protected static final x:Ljava/lang/String; = "rsh"

.field protected static final y:Ljava/lang/String; = "csw"

.field protected static final z:Ljava/lang/String; = "csh"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/b/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/b/a;->P:Lcn/domob/android/ads/c/f;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 576
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "ama"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    const-string v0, ""

    .line 579
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static B(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 590
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string/jumbo v1, "ssid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    const-string v0, ""

    .line 593
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static C(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 597
    const-string v0, ""

    .line 598
    sget-object v1, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string/jumbo v2, "scan"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 599
    invoke-static {p0}, Lcn/domob/android/b/b;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 601
    :cond_0
    return-object v0
.end method

.method public static D(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 611
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "areacode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "cellid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "-1"

    aput-object v2, v0, v1

    .line 615
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcn/domob/android/b/b;->z(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static E(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 632
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "istab"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    const/4 v0, 0x0

    .line 635
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->A(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static F(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 646
    const-string v0, "android.permission.VIBRATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 664
    :goto_0
    return v0

    .line 650
    :cond_0
    const/16 v0, 0xb

    invoke-static {v0, v2}, Lcn/domob/android/b/a;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    :try_start_0
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 653
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 654
    const-string v3, "hasVibrator"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 655
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 656
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 657
    goto :goto_0

    .line 659
    :catch_0
    move-exception v0

    .line 660
    sget-object v1, Lcn/domob/android/b/a;->P:Lcn/domob/android/ads/c/f;

    const-string v3, "Android version of the device is less than 3.0, the interface is no mapping"

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 661
    sget-object v1, Lcn/domob/android/b/a;->P:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    :cond_1
    move v0, v2

    .line 664
    goto :goto_0
.end method

.method public static G(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 673
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "aaid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    const-string v0, ""

    .line 677
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static H(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 685
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "esh"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    const/4 v0, 0x0

    .line 689
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->C(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method private static I(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 259
    invoke-static {p0}, Lcn/domob/android/b/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 261
    if-nez v0, :cond_0

    .line 262
    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    .line 264
    :cond_0
    const-string v1, "0"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static J(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 271
    sget-object v0, Lcn/domob/android/b/a;->P:Lcn/domob/android/ads/c/f;

    const-string v1, "Start to generate device id"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 272
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 274
    :try_start_0
    invoke-static {p0}, Lcn/domob/android/b/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    :goto_0
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    invoke-static {p0}, Lcn/domob/android/b/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    :goto_1
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 296
    :goto_2
    invoke-static {p0}, Lcn/domob/android/b/a;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_2

    .line 298
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    :goto_3
    sget-object v0, Lcn/domob/android/b/a;->P:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated device id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 278
    :cond_0
    :try_start_1
    const-string v0, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    sget-object v2, Lcn/domob/android/b/a;->P:Lcn/domob/android/ads/c/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    .line 291
    sget-object v0, Lcn/domob/android/ads/c/f;->a:Ljava/lang/String;

    const-string/jumbo v2, "you must set READ_PHONE_STATE permisson in AndroidManifest.xml"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 286
    :cond_1
    :try_start_2
    const-string v0, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 292
    :catch_1
    move-exception v0

    .line 293
    sget-object v2, Lcn/domob/android/b/a;->P:Lcn/domob/android/ads/c/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 300
    :cond_2
    sget-object v0, Lcn/domob/android/b/a;->P:Lcn/domob/android/ads/c/f;

    const-string v2, "Android ID is null, use -1 instead"

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 301
    const-string v0, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "pkgname"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, ""

    .line 94
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    if-eqz p0, :cond_0

    .line 76
    sget-object v0, Lcn/domob/android/b/a;->P:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Turn off list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 77
    sput-object p0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    .line 80
    :cond_0
    return-void
.end method

.method public static a(IZ)Z
    .locals 1

    .prologue
    .line 552
    invoke-static {p0, p1}, Lcn/domob/android/b/b;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 217
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "install"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 220
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcn/domob/android/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string/jumbo v1, "vc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, -0x1

    .line 107
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->b(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 378
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "ip"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    const-string v0, ""

    .line 382
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/domob/android/b/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 388
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string/jumbo v1, "timezone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    const-string v0, ""

    .line 391
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/domob/android/b/b;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string/jumbo v1, "vn"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, ""

    .line 120
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d()I
    .locals 2

    .prologue
    .line 512
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "locacc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    const/4 v0, -0x1

    .line 515
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcn/domob/android/b/b;->d()I

    move-result v0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "appname"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, ""

    .line 133
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static e()I
    .locals 2

    .prologue
    .line 519
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "locaccmeters"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    const/4 v0, -0x1

    .line 522
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcn/domob/android/b/b;->c()I

    move-result v0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string/jumbo v1, "useragent"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string v0, ""

    .line 145
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static f()I
    .locals 2

    .prologue
    .line 526
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "locstatus"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    const/4 v0, -0x1

    .line 529
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcn/domob/android/b/b;->e()I

    move-result v0

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 153
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string/jumbo v1, "ua"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, ""

    .line 205
    :goto_0
    return-object v0

    .line 157
    :cond_0
    const-string v0, "_"

    .line 158
    sget-object v0, Lcn/domob/android/b/a;->R:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 159
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 162
    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 170
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, ","

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :goto_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 183
    const-string v2, ","

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    :cond_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    invoke-static {p0}, Lcn/domob/android/b/a;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_2

    .line 191
    const-string v2, ","

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    :cond_2
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/b/a;->R:Ljava/lang/String;

    .line 202
    sget-object v0, Lcn/domob/android/b/a;->P:Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/c/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserAgent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/domob/android/b/a;->R:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    :cond_3
    sget-object v0, Lcn/domob/android/b/a;->R:Ljava/lang/String;

    goto/16 :goto_0

    .line 173
    :cond_4
    const-string v1, "1.5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static g()J
    .locals 2

    .prologue
    .line 534
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "loctime"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    const-wide/16 v0, -0x1

    .line 537
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcn/domob/android/b/b;->f()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "idv"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-string v0, ""

    .line 240
    :goto_0
    return-object v0

    .line 230
    :cond_0
    sget-object v0, Lcn/domob/android/b/a;->V:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 231
    invoke-static {p0}, Lcn/domob/android/b/a;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    sget-object v0, Lcn/domob/android/b/a;->P:Lcn/domob/android/ads/c/f;

    const-string v1, "Use emulator id"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 233
    const-string v0, "-1,-1,emulator"

    sput-object v0, Lcn/domob/android/b/a;->V:Ljava/lang/String;

    .line 240
    :cond_1
    :goto_1
    sget-object v0, Lcn/domob/android/b/a;->V:Ljava/lang/String;

    goto :goto_0

    .line 235
    :cond_2
    sget-object v0, Lcn/domob/android/b/a;->P:Lcn/domob/android/ads/c/f;

    const-string v1, "Generate device id"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 236
    invoke-static {p0}, Lcn/domob/android/b/a;->J(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/b/a;->V:Ljava/lang/String;

    goto :goto_1
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 620
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "language"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    const-string v0, ""

    .line 623
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/domob/android/b/b;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 244
    sget-object v1, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v2, "isemulator"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v0

    .line 247
    :cond_1
    sget-object v1, Lcn/domob/android/b/a;->U:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 248
    invoke-static {p0}, Lcn/domob/android/b/a;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/domob/android/b/a;->U:Ljava/lang/String;

    .line 250
    :cond_2
    sget-object v1, Lcn/domob/android/b/a;->U:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcn/domob/android/b/a;->I(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "sdk"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 255
    invoke-static {p0}, Lcn/domob/android/b/a;->I(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sdk"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "imsi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "-1"

    .line 311
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "imei"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const-string v0, "-1"

    .line 318
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "andoidid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const-string v0, "-1"

    .line 325
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "osv"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const-string v0, ""

    .line 338
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "devicemodel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const-string v0, ""

    .line 351
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 356
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "networktype"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    const-string v0, ""

    .line 360
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 368
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "networkavailable"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const/4 v0, 0x0

    .line 372
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->l(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 401
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "carrier"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const-string v0, ""

    .line 404
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 415
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    const-string v0, ""

    .line 418
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static s(Landroid/content/Context;)F
    .locals 2

    .prologue
    .line 430
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string/jumbo v1, "rsd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    const/high16 v0, -0x40800000    # -1.0f

    .line 433
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->o(Landroid/content/Context;)F

    move-result v0

    goto :goto_0
.end method

.method public static t(Landroid/content/Context;)F
    .locals 2

    .prologue
    .line 443
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "csd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    const/high16 v0, -0x40800000    # -1.0f

    .line 446
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->p(Landroid/content/Context;)F

    move-result v0

    goto :goto_0
.end method

.method public static u(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 458
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string/jumbo v1, "rsw"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    const/4 v0, -0x1

    .line 464
    :goto_0
    return v0

    .line 461
    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/a;->w(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcn/domob/android/b/a;->s(Landroid/content/Context;)F

    move-result v1

    invoke-static {p0}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcn/domob/android/b/a;->S:I

    .line 464
    sget v0, Lcn/domob/android/b/a;->S:I

    goto :goto_0
.end method

.method public static v(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 468
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string/jumbo v1, "rsh"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    const/4 v0, -0x1

    .line 474
    :goto_0
    return v0

    .line 471
    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/a;->x(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcn/domob/android/b/a;->s(Landroid/content/Context;)F

    move-result v1

    invoke-static {p0}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcn/domob/android/b/a;->T:I

    .line 474
    sget v0, Lcn/domob/android/b/a;->T:I

    goto :goto_0
.end method

.method public static w(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 478
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "csw"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    const/4 v0, -0x1

    .line 481
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->q(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public static x(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 487
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "csh"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    const/4 v0, -0x1

    .line 490
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->r(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public static y(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 504
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "locinfo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    const-string v0, ""

    .line 507
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static z(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 562
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    const-string v1, "ma"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    const-string v0, ""

    .line 565
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/b/b;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lcn/domob/android/b/a;->Q:Ljava/util/ArrayList;

    return-object v0
.end method

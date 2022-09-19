.class public Lcn/domob/android/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/b/b$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/ads/c/f; = null

.field private static b:Ljava/lang/String; = null

.field private static c:I = 0x0

.field private static d:Ljava/lang/String; = null

.field private static e:Ljava/lang/String; = null

.field private static f:Ljava/lang/String; = null

.field private static g:Ljava/lang/String; = null

.field private static h:Ljava/lang/String; = null

.field private static i:Ljava/lang/String; = null

.field private static j:Ljava/lang/String; = null

.field private static k:Ljava/lang/String; = null

.field private static l:Ljava/lang/String; = null

.field private static m:Ljava/lang/String; = null

.field private static n:Ljava/lang/Boolean; = null

.field private static o:F = 0.0f

.field private static p:F = 0.0f

.field private static q:I = 0x0

.field private static r:I = 0x0

.field private static s:Ljava/lang/String; = null

.field private static final t:Ljava/lang/String; = "unknown"

.field private static final u:Ljava/lang/String; = "gprs"

.field private static final v:Ljava/lang/String; = "wifi"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/b/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    return-void
.end method

.method protected static A(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1041
    sget-object v0, Lcn/domob/android/b/b;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1042
    sget-object v0, Lcn/domob/android/b/b;->n:Ljava/lang/Boolean;

    .line 1058
    :goto_0
    return-object v0

    .line 1045
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 1047
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1048
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isLayoutSizeAtLeast"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1049
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1050
    sput-object v0, Lcn/domob/android/b/b;->n:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    :cond_1
    :goto_1
    sget-object v0, Lcn/domob/android/b/b;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 1056
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/domob/android/b/b;->n:Ljava/lang/Boolean;

    .line 1058
    :cond_2
    sget-object v0, Lcn/domob/android/b/b;->n:Ljava/lang/Boolean;

    goto :goto_0

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static B(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1067
    sget-object v0, Lcn/domob/android/b/b;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 v0, 0x9

    invoke-static {v0, v1}, Lcn/domob/android/b/a;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1070
    const-string v1, "getAdvertisingIdInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1071
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1072
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1073
    const-string v2, "getId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1074
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    sput-object v0, Lcn/domob/android/b/b;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1080
    :cond_0
    :goto_0
    sget-object v0, Lcn/domob/android/b/b;->i:Ljava/lang/String;

    return-object v0

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static C(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 1087
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1088
    check-cast p0, Landroid/app/Activity;

    .line 1089
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1090
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1091
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1092
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 1093
    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1094
    sub-int/2addr v0, v2

    .line 1095
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v0, v1, v0

    .line 1097
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static D(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 96
    sget-object v0, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/b/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Start to get app info."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v2, Lcn/domob/android/b/b;->b:Ljava/lang/String;

    .line 104
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Lcn/domob/android/b/b;->c:I

    .line 105
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcn/domob/android/b/b;->d:Ljava/lang/String;

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_1

    .line 111
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 112
    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/b/b;->e:Ljava/lang/String;

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    const/4 v0, 0x0

    :goto_1
    sput-object v0, Lcn/domob/android/b/b;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    const-class v2, Lcn/domob/android/b/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed in getting app info."

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 115
    :cond_3
    :try_start_1
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method protected static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 317
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 320
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 321
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 323
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 324
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 332
    :goto_0
    return-object v0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    .line 332
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    sget-object v0, Lcn/domob/android/b/b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 127
    invoke-static {p0}, Lcn/domob/android/b/b;->D(Landroid/content/Context;)V

    .line 128
    sget-object v0, Lcn/domob/android/b/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lcn/domob/android/ads/c/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current package name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/domob/android/b/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    sget-object v0, Lcn/domob/android/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected static a(IZ)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 538
    if-eqz p1, :cond_2

    .line 539
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, p0, :cond_1

    .line 548
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 542
    goto :goto_0

    .line 545
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, p0, :cond_0

    move v0, v1

    .line 548
    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 177
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_0

    .line 182
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already insalled pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return v0

    .line 185
    :catch_0
    move-exception v0

    .line 190
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static b(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcn/domob/android/b/b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 138
    invoke-static {p0}, Lcn/domob/android/b/b;->D(Landroid/content/Context;)V

    .line 141
    :cond_0
    sget v0, Lcn/domob/android/b/b;->c:I

    return v0
.end method

.method protected static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 337
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static c()I
    .locals 1

    .prologue
    .line 512
    invoke-static {}, Lcn/domob/android/b/b$a;->a()Lcn/domob/android/b/b$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/b/b$a;->a(Lcn/domob/android/b/b$a;)I

    move-result v0

    return v0
.end method

.method protected static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcn/domob/android/b/b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 146
    invoke-static {p0}, Lcn/domob/android/b/b;->D(Landroid/content/Context;)V

    .line 149
    :cond_0
    sget-object v0, Lcn/domob/android/b/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected static d()I
    .locals 1

    .prologue
    .line 516
    invoke-static {}, Lcn/domob/android/b/b$a;->a()Lcn/domob/android/b/b$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/b/b$a;->b(Lcn/domob/android/b/b$a;)I

    move-result v0

    return v0
.end method

.method protected static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcn/domob/android/b/b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 154
    invoke-static {p0}, Lcn/domob/android/b/b;->D(Landroid/content/Context;)V

    .line 157
    :cond_0
    sget-object v0, Lcn/domob/android/b/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected static e()I
    .locals 1

    .prologue
    .line 520
    invoke-static {}, Lcn/domob/android/b/b$a;->a()Lcn/domob/android/b/b$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/b/b$a;->c(Lcn/domob/android/b/b$a;)I

    move-result v0

    return v0
.end method

.method protected static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcn/domob/android/b/b;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/b/b;->m:Ljava/lang/String;

    .line 165
    :cond_0
    sget-object v0, Lcn/domob/android/b/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method protected static f()J
    .locals 2

    .prologue
    .line 524
    invoke-static {}, Lcn/domob/android/b/b$a;->a()Lcn/domob/android/b/b$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/b/b$a;->d(Lcn/domob/android/b/b$a;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 199
    :try_start_0
    sget-object v0, Lcn/domob/android/b/b;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 200
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 201
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/b/b;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_0
    :goto_0
    sget-object v0, Lcn/domob/android/b/b;->g:Ljava/lang/String;

    return-object v0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    const-string v2, "Failed to get IMSI."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 205
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1032
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 212
    :try_start_0
    sget-object v0, Lcn/domob/android/b/b;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 213
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 215
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/b/b;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    sget-object v0, Lcn/domob/android/b/b;->f:Ljava/lang/String;

    return-object v0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    const-class v2, Lcn/domob/android/b/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get IMEI."

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic h()Lcn/domob/android/ads/c/f;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    return-object v0
.end method

.method protected static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 227
    :try_start_0
    sget-object v0, Lcn/domob/android/b/b;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/b/b;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_0
    :goto_0
    sget-object v0, Lcn/domob/android/b/b;->h:Ljava/lang/String;

    return-object v0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    const-class v2, Lcn/domob/android/b/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get android ID."

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 246
    sget-object v0, Lcn/domob/android/b/b;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 247
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 248
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, ","

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/b/b;->j:Ljava/lang/String;

    .line 254
    :cond_0
    :goto_0
    sget-object v0, Lcn/domob/android/b/b;->j:Ljava/lang/String;

    return-object v0

    .line 250
    :cond_1
    const-string v0, "1.5"

    sput-object v0, Lcn/domob/android/b/b;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 264
    sget-object v0, Lcn/domob/android/b/b;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 265
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 266
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, ","

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/b/b;->k:Ljava/lang/String;

    .line 270
    :cond_0
    sget-object v0, Lcn/domob/android/b/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 274
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 275
    sget-object v0, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/b/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot access user\'s network type.  Permissions are not set."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    const-string/jumbo v0, "unknown"

    .line 296
    :cond_0
    :goto_0
    return-object v0

    .line 280
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 282
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_3

    .line 285
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 286
    if-nez v1, :cond_2

    .line 287
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 288
    if-nez v0, :cond_0

    .line 291
    const-string v0, "gprs"

    goto :goto_0

    .line 292
    :cond_2
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    .line 293
    const-string/jumbo v0, "wifi"

    goto :goto_0

    .line 296
    :cond_3
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method

.method protected static l(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 304
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 306
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 311
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 308
    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    sget-object v2, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    move v0, v1

    .line 311
    goto :goto_0
.end method

.method protected static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    :try_start_0
    sget-object v0, Lcn/domob/android/b/b;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 349
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 351
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/b/b;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :cond_0
    :goto_0
    sget-object v0, Lcn/domob/android/b/b;->l:Ljava/lang/String;

    return-object v0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 367
    const-string/jumbo v0, "v"

    sput-object v0, Lcn/domob/android/b/b;->s:Ljava/lang/String;

    .line 368
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 372
    :cond_0
    const-string v0, "h"

    sput-object v0, Lcn/domob/android/b/b;->s:Ljava/lang/String;

    .line 375
    :cond_1
    sget-object v0, Lcn/domob/android/b/b;->s:Ljava/lang/String;

    return-object v0
.end method

.method protected static o(Landroid/content/Context;)F
    .locals 2

    .prologue
    .line 387
    :try_start_0
    sget v0, Lcn/domob/android/b/b;->o:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 388
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 390
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 391
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 392
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcn/domob/android/b/b;->o:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :cond_0
    :goto_0
    sget v0, Lcn/domob/android/b/b;->o:F

    return v0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static p(Landroid/content/Context;)F
    .locals 2

    .prologue
    .line 409
    :try_start_0
    sget v0, Lcn/domob/android/b/b;->p:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 410
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 411
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcn/domob/android/b/b;->p:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :cond_0
    :goto_0
    sget v0, Lcn/domob/android/b/b;->p:F

    return v0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static q(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 435
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcn/domob/android/b/b;->q:I

    .line 441
    :cond_0
    sget v0, Lcn/domob/android/b/b;->q:I

    return v0
.end method

.method protected static r(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 445
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcn/domob/android/b/b;->r:I

    .line 451
    :cond_0
    sget v0, Lcn/domob/android/b/b;->r:I

    return v0
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 458
    .line 459
    invoke-static {p0}, Lcn/domob/android/b/b;->t(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 460
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 461
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 462
    const-string v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 467
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static t(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 473
    :try_start_0
    invoke-static {p0}, Lcn/domob/android/b/b;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    sget-object v0, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "network is wifi, don\'t read apn."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    move-object v0, v6

    .line 490
    :goto_0
    return-object v0

    .line 479
    :cond_0
    const-string v0, "content://telephony/carriers/preferapn"

    .line 480
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 481
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    .line 486
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 487
    goto :goto_0

    .line 488
    :catch_1
    move-exception v0

    .line 489
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 490
    goto :goto_0
.end method

.method protected static u(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 502
    invoke-static {}, Lcn/domob/android/b/b$a;->a()Lcn/domob/android/b/b$a;

    move-result-object v0

    .line 503
    invoke-static {v0, p0}, Lcn/domob/android/b/b$a;->a(Lcn/domob/android/b/b$a;Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    .line 504
    if-eqz v1, :cond_0

    .line 505
    invoke-static {v0, v1}, Lcn/domob/android/b/b$a;->a(Lcn/domob/android/b/b$a;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 508
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static v(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    invoke-static {p0}, Lcn/domob/android/ads/c/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 562
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 563
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 566
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static w(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    invoke-static {p0}, Lcn/domob/android/ads/c/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/domob/android/ads/c/e;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 580
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 581
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 584
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static x(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    invoke-static {p0}, Lcn/domob/android/ads/c/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/domob/android/ads/c/e;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 597
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 598
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 600
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static y(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v1, 0x14

    const/16 v9, 0x10

    const/4 v3, 0x0

    .line 611
    const-string v2, ""

    .line 613
    :try_start_0
    invoke-static {p0}, Lcn/domob/android/ads/c/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcn/domob/android/ads/c/e;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 614
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 615
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 616
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Landroid/net/wifi/ScanResult;

    move v4, v3

    .line 617
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 618
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    aput-object v0, v6, v4

    .line 617
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 621
    :cond_0
    new-instance v0, Lcn/domob/android/b/b$1;

    invoke-direct {v0}, Lcn/domob/android/b/b$1;-><init>()V

    invoke-static {v6, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 635
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 637
    array-length v0, v6

    if-gt v0, v1, :cond_4

    array-length v0, v6

    .line 638
    :goto_1
    if-ge v3, v0, :cond_6

    .line 639
    aget-object v1, v6, v3

    .line 640
    iget-object v5, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 641
    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 643
    invoke-static {v5}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 644
    invoke-static {v5}, Lcn/domob/android/ads/c/e;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 645
    const-string v1, "#"

    .line 648
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_2

    .line 649
    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 653
    :cond_2
    :try_start_1
    const-string v7, "UTF-8"

    invoke-static {v1, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 658
    :try_start_2
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 638
    :cond_3
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 637
    goto :goto_1

    .line 654
    :catch_0
    move-exception v1

    .line 655
    sget-object v5, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v5, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 664
    :catch_1
    move-exception v0

    .line 665
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    :cond_5
    move-object v0, v2

    .line 668
    :goto_3
    return-object v0

    .line 662
    :cond_6
    :try_start_3
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_3
.end method

.method protected static z(Landroid/content/Context;)[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 678
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    const-class v2, Lcn/domob/android/b/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "getLocationBasedService"

    invoke-virtual {v1, v2, v4}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "-1"

    aput-object v1, v4, v6

    const-string v1, "-1"

    aput-object v1, v4, v7

    const-string v1, "-1"

    aput-object v1, v4, v8

    const-string v1, "-1"

    aput-object v1, v4, v5

    .line 680
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v1}, Lcn/domob/android/ads/c/e;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Lcn/domob/android/ads/c/e;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 682
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    const-string v2, "No permission to access locationBaseInfo"

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->d(Ljava/lang/String;)V

    move-object v1, v4

    .line 727
    :goto_0
    return-object v1

    .line 686
    :cond_0
    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 687
    if-eqz v1, :cond_3

    .line 688
    sget-object v2, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    const-class v5, Lcn/domob/android/b/b;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "tManager is not null"

    invoke-virtual {v2, v5, v6}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    sget-object v2, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    const-class v5, Lcn/domob/android/b/b;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network Operator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    .line 692
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    .line 693
    if-eqz v2, :cond_2

    .line 694
    packed-switch v5, :pswitch_data_0

    .line 711
    sget-object v2, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    const-string/jumbo v5, "\u65e0\u6cd5\u83b7\u53d6\u57fa\u7ad9\u4fe1\u606f"

    invoke-virtual {v2, v5}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    :cond_1
    move v2, v3

    .line 713
    :goto_1
    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    .line 714
    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 716
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_3

    .line 717
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 718
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    const/4 v5, 0x5

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 719
    const/4 v3, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 720
    const/4 v2, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    :cond_3
    :goto_2
    move-object v1, v4

    .line 727
    goto/16 :goto_0

    .line 696
    :pswitch_0
    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 697
    if-eqz v2, :cond_1

    .line 698
    move-object v0, v2

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    .line 699
    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    goto :goto_1

    .line 703
    :pswitch_1
    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    .line 704
    if-eqz v2, :cond_1

    .line 705
    move-object v0, v2

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v3

    .line 706
    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 723
    :catch_0
    move-exception v1

    .line 724
    sget-object v2, Lcn/domob/android/b/b;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 694
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

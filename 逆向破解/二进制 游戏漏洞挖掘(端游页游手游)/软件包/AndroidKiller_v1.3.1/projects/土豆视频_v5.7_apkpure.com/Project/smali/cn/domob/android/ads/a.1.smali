.class public Lcn/domob/android/ads/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/android/ads/c/f;

.field private static b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/ads/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/a;->a:Lcn/domob/android/ads/c/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/ads/v;)V
    .locals 6

    .prologue
    .line 25
    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 26
    new-instance v0, Lcn/domob/android/ads/u;

    invoke-virtual {p3}, Lcn/domob/android/ads/v;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcn/domob/android/ads/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    new-instance v4, Lcn/domob/android/ads/u$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/u$c;-><init>(Lcn/domob/android/ads/u;)V

    .line 28
    invoke-virtual {p3}, Lcn/domob/android/ads/v;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/u$c;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {p3}, Lcn/domob/android/ads/v;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/u$c;->d:Ljava/lang/String;

    .line 30
    invoke-virtual {p3}, Lcn/domob/android/ads/v;->a()I

    move-result v1

    iput v1, v4, Lcn/domob/android/ads/u$c;->e:I

    .line 31
    invoke-virtual {p3}, Lcn/domob/android/ads/v;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/u$c;->f:Ljava/lang/String;

    .line 32
    invoke-virtual {p3}, Lcn/domob/android/ads/v;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/u$h;->b:Lcn/domob/android/ads/u$h;

    const/4 v5, 0x0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/u;->a(Ljava/lang/String;Lcn/domob/android/ads/u$h;Ljava/lang/String;Lcn/domob/android/ads/u$c;Ljava/util/HashMap;)V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/v;)V
    .locals 2

    .prologue
    .line 97
    if-eqz p1, :cond_1

    .line 98
    sget-object v0, Lcn/domob/android/ads/a;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/domob/android/ads/a;->b:Ljava/util/Hashtable;

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcn/domob/android/ads/v;->d()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    sget-object v1, Lcn/domob/android/ads/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    sget-object v0, Lcn/domob/android/ads/a;->a:Lcn/domob/android/ads/c/f;

    const-string v1, "There is no package name in ad response."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 112
    sget-object v0, Lcn/domob/android/ads/a;->b:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lcn/domob/android/ads/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/v;

    .line 114
    if-eqz v0, :cond_1

    .line 115
    sget-object v0, Lcn/domob/android/ads/a;->a:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    sget-object v0, Lcn/domob/android/ads/a;->a:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no key like "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in regPkgTalbe."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    :try_start_0
    sget-object v0, Lcn/domob/android/ads/a;->b:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v1, ""

    .line 43
    sget-object v2, Lcn/domob/android/ads/a;->a:Lcn/domob/android/ads/c/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 45
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 47
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 49
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    :try_start_2
    sget-object v0, Lcn/domob/android/ads/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    sget-object v0, Lcn/domob/android/ads/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/v;

    .line 61
    const-string v1, "install_success"

    invoke-direct {p0, p1, v1, v0}, Lcn/domob/android/ads/a;->a(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/ads/v;)V

    .line 62
    sget-object v1, Lcn/domob/android/ads/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/domob/android/ads/v;

    invoke-virtual {v1}, Lcn/domob/android/ads/v;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    sget-object v1, Lcn/domob/android/ads/a;->a:Lcn/domob/android/ads/c/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auto run the app:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    const-string/jumbo v1, "run"

    invoke-direct {p0, p1, v1, v0}, Lcn/domob/android/ads/a;->a(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/ads/v;)V

    .line 85
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcn/domob/android/ads/a;->a(Ljava/lang/String;)V

    .line 94
    :cond_1
    :goto_1
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    sget-object v2, Lcn/domob/android/ads/a;->a:Lcn/domob/android/ads/c/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u7cfb\u7edf\u65e0\u6cd5\u627e\u5230\u5305\u540d\u5bf9\u5e94App\uff0c\u8bf7\u786e\u8ba4\u8be5\u5305\u662f\u5426\u88ab\u5b89\u88c5 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 52
    sget-object v1, Lcn/domob/android/ads/a;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 91
    :catch_1
    move-exception v0

    .line 92
    sget-object v1, Lcn/domob/android/ads/a;->a:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 73
    :cond_2
    :try_start_3
    sget-object v0, Lcn/domob/android/ads/a;->a:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u7cfb\u7edf\u65e0\u6cd5\u627e\u5230\u5305\u540d\u5bf9\u5e94App\uff0c\u8bf7\u786e\u8ba4\u8be5\u5305\u662f\u5426\u88ab\u5b89\u88c5 : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_3
    sget-object v0, Lcn/domob/android/c/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 78
    if-eqz v0, :cond_0

    .line 79
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 87
    :cond_4
    sget-object v0, Lcn/domob/android/ads/a;->a:Lcn/domob/android/ads/c/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u8be5\u5305\u540d\u6ca1\u6709\u88ab\u6ce8\u518c\uff0c\u4e0d\u8fdb\u884creport : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

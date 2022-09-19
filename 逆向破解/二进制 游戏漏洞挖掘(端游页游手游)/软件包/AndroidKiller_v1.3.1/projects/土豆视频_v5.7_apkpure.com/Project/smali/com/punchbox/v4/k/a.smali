.class public Lcom/punchbox/v4/k/a;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/punchbox/v4/h/h;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Landroid/os/Handler;

.field private e:Landroid/os/Looper;

.field private f:Ljava/lang/Object;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/punchbox/v4/k/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/v4/k/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/punchbox/v4/h/h;

    invoke-direct {v0}, Lcom/punchbox/v4/h/h;-><init>()V

    iput-object v0, p0, Lcom/punchbox/v4/k/a;->b:Lcom/punchbox/v4/h/h;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/punchbox/v4/k/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/punchbox/v4/k/a;->f:Ljava/lang/Object;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TriggerHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/v4/k/a;->e:Landroid/os/Looper;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/punchbox/v4/k/a;->e:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/punchbox/v4/k/a;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/punchbox/v4/k/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object p1, p0, Lcom/punchbox/v4/k/a;->g:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;Lcom/punchbox/data/DownloadCompleteInfo;)Lcom/punchbox/data/AppInfo;
    .locals 4

    new-instance v0, Lcom/punchbox/data/AppInfo;

    invoke-direct {v0}, Lcom/punchbox/data/AppInfo;-><init>()V

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/punchbox/data/AppInfo;->pkg:Ljava/lang/String;

    iget-object v1, p3, Lcom/punchbox/data/DownloadCompleteInfo;->fileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/punchbox/data/AppInfo;->apk:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, v0, Lcom/punchbox/data/AppInfo;->vern:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, v0, Lcom/punchbox/data/AppInfo;->verc:I

    :try_start_0
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/punchbox/data/AppInfo;->appname:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lcom/punchbox/v4/k/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appInfo.appname:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/punchbox/data/AppInfo;->appname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/punchbox/util/i;->a(Landroid/content/pm/PackageInfo;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/punchbox/data/AppInfo;->tms:J

    return-object v0

    :catch_0
    move-exception v1

    const-string v1, ""

    iput-object v1, v0, Lcom/punchbox/data/AppInfo;->appname:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/punchbox/data/DownloadCompleteInfo;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/v4/k/a;->b:Lcom/punchbox/v4/h/h;

    invoke-virtual {v0, p1}, Lcom/punchbox/v4/h/h;->c(Ljava/lang/String;)Lcom/punchbox/data/DownloadCompleteInfo;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/punchbox/data/AppInfo;ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "http://service.cocounion.com/core/url?"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%s=%s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "pkg"

    aput-object v4, v3, v6

    iget-object v4, p1, Lcom/punchbox/data/AppInfo;->pkg:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%s=%s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "apk"

    aput-object v4, v3, v6

    iget-object v4, p1, Lcom/punchbox/data/AppInfo;->apk:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%s=%s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "vern"

    aput-object v4, v3, v6

    iget-object v4, p1, Lcom/punchbox/data/AppInfo;->vern:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%s=%s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "verc"

    aput-object v4, v3, v6

    iget v4, p1, Lcom/punchbox/data/AppInfo;->verc:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%s=%s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "appname"

    aput-object v4, v3, v6

    iget-object v4, p1, Lcom/punchbox/data/AppInfo;->appname:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%s=%s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "tms"

    aput-object v4, v3, v6

    iget-wide v4, p1, Lcom/punchbox/data/AppInfo;->tms:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%s=%d"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "evt"

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    const-string v5, "pid="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "appv="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;Landroid/content/Context;I)V
    .locals 2

    iget-object v0, p0, Lcom/punchbox/v4/k/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/punchbox/v4/k/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/punchbox/v4/k/c;-><init>(Lcom/punchbox/v4/k/a;Lcom/punchbox/v4/k/b;)V

    invoke-static {v0, p1}, Lcom/punchbox/v4/k/c;->a(Lcom/punchbox/v4/k/c;Landroid/content/Intent;)Landroid/content/Intent;

    invoke-static {v0, p2}, Lcom/punchbox/v4/k/c;->a(Lcom/punchbox/v4/k/c;Landroid/content/Context;)Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/punchbox/v4/k/c;->a(Lcom/punchbox/v4/k/c;I)I

    new-instance v1, Lcom/punchbox/v4/k/d;

    invoke-direct {v1, p0, v0}, Lcom/punchbox/v4/k/d;-><init>(Lcom/punchbox/v4/k/a;Lcom/punchbox/v4/k/c;)V

    iget-object v0, p0, Lcom/punchbox/v4/k/a;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/punchbox/v4/k/a;Landroid/content/Intent;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/punchbox/v4/k/a;->b(Landroid/content/Intent;Landroid/content/Context;I)V

    return-void
.end method

.method private b(Landroid/content/Intent;Landroid/content/Context;I)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/16 v2, 0x1000

    :try_start_1
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    move-object v2, v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/punchbox/util/i;->b(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/punchbox/util/i;->c(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    :goto_2
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_3
    move-object v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/punchbox/v4/k/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "uninstall,packageinfo is null"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/punchbox/v4/k/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query db this package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/punchbox/engine/i;->n:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/punchbox/v4/k/a;->g:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/punchbox/util/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-direct {p0, v3}, Lcom/punchbox/v4/k/a;->a(Ljava/lang/String;)Lcom/punchbox/data/DownloadCompleteInfo;

    move-result-object v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/punchbox/v4/k/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not found this record  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v4, v0, Lcom/punchbox/data/DownloadCompleteInfo;->adInfo:Ljava/lang/String;

    if-eqz v4, :cond_7

    const-string v5, "pred=1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_7

    new-instance v5, Lcom/punchbox/v4/h/k;

    invoke-direct {v5}, Lcom/punchbox/v4/h/k;-><init>()V

    invoke-virtual {v5, v4}, Lcom/punchbox/v4/h/k;->e(Ljava/lang/String;)I

    invoke-virtual {v5, v4}, Lcom/punchbox/v4/h/k;->c(Ljava/lang/String;)Lcom/punchbox/engine/PreDownloadData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/punchbox/engine/PreDownloadData;->j()I

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/punchbox/data/DownloadCompleteInfo;->adInfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&cadtype="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/punchbox/engine/PreDownloadData;->j()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/punchbox/data/DownloadCompleteInfo;->adInfo:Ljava/lang/String;

    :cond_6
    invoke-virtual {v4}, Lcom/punchbox/engine/PreDownloadData;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v0, Lcom/punchbox/data/DownloadCompleteInfo;->adInfo:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/punchbox/engine/PreDownloadData;->k()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lcom/punchbox/v4/k/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/punchbox/data/DownloadCompleteInfo;->adInfo:Ljava/lang/String;

    :cond_7
    sget-object v4, Lcom/punchbox/v4/k/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "find it !  prepare upload packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2, v0}, Lcom/punchbox/v4/k/a;->a(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;Lcom/punchbox/data/DownloadCompleteInfo;)Lcom/punchbox/data/AppInfo;

    move-result-object v1

    iget-object v0, v0, Lcom/punchbox/data/DownloadCompleteInfo;->adInfo:Ljava/lang/String;

    invoke-direct {p0, v1, p3, v0}, Lcom/punchbox/v4/k/a;->a(Lcom/punchbox/data/AppInfo;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/punchbox/v4/k/a;->a:Ljava/lang/String;

    const-string v2, "Before report......"

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/punchbox/v4/k/a;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/punchbox/report/j;->a(Landroid/content/Context;)Lcom/punchbox/report/j;

    move-result-object v1

    const-string v2, "InstallationList"

    invoke-virtual {v1, v0, v2}, Lcom/punchbox/report/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/punchbox/v4/k/a;->a:Ljava/lang/String;

    const-string v1, "After report......"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/v4/k/a;->b:Lcom/punchbox/v4/h/h;

    invoke-virtual {v0, v3}, Lcom/punchbox/v4/h/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/v4/k/a;->g:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/punchbox/util/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_1
    move-exception v2

    goto/16 :goto_3
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/punchbox/v4/k/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare handle action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/punchbox/v4/k/a;->a:Ljava/lang/String;

    const-string v1, "application install ........"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1f

    invoke-direct {p0, p2, p1, v0}, Lcom/punchbox/v4/k/a;->a(Landroid/content/Intent;Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/punchbox/v4/k/a;->a:Ljava/lang/String;

    const-string v1, "application uninstall ........"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x21

    invoke-direct {p0, p2, p1, v0}, Lcom/punchbox/v4/k/a;->a(Landroid/content/Intent;Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/punchbox/v4/k/a;->a:Ljava/lang/String;

    const-string v1, "application replaced ........"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x22

    invoke-direct {p0, p2, p1, v0}, Lcom/punchbox/v4/k/a;->a(Landroid/content/Intent;Landroid/content/Context;I)V

    goto :goto_0
.end method

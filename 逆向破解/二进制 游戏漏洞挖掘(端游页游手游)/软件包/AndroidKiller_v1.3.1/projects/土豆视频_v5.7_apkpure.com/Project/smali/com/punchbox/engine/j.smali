.class public Lcom/punchbox/engine/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/punchbox/v4/f/a;


# static fields
.field public static a:Ljava/lang/String;

.field private static c:Lcom/punchbox/engine/j;

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I


# instance fields
.field b:Lcom/punchbox/v4/a/e;

.field private h:Landroid/content/Context;

.field private i:Z

.field private j:Lcom/punchbox/engine/r;

.field private k:Ljava/util/concurrent/ExecutorService;

.field private l:Landroid/app/NotificationManager;

.field private m:Landroid/content/pm/PackageManager;

.field private n:Lcom/punchbox/engine/y;

.field private o:Landroid/os/Handler;

.field private p:Lcom/punchbox/v4/f/b;

.field private q:Z

.field private r:I

.field private s:Lcom/punchbox/engine/z;

.field private t:Ljava/lang/Thread;

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/punchbox/engine/r;",
            ">;"
        }
    .end annotation
.end field

.field private v:Landroid/os/Handler;

.field private w:Landroid/content/BroadcastReceiver;

.field private x:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Lcom/punchbox/engine/j;->d:I

    const/16 v0, 0x1388

    sput v0, Lcom/punchbox/engine/j;->e:I

    const/4 v0, 0x4

    sput v0, Lcom/punchbox/engine/j;->f:I

    const/16 v0, 0xa

    sput v0, Lcom/punchbox/engine/j;->g:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/punchbox/engine/j;->u:Ljava/util/ArrayList;

    new-instance v0, Lcom/punchbox/engine/k;

    invoke-direct {v0, p0}, Lcom/punchbox/engine/k;-><init>(Lcom/punchbox/engine/j;)V

    iput-object v0, p0, Lcom/punchbox/engine/j;->v:Landroid/os/Handler;

    new-instance v0, Lcom/punchbox/engine/l;

    invoke-direct {v0, p0}, Lcom/punchbox/engine/l;-><init>(Lcom/punchbox/engine/j;)V

    iput-object v0, p0, Lcom/punchbox/engine/j;->w:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/punchbox/engine/m;

    invoke-direct {v0, p0}, Lcom/punchbox/engine/m;-><init>(Lcom/punchbox/engine/j;)V

    iput-object v0, p0, Lcom/punchbox/engine/j;->x:Ljava/lang/Runnable;

    const-string v0, "CoCoAdSDK-DownloadManager"

    const-string v1, "Construct DownloadManager"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/punchbox/engine/j;->h:Landroid/content/Context;

    iget-object v0, p0, Lcom/punchbox/engine/j;->h:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/punchbox/engine/j;->l:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/punchbox/engine/j;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/engine/j;->m:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/punchbox/engine/y;

    sget v1, Lcom/punchbox/engine/j;->d:I

    new-instance v2, Lcom/punchbox/engine/x;

    invoke-direct {v2}, Lcom/punchbox/engine/x;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/punchbox/engine/y;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/punchbox/engine/j;->n:Lcom/punchbox/engine/y;

    iget-object v0, p0, Lcom/punchbox/engine/j;->n:Lcom/punchbox/engine/y;

    invoke-virtual {v0}, Lcom/punchbox/engine/y;->clear()V

    iget-object v0, p0, Lcom/punchbox/engine/j;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object p2, p0, Lcom/punchbox/engine/j;->o:Landroid/os/Handler;

    iget-object v0, p0, Lcom/punchbox/engine/j;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/punchbox/v4/f/b;->a(Landroid/content/Context;)Lcom/punchbox/v4/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/engine/j;->p:Lcom/punchbox/v4/f/b;

    iget-object v0, p0, Lcom/punchbox/engine/j;->p:Lcom/punchbox/v4/f/b;

    invoke-virtual {v0, p0}, Lcom/punchbox/v4/f/b;->a(Lcom/punchbox/v4/f/a;)V

    sget-object v0, Lcom/punchbox/engine/j;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/punchbox/engine/j;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/engine/j;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Landroid/os/Handler;)Lcom/punchbox/engine/j;
    .locals 2

    const-class v1, Lcom/punchbox/engine/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/punchbox/engine/j;->c:Lcom/punchbox/engine/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/punchbox/engine/j;

    invoke-direct {v0, p0, p1}, Lcom/punchbox/engine/j;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/punchbox/engine/j;->c:Lcom/punchbox/engine/j;

    :cond_0
    sget-object v0, Lcom/punchbox/engine/j;->c:Lcom/punchbox/engine/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/r;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/j;->j:Lcom/punchbox/engine/r;

    return-object v0
.end method

.method static synthetic a(Lcom/punchbox/engine/j;Lcom/punchbox/engine/r;)Lcom/punchbox/engine/r;
    .locals 0

    iput-object p1, p0, Lcom/punchbox/engine/j;->j:Lcom/punchbox/engine/r;

    return-object p1
.end method

.method static synthetic a(Lcom/punchbox/engine/j;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/punchbox/engine/j;->t:Ljava/lang/Thread;

    return-object p1
.end method

.method private a(I)V
    .locals 4

    const-string v0, "CoCoAdSDK-DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/punchbox/engine/j;->j:Lcom/punchbox/engine/r;

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->o()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/punchbox/engine/j;->j:Lcom/punchbox/engine/r;

    invoke-direct {p0}, Lcom/punchbox/engine/j;->e()V

    iget-object v0, p0, Lcom/punchbox/engine/j;->v:Landroid/os/Handler;

    const/4 v1, 0x6

    sget v2, Lcom/punchbox/engine/j;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :sswitch_0
    new-instance v0, Lcom/punchbox/v4/h/j;

    invoke-direct {v0}, Lcom/punchbox/v4/h/j;-><init>()V

    iget-object v1, p0, Lcom/punchbox/engine/j;->j:Lcom/punchbox/engine/r;

    invoke-virtual {v1}, Lcom/punchbox/engine/r;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/punchbox/v4/h/j;->b(J)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/punchbox/engine/j;->n:Lcom/punchbox/engine/y;

    invoke-virtual {v0}, Lcom/punchbox/engine/y;->remove()Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/punchbox/engine/j;->n:Lcom/punchbox/engine/y;

    invoke-virtual {v0}, Lcom/punchbox/engine/y;->remove()Ljava/lang/Object;

    iget-object v0, p0, Lcom/punchbox/engine/j;->j:Lcom/punchbox/engine/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/engine/j;->j:Lcom/punchbox/engine/r;

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->d()Lcom/punchbox/engine/w;

    move-result-object v0

    sget-object v1, Lcom/punchbox/engine/w;->b:Lcom/punchbox/engine/w;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/punchbox/engine/j;->v:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/punchbox/engine/j;->n:Lcom/punchbox/engine/y;

    invoke-virtual {v0}, Lcom/punchbox/engine/y;->remove()Ljava/lang/Object;

    iget-object v0, p0, Lcom/punchbox/engine/j;->v:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/punchbox/engine/j;->n:Lcom/punchbox/engine/y;

    invoke-virtual {v0}, Lcom/punchbox/engine/y;->remove()Ljava/lang/Object;

    iget-object v0, p0, Lcom/punchbox/engine/j;->v:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x836 -> :sswitch_3
        0x83b -> :sswitch_4
        0x83d -> :sswitch_0
        0x83e -> :sswitch_2
        0x89d -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic a(Lcom/punchbox/engine/j;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/punchbox/engine/j;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/punchbox/engine/j;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/punchbox/engine/j;->b(II)V

    return-void
.end method

.method static synthetic a(Lcom/punchbox/engine/j;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/punchbox/engine/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/punchbox/engine/j;->h:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;IZ)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "CoCoAdSDK-DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Before query packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/punchbox/engine/j;->m:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const-string v3, "CoCoAdSDK-DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installedAppPkgInfo:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_1

    const-string v1, ""

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lt v1, p2, :cond_0

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/punchbox/engine/j;->h:Landroid/content/Context;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/punchbox/util/i;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "CoCoAdSDK-DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/punchbox/engine/j;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/j;->l:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3

    :try_start_0
    const-string v0, "CoCoAdSDK-DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Before query packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/j;->m:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "CoCoAdSDK-DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/punchbox/engine/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/punchbox/engine/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(II)V
    .locals 4

    iget-object v0, p0, Lcom/punchbox/engine/j;->j:Lcom/punchbox/engine/r;

    invoke-static {v0, p1, p2}, Lcom/punchbox/engine/p;->a(Lcom/punchbox/engine/r;II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoCoAdSDK-DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/punchbox/engine/j;->v:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/punchbox/v4/h/i;

    invoke-direct {v1}, Lcom/punchbox/v4/h/i;-><init>()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "adInfo"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file_name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/punchbox/v4/h/i;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/punchbox/util/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/punchbox/v4/h/h;

    invoke-direct {v3}, Lcom/punchbox/v4/h/h;-><init>()V

    invoke-virtual {v3, p1}, Lcom/punchbox/v4/h/h;->c(Ljava/lang/String;)Lcom/punchbox/data/DownloadCompleteInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/punchbox/engine/j;->m:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    :cond_0
    const-string v3, "CoCoAdSDK-DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadedAppPkgInfo:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_1

    const-string v1, ""

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lt v0, p3, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    const-string v0, "CoCoAdSDK-DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentRequest PRI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/engine/j;->j:Lcom/punchbox/engine/r;

    invoke-virtual {v2}, Lcom/punchbox/engine/r;->d()Lcom/punchbox/engine/w;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/j;->j:Lcom/punchbox/engine/r;

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->d()Lcom/punchbox/engine/w;

    move-result-object v0

    sget-object v1, Lcom/punchbox/engine/w;->a:Lcom/punchbox/engine/w;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/punchbox/engine/j;->v:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/punchbox/engine/j;->v:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    const/16 v0, 0x8a0

    invoke-virtual {p0, p1, p2, v0}, Lcom/punchbox/engine/j;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/punchbox/engine/j;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/punchbox/engine/j;->b(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/z;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/j;->s:Lcom/punchbox/engine/z;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/punchbox/engine/j;->m:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/punchbox/engine/j;->t:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/punchbox/engine/j;->x:Ljava/lang/Runnable;

    const-string v2, "AsyncDBQuery"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/punchbox/engine/j;->t:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/punchbox/engine/j;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/punchbox/engine/j;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/j;->h:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .locals 2

    const-string v0, "CoCoAdSDK-DownloadManager"

    const-string v1, "delete expire predown data."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/punchbox/v4/h/k;

    invoke-direct {v0}, Lcom/punchbox/v4/h/k;-><init>()V

    invoke-virtual {v0}, Lcom/punchbox/v4/h/k;->e()V

    return-void
.end method

.method static synthetic d(Lcom/punchbox/engine/j;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/punchbox/engine/j;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_3
    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual {v3}, Ljava/util/Date;->getMonth()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual {v3}, Ljava/util/Date;->getDay()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/Date;->getDay()I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v2

    if-ne v3, v2, :cond_3

    const/4 v0, 0x1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v2

    :goto_1
    :try_start_5
    const-string v2, "CoCoAdSDK-DownloadManager"

    const-string v3, "file not found."

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_2
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "CoCoAdSDK-DownloadManager"

    const-string v3, "read file exception."

    invoke-static {v1, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v2, :cond_0

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :cond_2
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    goto :goto_4

    :cond_3
    if-eqz v1, :cond_0

    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_2

    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method static synthetic e(Lcom/punchbox/engine/j;)Lcom/punchbox/engine/y;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/j;->n:Lcom/punchbox/engine/y;

    return-object v0
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcom/punchbox/engine/j;->n:Lcom/punchbox/engine/y;

    invoke-virtual {v0}, Lcom/punchbox/engine/y;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v0, "CoCoAdSDK-DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queue Size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/punchbox/engine/j;->n:Lcom/punchbox/engine/y;

    invoke-virtual {v3}, Lcom/punchbox/engine/y;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CoCoAdSDK-DownloadManager"

    const-string v2, "=============DUMP QUEUE BEGIN=============="

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/punchbox/engine/r;

    const-string v2, "CoCoAdSDK-DownloadManager"

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "CoCoAdSDK-DownloadManager"

    const-string v1, "=============DUMP QUEUE END================"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/punchbox/engine/j;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/punchbox/engine/j;->e(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    :try_start_3
    const-string v1, "CoCoAdSDK-DownloadManager"

    const-string v2, "File not found"

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_5
    const-string v1, "CoCoAdSDK-DownloadManager"

    const-string v2, "IOException"

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_1
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static synthetic f(Lcom/punchbox/engine/j;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/j;->u:Ljava/util/ArrayList;

    return-object v0
.end method

.method private f()V
    .locals 19

    const-string v2, "CoCoAdSDK-DownloadManager"

    const-string v3, "queryPendingRequestFromDB."

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/punchbox/v4/h/i;

    invoke-direct {v2}, Lcom/punchbox/v4/h/i;-><init>()V

    invoke-virtual {v2}, Lcom/punchbox/v4/h/i;->d()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "CoCoAdSDK-DownloadManager"

    const-string v3, "DownloadManager getDownload data :null"

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/j;->v:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/punchbox/engine/j;->u:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/punchbox/engine/DownloadData;

    move-object v14, v0

    iget-wide v2, v14, Lcom/punchbox/engine/DownloadData;->download_status:J

    sget v4, Lcom/punchbox/engine/e;->a:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    const/4 v2, 0x1

    move v7, v2

    :goto_2
    iget-object v2, v14, Lcom/punchbox/engine/DownloadData;->adInfo:Ljava/lang/String;

    const/16 v16, 0x0

    if-eqz v2, :cond_1

    const-string v3, "&pred=1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v16, 0x1

    :cond_1
    new-instance v2, Lcom/punchbox/engine/r;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/punchbox/engine/j;->h:Landroid/content/Context;

    iget-object v4, v14, Lcom/punchbox/engine/DownloadData;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/punchbox/engine/j;->v:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/punchbox/engine/j;->k:Ljava/util/concurrent/ExecutorService;

    if-eqz v7, :cond_3

    sget-object v7, Lcom/punchbox/engine/w;->b:Lcom/punchbox/engine/w;

    :goto_3
    iget-wide v8, v14, Lcom/punchbox/engine/DownloadData;->id:J

    iget-wide v10, v14, Lcom/punchbox/engine/DownloadData;->total_size:J

    long-to-int v10, v10

    iget-object v11, v14, Lcom/punchbox/engine/DownloadData;->adInfo:Ljava/lang/String;

    iget-wide v12, v14, Lcom/punchbox/engine/DownloadData;->download_status:J

    long-to-int v12, v12

    iget-object v13, v14, Lcom/punchbox/engine/DownloadData;->pkg_name:Ljava/lang/String;

    iget-object v14, v14, Lcom/punchbox/engine/DownloadData;->version:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-direct/range {v2 .. v16}, Lcom/punchbox/engine/r;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;Lcom/punchbox/engine/w;JILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/punchbox/engine/j;->u:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "CoCoAdSDK-DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadManager getDownload data :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/punchbox/engine/j;->u:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    const/4 v2, 0x0

    move v7, v2

    goto :goto_2

    :cond_3
    :try_start_1
    sget-object v7, Lcom/punchbox/engine/w;->a:Lcom/punchbox/engine/w;

    goto :goto_3

    :cond_4
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/punchbox/engine/j;->v:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private g()V
    .locals 3

    new-instance v0, Lcom/punchbox/v4/h/k;

    invoke-direct {v0}, Lcom/punchbox/v4/h/k;-><init>()V

    invoke-virtual {v0}, Lcom/punchbox/v4/h/k;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/j;->v:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic g(Lcom/punchbox/engine/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/engine/j;->e()V

    return-void
.end method

.method static synthetic h(Lcom/punchbox/engine/j;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/punchbox/engine/j;->q:Z

    return v0
.end method

.method static synthetic i(Lcom/punchbox/engine/j;)Lcom/punchbox/v4/f/b;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/j;->p:Lcom/punchbox/v4/f/b;

    return-object v0
.end method

.method static synthetic j(Lcom/punchbox/engine/j;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/j;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/punchbox/engine/j;)I
    .locals 1

    iget v0, p0, Lcom/punchbox/engine/j;->r:I

    return v0
.end method

.method static synthetic l(Lcom/punchbox/engine/j;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/j;->m:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic m(Lcom/punchbox/engine/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/engine/j;->f()V

    return-void
.end method

.method static synthetic n(Lcom/punchbox/engine/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/engine/j;->g()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "CoCoAdSDK-DownloadManager"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/punchbox/engine/j;->i:Z

    if-ne v0, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/punchbox/engine/j;->f:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/engine/j;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/punchbox/engine/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/punchbox/engine/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/punchbox/engine/j;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/punchbox/engine/j;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/punchbox/util/i;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/punchbox/v4/h/i;

    invoke-direct {v0}, Lcom/punchbox/v4/h/i;-><init>()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "download_status"

    sget v3, Lcom/punchbox/engine/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v5, v5}, Lcom/punchbox/v4/h/i;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/punchbox/engine/j;->c()V

    invoke-direct {p0}, Lcom/punchbox/engine/j;->d()V

    iput-boolean v4, p0, Lcom/punchbox/engine/j;->i:Z

    goto :goto_0
.end method

.method public a(II)V
    .locals 3

    const-string v0, "CoCoAdSDK-DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectivityChanged, networkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/punchbox/engine/d;->d:I

    if-ne p2, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/punchbox/engine/j;->q:Z

    iput p1, p0, Lcom/punchbox/engine/j;->r:I

    const-string v0, "CoCoAdSDK-DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsNetworkAvailable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/punchbox/engine/j;->q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/engine/j;->j:Lcom/punchbox/engine/r;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/punchbox/engine/j;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/engine/j;->j:Lcom/punchbox/engine/r;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/punchbox/engine/j;->u:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/punchbox/engine/d;->c:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/punchbox/engine/j;->c()V

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized a(Landroid/os/Messenger;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/punchbox/engine/j;->n:Lcom/punchbox/engine/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/engine/j;->n:Lcom/punchbox/engine/y;

    invoke-virtual {v0}, Lcom/punchbox/engine/y;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/punchbox/engine/j;->n:Lcom/punchbox/engine/y;

    invoke-virtual {v0}, Lcom/punchbox/engine/y;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/punchbox/engine/r;

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const/4 v0, 0x0

    const/16 v2, 0x66

    :try_start_2
    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "package_list"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v0, "CoCoAdSDK-DownloadManager"

    const-string v1, "Remote app died, we can do nothing."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public a(Lcom/punchbox/engine/z;)V
    .locals 1

    iget-boolean v0, p0, Lcom/punchbox/engine/j;->i:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/punchbox/engine/j;->s:Lcom/punchbox/engine/z;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/punchbox/engine/o;

    invoke-direct {v1, p0, p1, p2}, Lcom/punchbox/engine/o;-><init>(Lcom/punchbox/engine/j;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    sget v0, Lcom/punchbox/engine/g;->a:I

    invoke-static {p1, p2, v0, p3}, Lcom/punchbox/engine/p;->a(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoCoAdSDK-DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/punchbox/engine/j;->v:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12

    iget-boolean v0, p0, Lcom/punchbox/engine/j;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/punchbox/engine/j;->a()V

    :cond_0
    const/4 v1, 0x0

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    move-object v2, p1

    :goto_0
    if-nez p3, :cond_1

    const-string v3, "CoCoAdSDK-DownloadManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloaUrl:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", adInfo:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", fragment:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_5

    const-string v0, "null"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", url:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_6

    const-string v0, "null"

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_2

    if-nez v1, :cond_7

    :cond_2
    const-string v0, "CoCoAdSDK-DownloadManager"

    const-string v1, "Invalid parameters"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x899

    invoke-virtual {p0, p1, p2, v0}, Lcom/punchbox/engine/j;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    const/4 v0, 0x0

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1

    :cond_6
    move-object v0, v2

    goto :goto_2

    :cond_7
    invoke-static {v1}, Lcom/punchbox/util/h;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "pkg"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v1, "dlappv"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v0, "CoCoAdSDK-DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", appVerCode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_4
    invoke-direct {p0, v7, v0, p3}, Lcom/punchbox/engine/j;->a(Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x89a

    invoke-virtual {p0, p1, p2, v0}, Lcom/punchbox/engine/j;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :catch_0
    move-exception v0

    const/high16 v0, -0x80000000

    goto :goto_4

    :cond_8
    invoke-direct {p0, v7, p1, v0}, Lcom/punchbox/engine/j;->b(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "CoCoAdSDK-DownloadManager"

    const-string v1, "App downloaded, try to install it"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x89b

    invoke-virtual {p0, p1, p2, v0}, Lcom/punchbox/engine/j;->a(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lcom/punchbox/v4/h/h;

    invoke-direct {v0}, Lcom/punchbox/v4/h/h;-><init>()V

    invoke-virtual {v0, v7, p2}, Lcom/punchbox/v4/h/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/punchbox/util/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/punchbox/engine/j;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    new-instance v0, Lcom/punchbox/engine/r;

    iget-object v1, p0, Lcom/punchbox/engine/j;->h:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/punchbox/engine/j;->v:Landroid/os/Handler;

    iget-object v4, p0, Lcom/punchbox/engine/j;->k:Ljava/util/concurrent/ExecutorService;

    if-eqz p3, :cond_b

    sget-object v5, Lcom/punchbox/engine/w;->a:Lcom/punchbox/engine/w;

    :goto_5
    const/4 v9, 0x0

    iget-object v6, p0, Lcom/punchbox/engine/j;->p:Lcom/punchbox/v4/f/b;

    invoke-virtual {v6}, Lcom/punchbox/v4/f/b;->c()Z

    move-result v10

    move-object v6, p2

    move v11, p3

    invoke-direct/range {v0 .. v11}, Lcom/punchbox/engine/r;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;Lcom/punchbox/engine/w;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    iget-boolean v1, p0, Lcom/punchbox/engine/j;->q:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/punchbox/engine/j;->v:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_a
    iget-object v1, p0, Lcom/punchbox/engine/j;->j:Lcom/punchbox/engine/r;

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/punchbox/engine/j;->n:Lcom/punchbox/engine/y;

    invoke-virtual {v1, v0}, Lcom/punchbox/engine/y;->a(Lcom/punchbox/engine/r;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/punchbox/engine/j;->v:Landroid/os/Handler;

    const/4 v1, 0x6

    sget-object v2, Lcom/punchbox/engine/n;->b:Lcom/punchbox/engine/n;

    invoke-virtual {v2}, Lcom/punchbox/engine/n;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3

    :cond_b
    sget-object v5, Lcom/punchbox/engine/w;->b:Lcom/punchbox/engine/w;

    goto :goto_5

    :cond_c
    const/16 v0, 0x89f

    invoke-virtual {p0, p1, p2, v0}, Lcom/punchbox/engine/j;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_d
    iget-object v1, p0, Lcom/punchbox/engine/j;->j:Lcom/punchbox/engine/r;

    invoke-virtual {v1}, Lcom/punchbox/engine/r;->e()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0}, Lcom/punchbox/engine/r;->e()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v0, "CoCoAdSDK-DownloadManager"

    const-string v1, "Found dup request"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/punchbox/engine/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_3

    iget-object v0, p0, Lcom/punchbox/engine/j;->v:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/punchbox/engine/j;->j:Lcom/punchbox/engine/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/punchbox/engine/r;->a(Z)V

    iget-object v0, p0, Lcom/punchbox/engine/j;->b:Lcom/punchbox/v4/a/e;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/punchbox/engine/j;->l:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/punchbox/engine/j;->j:Lcom/punchbox/engine/r;

    invoke-virtual {v1}, Lcom/punchbox/engine/r;->a()I

    move-result v1

    iget-object v2, p0, Lcom/punchbox/engine/j;->b:Lcom/punchbox/v4/a/e;

    invoke-virtual {v2}, Lcom/punchbox/v4/a/e;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/punchbox/engine/j;->j:Lcom/punchbox/engine/r;

    sget-object v1, Lcom/punchbox/engine/w;->b:Lcom/punchbox/engine/w;

    invoke-virtual {v0, v1}, Lcom/punchbox/engine/r;->a(Lcom/punchbox/engine/w;)V

    :cond_e
    const/16 v0, 0x89c

    invoke-virtual {p0, p1, p2, v0}, Lcom/punchbox/engine/j;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_f
    iget-object v1, p0, Lcom/punchbox/engine/j;->n:Lcom/punchbox/engine/y;

    invoke-virtual {v1, v0}, Lcom/punchbox/engine/y;->a(Lcom/punchbox/engine/r;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.punchbox.action.start_download"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "packagename"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/punchbox/engine/j;->h:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/punchbox/engine/j;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/punchbox/engine/r;->a(Z)V

    goto/16 :goto_3

    :cond_10
    iget-object v1, p0, Lcom/punchbox/engine/j;->n:Lcom/punchbox/engine/y;

    invoke-virtual {v1, v0}, Lcom/punchbox/engine/y;->b(Lcom/punchbox/engine/r;)Lcom/punchbox/engine/r;

    move-result-object v0

    if-eqz v0, :cond_11

    sget-object v1, Lcom/punchbox/engine/w;->b:Lcom/punchbox/engine/w;

    invoke-virtual {v0, v1}, Lcom/punchbox/engine/r;->a(Lcom/punchbox/engine/w;)V

    iget-object v1, p0, Lcom/punchbox/engine/j;->n:Lcom/punchbox/engine/y;

    invoke-virtual {v1, v0}, Lcom/punchbox/engine/y;->a(Lcom/punchbox/engine/r;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/punchbox/engine/j;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto/16 :goto_3

    :cond_11
    if-nez p3, :cond_12

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.punchbox.action.start_download"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "packagename"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/punchbox/engine/j;->h:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/punchbox/engine/j;->v:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_12
    const/16 v0, 0x8a0

    invoke-virtual {p0, p1, p2, v0}, Lcom/punchbox/engine/j;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "CoCoAdSDK-DownloadManager"

    const-string/jumbo v1, "unInitialize"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/punchbox/engine/j;->i:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/punchbox/engine/j;->k:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/engine/j;->k:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iput-object v2, p0, Lcom/punchbox/engine/j;->k:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, p0, Lcom/punchbox/engine/j;->t:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/punchbox/engine/j;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    iput-object v2, p0, Lcom/punchbox/engine/j;->t:Ljava/lang/Thread;

    :cond_2
    iget-object v0, p0, Lcom/punchbox/engine/j;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/punchbox/engine/j;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/punchbox/engine/j;->i:Z

    goto :goto_0
.end method

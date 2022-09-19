.class public Lcom/punchbox/v4/k/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/punchbox/v4/k/e;


# instance fields
.field private b:Lcom/punchbox/v4/k/a;

.field private volatile c:Z

.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/punchbox/v4/k/e;->c:Z

    iput-object p1, p0, Lcom/punchbox/v4/k/e;->d:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/punchbox/v4/k/e;
    .locals 2

    sget-object v0, Lcom/punchbox/v4/k/e;->a:Lcom/punchbox/v4/k/e;

    if-nez v0, :cond_1

    const-class v1, Lcom/punchbox/v4/k/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/punchbox/v4/k/e;->a:Lcom/punchbox/v4/k/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/punchbox/v4/k/e;

    invoke-direct {v0, p0}, Lcom/punchbox/v4/k/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/punchbox/v4/k/e;->a:Lcom/punchbox/v4/k/e;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/punchbox/v4/k/e;->a:Lcom/punchbox/v4/k/e;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()V
    .locals 3

    new-instance v0, Lcom/punchbox/v4/k/a;

    iget-object v1, p0, Lcom/punchbox/v4/k/e;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/punchbox/v4/k/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/punchbox/v4/k/e;->b:Lcom/punchbox/v4/k/a;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/punchbox/v4/k/e;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/punchbox/v4/k/e;->b:Lcom/punchbox/v4/k/a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/punchbox/v4/k/e;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/punchbox/v4/k/e;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/punchbox/v4/k/e;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/punchbox/v4/k/e;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/k/e;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/punchbox/v4/k/e;->b:Lcom/punchbox/v4/k/a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/punchbox/v4/k/e;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

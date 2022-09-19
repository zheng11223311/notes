.class public Lcom/punchbox/v4/f/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/punchbox/engine/z;


# static fields
.field private static b:Lcom/punchbox/v4/f/b;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Lcom/punchbox/v4/f/d;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/punchbox/v4/f/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/Object;

.field private j:Landroid/net/wifi/WifiManager$WifiLock;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/punchbox/v4/f/b;->d:Ljava/util/ArrayList;

    sget v0, Lcom/punchbox/engine/d;->a:I

    iput v0, p0, Lcom/punchbox/v4/f/b;->e:I

    sget v0, Lcom/punchbox/engine/d;->e:I

    iput v0, p0, Lcom/punchbox/v4/f/b;->f:I

    sget v0, Lcom/punchbox/engine/d;->a:I

    iput v0, p0, Lcom/punchbox/v4/f/b;->g:I

    sget v0, Lcom/punchbox/engine/d;->e:I

    iput v0, p0, Lcom/punchbox/v4/f/b;->h:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/punchbox/v4/f/b;->i:Ljava/lang/Object;

    new-instance v0, Lcom/punchbox/v4/f/c;

    invoke-direct {v0, p0}, Lcom/punchbox/v4/f/c;-><init>(Lcom/punchbox/v4/f/b;)V

    iput-object v0, p0, Lcom/punchbox/v4/f/b;->n:Landroid/os/Handler;

    const-string v0, "CoCoAdSDK-ConnectivityMgr"

    const-string v1, "Construct ConnectionManager"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/punchbox/v4/f/b;->a:Landroid/content/Context;

    new-instance v0, Lcom/punchbox/v4/f/d;

    iget-object v1, p0, Lcom/punchbox/v4/f/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/punchbox/v4/f/b;->n:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/punchbox/v4/f/d;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/punchbox/v4/f/b;->c:Lcom/punchbox/v4/f/d;

    iget-object v0, p0, Lcom/punchbox/v4/f/b;->a:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "punchBoxSDK"

    invoke-virtual {v0, v3, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/v4/f/b;->j:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v0, p0, Lcom/punchbox/v4/f/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.WAKE_LOCK"

    iget-object v2, p0, Lcom/punchbox/v4/f/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/punchbox/v4/f/b;->k:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/punchbox/v4/f/b;->k:Z

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/punchbox/v4/f/b;
    .locals 2

    const-class v1, Lcom/punchbox/v4/f/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/punchbox/v4/f/b;->b:Lcom/punchbox/v4/f/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/punchbox/v4/f/b;

    invoke-direct {v0, p0}, Lcom/punchbox/v4/f/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/punchbox/v4/f/b;->b:Lcom/punchbox/v4/f/b;

    :cond_0
    sget-object v0, Lcom/punchbox/v4/f/b;->b:Lcom/punchbox/v4/f/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(II)V
    .locals 5

    iget-object v1, p0, Lcom/punchbox/v4/f/b;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/punchbox/v4/f/b;->g:I

    sget v2, Lcom/punchbox/engine/d;->a:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/punchbox/v4/f/b;->e:I

    iput v0, p0, Lcom/punchbox/v4/f/b;->g:I

    iget v0, p0, Lcom/punchbox/v4/f/b;->f:I

    iput v0, p0, Lcom/punchbox/v4/f/b;->h:I

    :cond_0
    iput p1, p0, Lcom/punchbox/v4/f/b;->e:I

    iput p2, p0, Lcom/punchbox/v4/f/b;->f:I

    const-string v0, "CoCoAdSDK-ConnectivityMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchConnecvitivyStatus, mPreviousNetworkType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/punchbox/v4/f/b;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPreviousNetworkStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/punchbox/v4/f/b;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNetworkType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/punchbox/v4/f/b;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNetworkStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/punchbox/v4/f/b;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/punchbox/v4/f/b;->g:I

    iget v2, p0, Lcom/punchbox/v4/f/b;->e:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/punchbox/v4/f/b;->h:I

    iget v2, p0, Lcom/punchbox/v4/f/b;->f:I

    if-ne v0, v2, :cond_1

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/punchbox/v4/f/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/punchbox/v4/f/a;

    iget v3, p0, Lcom/punchbox/v4/f/b;->e:I

    iget v4, p0, Lcom/punchbox/v4/f/b;->f:I

    invoke-interface {v0, v3, v4}, Lcom/punchbox/v4/f/a;->a(II)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/punchbox/v4/f/b;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/punchbox/v4/f/b;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/punchbox/v4/f/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/punchbox/v4/f/b;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/punchbox/v4/f/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/v4/f/b;->g()V

    return-void
.end method

.method static synthetic c(Lcom/punchbox/v4/f/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/v4/f/b;->h()V

    return-void
.end method

.method private g()V
    .locals 1

    iget-boolean v0, p0, Lcom/punchbox/v4/f/b;->k:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/punchbox/v4/f/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/f/b;->j:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/f/b;->j:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto :goto_0
.end method

.method private h()V
    .locals 1

    iget-boolean v0, p0, Lcom/punchbox/v4/f/b;->k:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/punchbox/v4/f/b;->j:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/f/b;->j:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/punchbox/v4/f/b;->m:Z

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/punchbox/v4/f/b;->m:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/punchbox/v4/f/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/punchbox/v4/f/b;->c:Lcom/punchbox/v4/f/d;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public a(Lcom/punchbox/v4/f/a;)V
    .locals 2

    iget-boolean v0, p0, Lcom/punchbox/v4/f/b;->m:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/punchbox/v4/f/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/f/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/punchbox/v4/f/b;->e:I

    iget v1, p0, Lcom/punchbox/v4/f/b;->f:I

    invoke-interface {p1, v0, v1}, Lcom/punchbox/v4/f/a;->a(II)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-boolean v0, p0, Lcom/punchbox/v4/f/b;->m:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/punchbox/v4/f/b;->m:Z

    iget-object v0, p0, Lcom/punchbox/v4/f/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/punchbox/v4/f/b;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/punchbox/v4/f/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/punchbox/v4/f/b;->c:Lcom/punchbox/v4/f/d;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 3

    iget-object v1, p0, Lcom/punchbox/v4/f/b;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/punchbox/v4/f/b;->e:I

    sget v2, Lcom/punchbox/engine/d;->c:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/punchbox/v4/f/b;->f:I

    sget v2, Lcom/punchbox/engine/d;->d:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/punchbox/v4/f/b;->l:Z

    invoke-direct {p0}, Lcom/punchbox/v4/f/b;->g()V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/punchbox/v4/f/b;->l:Z

    invoke-direct {p0}, Lcom/punchbox/v4/f/b;->h()V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/punchbox/v4/f/b;->l:Z

    invoke-direct {p0}, Lcom/punchbox/v4/f/b;->h()V

    return-void
.end method

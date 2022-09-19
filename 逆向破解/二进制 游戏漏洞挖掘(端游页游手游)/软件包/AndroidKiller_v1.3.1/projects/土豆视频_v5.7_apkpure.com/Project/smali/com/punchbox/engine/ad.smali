.class public Lcom/punchbox/engine/ad;
.super Ljava/lang/Object;


# static fields
.field private static b:I

.field private static e:Lcom/punchbox/engine/ad;

.field private static j:Landroid/os/Messenger;


# instance fields
.field a:Landroid/content/ServiceConnection;

.field private c:Landroid/os/Handler;

.field private d:Landroid/os/Messenger;

.field private f:Landroid/os/Handler;

.field private g:Landroid/content/Context;

.field private h:Lcom/punchbox/engine/a;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/app/ActivityManager;

.field private l:Z

.field private m:Z

.field private n:Ljava/util/concurrent/Semaphore;

.field private o:Z

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/punchbox/data/DownloadedAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/content/BroadcastReceiver;

.field private s:Ljava/lang/Thread;

.field private t:Ljava/lang/Runnable;

.field private u:Lcom/punchbox/engine/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Lcom/punchbox/engine/ad;->b:I

    const/4 v0, 0x0

    sput-object v0, Lcom/punchbox/engine/ad;->j:Landroid/os/Messenger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/punchbox/engine/ai;

    invoke-direct {v0, p0, v3}, Lcom/punchbox/engine/ai;-><init>(Lcom/punchbox/engine/ad;Lcom/punchbox/engine/ae;)V

    iput-object v0, p0, Lcom/punchbox/engine/ad;->c:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/punchbox/engine/ad;->c:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/punchbox/engine/ad;->d:Landroid/os/Messenger;

    new-instance v0, Lcom/punchbox/engine/a;

    sget v1, Lcom/punchbox/engine/ad;->b:I

    new-instance v2, Lcom/punchbox/engine/b;

    invoke-direct {v2}, Lcom/punchbox/engine/b;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/punchbox/engine/a;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/punchbox/engine/ad;->h:Lcom/punchbox/engine/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/punchbox/engine/ad;->i:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcom/punchbox/engine/ad;->l:Z

    iput-boolean v4, p0, Lcom/punchbox/engine/ad;->m:Z

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/punchbox/engine/ad;->n:Ljava/util/concurrent/Semaphore;

    iput-boolean v4, p0, Lcom/punchbox/engine/ad;->o:Z

    iput-object v3, p0, Lcom/punchbox/engine/ad;->p:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/punchbox/engine/ad;->q:Ljava/util/ArrayList;

    new-instance v0, Lcom/punchbox/engine/ae;

    invoke-direct {v0, p0}, Lcom/punchbox/engine/ae;-><init>(Lcom/punchbox/engine/ad;)V

    iput-object v0, p0, Lcom/punchbox/engine/ad;->r:Landroid/content/BroadcastReceiver;

    iput-object v3, p0, Lcom/punchbox/engine/ad;->s:Ljava/lang/Thread;

    new-instance v0, Lcom/punchbox/engine/ag;

    invoke-direct {v0, p0}, Lcom/punchbox/engine/ag;-><init>(Lcom/punchbox/engine/ad;)V

    iput-object v0, p0, Lcom/punchbox/engine/ad;->t:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/punchbox/engine/ad;->u:Lcom/punchbox/engine/ao;

    new-instance v0, Lcom/punchbox/engine/ah;

    invoke-direct {v0, p0}, Lcom/punchbox/engine/ah;-><init>(Lcom/punchbox/engine/ad;)V

    iput-object v0, p0, Lcom/punchbox/engine/ad;->a:Landroid/content/ServiceConnection;

    const-string v0, "CoCoAdSDK-PunchBoxClient"

    const-string v1, "Construct PunchBoxClient"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/engine/ad;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/punchbox/engine/ad;->f:Landroid/os/Handler;

    iget-object v0, p0, Lcom/punchbox/engine/ad;->g:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/punchbox/engine/ad;->k:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/punchbox/engine/ad;->b()V

    invoke-virtual {p0}, Lcom/punchbox/engine/ad;->a()V

    return-void
.end method

.method private a(II)Landroid/os/Message;
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/punchbox/engine/ad;->d:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "client_version"

    sget v3, Lcom/punchbox/engine/i;->i:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    sput-object p0, Lcom/punchbox/engine/ad;->j:Landroid/os/Messenger;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Landroid/os/Handler;)Lcom/punchbox/engine/ad;
    .locals 3

    const-class v1, Lcom/punchbox/engine/ad;

    monitor-enter v1

    :try_start_0
    const-string v0, "CoCoAdSDK-PunchBoxClient"

    const-string v2, "getInstance"

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string v0, "CoCoAdSDK-PunchBoxClient"

    const-string v2, "Invalid parameters, context is null"

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/punchbox/engine/ad;->e:Lcom/punchbox/engine/ad;

    if-nez v0, :cond_1

    new-instance v0, Lcom/punchbox/engine/ad;

    invoke-direct {v0, p0, p1}, Lcom/punchbox/engine/ad;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/punchbox/engine/ad;->e:Lcom/punchbox/engine/ad;

    :cond_1
    sget-object v0, Lcom/punchbox/engine/ad;->e:Lcom/punchbox/engine/ad;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/punchbox/engine/ad;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/punchbox/engine/ad;->s:Ljava/lang/Thread;

    return-object p1
.end method

.method private a(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/ad;->f:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/punchbox/engine/ad;->g:Landroid/content/Context;

    if-nez v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/punchbox/engine/ad;->u:Lcom/punchbox/engine/ao;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/engine/ad;->u:Lcom/punchbox/engine/ao;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/punchbox/engine/ao;->b(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/punchbox/engine/ad;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "app_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/engine/ad;->p:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/punchbox/engine/ad;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/punchbox/engine/ad;->u:Lcom/punchbox/engine/ao;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/engine/ad;->u:Lcom/punchbox/engine/ao;

    invoke-interface {v0, v2}, Lcom/punchbox/engine/ao;->b(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/punchbox/engine/ad;)V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/engine/ad;->h()V

    return-void
.end method

.method static synthetic a(Lcom/punchbox/engine/ad;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/punchbox/engine/ad;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/punchbox/engine/ad;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/punchbox/engine/ad;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/punchbox/engine/ad;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/punchbox/engine/ad;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    sget v0, Lcom/punchbox/engine/g;->a:I

    invoke-static {p1, p2, v0, p3}, Lcom/punchbox/engine/p;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/punchbox/v4/n/c;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/ad;->g:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/punchbox/engine/p;->a(Lcom/punchbox/v4/n/c;Landroid/content/Context;)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/punchbox/engine/ad;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoCoAdSDK-PunchBoxClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doBindService, packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.punchbox.service"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    if-eqz p1, :cond_0

    const-string/jumbo v0, "restart_by_me"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/punchbox/engine/ad;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/punchbox/engine/ad;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/punchbox/engine/ad;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/punchbox/engine/ad;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic b(Lcom/punchbox/engine/ad;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/ad;->g:Landroid/content/Context;

    return-object v0
.end method

.method private b(Landroid/os/Message;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/ad;->f:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/punchbox/engine/ad;->g:Landroid/content/Context;

    if-nez v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/punchbox/engine/ad;->u:Lcom/punchbox/engine/ao;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/engine/ad;->u:Lcom/punchbox/engine/ao;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/punchbox/engine/ao;->a(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/punchbox/engine/ad;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "package_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/engine/ad;->q:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/punchbox/engine/ad;->u:Lcom/punchbox/engine/ao;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/engine/ad;->u:Lcom/punchbox/engine/ao;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/punchbox/engine/ao;->a(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/punchbox/engine/ad;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/punchbox/engine/ad;->c(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/punchbox/engine/ad;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/punchbox/engine/ad;->o:Z

    return p1
.end method

.method private c(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/ad;->f:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/punchbox/engine/ad;->g:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/punchbox/engine/ad;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "predown_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/punchbox/engine/ad;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/punchbox/engine/ad;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/punchbox/engine/ad;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic c(Lcom/punchbox/engine/ad;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/punchbox/engine/ad;->o:Z

    return v0
.end method

.method static synthetic c(Lcom/punchbox/engine/ad;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/punchbox/engine/ad;->l:Z

    return p1
.end method

.method static synthetic d()Landroid/os/Messenger;
    .locals 1

    sget-object v0, Lcom/punchbox/engine/ad;->j:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic d(Lcom/punchbox/engine/ad;)Lcom/punchbox/engine/a;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/ad;->h:Lcom/punchbox/engine/a;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/punchbox/engine/ad;->k:Landroid/app/ActivityManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.punchbox.engine.PunchBoxService"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_1

    iget v4, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    iget v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-le v4, v5, :cond_0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const-string v0, "CoCoAdSDK-PunchBoxClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found a running service, bind to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method static synthetic e(Lcom/punchbox/engine/ad;)V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/engine/ad;->g()V

    return-void
.end method

.method static synthetic f(Lcom/punchbox/engine/ad;)Ljava/util/concurrent/Semaphore;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/ad;->n:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private f()V
    .locals 5

    const-string v0, "CoCoAdSDK-PunchBoxClient"

    const-string v1, "============DUMP CONNECTION BEGIN==========="

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/ad;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "CoCoAdSDK-PunchBoxClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "CoCoAdSDK-PunchBoxClient"

    const-string v1, "============DUMP CONNECTION END============"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/punchbox/engine/ad;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/ad;->t:Ljava/lang/Runnable;

    return-object v0
.end method

.method private g()V
    .locals 5

    iget-object v0, p0, Lcom/punchbox/engine/ad;->h:Lcom/punchbox/engine/a;

    invoke-virtual {v0}, Lcom/punchbox/engine/a;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v0, "CoCoAdSDK-PunchBoxClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queue Size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/punchbox/engine/ad;->h:Lcom/punchbox/engine/a;

    invoke-virtual {v3}, Lcom/punchbox/engine/a;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CoCoAdSDK-PunchBoxClient"

    const-string v2, "=============DUMP QUEUE BEGIN=============="

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    const-string v2, "CoCoAdSDK-PunchBoxClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "CoCoAdSDK-PunchBoxClient"

    const-string v1, "=============DUMP QUEUE END================"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/punchbox/engine/ad;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/ad;->s:Ljava/lang/Thread;

    return-object v0
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/ad;->s:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/engine/ad;->s:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_0
    iget-object v0, p0, Lcom/punchbox/engine/ad;->s:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/punchbox/engine/ad;->s:Ljava/lang/Thread;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/punchbox/util/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/ad;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/punchbox/engine/ad;->f()V

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/punchbox/engine/ad;->a(II)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/ad;->h:Lcom/punchbox/engine/a;

    invoke-virtual {v1, v0}, Lcom/punchbox/engine/a;->a(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "CoCoAdSDK-PunchBoxClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize, object:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sConnectionMap.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/engine/ad;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/punchbox/engine/ad;->j:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/punchbox/engine/ad;->f()V

    iget-object v0, p0, Lcom/punchbox/engine/ad;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/punchbox/engine/ad;->j:Landroid/os/Messenger;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/punchbox/engine/ad;->l:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/punchbox/engine/ad;->m:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/punchbox/engine/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/punchbox/engine/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/punchbox/engine/ad;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/punchbox/engine/ad;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/punchbox/engine/ad;->a(Z)V

    iput-boolean v3, p0, Lcom/punchbox/engine/ad;->l:Z

    iput-boolean v3, p0, Lcom/punchbox/engine/ad;->m:Z

    :cond_1
    iget-object v0, p0, Lcom/punchbox/engine/ad;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "CoCoAdSDK-PunchBoxClient"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestDownload, sService:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/punchbox/engine/ad;->j:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", adInfo:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_2

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/punchbox/engine/ad;->f()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    :cond_0
    const/16 v0, 0x899

    invoke-direct {p0, p1, p2, v0}, Lcom/punchbox/engine/ad;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_2
    return-void

    :cond_1
    move-object v0, p1

    goto :goto_0

    :cond_2
    move-object v0, p2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/punchbox/util/i;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/punchbox/engine/ad;->g:Landroid/content/Context;

    sget-object v1, Lcom/punchbox/v4/o/a;->k:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x89d

    invoke-direct {p0, p1, p2, v0}, Lcom/punchbox/engine/ad;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v3, v0}, Lcom/punchbox/engine/ad;->a(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "adInfo"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/punchbox/engine/ad;->h:Lcom/punchbox/engine/a;

    invoke-virtual {v1, v0}, Lcom/punchbox/engine/a;->a(Landroid/os/Message;)Z

    const/16 v0, 0x901

    invoke-direct {p0, p1, p2, v0}, Lcom/punchbox/engine/ad;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "CoCoAdSDK-PunchBoxClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installBuiltInApp, sService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/punchbox/engine/ad;->j:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/punchbox/engine/ad;->f()V

    invoke-static {}, Lcom/punchbox/util/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/engine/ad;->g:Landroid/content/Context;

    sget-object v1, Lcom/punchbox/v4/o/a;->k:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v3, v0}, Lcom/punchbox/engine/ad;->a(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "build_in_app_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "show_notification"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "isInner"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "filename"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "adinfo"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appInfo"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "adType"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/punchbox/engine/ad;->h:Lcom/punchbox/engine/a;

    invoke-virtual {v1, v0}, Lcom/punchbox/engine/a;->a(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/punchbox/util/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/ad;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/punchbox/engine/ad;->f()V

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/punchbox/engine/ad;->a(II)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/ad;->h:Lcom/punchbox/engine/a;

    invoke-virtual {v1, v0}, Lcom/punchbox/engine/a;->a(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "CoCoAdSDK-PunchBoxClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unInitialize, object:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sConnectionMap.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/engine/ad;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/punchbox/engine/ad;->j:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/punchbox/engine/ad;->f()V

    iget-object v0, p0, Lcom/punchbox/engine/ad;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CoCoAdSDK-PunchBoxClient"

    const-string v1, "Try to remove an unknown object"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/punchbox/engine/ad;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sput-object v3, Lcom/punchbox/engine/ad;->e:Lcom/punchbox/engine/ad;

    :cond_2
    sget-object v0, Lcom/punchbox/engine/ad;->j:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/engine/ad;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/punchbox/engine/ad;->m:Z

    if-eqz v0, :cond_0

    const-string v0, "CoCoAdSDK-PunchBoxClient"

    const-string v1, "No app need service, unbindService"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/ad;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/punchbox/engine/ad;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/punchbox/engine/ad;->h()V

    iget-object v0, p0, Lcom/punchbox/engine/ad;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/punchbox/engine/ad;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v3, p0, Lcom/punchbox/engine/ad;->g:Landroid/content/Context;

    sput-object v3, Lcom/punchbox/engine/ad;->j:Landroid/os/Messenger;

    sput-object v3, Lcom/punchbox/engine/ad;->e:Lcom/punchbox/engine/ad;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/punchbox/engine/ad;->m:Z

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "CoCoAdSDK-PunchBoxClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "submitReport, sService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/punchbox/engine/ad;->j:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/punchbox/engine/ad;->f()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/punchbox/engine/ad;->a(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "sub_type"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/punchbox/engine/ad;->h:Lcom/punchbox/engine/a;

    invoke-virtual {v1, v0}, Lcom/punchbox/engine/a;->a(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public c()V
    .locals 2

    const-string v0, "CoCoAdSDK-PunchBoxClient"

    const-string v1, "getPreDownloadReadyAds"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/punchbox/util/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/punchbox/engine/ad;->f()V

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/punchbox/engine/ad;->a(II)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/ad;->h:Lcom/punchbox/engine/a;

    invoke-virtual {v1, v0}, Lcom/punchbox/engine/a;->a(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "CoCoAdSDK-PunchBoxClient"

    const-string v1, "getPreDownloadList"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/punchbox/util/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/punchbox/engine/ad;->f()V

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/punchbox/engine/ad;->a(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appv"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/punchbox/engine/ad;->h:Lcom/punchbox/engine/a;

    invoke-virtual {v1, v0}, Lcom/punchbox/engine/a;->a(Landroid/os/Message;)Z

    goto :goto_0
.end method

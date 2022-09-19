.class public Lcom/punchbox/engine/PunchBoxService;
.super Landroid/app/Service;


# instance fields
.field private a:Landroid/os/Handler;

.field private final b:Landroid/os/Messenger;

.field private c:Lcom/punchbox/engine/j;

.field private d:Lcom/punchbox/v4/h/d;

.field private e:Lcom/punchbox/report/j;

.field private f:Lcom/punchbox/v4/k/e;

.field private g:Lcom/punchbox/v4/f/b;

.field private h:Lcom/punchbox/v4/j/a;

.field private i:Lcom/punchbox/v4/j/d;

.field private j:Landroid/os/HandlerThread;

.field private k:Landroid/os/Handler;

.field private l:Landroid/content/pm/PackageManager;

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/punchbox/engine/an;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/punchbox/engine/an;-><init>(Lcom/punchbox/engine/PunchBoxService;Lcom/punchbox/engine/aj;)V

    iput-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->a:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/punchbox/engine/PunchBoxService;->a:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->b:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/punchbox/engine/PunchBoxService;->m:Z

    return-void
.end method

.method static synthetic a(Lcom/punchbox/engine/PunchBoxService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/punchbox/engine/PunchBoxService;->k:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/punchbox/engine/PunchBoxService;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    iput-object p1, p0, Lcom/punchbox/engine/PunchBoxService;->j:Landroid/os/HandlerThread;

    return-object p1
.end method

.method private a()V
    .locals 3

    const-string v0, "AE8ADD24BBF109ABAC8A3AE032F964EA"

    invoke-static {p0, v0}, Lcom/punchbox/v4/b/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/punchbox/engine/i;->k:Ljava/lang/String;

    sget-object v1, Lcom/punchbox/v4/b/b;->b:Lcom/punchbox/v4/b/b;

    const-string v2, "com.punchbox.punchboxservice"

    invoke-static {v0, v1, v2}, Lcom/punchbox/v4/b/a;->a(Ljava/lang/String;Lcom/punchbox/v4/b/b;Ljava/lang/String;)V

    sget-object v0, Lcom/punchbox/engine/i;->k:Ljava/lang/String;

    sget-object v1, Lcom/punchbox/v4/b/b;->c:Lcom/punchbox/v4/b/b;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/punchbox/v4/b/a;->a(Ljava/lang/String;Lcom/punchbox/v4/b/b;Ljava/lang/String;)V

    sget-object v0, Lcom/punchbox/engine/i;->k:Ljava/lang/String;

    new-instance v1, Lcom/punchbox/engine/aj;

    invoke-direct {v1, p0}, Lcom/punchbox/engine/aj;-><init>(Lcom/punchbox/engine/PunchBoxService;)V

    invoke-static {v0, v1}, Lcom/punchbox/v4/b/a;->a(Ljava/lang/String;Lcom/punchbox/v4/b/c;)V

    invoke-direct {p0}, Lcom/punchbox/engine/PunchBoxService;->b()V

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 2

    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/punchbox/engine/PunchBoxService;->a(Landroid/os/Message;I)V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/punchbox/engine/i;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/punchbox/engine/PunchBoxService;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/punchbox/engine/PunchBoxService;->stopSelf()V

    return-void
.end method

.method private a(Landroid/os/Message;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/punchbox/engine/PunchBoxService;)V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/engine/PunchBoxService;->b()V

    return-void
.end method

.method static synthetic a(Lcom/punchbox/engine/PunchBoxService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/punchbox/engine/PunchBoxService;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/punchbox/engine/PunchBoxService;Landroid/os/Message;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/punchbox/engine/PunchBoxService;->a(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic a(Lcom/punchbox/engine/PunchBoxService;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/punchbox/engine/PunchBoxService;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/punchbox/engine/PunchBoxService;->l:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/punchbox/engine/PunchBoxService;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->l:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private b()V
    .locals 3

    sget-object v0, Lcom/punchbox/engine/i;->k:Ljava/lang/String;

    sget-object v1, Lcom/punchbox/engine/i;->l:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/punchbox/v4/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/punchbox/engine/PunchBoxService;->m:Z

    iget-boolean v0, p0, Lcom/punchbox/engine/PunchBoxService;->m:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->h:Lcom/punchbox/v4/j/a;

    iget-object v1, p0, Lcom/punchbox/engine/PunchBoxService;->i:Lcom/punchbox/v4/j/d;

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/j/a;->a(Lcom/punchbox/v4/j/d;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/punchbox/engine/PunchBoxService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->k:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/punchbox/engine/PunchBoxService;->k:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->j:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/punchbox/engine/PunchBoxService;->j:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/punchbox/engine/PunchBoxService;)Lcom/punchbox/engine/j;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->c:Lcom/punchbox/engine/j;

    return-object v0
.end method

.method static synthetic e(Lcom/punchbox/engine/PunchBoxService;)Lcom/punchbox/report/j;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->e:Lcom/punchbox/report/j;

    return-object v0
.end method

.method static synthetic f(Lcom/punchbox/engine/PunchBoxService;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->j:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic g(Lcom/punchbox/engine/PunchBoxService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/punchbox/engine/PunchBoxService;)V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/engine/PunchBoxService;->c()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "CoCoAdSDK-PunchBoxService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->b:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    const-string v0, "CoCoAdSDK-PunchBoxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate, service package name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/punchbox/engine/PunchBoxService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/punchbox/v4/h/d;->a()Lcom/punchbox/v4/h/d;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->d:Lcom/punchbox/v4/h/d;

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->d:Lcom/punchbox/v4/h/d;

    invoke-virtual {v0, p0}, Lcom/punchbox/v4/h/d;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/punchbox/v4/f/b;->a(Landroid/content/Context;)Lcom/punchbox/v4/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->g:Lcom/punchbox/v4/f/b;

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->g:Lcom/punchbox/v4/f/b;

    invoke-virtual {v0}, Lcom/punchbox/v4/f/b;->a()V

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->a:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/punchbox/engine/j;->a(Landroid/content/Context;Landroid/os/Handler;)Lcom/punchbox/engine/j;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->c:Lcom/punchbox/engine/j;

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->c:Lcom/punchbox/engine/j;

    invoke-virtual {v0}, Lcom/punchbox/engine/j;->a()V

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->c:Lcom/punchbox/engine/j;

    iget-object v1, p0, Lcom/punchbox/engine/PunchBoxService;->g:Lcom/punchbox/v4/f/b;

    invoke-virtual {v0, v1}, Lcom/punchbox/engine/j;->a(Lcom/punchbox/engine/z;)V

    invoke-static {p0}, Lcom/punchbox/report/j;->a(Landroid/content/Context;)Lcom/punchbox/report/j;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->e:Lcom/punchbox/report/j;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/punchbox/util/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/punchbox/v4/k/e;->a(Landroid/content/Context;)Lcom/punchbox/v4/k/e;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->f:Lcom/punchbox/v4/k/e;

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->f:Lcom/punchbox/v4/k/e;

    invoke-virtual {v0}, Lcom/punchbox/v4/k/e;->a()V

    new-instance v0, Lcom/punchbox/v4/j/a;

    invoke-direct {v0, p0}, Lcom/punchbox/v4/j/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->h:Lcom/punchbox/v4/j/a;

    new-instance v0, Lcom/punchbox/v4/j/e;

    invoke-direct {v0, p0}, Lcom/punchbox/v4/j/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->i:Lcom/punchbox/v4/j/d;

    invoke-virtual {p0}, Lcom/punchbox/engine/PunchBoxService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->l:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/punchbox/engine/PunchBoxService;->a()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "CoCoAdSDK-PunchBoxService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->e:Lcom/punchbox/report/j;

    invoke-virtual {v0}, Lcom/punchbox/report/j;->a()V

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->c:Lcom/punchbox/engine/j;

    invoke-virtual {v0}, Lcom/punchbox/engine/j;->b()V

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->g:Lcom/punchbox/v4/f/b;

    invoke-virtual {v0}, Lcom/punchbox/v4/f/b;->b()V

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->d:Lcom/punchbox/v4/h/d;

    invoke-virtual {v0}, Lcom/punchbox/v4/h/d;->d()V

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->f:Lcom/punchbox/v4/k/e;

    invoke-virtual {v0}, Lcom/punchbox/v4/k/e;->b()V

    iget-boolean v0, p0, Lcom/punchbox/engine/PunchBoxService;->m:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/punchbox/engine/PunchBoxService;->h:Lcom/punchbox/v4/j/a;

    iget-object v1, p0, Lcom/punchbox/engine/PunchBoxService;->i:Lcom/punchbox/v4/j/d;

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/j/a;->b(Lcom/punchbox/v4/j/d;)V

    :cond_0
    invoke-direct {p0}, Lcom/punchbox/engine/PunchBoxService;->c()V

    invoke-static {}, Lcom/punchbox/v4/b/a;->a()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const/4 v3, 0x1

    const-string v0, "CoCoAdSDK-PunchBoxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand, service package name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/punchbox/engine/PunchBoxService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string/jumbo v0, "restart_by_me"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/punchbox/engine/i;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/punchbox/engine/PunchBoxService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "CoCoAdSDK-PunchBoxService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

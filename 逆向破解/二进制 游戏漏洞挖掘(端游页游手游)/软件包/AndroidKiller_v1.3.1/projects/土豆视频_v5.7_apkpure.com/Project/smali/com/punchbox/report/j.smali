.class public Lcom/punchbox/report/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/punchbox/v4/f/a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static e:Lcom/punchbox/report/j;


# instance fields
.field private b:Landroid/os/Looper;

.field private c:Lcom/punchbox/report/m;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/punchbox/report/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/report/j;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/punchbox/report/j;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/punchbox/report/j;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/punchbox/v4/f/b;->a(Landroid/content/Context;)Lcom/punchbox/v4/f/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/punchbox/v4/f/b;->a(Lcom/punchbox/v4/f/a;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TriggerHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/report/j;->b:Landroid/os/Looper;

    new-instance v0, Lcom/punchbox/report/m;

    iget-object v1, p0, Lcom/punchbox/report/j;->b:Landroid/os/Looper;

    invoke-direct {v0, v1, p0}, Lcom/punchbox/report/m;-><init>(Landroid/os/Looper;Lcom/punchbox/report/j;)V

    iput-object v0, p0, Lcom/punchbox/report/j;->c:Lcom/punchbox/report/m;

    invoke-static {}, Lcom/punchbox/util/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/punchbox/v4/h/l;

    invoke-direct {v0}, Lcom/punchbox/v4/h/l;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/h/l;->b(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/punchbox/report/j;)Landroid/os/Message;
    .locals 1

    invoke-direct {p0}, Lcom/punchbox/report/j;->c()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/punchbox/report/j;
    .locals 2

    sget-object v0, Lcom/punchbox/report/j;->e:Lcom/punchbox/report/j;

    if-nez v0, :cond_1

    const-class v1, Lcom/punchbox/report/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/punchbox/report/j;->e:Lcom/punchbox/report/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/punchbox/report/j;

    invoke-direct {v0, p0}, Lcom/punchbox/report/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/punchbox/report/j;->e:Lcom/punchbox/report/j;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/punchbox/report/j;->e:Lcom/punchbox/report/j;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/punchbox/report/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c()Landroid/os/Message;
    .locals 3

    iget-object v0, p0, Lcom/punchbox/report/j;->c:Lcom/punchbox/report/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/report/j;->b:Landroid/os/Looper;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/punchbox/report/j;->d()V

    :cond_1
    iget-object v0, p0, Lcom/punchbox/report/j;->c:Lcom/punchbox/report/m;

    invoke-virtual {v0}, Lcom/punchbox/report/m;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/punchbox/report/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/punchbox/report/l;-><init>(Lcom/punchbox/report/j;Lcom/punchbox/report/k;)V

    const-string v2, "history_failed_data"

    invoke-static {v1, v2}, Lcom/punchbox/report/l;->b(Lcom/punchbox/report/l;Ljava/lang/String;)Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private d()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TriggerHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/report/j;->b:Landroid/os/Looper;

    new-instance v0, Lcom/punchbox/report/m;

    iget-object v1, p0, Lcom/punchbox/report/j;->b:Landroid/os/Looper;

    invoke-direct {v0, v1, p0}, Lcom/punchbox/report/m;-><init>(Landroid/os/Looper;Lcom/punchbox/report/j;)V

    iput-object v0, p0, Lcom/punchbox/report/j;->c:Lcom/punchbox/report/m;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-class v1, Lcom/punchbox/report/j;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/punchbox/report/j;->b:Landroid/os/Looper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/report/j;->b:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/punchbox/report/j;->b:Landroid/os/Looper;

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/punchbox/report/j;->e:Lcom/punchbox/report/j;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(II)V
    .locals 2

    sget v0, Lcom/punchbox/engine/d;->c:I

    if-ne v0, p1, :cond_0

    sget v0, Lcom/punchbox/engine/d;->d:I

    if-ne v0, p2, :cond_0

    sget-object v0, Lcom/punchbox/report/j;->a:Ljava/lang/String;

    const-string v1, "connect wifi network upload  ...."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/punchbox/report/j;->c()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/punchbox/report/j;->c:Lcom/punchbox/report/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/punchbox/report/j;->b:Landroid/os/Looper;

    if-nez v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/punchbox/report/j;->d()V

    :cond_3
    new-instance v0, Lcom/punchbox/report/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/punchbox/report/l;-><init>(Lcom/punchbox/report/j;Lcom/punchbox/report/k;)V

    invoke-static {v0, p2}, Lcom/punchbox/report/l;->a(Lcom/punchbox/report/l;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "CounterList"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "post_ad_req_count"

    invoke-static {v0, v1}, Lcom/punchbox/report/l;->b(Lcom/punchbox/report/l;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    invoke-static {v0, p1}, Lcom/punchbox/report/l;->c(Lcom/punchbox/report/l;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/punchbox/report/j;->c:Lcom/punchbox/report/m;

    invoke-virtual {v1}, Lcom/punchbox/report/m;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_4
    const-string v1, "get_request"

    invoke-static {v0, v1}, Lcom/punchbox/report/l;->b(Lcom/punchbox/report/l;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method public a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/punchbox/report/j;->c:Lcom/punchbox/report/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/report/j;->b:Landroid/os/Looper;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/punchbox/report/j;->d()V

    :cond_1
    new-instance v0, Lcom/punchbox/report/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/punchbox/report/l;-><init>(Lcom/punchbox/report/j;Lcom/punchbox/report/k;)V

    const-string v1, "batch"

    invoke-static {v0, v1}, Lcom/punchbox/report/l;->b(Lcom/punchbox/report/l;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/punchbox/report/l;->a(Lcom/punchbox/report/l;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/punchbox/report/l;->a(Lcom/punchbox/report/l;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/punchbox/report/j;->c:Lcom/punchbox/report/m;

    invoke-virtual {v1}, Lcom/punchbox/report/m;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

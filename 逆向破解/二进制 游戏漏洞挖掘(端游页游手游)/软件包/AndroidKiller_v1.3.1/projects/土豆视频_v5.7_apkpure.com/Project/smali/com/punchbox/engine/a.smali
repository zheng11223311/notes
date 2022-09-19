.class public Lcom/punchbox/engine/a;
.super Ljava/util/PriorityQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/PriorityQueue",
        "<",
        "Landroid/os/Message;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator",
            "<-",
            "Landroid/os/Message;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/punchbox/engine/a;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Message;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "CoCoAd-ClientBlockQueue"

    const-string v1, "Enter take()"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    invoke-super {p0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/punchbox/engine/a;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "CoCoAd-ClientBlockQueue"

    const-string v2, "Before mLock.wait()"

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const-string v0, "CoCoAd-ClientBlockQueue"

    const-string v2, "After mLock.wait()"

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "CoCoAd-ClientBlockQueue"

    const-string v2, "Interrupted exception received."

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public a(Landroid/os/Message;)Z
    .locals 3

    invoke-super {p0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/punchbox/engine/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/punchbox/engine/a;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    :cond_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/os/Message;

    invoke-virtual {p0, p1}, Lcom/punchbox/engine/a;->a(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

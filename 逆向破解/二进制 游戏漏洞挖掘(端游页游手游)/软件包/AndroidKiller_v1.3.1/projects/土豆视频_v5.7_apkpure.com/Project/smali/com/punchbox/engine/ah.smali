.class Lcom/punchbox/engine/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/punchbox/engine/ad;


# direct methods
.method constructor <init>(Lcom/punchbox/engine/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/engine/ah;->a:Lcom/punchbox/engine/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v0, "CoCoAdSDK-PunchBoxClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected, mReStartMyService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/engine/ah;->a:Lcom/punchbox/engine/ad;

    invoke-static {v2}, Lcom/punchbox/engine/ad;->c(Lcom/punchbox/engine/ad;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/ah;->a:Lcom/punchbox/engine/ad;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/punchbox/engine/ad;->c(Lcom/punchbox/engine/ad;Z)Z

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0}, Lcom/punchbox/engine/ad;->a(Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/punchbox/engine/ah;->a:Lcom/punchbox/engine/ad;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/punchbox/engine/ah;->a:Lcom/punchbox/engine/ad;

    invoke-static {v2}, Lcom/punchbox/engine/ad;->g(Lcom/punchbox/engine/ad;)Ljava/lang/Runnable;

    move-result-object v2

    const-string v3, "ClientMsgDispatcher"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/punchbox/engine/ad;->a(Lcom/punchbox/engine/ad;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/punchbox/engine/ah;->a:Lcom/punchbox/engine/ad;

    invoke-static {v0}, Lcom/punchbox/engine/ad;->h(Lcom/punchbox/engine/ad;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "CoCoAdSDK-PunchBoxClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected, mReStartMyService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/engine/ah;->a:Lcom/punchbox/engine/ad;

    invoke-static {v2}, Lcom/punchbox/engine/ad;->c(Lcom/punchbox/engine/ad;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/punchbox/engine/ad;->a(Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/punchbox/engine/ah;->a:Lcom/punchbox/engine/ad;

    invoke-static {v0}, Lcom/punchbox/engine/ad;->a(Lcom/punchbox/engine/ad;)V

    iget-object v0, p0, Lcom/punchbox/engine/ah;->a:Lcom/punchbox/engine/ad;

    invoke-static {v0}, Lcom/punchbox/engine/ad;->c(Lcom/punchbox/engine/ad;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/punchbox/engine/ah;->a:Lcom/punchbox/engine/ad;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/punchbox/engine/ad;->a(Lcom/punchbox/engine/ad;Z)V

    :cond_0
    return-void
.end method

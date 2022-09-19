.class Lcom/punchbox/engine/ae;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/punchbox/engine/ad;


# direct methods
.method constructor <init>(Lcom/punchbox/engine/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/engine/ae;->a:Lcom/punchbox/engine/ad;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoCoAdSDK-PunchBoxClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/punchbox/engine/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/punchbox/engine/ae;->a:Lcom/punchbox/engine/ad;

    invoke-static {v0}, Lcom/punchbox/engine/ad;->a(Lcom/punchbox/engine/ad;)V

    invoke-static {}, Lcom/punchbox/engine/ad;->d()Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/engine/ae;->a:Lcom/punchbox/engine/ad;

    invoke-static {v0}, Lcom/punchbox/engine/ad;->b(Lcom/punchbox/engine/ad;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/ae;->a:Lcom/punchbox/engine/ad;

    iget-object v1, v1, Lcom/punchbox/engine/ad;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/punchbox/engine/ad;->a(Landroid/os/Messenger;)Landroid/os/Messenger;

    :cond_0
    iget-object v0, p0, Lcom/punchbox/engine/ae;->a:Lcom/punchbox/engine/ad;

    invoke-static {v0}, Lcom/punchbox/engine/ad;->c(Lcom/punchbox/engine/ad;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "CoCoAdSDK-PunchBoxClient"

    const-string v1, "Going to restart my service"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/punchbox/engine/af;

    invoke-direct {v1, p0}, Lcom/punchbox/engine/af;-><init>(Lcom/punchbox/engine/ae;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/punchbox/engine/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/engine/ae;->a:Lcom/punchbox/engine/ad;

    invoke-static {v0}, Lcom/punchbox/engine/ad;->c(Lcom/punchbox/engine/ad;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/punchbox/engine/ae;->a:Lcom/punchbox/engine/ad;

    invoke-static {v0, v4}, Lcom/punchbox/engine/ad;->a(Lcom/punchbox/engine/ad;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/punchbox/engine/ae;->a:Lcom/punchbox/engine/ad;

    invoke-static {v0, v4}, Lcom/punchbox/engine/ad;->b(Lcom/punchbox/engine/ad;Z)Z

    goto :goto_0
.end method

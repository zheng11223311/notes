.class Lcom/punchbox/engine/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/punchbox/engine/ad;


# direct methods
.method constructor <init>(Lcom/punchbox/engine/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/engine/ag;->a:Lcom/punchbox/engine/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/punchbox/engine/ag;->a:Lcom/punchbox/engine/ad;

    invoke-static {v0}, Lcom/punchbox/engine/ad;->d(Lcom/punchbox/engine/ad;)Lcom/punchbox/engine/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/engine/a;->a()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/ag;->a:Lcom/punchbox/engine/ad;

    invoke-static {v1}, Lcom/punchbox/engine/ad;->e(Lcom/punchbox/engine/ad;)V

    if-nez v0, :cond_1

    const-string v0, "CoCoAdSDK-PunchBoxClient"

    const-string v1, "msg is null"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/punchbox/engine/ag;->a:Lcom/punchbox/engine/ad;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/punchbox/engine/ad;->a(Lcom/punchbox/engine/ad;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/punchbox/engine/ad;->d()Landroid/os/Messenger;

    move-result-object v1

    if-nez v1, :cond_2

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, v5, :cond_0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "adInfo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/punchbox/engine/ag;->a:Lcom/punchbox/engine/ad;

    const/16 v3, 0x89e

    invoke-static {v2, v1, v0, v3}, Lcom/punchbox/engine/ad;->a(Lcom/punchbox/engine/ad;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v0, "CoCoAdSDK-PunchBoxClient"

    const-string v1, "Interrupt exception received"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_2
    const-string v1, "CoCoAdSDK-PunchBoxClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/punchbox/engine/ad;->d()Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, v5, :cond_3

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "adInfo"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/punchbox/engine/ag;->a:Lcom/punchbox/engine/ad;

    const/16 v4, 0x902

    invoke-static {v3, v2, v1, v4}, Lcom/punchbox/engine/ad;->a(Lcom/punchbox/engine/ad;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    const-string v1, "CoCoAdSDK-PunchBoxClient"

    const-string v2, "mLock.acquire()"

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/punchbox/engine/ag;->a:Lcom/punchbox/engine/ad;

    invoke-static {v1}, Lcom/punchbox/engine/ad;->f(Lcom/punchbox/engine/ad;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    const-string v1, "CoCoAdSDK-PunchBoxClient"

    const-string v2, "Service respond received."

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/punchbox/engine/ag;->a:Lcom/punchbox/engine/ad;

    invoke-static {v1}, Lcom/punchbox/engine/ad;->d(Lcom/punchbox/engine/ad;)Lcom/punchbox/engine/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/punchbox/engine/a;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

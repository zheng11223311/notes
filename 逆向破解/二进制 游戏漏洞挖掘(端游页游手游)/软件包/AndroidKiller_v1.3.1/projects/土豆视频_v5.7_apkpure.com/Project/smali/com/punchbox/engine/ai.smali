.class Lcom/punchbox/engine/ai;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/punchbox/engine/ad;


# direct methods
.method private constructor <init>(Lcom/punchbox/engine/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/engine/ai;->a:Lcom/punchbox/engine/ad;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/punchbox/engine/ad;Lcom/punchbox/engine/ae;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/punchbox/engine/ai;-><init>(Lcom/punchbox/engine/ad;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "CoCoAdSDK-PunchBoxClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Respond from Service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "CoCoAdSDK-PunchBoxClient"

    const-string v1, "mLock.release()"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/ai;->a:Lcom/punchbox/engine/ad;

    invoke-static {v0}, Lcom/punchbox/engine/ad;->f(Lcom/punchbox/engine/ad;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/punchbox/engine/ai;->a:Lcom/punchbox/engine/ad;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/punchbox/engine/ad;->b(Lcom/punchbox/engine/ad;Z)Z

    goto :goto_0

    :sswitch_2
    const-string v0, "CoCoAdSDK-PunchBoxClient"

    const-string v1, "mLock.release()"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/ai;->a:Lcom/punchbox/engine/ad;

    invoke-static {v0}, Lcom/punchbox/engine/ad;->f(Lcom/punchbox/engine/ad;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v0, p0, Lcom/punchbox/engine/ai;->a:Lcom/punchbox/engine/ad;

    invoke-static {v0, p1}, Lcom/punchbox/engine/ad;->a(Lcom/punchbox/engine/ad;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/punchbox/engine/ai;->a:Lcom/punchbox/engine/ad;

    invoke-static {v0, p1}, Lcom/punchbox/engine/ad;->b(Lcom/punchbox/engine/ad;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/punchbox/engine/ai;->a:Lcom/punchbox/engine/ad;

    invoke-static {v0, p1}, Lcom/punchbox/engine/ad;->c(Lcom/punchbox/engine/ad;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x3e8 -> :sswitch_1
        0x7d0 -> :sswitch_0
    .end sparse-switch
.end method

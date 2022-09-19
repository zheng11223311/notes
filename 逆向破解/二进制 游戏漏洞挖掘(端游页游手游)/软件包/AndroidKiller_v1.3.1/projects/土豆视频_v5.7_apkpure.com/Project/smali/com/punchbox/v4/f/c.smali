.class Lcom/punchbox/v4/f/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/punchbox/v4/f/b;


# direct methods
.method constructor <init>(Lcom/punchbox/v4/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/v4/f/c;->a:Lcom/punchbox/v4/f/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "CoCoAdSDK-ConnectivityMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "networkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/v4/f/c;->a:Lcom/punchbox/v4/f/b;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/punchbox/v4/f/b;->a(Lcom/punchbox/v4/f/b;II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/punchbox/v4/f/c;->a:Lcom/punchbox/v4/f/b;

    invoke-static {v0}, Lcom/punchbox/v4/f/b;->a(Lcom/punchbox/v4/f/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/v4/f/c;->a:Lcom/punchbox/v4/f/b;

    invoke-static {v0}, Lcom/punchbox/v4/f/b;->b(Lcom/punchbox/v4/f/b;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/punchbox/v4/f/c;->a:Lcom/punchbox/v4/f/b;

    invoke-static {v0}, Lcom/punchbox/v4/f/b;->c(Lcom/punchbox/v4/f/b;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

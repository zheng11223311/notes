.class public Lcom/punchbox/v4/f/d;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field a:Landroid/os/Handler;

.field b:Landroid/net/ConnectivityManager;

.field c:I

.field d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    sget v0, Lcom/punchbox/engine/d;->a:I

    iput v0, p0, Lcom/punchbox/v4/f/d;->c:I

    sget v0, Lcom/punchbox/engine/d;->e:I

    iput v0, p0, Lcom/punchbox/v4/f/d;->d:I

    iput-object p2, p0, Lcom/punchbox/v4/f/d;->a:Landroid/os/Handler;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/punchbox/v4/f/d;->b:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "noConnectivity"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "CoCoAdSDK-ConnReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noConnection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/v4/f/d;->a:Landroid/os/Handler;

    iget v1, p0, Lcom/punchbox/v4/f/d;->c:I

    sget v2, Lcom/punchbox/engine/d;->e:I

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/punchbox/v4/f/d;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "CoCoAdSDK-ConnReceiver"

    const-string v1, "networkInfo is null"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const-string v2, "CoCoAdSDK-ConnReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    if-ne v1, v6, :cond_0

    :cond_3
    packed-switch v1, :pswitch_data_0

    :goto_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    const-string v1, "CoCoAdSDK-ConnReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "networkState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_4

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_0

    :cond_4
    sget-object v1, Lcom/punchbox/v4/f/e;->a:[I

    invoke-virtual {v0}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    :goto_2
    iget-object v0, p0, Lcom/punchbox/v4/f/d;->a:Landroid/os/Handler;

    iget v1, p0, Lcom/punchbox/v4/f/d;->c:I

    iget v2, p0, Lcom/punchbox/v4/f/d;->d:I

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget v0, p0, Lcom/punchbox/v4/f/d;->c:I

    sget v1, Lcom/punchbox/engine/d;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/punchbox/v4/f/d;->d:I

    sget v1, Lcom/punchbox/engine/d;->d:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/punchbox/v4/f/d;->a:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_0
    sget v1, Lcom/punchbox/engine/d;->b:I

    iput v1, p0, Lcom/punchbox/v4/f/d;->c:I

    goto :goto_1

    :pswitch_1
    sget v1, Lcom/punchbox/engine/d;->c:I

    iput v1, p0, Lcom/punchbox/v4/f/d;->c:I

    goto :goto_1

    :pswitch_2
    sget v0, Lcom/punchbox/engine/d;->d:I

    iput v0, p0, Lcom/punchbox/v4/f/d;->d:I

    goto :goto_2

    :pswitch_3
    sget v0, Lcom/punchbox/engine/d;->e:I

    iput v0, p0, Lcom/punchbox/v4/f/d;->d:I

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/punchbox/v4/f/d;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

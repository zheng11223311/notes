.class final Lio/rong/imlib/RongIMClient$1;
.super Lio/rong/imlib/IStringCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->connect(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)Lio/rong/imlib/RongIMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field connectCallback:Lio/rong/imlib/RongIMClient$ConnectCallback;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$ConnectCallback;)V
    .locals 1

    .prologue
    .line 525
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    invoke-direct {p0}, Lio/rong/imlib/IStringCallback$Stub;-><init>()V

    .line 526
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    iput-object v0, p0, Lio/rong/imlib/RongIMClient$1;->connectCallback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 7
    .param p1, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 530
    const-string v3, "RongIMClient"

    const-string v4, "RongIMClient : connect callback"

    const-string v5, "onComplete"

    invoke-static {v3, v4, v5}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    sget-object v3, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$200(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$StatusListener;

    move-result-object v3

    sget-object v4, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v3, v4}, Lio/rong/imlib/RongIMClient$StatusListener;->onStatusChange(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    .line 533
    sget-object v3, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$1000(Lio/rong/imlib/RongIMClient;)V

    .line 535
    sget-object v3, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    iget-object v3, v3, Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 538
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 540
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-static {v3}, Lio/rong/imlib/ConnectChangeReceiver;->setLastConnectNetworkChannel(I)V

    .line 542
    sget-object v3, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    invoke-static {v3, p1}, Lio/rong/imlib/RongIMClient;->access$1102(Lio/rong/imlib/RongIMClient;Ljava/lang/String;)Ljava/lang/String;

    .line 543
    sget-object v3, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lio/rong/imlib/RongIMClient;->access$002(Lio/rong/imlib/RongIMClient;I)I

    .line 544
    sget-object v3, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lio/rong/imlib/RongIMClient;->access$502(Lio/rong/imlib/RongIMClient;Z)Z

    .line 546
    sget-object v3, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    iget-object v3, v3, Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 547
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "userId"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 548
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 550
    sget-object v3, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 551
    sget-object v3, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    sget-object v4, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    invoke-static {v4}, Lio/rong/imlib/RongIMClient;->access$100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 552
    sget-object v3, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    invoke-static {v3, v6}, Lio/rong/imlib/RongIMClient;->access$102(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ReconnectRunnable;)Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    .line 555
    :cond_0
    sget-object v3, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$300(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 556
    sget-object v3, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$1200(Lio/rong/imlib/RongIMClient;)Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    invoke-static {v4}, Lio/rong/imlib/RongIMClient;->access$300(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 559
    :cond_1
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$1;->connectCallback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    if-eqz v3, :cond_2

    .line 560
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$1;->connectCallback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    invoke-virtual {v3, p1}, Lio/rong/imlib/RongIMClient$ConnectCallback;->onCallback(Ljava/lang/Object;)V

    .line 562
    :cond_2
    iput-object v6, p0, Lio/rong/imlib/RongIMClient$1;->connectCallback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    .line 563
    return-void
.end method

.method public onFailure(I)V
    .locals 5
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 567
    const-string v0, "RongIMClient"

    const-string v1, "RongIMClient : connect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback : onFailure = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    invoke-static {v0}, Lio/rong/imlib/RongIMClient;->access$200(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$StatusListener;

    move-result-object v1

    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1300()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v1, v0}, Lio/rong/imlib/RongIMClient$StatusListener;->onStatusChange(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    .line 571
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    invoke-static {v0}, Lio/rong/imlib/RongIMClient;->access$300(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 572
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    invoke-static {v0, v4}, Lio/rong/imlib/RongIMClient;->access$302(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$DisconnectRunnable;)Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    .line 575
    :cond_0
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_USER_OR_PASSWD_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 576
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$1;->connectCallback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$1;->connectCallback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient$ConnectCallback;->onTokenIncorrect()V

    .line 579
    :cond_1
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    invoke-static {v0, v4}, Lio/rong/imlib/RongIMClient;->access$402(Lio/rong/imlib/RongIMClient;Ljava/lang/String;)Ljava/lang/String;

    .line 585
    :cond_2
    :goto_0
    iput-object v4, p0, Lio/rong/imlib/RongIMClient$1;->connectCallback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    .line 586
    return-void

    .line 581
    :cond_3
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$1;->connectCallback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    if-eqz v0, :cond_2

    .line 582
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$1;->connectCallback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    invoke-static {p1}, Lio/rong/imlib/RongIMClient$ErrorCode;->valueOf(I)Lio/rong/imlib/RongIMClient$ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ConnectCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method

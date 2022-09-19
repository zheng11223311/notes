.class Lio/rong/imlib/RongIMClient$AidlConnection;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/RongIMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AidlConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    .line 330
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v2, v3}, Lio/rong/imlib/RongIMClient;->access$002(Lio/rong/imlib/RongIMClient;I)I

    .line 331
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v2, v3}, Lio/rong/imlib/RongIMClient;->access$502(Lio/rong/imlib/RongIMClient;Z)Z

    .line 332
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {p2}, Lio/rong/imlib/IHandler$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IHandler;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    .line 333
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    const-string v3, "onServiceConnected"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mConnectionStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v5, v5, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", stub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v5, v5, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-eqz v2, :cond_0

    .line 338
    :try_start_0
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-static {}, Lio/rong/imlib/LibContext;->getInstance()Lio/rong/imlib/LibContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/LibContext;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/rong/imlib/IHandler;->init(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :cond_0
    :goto_0
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lio/rong/imlib/RongIMClient;->access$602(Lio/rong/imlib/RongIMClient;Z)Z

    .line 346
    sget-object v2, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    new-instance v3, Lio/rong/imlib/RongIMClient$RegRunnable;

    iget-object v4, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-direct {v3, v4}, Lio/rong/imlib/RongIMClient$RegRunnable;-><init>(Lio/rong/imlib/RongIMClient;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v2}, Lio/rong/imlib/RongIMClient;->access$700(Lio/rong/imlib/RongIMClient;)V

    .line 349
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 350
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v2, "action_reconnect"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$800(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/ConnectChangeReceiver;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v2}, Lio/rong/imlib/RongIMClient;->access$900(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$ConnectRunnable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 356
    sget-object v2, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$900(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$ConnectRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 360
    :cond_1
    :goto_1
    return-void

    .line 339
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RongIMClient"

    const-string v3, "AidlConnection : onServiceConnected"

    const-string v4, "RemoteException"

    invoke-static {v2, v3, v4}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 357
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v2}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 358
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/rong/imlib/RongIMClient;->reconnect(Lio/rong/imlib/RongIMClient$ConnectCallback;)V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 364
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    const/4 v2, 0x0

    iput-object v2, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    .line 365
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v1, v3}, Lio/rong/imlib/RongIMClient;->access$602(Lio/rong/imlib/RongIMClient;Z)Z

    .line 366
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v1, v3}, Lio/rong/imlib/RongIMClient;->access$502(Lio/rong/imlib/RongIMClient;Z)Z

    .line 368
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    const-string v2, "onServiceDisconnected"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v4, v4, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> DISCONNECTED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$200(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$StatusListener;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$StatusListener;->onStatusChange(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    .line 371
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$800(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/ConnectChangeReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v2}, Lio/rong/imlib/RongIMClient;->access$800(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/ConnectChangeReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/common/SystemUtils;->isAppRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    const-string v2, "onServiceDisconnected"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Main process is running."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v4, v4, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> DISCONNECTED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->init(Landroid/content/Context;)V

    .line 382
    :cond_1
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

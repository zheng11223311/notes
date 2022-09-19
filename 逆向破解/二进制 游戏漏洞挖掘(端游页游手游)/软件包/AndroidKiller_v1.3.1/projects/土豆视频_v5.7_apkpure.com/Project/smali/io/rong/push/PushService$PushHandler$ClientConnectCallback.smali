.class Lio/rong/push/PushService$PushHandler$ClientConnectCallback;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Lio/rong/push/PushClient$ConnectStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushService$PushHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientConnectCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/push/PushService$PushHandler;


# direct methods
.method private constructor <init>(Lio/rong/push/PushService$PushHandler;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lio/rong/push/PushService$PushHandler$ClientConnectCallback;->this$1:Lio/rong/push/PushService$PushHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/push/PushService$PushHandler;Lio/rong/push/PushService$1;)V
    .locals 0
    .param p1, "x0"    # Lio/rong/push/PushService$PushHandler;
    .param p2, "x1"    # Lio/rong/push/PushService$1;

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lio/rong/push/PushService$PushHandler$ClientConnectCallback;-><init>(Lio/rong/push/PushService$PushHandler;)V

    return-void
.end method


# virtual methods
.method public onConnected(Lio/rong/push/PushProtocalStack$ConnAckMessage;)V
    .locals 4
    .param p1, "msg"    # Lio/rong/push/PushProtocalStack$ConnAckMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The client connect status is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/push/PushProtocalStack$ConnAckMessage;->getType()Lio/rong/push/PushProtocalStack$Message$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {p1}, Lio/rong/push/PushProtocalStack$ConnAckMessage;->getType()Lio/rong/push/PushProtocalStack$Message$Type;

    move-result-object v0

    sget-object v1, Lio/rong/push/PushProtocalStack$Message$Type;->CONNACK:Lio/rong/push/PushProtocalStack$Message$Type;

    if-ne v0, v1, :cond_0

    .line 347
    invoke-virtual {p1}, Lio/rong/push/PushProtocalStack$ConnAckMessage;->getStatus()Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    move-result-object v0

    sget-object v1, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->ACCEPTED:Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    if-ne v0, v1, :cond_1

    .line 348
    iget-object v0, p0, Lio/rong/push/PushService$PushHandler$ClientConnectCallback;->this$1:Lio/rong/push/PushService$PushHandler;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/rong/push/PushService$PushHandler;->isClientConnected:Z

    .line 349
    iget-object v0, p0, Lio/rong/push/PushService$PushHandler$ClientConnectCallback;->this$1:Lio/rong/push/PushService$PushHandler;

    iget-object v0, v0, Lio/rong/push/PushService$PushHandler;->this$0:Lio/rong/push/PushService;

    const-string v1, "Connect"

    const-string v2, "Client connect successfully.So start the heart beat."

    invoke-static {v0, v1, v2}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_0
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v0

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v2, v3}, Lio/rong/push/PushContext;->startNextHeartbeat(J)V

    .line 355
    :cond_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lio/rong/push/PushService$PushHandler$ClientConnectCallback;->this$1:Lio/rong/push/PushService$PushHandler;

    iget-object v0, v0, Lio/rong/push/PushService$PushHandler;->this$0:Lio/rong/push/PushService;

    const-string v1, "Connect to server failure!! Error code :"

    invoke-virtual {p1}, Lio/rong/push/PushProtocalStack$ConnAckMessage;->getStatus()Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/push/PushProtocalStack$ConnAckMessage$ConnectionStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDisConnected(Lio/rong/push/PushProtocalStack$DisconnectMessage;)V
    .locals 3
    .param p1, "msg"    # Lio/rong/push/PushProtocalStack$DisconnectMessage;

    .prologue
    const/4 v2, 0x0

    .line 359
    invoke-virtual {p1}, Lio/rong/push/PushProtocalStack$DisconnectMessage;->getStatus()Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;

    move-result-object v0

    sget-object v1, Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;->OTHER_DEVICE_LOGIN:Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    const-string v0, "PushService"

    const-string v1, "Login on other device! Be kicked off!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lio/rong/push/PushService$PushHandler$ClientConnectCallback;->this$1:Lio/rong/push/PushService$PushHandler;

    iput-boolean v2, v0, Lio/rong/push/PushService$PushHandler;->isClientConnected:Z

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-virtual {p1}, Lio/rong/push/PushProtocalStack$DisconnectMessage;->getStatus()Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;

    move-result-object v0

    sget-object v1, Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;->RECONNECT:Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    const-string v0, "PushService"

    const-string v1, "RECONNECT!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lio/rong/push/PushService$PushHandler$ClientConnectCallback;->this$1:Lio/rong/push/PushService$PushHandler;

    iput-boolean v2, v0, Lio/rong/push/PushService$PushHandler;->isClientConnected:Z

    goto :goto_0

    .line 365
    :cond_2
    invoke-virtual {p1}, Lio/rong/push/PushProtocalStack$DisconnectMessage;->getStatus()Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;

    move-result-object v0

    sget-object v1, Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;->CLOSURE:Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    const-string v0, "PushService"

    const-string/jumbo v1, "the socket has been closed!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lio/rong/push/PushService$PushHandler$ClientConnectCallback;->this$1:Lio/rong/push/PushService$PushHandler;

    iput-boolean v2, v0, Lio/rong/push/PushService$PushHandler;->isClientConnected:Z

    goto :goto_0
.end method

.method public onError(Ljava/io/IOException;)V
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 373
    iget-object v0, p0, Lio/rong/push/PushService$PushHandler$ClientConnectCallback;->this$1:Lio/rong/push/PushService$PushHandler;

    iget-object v0, v0, Lio/rong/push/PushService$PushHandler;->this$0:Lio/rong/push/PushService;

    const-string v1, "ConnectStatus"

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lio/rong/push/PushService$PushHandler$ClientConnectCallback;->this$1:Lio/rong/push/PushService$PushHandler;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/rong/push/PushService$PushHandler;->isClientConnected:Z

    .line 375
    return-void
.end method

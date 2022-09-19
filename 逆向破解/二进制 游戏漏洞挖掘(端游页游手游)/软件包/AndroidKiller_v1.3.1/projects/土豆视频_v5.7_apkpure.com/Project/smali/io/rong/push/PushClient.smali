.class Lio/rong/push/PushClient;
.super Ljava/lang/Object;
.source "PushClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/push/PushClient$1;,
        Lio/rong/push/PushClient$PingSuccessListener;,
        Lio/rong/push/PushClient$ConnectStatusCallback;,
        Lio/rong/push/PushClient$ClientListener;,
        Lio/rong/push/PushClient$PushReader;
    }
.end annotation


# instance fields
.field private connectCallback:Lio/rong/push/PushClient$ConnectStatusCallback;

.field private connectMsg:Lio/rong/push/PushProtocalStack$ConnectMessage;

.field private connectionAckLock:Ljava/util/concurrent/Semaphore;

.field private in:Lio/rong/push/PushProtocalStack$MessageInputStream;

.field private listener:Lio/rong/push/PushClient$ClientListener;

.field private mPingSuccessListener:Lio/rong/push/PushClient$PingSuccessListener;

.field public os:Ljava/io/OutputStream;

.field private out:Lio/rong/push/PushProtocalStack$MessageOutputStream;

.field private reader:Lio/rong/push/PushClient$PushReader;

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/rong/push/PushClient$ClientListener;Lio/rong/push/PushClient$PingSuccessListener;)V
    .locals 7
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "phoneInfo"    # Ljava/lang/String;
    .param p5, "listener"    # Lio/rong/push/PushClient$ClientListener;
    .param p6, "mPingSuccessListener"    # Lio/rong/push/PushClient$PingSuccessListener;

    .prologue
    const/4 v6, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p5, p0, Lio/rong/push/PushClient;->listener:Lio/rong/push/PushClient$ClientListener;

    .line 35
    iput-object p6, p0, Lio/rong/push/PushClient;->mPingSuccessListener:Lio/rong/push/PushClient$PingSuccessListener;

    .line 36
    new-instance v0, Lio/rong/push/PushProtocalStack$ConnectMessage;

    const/16 v1, 0x12c

    invoke-direct {v0, p1, v6, v1}, Lio/rong/push/PushProtocalStack$ConnectMessage;-><init>(Ljava/lang/String;ZI)V

    iput-object v0, p0, Lio/rong/push/PushClient;->connectMsg:Lio/rong/push/PushProtocalStack$ConnectMessage;

    .line 37
    iget-object v0, p0, Lio/rong/push/PushClient;->connectMsg:Lio/rong/push/PushProtocalStack$ConnectMessage;

    invoke-virtual {v0, p2, p3}, Lio/rong/push/PushProtocalStack$ConnectMessage;->setCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "connect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " push version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/rong/push/PushConst;->PUSH_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lio/rong/push/PushClient;->connectMsg:Lio/rong/push/PushProtocalStack$ConnectMessage;

    const-string v1, "clientInfo"

    const-string v2, "%s-%s-%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "AndroidPush"

    aput-object v5, v3, v4

    aput-object p4, v3, v6

    const/4 v4, 0x2

    sget-object v5, Lio/rong/push/PushConst;->PUSH_VERSION:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/push/PushProtocalStack$ConnectMessage;->setWill(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method static synthetic access$100(Lio/rong/push/PushClient;)Lio/rong/push/PushProtocalStack$MessageInputStream;
    .locals 1
    .param p0, "x0"    # Lio/rong/push/PushClient;

    .prologue
    .line 21
    iget-object v0, p0, Lio/rong/push/PushClient;->in:Lio/rong/push/PushProtocalStack$MessageInputStream;

    return-object v0
.end method

.method static synthetic access$200(Lio/rong/push/PushClient;Lio/rong/push/PushProtocalStack$Message;)V
    .locals 0
    .param p0, "x0"    # Lio/rong/push/PushClient;
    .param p1, "x1"    # Lio/rong/push/PushProtocalStack$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lio/rong/push/PushClient;->handleMessage(Lio/rong/push/PushProtocalStack$Message;)V

    return-void
.end method

.method static synthetic access$300(Lio/rong/push/PushClient;)Lio/rong/push/PushClient$ConnectStatusCallback;
    .locals 1
    .param p0, "x0"    # Lio/rong/push/PushClient;

    .prologue
    .line 21
    iget-object v0, p0, Lio/rong/push/PushClient;->connectCallback:Lio/rong/push/PushClient$ConnectStatusCallback;

    return-object v0
.end method

.method private handleMessage(Lio/rong/push/PushProtocalStack$Message;)V
    .locals 6
    .param p1, "msg"    # Lio/rong/push/PushProtocalStack$Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string v3, "Handler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/push/PushProtocalStack$Message;->getType()Lio/rong/push/PushProtocalStack$Message$Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v3, Lio/rong/push/PushClient$1;->$SwitchMap$io$rong$push$PushProtocalStack$Message$Type:[I

    invoke-virtual {p1}, Lio/rong/push/PushProtocalStack$Message;->getType()Lio/rong/push/PushProtocalStack$Message$Type;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/push/PushProtocalStack$Message$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 110
    :pswitch_0
    iget-object v3, p0, Lio/rong/push/PushClient;->connectionAckLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 111
    iget-object v3, p0, Lio/rong/push/PushClient;->connectCallback:Lio/rong/push/PushClient$ConnectStatusCallback;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 112
    check-cast v0, Lio/rong/push/PushProtocalStack$ConnAckMessage;

    .line 113
    .local v0, "connAckMsg":Lio/rong/push/PushProtocalStack$ConnAckMessage;
    iget-object v3, p0, Lio/rong/push/PushClient;->connectCallback:Lio/rong/push/PushClient$ConnectStatusCallback;

    invoke-interface {v3, v0}, Lio/rong/push/PushClient$ConnectStatusCallback;->onConnected(Lio/rong/push/PushProtocalStack$ConnAckMessage;)V

    goto :goto_0

    .line 117
    .end local v0    # "connAckMsg":Lio/rong/push/PushProtocalStack$ConnAckMessage;
    :pswitch_1
    iget-object v3, p0, Lio/rong/push/PushClient;->mPingSuccessListener:Lio/rong/push/PushClient$PingSuccessListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lio/rong/push/PushClient;->mPingSuccessListener:Lio/rong/push/PushClient$PingSuccessListener;

    invoke-interface {v3}, Lio/rong/push/PushClient$PingSuccessListener;->onSuccess()V

    goto :goto_0

    :pswitch_2
    move-object v2, p1

    .line 120
    check-cast v2, Lio/rong/push/PushProtocalStack$PublishMessage;

    .line 121
    .local v2, "publishMsg":Lio/rong/push/PushProtocalStack$PublishMessage;
    iget-object v3, p0, Lio/rong/push/PushClient;->listener:Lio/rong/push/PushClient$ClientListener;

    if-eqz v3, :cond_0

    .line 122
    const-string v3, "PushClient"

    const-string v4, "call Publish msg listener"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v3, p0, Lio/rong/push/PushClient;->listener:Lio/rong/push/PushClient$ClientListener;

    invoke-interface {v3, v2}, Lio/rong/push/PushClient$ClientListener;->messageArrived(Lio/rong/push/PushProtocalStack$PublishMessage;)V

    goto :goto_0

    .end local v2    # "publishMsg":Lio/rong/push/PushProtocalStack$PublishMessage;
    :pswitch_3
    move-object v1, p1

    .line 127
    check-cast v1, Lio/rong/push/PushProtocalStack$DisconnectMessage;

    .line 128
    .local v1, "disconnectMessage":Lio/rong/push/PushProtocalStack$DisconnectMessage;
    iget-object v3, p0, Lio/rong/push/PushClient;->connectCallback:Lio/rong/push/PushClient$ConnectStatusCallback;

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lio/rong/push/PushClient;->connectCallback:Lio/rong/push/PushClient$ConnectStatusCallback;

    invoke-interface {v3, v1}, Lio/rong/push/PushClient$ConnectStatusCallback;->onDisConnected(Lio/rong/push/PushProtocalStack$DisconnectMessage;)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public connect(Ljava/lang/String;ILio/rong/push/PushClient$ConnectStatusCallback;)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "callback"    # Lio/rong/push/PushClient$ConnectStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 45
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    .line 47
    .local v2, "socketChannel":Ljava/nio/channels/SocketChannel;
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    iput-object v3, p0, Lio/rong/push/PushClient;->socket:Ljava/net/Socket;

    .line 48
    const-string v3, "connect"

    const-string/jumbo v4, "the socket is established"

    invoke-static {p0, v3, v4}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 50
    .local v0, "address":Ljava/net/SocketAddress;
    iget-object v3, p0, Lio/rong/push/PushClient;->socket:Ljava/net/Socket;

    const/16 v4, 0xfa0

    invoke-virtual {v3, v0, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 51
    iget-object v3, p0, Lio/rong/push/PushClient;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 52
    .local v1, "is":Ljava/io/InputStream;
    new-instance v3, Lio/rong/push/PushProtocalStack$MessageInputStream;

    invoke-direct {v3, v1}, Lio/rong/push/PushProtocalStack$MessageInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lio/rong/push/PushClient;->in:Lio/rong/push/PushProtocalStack$MessageInputStream;

    .line 53
    iget-object v3, p0, Lio/rong/push/PushClient;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lio/rong/push/PushClient;->os:Ljava/io/OutputStream;

    .line 54
    new-instance v3, Lio/rong/push/PushProtocalStack$MessageOutputStream;

    iget-object v4, p0, Lio/rong/push/PushClient;->os:Ljava/io/OutputStream;

    invoke-direct {v3, v4}, Lio/rong/push/PushProtocalStack$MessageOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lio/rong/push/PushClient;->out:Lio/rong/push/PushProtocalStack$MessageOutputStream;

    .line 56
    iget-object v3, p0, Lio/rong/push/PushClient;->reader:Lio/rong/push/PushClient$PushReader;

    if-eqz v3, :cond_0

    .line 57
    iget-object v3, p0, Lio/rong/push/PushClient;->reader:Lio/rong/push/PushClient$PushReader;

    invoke-virtual {v3}, Lio/rong/push/PushClient$PushReader;->interrupt()V

    .line 58
    iput-object v5, p0, Lio/rong/push/PushClient;->reader:Lio/rong/push/PushClient$PushReader;

    .line 60
    :cond_0
    new-instance v3, Lio/rong/push/PushClient$PushReader;

    invoke-direct {v3, p0, v5}, Lio/rong/push/PushClient$PushReader;-><init>(Lio/rong/push/PushClient;Lio/rong/push/PushClient$1;)V

    iput-object v3, p0, Lio/rong/push/PushClient;->reader:Lio/rong/push/PushClient$PushReader;

    .line 61
    iget-object v3, p0, Lio/rong/push/PushClient;->reader:Lio/rong/push/PushClient$PushReader;

    invoke-virtual {v3}, Lio/rong/push/PushClient$PushReader;->start()V

    .line 63
    iput-object p3, p0, Lio/rong/push/PushClient;->connectCallback:Lio/rong/push/PushClient$ConnectStatusCallback;

    .line 64
    new-instance v3, Ljava/util/concurrent/Semaphore;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v3, p0, Lio/rong/push/PushClient;->connectionAckLock:Ljava/util/concurrent/Semaphore;

    .line 65
    iget-object v3, p0, Lio/rong/push/PushClient;->out:Lio/rong/push/PushProtocalStack$MessageOutputStream;

    iget-object v4, p0, Lio/rong/push/PushClient;->connectMsg:Lio/rong/push/PushProtocalStack$ConnectMessage;

    invoke-virtual {v3, v4}, Lio/rong/push/PushProtocalStack$MessageOutputStream;->writeMessage(Lio/rong/push/PushProtocalStack$Message;)V

    .line 66
    iget-object v3, p0, Lio/rong/push/PushClient;->connectionAckLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 67
    return-void
.end method

.method public disconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lio/rong/push/PushClient;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "connect"

    const-string/jumbo v1, "the socket is closed"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lio/rong/push/PushClient;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 85
    :cond_0
    return-void
.end method

.method public disconnectByNormal()V
    .locals 4

    .prologue
    .line 88
    new-instance v1, Lio/rong/push/PushProtocalStack$DisconnectMessage;

    sget-object v2, Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;->CLOSURE:Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;

    invoke-direct {v1, v2}, Lio/rong/push/PushProtocalStack$DisconnectMessage;-><init>(Lio/rong/push/PushProtocalStack$DisconnectMessage$DisconnectionStatus;)V

    .line 89
    .local v1, "msg":Lio/rong/push/PushProtocalStack$DisconnectMessage;
    iget-object v2, p0, Lio/rong/push/PushClient;->out:Lio/rong/push/PushProtocalStack$MessageOutputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/rong/push/PushClient;->socket:Ljava/net/Socket;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/rong/push/PushClient;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    :try_start_0
    iget-object v2, p0, Lio/rong/push/PushClient;->out:Lio/rong/push/PushProtocalStack$MessageOutputStream;

    invoke-virtual {v2, v1}, Lio/rong/push/PushProtocalStack$MessageOutputStream;->writeMessage(Lio/rong/push/PushProtocalStack$Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :try_start_1
    iget-object v2, p0, Lio/rong/push/PushClient;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 92
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 93
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :try_start_3
    iget-object v2, p0, Lio/rong/push/PushClient;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 97
    :catch_2
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 96
    :try_start_4
    iget-object v3, p0, Lio/rong/push/PushClient;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 99
    :goto_1
    throw v2

    .line 97
    :catch_3
    move-exception v0

    .line 98
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public ping()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lio/rong/push/PushClient;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/push/PushClient;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/push/PushClient;->out:Lio/rong/push/PushProtocalStack$MessageOutputStream;

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "Ping"

    iget-object v1, p0, Lio/rong/push/PushClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lio/rong/push/PushClient;->out:Lio/rong/push/PushProtocalStack$MessageOutputStream;

    new-instance v1, Lio/rong/push/PushProtocalStack$PingReqMessage;

    invoke-direct {v1}, Lio/rong/push/PushProtocalStack$PingReqMessage;-><init>()V

    invoke-virtual {v0, v1}, Lio/rong/push/PushProtocalStack$MessageOutputStream;->writeMessage(Lio/rong/push/PushProtocalStack$Message;)V

    .line 77
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "the socket happens exception when ping"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

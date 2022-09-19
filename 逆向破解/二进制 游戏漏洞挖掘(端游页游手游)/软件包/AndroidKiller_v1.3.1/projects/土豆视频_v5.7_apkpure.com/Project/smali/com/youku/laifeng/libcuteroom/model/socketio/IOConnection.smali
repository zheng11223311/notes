.class Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;
.super Ljava/lang/Object;
.source "IOConnection.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ConnectThread;,
        Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ReconnectTask;,
        Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$HearbeatTimeoutTask;
    }
.end annotation


# static fields
.field public static final FRAME_DELIMITER:Ljava/lang/String; = "\ufffd"

.field public static final SOCKET_IO_1:Ljava/lang/String; = "/socket.io/1/"

.field private static final STATE_CONNECTING:I = 0x2

.field private static final STATE_HANDSHAKE:I = 0x1

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_INTERRUPTED:I = 0x4

.field private static final STATE_INVALID:I = 0x6

.field private static final STATE_READY:I = 0x3

.field static final TAG:Ljava/lang/String;

.field private static connections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sslContext:Ljavax/net/ssl/SSLContext;


# instance fields
.field private acknowledge:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundTimer:Ljava/util/Timer;

.field private closingTimeout:J

.field private connectTimeout:I

.field private firstSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

.field private headers:Ljava/util/Properties;

.field private heartbeatTimeout:J

.field private heartbeatTimeoutTask:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$HearbeatTimeoutTask;

.field private keepAliveInQueue:Z

.field private lastException:Ljava/lang/Exception;

.field private nextId:I

.field private outputBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reconnectTask:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ReconnectTask;

.field private sessionId:Ljava/lang/String;

.field private sockets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;",
            ">;"
        }
    .end annotation
.end field

.field private state:I

.field private transport:Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;

.field private url:Ljava/net/URL;

.field private urlStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->TAG:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->connections:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "socket"    # Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    .prologue
    const/4 v3, 0x0

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v1, 0x0

    iput v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->state:I

    .line 86
    const/16 v1, 0x2710

    iput v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->connectTimeout:I

    .line 101
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->outputBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 104
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sockets:Ljava/util/HashMap;

    .line 113
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->firstSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    .line 116
    new-instance v1, Ljava/util/Timer;

    const-string v2, "backgroundTimer"

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->backgroundTimer:Ljava/util/Timer;

    .line 128
    const/4 v1, 0x1

    iput v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->nextId:I

    .line 134
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->acknowledge:Landroid/util/SparseArray;

    .line 165
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->reconnectTask:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ReconnectTask;

    .line 421
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->url:Ljava/net/URL;

    .line 422
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->urlStr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->firstSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    .line 427
    invoke-virtual {p2}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->getHeaders()Ljava/util/Properties;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->headers:Ljava/util/Properties;

    .line 428
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sockets:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    new-instance v1, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ConnectThread;

    invoke-direct {v1, p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ConnectThread;-><init>(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)V

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ConnectThread;->start()V

    .line 430
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)Ljava/lang/Exception;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->lastException:Ljava/lang/Exception;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;
    .param p1, "x1"    # Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->error(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;)V

    return-void
.end method

.method static synthetic access$200(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->connectTransport()V

    return-void
.end method

.method static synthetic access$300(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->keepAliveInQueue:Z

    return v0
.end method

.method static synthetic access$302(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->keepAliveInQueue:Z

    return p1
.end method

.method static synthetic access$400(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sendPlain(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->handshake()V

    return-void
.end method

.method private declared-synchronized cleanup()V
    .locals 4

    .prologue
    .line 436
    monitor-enter p0

    const/4 v1, 0x6

    :try_start_0
    invoke-direct {p0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->setState(I)V

    .line 437
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->transport:Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;

    if-eqz v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->transport:Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;

    invoke-interface {v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;->disconnect()V

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sockets:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 441
    sget-object v2, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->connections:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 442
    :try_start_1
    sget-object v1, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->connections:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->urlStr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 443
    .local v0, "con":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    .line 444
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 447
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    :try_start_2
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->backgroundTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 450
    monitor-exit p0

    return-void

    .line 446
    :cond_1
    :try_start_3
    sget-object v1, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->connections:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->urlStr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 447
    .end local v0    # "con":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 436
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized connectTransport()V
    .locals 2

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->getState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 356
    :goto_0
    monitor-exit p0

    return-void

    .line 345
    :cond_0
    const/4 v0, 0x2

    :try_start_1
    invoke-direct {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->setState(I)V

    .line 346
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->protocols:Ljava/util/List;

    const-string/jumbo v1, "websocket"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->url:Ljava/net/URL;

    invoke-static {v0, p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/WebsocketTransport;->create(Ljava/net/URL;Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->transport:Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;

    .line 355
    :goto_1
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->transport:Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;

    invoke-interface {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 348
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->protocols:Ljava/util/List;

    const-string/jumbo v1, "xhr-polling"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->url:Ljava/net/URL;

    invoke-static {v0, p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->create(Ljava/net/URL;Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->transport:Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;

    goto :goto_1

    .line 351
    :cond_2
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;

    const-string v1, "Server supports no available transports. You should reconfigure the server to support a available transport"

    invoke-direct {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->error(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private error(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;)V
    .locals 3
    .param p1, "e"    # Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;

    .prologue
    .line 459
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sockets:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    .line 460
    .local v0, "socket":Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;
    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->getCallback()Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;->onError(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;)V

    goto :goto_0

    .line 462
    .end local v0    # "socket":Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;
    :cond_0
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->cleanup()V

    .line 463
    return-void
.end method

.method private findCallback(Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;
    .locals 4
    .param p1, "message"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;
        }
    .end annotation

    .prologue
    .line 518
    const-string v1, ""

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    .end local p0    # "this":Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;
    :goto_0
    return-object p0

    .line 520
    .restart local p0    # "this":Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;
    :cond_0
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sockets:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    .line 521
    .local v0, "socket":Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;
    if-nez v0, :cond_1

    .line 522
    new-instance v1, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find socket for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 523
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->getEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 525
    :cond_1
    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->getCallback()Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    move-result-object p0

    goto :goto_0
.end method

.method public static getSslContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method private declared-synchronized getState()I
    .locals 1

    .prologue
    .line 872
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handshake()V
    .locals 16

    .prologue
    const-wide/16 v14, 0x3e8

    .line 309
    const/4 v10, 0x1

    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->setState(I)V

    .line 310
    new-instance v9, Ljava/net/URL;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->url:Ljava/net/URL;

    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/socket.io/1/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 311
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 312
    .local v2, "connection":Ljava/net/URLConnection;
    instance-of v10, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v10, :cond_0

    .line 313
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v10, v0

    sget-object v11, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 314
    invoke-virtual {v11}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 316
    :cond_0
    move-object/from16 v0, p0

    iget v10, v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->connectTimeout:I

    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 317
    move-object/from16 v0, p0

    iget v10, v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->connectTimeout:I

    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->headers:Ljava/util/Properties;

    invoke-virtual {v10}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 321
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 322
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 321
    invoke-virtual {v2, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v9    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 335
    .local v4, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;

    const-string v11, "Error while handshaking"

    invoke-direct {v10, v11, v4}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->error(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;)V

    .line 337
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 325
    .restart local v2    # "connection":Ljava/net/URLConnection;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 326
    .local v8, "stream":Ljava/io/InputStream;
    new-instance v6, Ljava/util/Scanner;

    invoke-direct {v6, v8}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 327
    .local v6, "in":Ljava/util/Scanner;
    invoke-virtual {v6}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v7

    .line 328
    .local v7, "response":Ljava/lang/String;
    const-string v10, ":"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "data":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v3, v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sessionId:Ljava/lang/String;

    .line 330
    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    mul-long/2addr v10, v14

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->heartbeatTimeout:J

    .line 331
    const/4 v10, 0x2

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    mul-long/2addr v10, v14

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->closingTimeout:J

    .line 332
    const/4 v10, 0x3

    aget-object v10, v3, v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->protocols:Ljava/util/List;

    .line 333
    invoke-virtual {v6}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private invalidateTransport()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->transport:Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->transport:Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;

    invoke-interface {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;->invalidate()V

    .line 491
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->transport:Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;

    .line 492
    return-void
.end method

.method public static register(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;
    .locals 4
    .param p0, "origin"    # Ljava/lang/String;
    .param p1, "socket"    # Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    .prologue
    .line 240
    sget-object v2, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->connections:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 241
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;>;"
    if-nez v1, :cond_0

    .line 242
    new-instance v1, Ljava/util/LinkedList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 243
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;>;"
    sget-object v2, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->connections:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :goto_0
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    invoke-direct {v0, p0, p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;-><init>(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;)V

    .line 254
    .local v0, "connection":Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :goto_1
    return-object v0

    .line 245
    .end local v0    # "connection":Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;
    :cond_0
    monitor-enter v1

    .line 246
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    .line 247
    .restart local v0    # "connection":Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;
    invoke-virtual {v0, p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->register(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    monitor-exit v1

    goto :goto_1

    .line 250
    .end local v0    # "connection":Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private remoteAcknowledge(Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;
    .locals 5
    .param p1, "message"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;

    .prologue
    .line 368
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->getId()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "_id":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    const/4 v3, 0x0

    .line 375
    :goto_0
    return-object v3

    .line 371
    :cond_0
    const-string v3, "+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    :cond_1
    move-object v2, v0

    .line 374
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "endPoint":Ljava/lang/String;
    new-instance v3, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$1;-><init>(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized resetTimeout()V
    .locals 6

    .prologue
    .line 498
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->heartbeatTimeoutTask:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$HearbeatTimeoutTask;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->heartbeatTimeoutTask:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$HearbeatTimeoutTask;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$HearbeatTimeoutTask;->cancel()Z

    .line 501
    :cond_0
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 502
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$HearbeatTimeoutTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$HearbeatTimeoutTask;-><init>(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$1;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->heartbeatTimeoutTask:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$HearbeatTimeoutTask;

    .line 503
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->backgroundTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->heartbeatTimeoutTask:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$HearbeatTimeoutTask;

    iget-wide v2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->closingTimeout:J

    iget-wide v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->heartbeatTimeout:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    :cond_1
    monitor-exit p0

    return-void

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized sendPlain(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->getState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 475
    :try_start_1
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->transport:Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;

    invoke-interface {v1, p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;->send(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    :goto_0
    monitor-exit p0

    return-void

    .line 476
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->outputBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 472
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 481
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->outputBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static setSslContext(Ljavax/net/ssl/SSLContext;)V
    .locals 0
    .param p0, "sslContext"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 218
    sput-object p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 219
    return-void
.end method

.method private declared-synchronized setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 882
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 883
    iput p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    :cond_0
    monitor-exit p0

    return-void

    .line 882
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public varargs emit(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "socket"    # Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "ack"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 844
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "name"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "args"

    new-instance v5, Lorg/json/JSONArray;

    .line 845
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 844
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 846
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v2, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;

    const/4 v3, 0x5

    .line 847
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 849
    .local v2, "message":Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;
    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sendPlain(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "message":Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;
    :goto_0
    return-void

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;

    const-string v4, "Error while emitting an event. Make sure you only try to send arguments, which can be serialized into JSON."

    invoke-direct {v3, v4}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->error(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;)V

    goto :goto_0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTransport()Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->transport:Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 863
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs on(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "ack"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 923
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sockets:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    .line 924
    .local v0, "socket":Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;
    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->getCallback()Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;->on(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;[Ljava/lang/Object;)V

    goto :goto_0

    .line 925
    .end local v0    # "socket":Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;
    :cond_0
    return-void
.end method

.method public onConnect()V
    .locals 3

    .prologue
    .line 904
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sockets:Ljava/util/HashMap;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    .line 905
    .local v0, "socket":Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;
    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->getCallback()Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;->onConnect()V

    .line 907
    :cond_0
    return-void
.end method

.method public onDisconnect()V
    .locals 3

    .prologue
    .line 897
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sockets:Ljava/util/HashMap;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    .line 898
    .local v0, "socket":Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;
    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->getCallback()Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;->onDisconnect()V

    .line 900
    :cond_0
    return-void
.end method

.method public onError(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;)V
    .locals 3
    .param p1, "socketIOException"    # Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;

    .prologue
    .line 929
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sockets:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    .line 930
    .local v0, "socket":Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;
    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->getCallback()Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;->onError(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;)V

    goto :goto_0

    .line 931
    .end local v0    # "socket":Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;
    :cond_0
    return-void
.end method

.method public onMessage(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "ack"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;

    .prologue
    .line 911
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sockets:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    .line 912
    .local v0, "socket":Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;
    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->getCallback()Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;->onMessage(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;)V

    goto :goto_0

    .line 913
    .end local v0    # "socket":Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;
    :cond_0
    return-void
.end method

.method public onMessage(Lorg/json/JSONObject;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "ack"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;

    .prologue
    .line 917
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sockets:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    .line 918
    .local v0, "socket":Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;
    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->getCallback()Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;->onMessage(Lorg/json/JSONObject;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;)V

    goto :goto_0

    .line 919
    .end local v0    # "socket":Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;
    :cond_0
    return-void
.end method

.method public declared-synchronized reconnect()V
    .locals 4

    .prologue
    .line 775
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 776
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->invalidateTransport()V

    .line 777
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->setState(I)V

    .line 778
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->reconnectTask:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ReconnectTask;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->reconnectTask:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ReconnectTask;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ReconnectTask;->cancel()Z

    .line 781
    :cond_0
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ReconnectTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ReconnectTask;-><init>(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$1;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->reconnectTask:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ReconnectTask;

    .line 782
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->backgroundTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->reconnectTask:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ReconnectTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    :cond_1
    monitor-exit p0

    return-void

    .line 775
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized register(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;)Z
    .locals 6
    .param p1, "socket"    # Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    .prologue
    const/4 v2, 0x1

    .line 267
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "namespace":Ljava/lang/String;
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sockets:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    const/4 v2, 0x0

    .line 275
    :goto_0
    monitor-exit p0

    return v2

    .line 270
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sockets:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->headers:Ljava/util/Properties;

    invoke-virtual {p1, v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->setHeaders(Ljava/util/Properties;)V

    .line 272
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;

    const/4 v3, 0x1

    .line 273
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->getNamespace()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v0, v3, v4, v5}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 274
    .local v0, "connect":Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;
    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sendPlain(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 267
    .end local v0    # "connect":Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;
    .end local v1    # "namespace":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public send(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;Ljava/lang/String;)V
    .locals 3
    .param p1, "socket"    # Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;
    .param p2, "ack"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 806
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;

    const/4 v1, 0x3

    .line 807
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 809
    .local v0, "message":Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;
    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sendPlain(Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method public send(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "socket"    # Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;
    .param p2, "ack"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;
    .param p3, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 823
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;

    const/4 v1, 0x4

    .line 824
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 826
    .local v0, "message":Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;
    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sendPlain(Ljava/lang/String;)V

    .line 827
    return-void
.end method

.method public declared-synchronized transportConnected()V
    .locals 5

    .prologue
    .line 534
    monitor-enter p0

    const/4 v4, 0x3

    :try_start_0
    invoke-direct {p0, v4}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->setState(I)V

    .line 535
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->reconnectTask:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ReconnectTask;

    if-eqz v4, :cond_0

    .line 536
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->reconnectTask:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ReconnectTask;

    invoke-virtual {v4}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ReconnectTask;->cancel()Z

    .line 537
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->reconnectTask:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ReconnectTask;

    .line 539
    :cond_0
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->resetTimeout()V

    .line 540
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->transport:Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;

    invoke-interface {v4}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;->canSendBulk()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 541
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->outputBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 542
    .local v1, "outputBuffer":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->outputBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 545
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 553
    .local v3, "texts":[Ljava/lang/String;
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->transport:Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;

    invoke-interface {v4, v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;->sendBulk([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    .end local v1    # "outputBuffer":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/String;>;"
    .end local v3    # "texts":[Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v4, 0x0

    :try_start_2
    iput-boolean v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->keepAliveInQueue:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 563
    monitor-exit p0

    return-void

    .line 554
    .restart local v1    # "outputBuffer":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->outputBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 534
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "outputBuffer":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 559
    :cond_2
    :goto_1
    :try_start_4
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->outputBuffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 560
    invoke-direct {p0, v2}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sendPlain(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public transportData(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 599
    const-string/jumbo v3, "\ufffd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 600
    invoke-virtual {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->transportMessage(Ljava/lang/String;)V

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    const-string/jumbo v3, "\ufffd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    .line 605
    invoke-interface {v3, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 606
    .local v0, "fragments":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 607
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 608
    .local v1, "length":I
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 612
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v1, v3, :cond_2

    .line 613
    new-instance v3, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Garbage from server: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->error(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;)V

    goto :goto_0

    .line 617
    :cond_2
    invoke-virtual {p0, v2}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->transportMessage(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public transportDisconnected()V
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->lastException:Ljava/lang/Exception;

    .line 573
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->setState(I)V

    .line 575
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->reconnect()V

    .line 576
    return-void
.end method

.method public transportError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->lastException:Ljava/lang/Exception;

    .line 587
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->setState(I)V

    .line 588
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->reconnect()V

    .line 589
    return-void
.end method

.method public transportMessage(Ljava/lang/String;)V
    .locals 20
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 631
    :try_start_0
    new-instance v14, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    .local v14, "message":Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->resetTimeout()V

    .line 637
    invoke-virtual {v14}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->getType()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 768
    .end local v14    # "message":Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 632
    :catch_0
    move-exception v9

    .line 633
    .local v9, "e":Ljava/lang/Exception;
    new-instance v17, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Garbage from server: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->error(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;)V

    goto :goto_0

    .line 640
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v14    # "message":Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->findCallback(Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;->onDisconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 641
    :catch_1
    move-exception v9

    .line 642
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v17, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;

    const-string v18, "Exception was thrown in onDisconnect()"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->error(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;)V

    goto :goto_0

    .line 648
    .end local v9    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->firstSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    const-string v17, ""

    invoke-virtual {v14}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->getEndpoint()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->firstSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->getNamespace()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->firstSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->getCallback()Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;->onConnect()V

    .line 660
    :goto_1
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->firstSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 661
    :catch_2
    move-exception v9

    .line 662
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v17, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;

    const-string v18, "Exception was thrown in onConnect()"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->error(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;)V

    goto/16 :goto_0

    .line 652
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_3
    new-instance v7, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->firstSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    move-object/from16 v18, v0

    .line 654
    invoke-virtual/range {v18 .. v18}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->getNamespace()Ljava/lang/String;

    move-result-object v18

    const-string v19, ""

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v7, v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 655
    .local v7, "connect":Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;
    invoke-virtual {v7}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sendPlain(Ljava/lang/String;)V

    goto :goto_1

    .line 658
    .end local v7    # "connect":Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->findCallback(Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;->onConnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 667
    :pswitch_3
    const-string v17, "2::"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sendPlain(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 671
    :pswitch_4
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->findCallback(Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    move-result-object v17

    invoke-virtual {v14}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->getData()Ljava/lang/String;

    move-result-object v18

    .line 672
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->remoteAcknowledge(Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;

    move-result-object v19

    .line 671
    invoke-interface/range {v17 .. v19}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;->onMessage(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 673
    :catch_3
    move-exception v9

    .line 674
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v17, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception was thrown in onMessage(String).\nMessage was: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 676
    invoke-virtual {v14}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 674
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->error(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;)V

    goto/16 :goto_0

    .line 681
    .end local v9    # "e":Ljava/lang/Exception;
    :pswitch_5
    const/4 v15, 0x0

    .line 682
    .local v15, "obj":Lorg/json/JSONObject;
    :try_start_5
    invoke-virtual {v14}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->getData()Ljava/lang/String;

    move-result-object v8

    .line 683
    .local v8, "data":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, "null"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 684
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .end local v15    # "obj":Lorg/json/JSONObject;
    .local v16, "obj":Lorg/json/JSONObject;
    move-object/from16 v15, v16

    .line 686
    .end local v16    # "obj":Lorg/json/JSONObject;
    .restart local v15    # "obj":Lorg/json/JSONObject;
    :cond_3
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->findCallback(Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    move-result-object v17

    .line 687
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->remoteAcknowledge(Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;

    move-result-object v18

    .line 686
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;->onMessage(Lorg/json/JSONObject;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    .line 688
    :catch_4
    move-exception v9

    .line 689
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v17, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception was thrown in onMessage(JSONObject).\nMessage was: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 691
    invoke-virtual {v14}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 689
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->error(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 693
    .end local v8    # "data":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v17

    goto/16 :goto_0

    .line 699
    .end local v15    # "obj":Lorg/json/JSONObject;
    :pswitch_6
    :try_start_8
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v14}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->getData()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 701
    .local v10, "event":Lorg/json/JSONObject;
    const-string v17, "args"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 702
    const-string v17, "args"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 703
    .local v4, "args":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v5, v0, [Ljava/lang/Object;

    .line 704
    .local v5, "argsArray":[Ljava/lang/Object;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v12, v0, :cond_6

    .line 705
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v17

    if-nez v17, :cond_4

    .line 706
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v5, v12

    .line 704
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 709
    .end local v4    # "args":Lorg/json/JSONArray;
    .end local v5    # "argsArray":[Ljava/lang/Object;
    .end local v12    # "i":I
    :cond_5
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v5, v0, [Ljava/lang/Object;

    .line 710
    .restart local v5    # "argsArray":[Ljava/lang/Object;
    :cond_6
    const-string v17, "name"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_7

    move-result-object v11

    .line 712
    .local v11, "eventName":Ljava/lang/String;
    :try_start_9
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->findCallback(Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    move-result-object v17

    .line 713
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->remoteAcknowledge(Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;

    move-result-object v18

    .line 712
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v11, v1, v5}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;->on(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_0

    .line 714
    :catch_6
    move-exception v9

    .line 715
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_a
    new-instance v17, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception was thrown in on(String, JSONObject[]).\nMessage was: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 717
    invoke-virtual {v14}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 715
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->error(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_0

    .line 719
    .end local v5    # "argsArray":[Ljava/lang/Object;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "event":Lorg/json/JSONObject;
    .end local v11    # "eventName":Ljava/lang/String;
    :catch_7
    move-exception v17

    goto/16 :goto_0

    .line 725
    :pswitch_7
    invoke-virtual {v14}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->getData()Ljava/lang/String;

    move-result-object v17

    const-string v18, "\\+"

    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 726
    .local v8, "data":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 728
    const/16 v17, 0x0

    :try_start_b
    aget-object v17, v8, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 729
    .local v13, "id":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->acknowledge:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;

    .line 730
    .local v3, "ack":Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;
    if-eqz v3, :cond_0

    .line 734
    new-instance v6, Lorg/json/JSONArray;

    const/16 v17, 0x1

    aget-object v17, v8, v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 735
    .local v6, "array":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/Object;

    .line 736
    .local v4, "args":[Ljava/lang/Object;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v12, v0, :cond_7

    .line 737
    invoke-virtual {v6, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v4, v12

    .line 736
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 739
    :cond_7
    invoke-interface {v3, v4}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;->ack([Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_8
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_0

    .line 741
    .end local v3    # "ack":Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;
    .end local v4    # "args":[Ljava/lang/Object;
    .end local v6    # "array":Lorg/json/JSONArray;
    .end local v12    # "i":I
    .end local v13    # "id":I
    :catch_8
    move-exception v17

    goto/16 :goto_0

    .line 746
    :cond_8
    array-length v0, v8

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 747
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "6:::"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v18, v8, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sendPlain(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 752
    .end local v8    # "data":[Ljava/lang/String;
    :pswitch_8
    :try_start_c
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->findCallback(Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    move-result-object v17

    new-instance v18, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;

    .line 753
    invoke-virtual {v14}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->getData()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;-><init>(Ljava/lang/String;)V

    .line 752
    invoke-interface/range {v17 .. v18}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;->onError(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;)V
    :try_end_c
    .catch Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException; {:try_start_c .. :try_end_c} :catch_9

    .line 757
    :goto_4
    invoke-virtual {v14}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->getData()Ljava/lang/String;

    move-result-object v17

    const-string v18, "+0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 759
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->cleanup()V

    goto/16 :goto_0

    .line 754
    :catch_9
    move-exception v9

    .line 755
    .local v9, "e":Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->error(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;)V

    goto :goto_4

    .line 743
    .end local v9    # "e":Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;
    .restart local v8    # "data":[Ljava/lang/String;
    :catch_a
    move-exception v17

    goto/16 :goto_0

    .line 637
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized unregister(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;)V
    .locals 2
    .param p1, "socket"    # Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    .prologue
    const/4 v1, 0x6

    .line 286
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->getState()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 287
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->setState(I)V

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sendPlain(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sockets:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->getCallback()Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;->onDisconnect()V

    .line 293
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->sockets:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :cond_0
    monitor-exit p0

    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

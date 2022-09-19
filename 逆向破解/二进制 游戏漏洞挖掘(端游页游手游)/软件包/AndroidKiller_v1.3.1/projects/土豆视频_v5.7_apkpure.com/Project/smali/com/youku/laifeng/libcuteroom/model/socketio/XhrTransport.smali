.class Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;
.super Ljava/lang/Object;
.source "XhrTransport.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;
    }
.end annotation


# static fields
.field public static final TRANSPORT_NAME:Ljava/lang/String; = "xhr-polling"


# instance fields
.field private blocked:Z

.field private connect:Z

.field private connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

.field pollThread:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;

.field queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/net/URL;

.field urlConnection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "connection"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->pollThread:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;

    .line 169
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    .line 170
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->url:Ljava/net/URL;

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->isConnect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->url:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->setBlocked(Z)V

    return-void
.end method

.method public static create(Ljava/net/URL;Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;
    .locals 4
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "connection"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    .prologue
    .line 149
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/socket.io/1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "xhr-polling"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 150
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, "xhrUrl":Ljava/net/URL;
    new-instance v2, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;

    invoke-direct {v2, v1, p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;-><init>(Ljava/net/URL;Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 152
    .end local v1    # "xhrUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Malformed Internal url. This should never happen. Please report a bug."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private declared-synchronized isBlocked()Z
    .locals 1

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->blocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isConnect()Z
    .locals 1

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->connect:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setBlocked(Z)V
    .locals 1
    .param p1, "blocked"    # Z

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->blocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setConnect(Z)V
    .locals 1
    .param p1, "connect"    # Z

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->connect:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit p0

    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public canSendBulk()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public connect()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->setConnect(Z)V

    .line 181
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;-><init>(Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->pollThread:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;

    .line 182
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->pollThread:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->start()V

    .line 183
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 192
    const-string v0, "XhrTransport"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->setConnect(Z)V

    .line 194
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->pollThread:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->interrupt()V

    .line 195
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    const-string/jumbo v0, "xhr-polling"

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    .line 239
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->sendBulk([Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public sendBulk([Ljava/lang/String;)V
    .locals 2
    .param p1, "texts"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    .line 225
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->pollThread:Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport$PollThread;->interrupt()V

    .line 227
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/XhrTransport;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 229
    :cond_0
    return-void
.end method

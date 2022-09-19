.class public Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;
.super Ljava/lang/Object;
.source "SocketIO.java"


# instance fields
.field private callback:Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

.field private connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

.field private headers:Ljava/util/Properties;

.field private namespace:Ljava/lang/String;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->headers:Ljava/util/Properties;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->headers:Ljava/util/Properties;

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "url may not be null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->setAndConnect(Ljava/net/URL;Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;)Z

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->headers:Ljava/util/Properties;

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->connect(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "headers"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->headers:Ljava/util/Properties;

    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "url may not be null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    if-eqz p2, :cond_1

    .line 81
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->headers:Ljava/util/Properties;

    .line 83
    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->setAndConnect(Ljava/net/URL;Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;)Z

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->headers:Ljava/util/Properties;

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->setAndConnect(Ljava/net/URL;Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;)Z

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "callback"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->headers:Ljava/util/Properties;

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->setAndConnect(Ljava/net/URL;Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "url and callback may not be null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    return-void
.end method

.method private setAndConnect(Ljava/net/URL;Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;)Z
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "callback"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    if-eqz v2, :cond_0

    .line 203
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "You can connect your SocketIO instance only once. Use a fresh instance instead."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->url:Ljava/net/URL;

    if-eqz v2, :cond_1

    if-nez p1, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->callback:Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    .line 223
    :cond_2
    :goto_0
    return v1

    .line 207
    :cond_3
    if-eqz p1, :cond_4

    .line 208
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->url:Ljava/net/URL;

    .line 210
    :cond_4
    if-eqz p2, :cond_5

    .line 211
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->callback:Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    .line 213
    :cond_5
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->callback:Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->url:Ljava/net/URL;

    if-eqz v2, :cond_2

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->url:Ljava/net/URL;

    .line 215
    invoke-virtual {v2}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "origin":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->namespace:Ljava/lang/String;

    .line 217
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->namespace:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 218
    const-string v1, ""

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->namespace:Ljava/lang/String;

    .line 220
    :cond_6
    invoke-static {v0, p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->register(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    .line 221
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLContext;)V
    .locals 0
    .param p0, "sslContext"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 132
    invoke-static {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->setSslContext(Ljavax/net/ssl/SSLContext;)V

    .line 133
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    if-eqz v0, :cond_0

    .line 386
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You may only set headers before connecting.\n Try to use new SocketIO().addHeader(key, value).connect(host, callback) instead of SocketIO(host, callback).addHeader(key, value)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->headers:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 391
    return-object p0
.end method

.method public connect(Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->setAndConnect(Ljava/net/URL;Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    if-nez p1, :cond_0

    .line 185
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "callback may not be null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->url:Ljava/net/URL;

    if-nez v0, :cond_1

    .line 187
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "connect(IOCallback) can only be invoked after SocketIO(String) or SocketIO(URL)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    return-void
.end method

.method public connect(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->setAndConnect(Ljava/net/URL;Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "url and callback may not be null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "connect(String, IOCallback) can only be invoked after SocketIO()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_2
    return-void
.end method

.method public connect(Ljava/net/URL;Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "callback"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->setAndConnect(Ljava/net/URL;Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 166
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "url and callback may not be null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "connect(URL, IOCallback) can only be invoked after SocketIO()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_2
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    invoke-virtual {v0, p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->unregister(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;)V

    .line 324
    return-void
.end method

.method public varargs emit(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "ack"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->emit(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;[Ljava/lang/Object;)V

    .line 255
    return-void
.end method

.method public varargs emit(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->emit(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;[Ljava/lang/Object;)V

    .line 238
    return-void
.end method

.method public getCallback()Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->callback:Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->headers:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->headers:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->headers:Ljava/util/Properties;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 2

    .prologue
    .line 352
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->getTransport()Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;

    move-result-object v0

    .line 353
    .local v0, "transport":Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reconnect()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->reconnect()V

    .line 334
    return-void
.end method

.method public send(Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;Ljava/lang/String;)V
    .locals 1
    .param p1, "ack"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    invoke-virtual {v0, p0, p1, p2}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->send(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public send(Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "ack"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    invoke-virtual {v0, p0, p1, p2}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->send(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;Lorg/json/JSONObject;)V

    .line 295
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->send(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public send(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->send(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;Lorg/json/JSONObject;)V

    .line 283
    return-void
.end method

.method setHeaders(Ljava/util/Properties;)V
    .locals 0
    .param p1, "headers"    # Ljava/util/Properties;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->headers:Ljava/util/Properties;

    .line 378
    return-void
.end method

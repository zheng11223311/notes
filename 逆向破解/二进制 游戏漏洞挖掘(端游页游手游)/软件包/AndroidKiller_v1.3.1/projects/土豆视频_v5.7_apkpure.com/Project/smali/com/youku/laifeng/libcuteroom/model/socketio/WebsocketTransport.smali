.class Lcom/youku/laifeng/libcuteroom/model/socketio/WebsocketTransport;
.super Lorg/java_websocket/client/WebSocketClient;
.source "WebsocketTransport.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;


# static fields
.field private static final PATTERN_HTTP:Ljava/util/regex/Pattern;

.field public static final TRANSPORT_NAME:Ljava/lang/String; = "websocket"


# instance fields
.field private connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "^http"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/WebsocketTransport;->PATTERN_HTTP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "connection"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;)V

    .line 27
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/WebsocketTransport;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    .line 28
    return-void
.end method

.method public static create(Ljava/net/URL;Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;
    .locals 4
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "connection"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    .prologue
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/youku/laifeng/libcuteroom/model/socketio/WebsocketTransport;->PATTERN_HTTP:Ljava/util/regex/Pattern;

    .line 18
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string/jumbo v3, "ws"

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/socket.io/1/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "websocket"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 22
    .local v0, "uri":Ljava/net/URI;
    new-instance v1, Lcom/youku/laifeng/libcuteroom/model/socketio/WebsocketTransport;

    invoke-direct {v1, v0, p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/WebsocketTransport;-><init>(Ljava/net/URI;Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)V

    return-object v1
.end method


# virtual methods
.method public canSendBulk()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/WebsocketTransport;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/WebsocketTransport;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    invoke-virtual {v1, v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->transportError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string/jumbo v0, "websocket"

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/WebsocketTransport;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    .line 64
    return-void
.end method

.method public onClose(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "remote"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/WebsocketTransport;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/WebsocketTransport;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->transportDisconnected()V

    .line 70
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 93
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/WebsocketTransport;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/WebsocketTransport;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    invoke-virtual {v0, p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->transportMessage(Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method public onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
    .locals 1
    .param p1, "handshakedata"    # Lorg/java_websocket/handshake/ServerHandshake;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/WebsocketTransport;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/WebsocketTransport;->connection:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->transportConnected()V

    .line 82
    :cond_0
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
    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot send Bulk!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

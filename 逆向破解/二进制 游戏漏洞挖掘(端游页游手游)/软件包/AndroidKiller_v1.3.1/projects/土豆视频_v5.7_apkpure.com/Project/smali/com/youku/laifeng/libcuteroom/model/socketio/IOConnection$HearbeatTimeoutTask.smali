.class Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$HearbeatTimeoutTask;
.super Ljava/util/TimerTask;
.source "IOConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HearbeatTimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;


# direct methods
.method private constructor <init>(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$HearbeatTimeoutTask;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;
    .param p2, "x1"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$1;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$HearbeatTimeoutTask;-><init>(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$HearbeatTimeoutTask;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    new-instance v1, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;

    const-string v2, "Timeout Error. No heartbeat from server within life time of the socket. closing."

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$HearbeatTimeoutTask;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    .line 160
    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->access$000(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 158
    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->access$100(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;)V

    .line 161
    return-void
.end method

.class Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ConnectThread;
.super Ljava/lang/Thread;
.source "IOConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)V
    .locals 1

    .prologue
    .line 195
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ConnectThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    .line 196
    const-string v0, "ConnectThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 197
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ConnectThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->access$500(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)I

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ConnectThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->access$600(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ConnectThread;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->access$200(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)V

    .line 208
    return-void
.end method

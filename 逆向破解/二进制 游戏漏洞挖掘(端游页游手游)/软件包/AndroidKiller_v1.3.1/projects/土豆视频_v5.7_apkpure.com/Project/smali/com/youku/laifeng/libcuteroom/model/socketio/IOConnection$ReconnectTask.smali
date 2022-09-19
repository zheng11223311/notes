.class Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ReconnectTask;
.super Ljava/util/TimerTask;
.source "IOConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReconnectTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;


# direct methods
.method private constructor <init>(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ReconnectTask;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;
    .param p2, "x1"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$1;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ReconnectTask;-><init>(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ReconnectTask;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->access$200(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)V

    .line 180
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ReconnectTask;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->access$300(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ReconnectTask;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    const-string v1, "2::"

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->access$400(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$ReconnectTask;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->access$302(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;Z)Z

    .line 184
    :cond_0
    return-void
.end method

.class Lcom/youku/laifeng/libcuteroom/service/CoreService$2$2;
.super Ljava/lang/Object;
.source "CoreService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/laifeng/libcuteroom/service/CoreService$2;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/service/CoreService$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/youku/laifeng/libcuteroom/service/CoreService$2;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$2;->this$1:Lcom/youku/laifeng/libcuteroom/service/CoreService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$2;->this$1:Lcom/youku/laifeng/libcuteroom/service/CoreService$2;

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$2;->this$1:Lcom/youku/laifeng/libcuteroom/service/CoreService$2;

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    const-string v1, "disconnect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->emit(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$2;->this$1:Lcom/youku/laifeng/libcuteroom/service/CoreService$2;

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->disconnect()V

    .line 251
    :cond_0
    return-void
.end method

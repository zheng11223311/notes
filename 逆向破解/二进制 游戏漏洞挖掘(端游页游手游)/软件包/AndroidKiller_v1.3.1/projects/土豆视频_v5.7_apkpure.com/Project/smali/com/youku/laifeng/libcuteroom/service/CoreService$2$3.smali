.class Lcom/youku/laifeng/libcuteroom/service/CoreService$2$3;
.super Ljava/lang/Object;
.source "CoreService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->sendEvent(Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/laifeng/libcuteroom/service/CoreService$2;

.field final synthetic val$event:Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/service/CoreService$2;Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/youku/laifeng/libcuteroom/service/CoreService$2;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$3;->this$1:Lcom/youku/laifeng/libcuteroom/service/CoreService$2;

    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$3;->val$event:Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 277
    const-class v2, Lcom/youku/laifeng/libcuteroom/service/CoreService;

    monitor-enter v2

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$3;->this$1:Lcom/youku/laifeng/libcuteroom/service/CoreService$2;

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$3;->this$1:Lcom/youku/laifeng/libcuteroom/service/CoreService$2;

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$3;->val$event:Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;->getEvent()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$3;->val$event:Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;

    invoke-virtual {v6}, Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;->getArgs()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->emit(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 284
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 283
    .end local v0    # "e1":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

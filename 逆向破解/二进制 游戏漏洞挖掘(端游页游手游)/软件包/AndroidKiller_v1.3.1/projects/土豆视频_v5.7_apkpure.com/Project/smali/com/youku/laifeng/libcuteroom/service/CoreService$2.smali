.class Lcom/youku/laifeng/libcuteroom/service/CoreService$2;
.super Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService$Stub;
.source "CoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/libcuteroom/service/CoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/service/CoreService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/service/CoreService;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    if-nez v1, :cond_0

    .line 257
    :goto_0
    return-void

    .line 244
    :cond_0
    new-instance v0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$2;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$2;-><init>(Lcom/youku/laifeng/libcuteroom/service/CoreService$2;)V

    .line 253
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$300(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$300(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    const/4 v2, 0x1

    new-instance v3, Lcom/youku/laifeng/libcuteroom/service/SocketIOThreadFactory;

    invoke-direct {v3}, Lcom/youku/laifeng/libcuteroom/service/SocketIOThreadFactory;-><init>()V

    invoke-static {v2, v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$302(Lcom/youku/laifeng/libcuteroom/service/CoreService;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$300(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public connect(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$1;

    invoke-direct {v0, p0, p1}, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$1;-><init>(Lcom/youku/laifeng/libcuteroom/service/CoreService$2;Ljava/lang/String;)V

    .line 233
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$300(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$300(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    const/4 v2, 0x1

    new-instance v3, Lcom/youku/laifeng/libcuteroom/service/SocketIOThreadFactory;

    invoke-direct {v3}, Lcom/youku/laifeng/libcuteroom/service/SocketIOThreadFactory;-><init>()V

    invoke-static {v2, v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$302(Lcom/youku/laifeng/libcuteroom/service/CoreService;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$300(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method

.method public registerChatManagerListener(Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;)V
    .locals 1
    .param p1, "l"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 261
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$400(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 262
    :cond_0
    return-void
.end method

.method public sendEvent(Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    iget-object v1, v1, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    if-nez v1, :cond_0

    .line 290
    :goto_0
    return-void

    .line 274
    :cond_0
    new-instance v0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$3;

    invoke-direct {v0, p0, p1}, Lcom/youku/laifeng/libcuteroom/service/CoreService$2$3;-><init>(Lcom/youku/laifeng/libcuteroom/service/CoreService$2;Lcom/youku/laifeng/libcuteroom/model/socketio/send/IOSendEvent;)V

    .line 286
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$300(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$300(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    const/4 v2, 0x1

    new-instance v3, Lcom/youku/laifeng/libcuteroom/service/SocketIOThreadFactory;

    invoke-direct {v3}, Lcom/youku/laifeng/libcuteroom/service/SocketIOThreadFactory;-><init>()V

    invoke-static {v2, v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$302(Lcom/youku/laifeng/libcuteroom/service/CoreService;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$300(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public unregisterChatManagerListener(Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;)V
    .locals 1
    .param p1, "l"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 266
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$2;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$400(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 267
    :cond_0
    return-void
.end method

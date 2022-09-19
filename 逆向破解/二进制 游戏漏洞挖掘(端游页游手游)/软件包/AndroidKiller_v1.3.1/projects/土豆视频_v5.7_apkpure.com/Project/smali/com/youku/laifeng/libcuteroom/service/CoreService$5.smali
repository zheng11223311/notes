.class Lcom/youku/laifeng/libcuteroom/service/CoreService$5;
.super Ljava/lang/Object;
.source "CoreService.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;


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
    .line 350
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs on(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "ack"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 417
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$800(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 418
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v3, "tmpArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p3

    if-ge v2, v4, :cond_2

    .line 420
    aget-object v4, p3, v2

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 421
    aget-object v4, p3, v2

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    :cond_1
    aget-object v4, p3, v2

    instance-of v4, v4, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 423
    aget-object v4, p3, v2

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 435
    .end local v2    # "i":I
    .end local v3    # "tmpArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 426
    .restart local v2    # "i":I
    .restart local v3    # "tmpArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$400(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 427
    .local v0, "N":I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_4

    .line 429
    :try_start_2
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$400(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;

    invoke-interface {v4, p1, v3}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;->onReceiveEvent(Ljava/lang/String;Ljava/util/List;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 427
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 430
    :catch_0
    move-exception v1

    .line 431
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 434
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$400(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 435
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 436
    return-void
.end method

.method public onConnect()V
    .locals 5

    .prologue
    .line 372
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$800(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 373
    :try_start_0
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$400(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 374
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 376
    :try_start_1
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$400(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;

    invoke-interface {v3}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;->onConnect()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    :catch_0
    move-exception v1

    .line 378
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 382
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 381
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$400(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 382
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 383
    return-void
.end method

.method public onDisconnect()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 354
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    iget-object v3, v3, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;->disconnect()V

    .line 355
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    iput-object v4, v3, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    .line 356
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$800(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 357
    :try_start_0
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    .line 358
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$400(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 359
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 361
    :try_start_1
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$400(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;

    invoke-interface {v3}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;->onClose()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 367
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 366
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$400(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 367
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 368
    return-void
.end method

.method public onError(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;)V
    .locals 6
    .param p1, "socketIOException"    # Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;

    .prologue
    .line 440
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/youku/laifeng/libcuteroom/service/CoreService;->mSocket:Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIO;

    .line 441
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$800(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 442
    :try_start_0
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$400(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 443
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 445
    :try_start_1
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$400(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;->onError(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 446
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 451
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 450
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$400(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 451
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 452
    return-void
.end method

.method public onMessage(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "ack"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;

    .prologue
    .line 387
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$800(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 388
    :try_start_0
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$400(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 389
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 391
    :try_start_1
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$400(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;

    invoke-interface {v3, p1}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;->onReceiveMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    :catch_0
    move-exception v1

    .line 393
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 397
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 396
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$400(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 397
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 398
    return-void
.end method

.method public onMessage(Lorg/json/JSONObject;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "ack"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;

    .prologue
    .line 402
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$800(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 403
    :try_start_0
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$400(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 404
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 406
    :try_start_1
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$400(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/youku/laifeng/libcuteroom/model/port/service/IChatManagerServiceListener;->onReceiveMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    :catch_0
    move-exception v1

    .line 408
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 412
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 411
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/service/CoreService$5;->this$0:Lcom/youku/laifeng/libcuteroom/service/CoreService;

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/service/CoreService;->access$400(Lcom/youku/laifeng/libcuteroom/service/CoreService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 412
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 413
    return-void
.end method

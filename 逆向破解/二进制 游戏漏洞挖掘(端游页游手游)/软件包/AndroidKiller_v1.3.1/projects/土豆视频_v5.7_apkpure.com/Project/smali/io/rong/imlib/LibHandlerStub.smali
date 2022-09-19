.class public Lio/rong/imlib/LibHandlerStub;
.super Lio/rong/imlib/IHandler$Stub;
.source "LibHandlerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/LibHandlerStub$OperationCallback;
    }
.end annotation


# instance fields
.field mCallbackHandler:Landroid/os/Handler;

.field mCallbackThread:Landroid/os/HandlerThread;

.field mClient:Lio/rong/imlib/NativeClient;

.field mContext:Landroid/content/Context;

.field mCurrentUserId:Ljava/lang/String;

.field mReceiverMessageListener:Lio/rong/imlib/OnReceiveMessageListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Lio/rong/imlib/IHandler$Stub;-><init>()V

    .line 41
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Rong_SDK_Callback"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mCallbackThread:Landroid/os/HandlerThread;

    .line 44
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    .line 47
    return-void
.end method


# virtual methods
.method public addMemberToDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/IOperationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lio/rong/imlib/IOperationCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 821
    .local p2, "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$OperationCallback;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/LibHandlerStub$OperationCallback;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->addMemberToDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 822
    return-void
.end method

.method public addRealTimeLocationListener(ILjava/lang/String;Lio/rong/imlib/IRealTimeLocationListener;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "listener"    # Lio/rong/imlib/IRealTimeLocationListener;

    .prologue
    .line 1544
    new-instance v0, Lio/rong/imlib/LibHandlerStub$33;

    invoke-direct {v0, p0, p3}, Lio/rong/imlib/LibHandlerStub$33;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IRealTimeLocationListener;)V

    .line 1590
    .local v0, "nativeListener":Lio/rong/imlib/NativeClient$RealTimeLocationListener;
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v1, p1, p2, v0}, Lio/rong/imlib/NativeClient;->addListener(ILjava/lang/String;Lio/rong/imlib/NativeClient$RealTimeLocationListener;)V

    .line 1591
    return-void
.end method

.method public addToBlacklist(Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/IOperationCallback;

    .prologue
    .line 1274
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$28;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/LibHandlerStub$28;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->addToBlacklist(Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 1305
    return-void
.end method

.method public cleanConversationDraft(Lio/rong/imlib/model/Conversation;)Z
    .locals 3
    .param p1, "conversation"    # Lio/rong/imlib/model/Conversation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/NativeClient;->clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearConversations([I)Z
    .locals 3
    .param p1, "types"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 462
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 463
    :cond_0
    const/4 v2, 0x0

    .line 470
    :goto_0
    return v2

    .line 465
    :cond_1
    array-length v2, p1

    new-array v0, v2, [Lio/rong/imlib/model/Conversation$ConversationType;

    .line 467
    .local v0, "conversationTypes":[Lio/rong/imlib/model/Conversation$ConversationType;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 468
    aget v2, p1, v1

    invoke-static {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    aput-object v2, v0, v1

    .line 467
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 470
    :cond_2
    iget-object v2, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v2, v0}, Lio/rong/imlib/NativeClient;->clearConversations([Lio/rong/imlib/model/Conversation$ConversationType;)Z

    move-result v2

    goto :goto_0
.end method

.method public clearMessages(Lio/rong/imlib/model/Conversation;)Z
    .locals 3
    .param p1, "conversation"    # Lio/rong/imlib/model/Conversation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/NativeClient;->clearMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation;)Z
    .locals 3
    .param p1, "conversation"    # Lio/rong/imlib/model/Conversation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/NativeClient;->clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearTextMessageDraft(Lio/rong/imlib/model/Conversation;)Z
    .locals 3
    .param p1, "conversation"    # Lio/rong/imlib/model/Conversation;

    .prologue
    .line 1428
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/NativeClient;->clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public connect(Ljava/lang/String;Lio/rong/imlib/IStringCallback;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/IStringCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    const-string v1, "LibHandlerStub"

    const-string v2, "connect"

    const-string/jumbo v3, "remote connect"

    invoke-static {v1, v2, v3}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v1, Lio/rong/imlib/LibHandlerStub$1;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/LibHandlerStub$1;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IStringCallback;)V

    invoke-static {p1, v1}, Lio/rong/imlib/NativeClient;->connect(Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    if-eqz p2, :cond_0

    .line 106
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v2, Lio/rong/imlib/LibHandlerStub$2;

    invoke-direct {v2, p0, p2}, Lio/rong/imlib/LibHandlerStub$2;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IStringCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public createDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/IResultCallback;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/IResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lio/rong/imlib/IResultCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 629
    .local p2, "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$11;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/LibHandlerStub$11;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IResultCallback;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->createDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/NativeClient$IResultCallback;)V

    .line 668
    return-void
.end method

.method public deleteMessage([I)Z
    .locals 1
    .param p1, "ids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 389
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 390
    :cond_0
    const/4 v0, 0x0

    .line 391
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0, p1}, Lio/rong/imlib/NativeClient;->deleteMessages([I)Z

    move-result v0

    goto :goto_0
.end method

.method public disconnect(ZLio/rong/imlib/IOperationCallback;)V
    .locals 2
    .param p1, "isReceivePush"    # Z
    .param p2, "callback"    # Lio/rong/imlib/IOperationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    if-nez v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lio/rong/common/WakeLockUtils;->cancelHeartbeat(Landroid/content/Context;)V

    .line 128
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v1, p1}, Lio/rong/imlib/NativeClient;->disconnect(Z)V

    .line 130
    if-eqz p2, :cond_0

    .line 132
    :try_start_0
    invoke-interface {p2}, Lio/rong/imlib/IOperationCallback;->onComplete()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public downloadMedia(Lio/rong/imlib/model/Conversation;ILjava/lang/String;Lio/rong/imlib/IDownloadMediaCallback;)V
    .locals 6
    .param p1, "conversation"    # Lio/rong/imlib/model/Conversation;
    .param p2, "type"    # I
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "callback"    # Lio/rong/imlib/IDownloadMediaCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1182
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lio/rong/imlib/LibHandlerStub$26;

    invoke-direct {v5, p0, p4}, Lio/rong/imlib/LibHandlerStub$26;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IDownloadMediaCallback;)V

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/NativeClient;->downloadMedia(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ILjava/lang/String;Lio/rong/imlib/NativeClient$IResultProgressCallback;)V

    .line 1228
    return-void
.end method

.method public getBlacklist(Lio/rong/imlib/IStringCallback;)V
    .locals 2
    .param p1, "callback"    # Lio/rong/imlib/IStringCallback;

    .prologue
    .line 1381
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$31;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$31;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IStringCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/NativeClient;->getBlacklist(Lio/rong/imlib/NativeClient$IResultCallback;)V

    .line 1413
    return-void
.end method

.method public getBlacklistStatus(Ljava/lang/String;Lio/rong/imlib/IIntegerCallback;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/IIntegerCallback;

    .prologue
    .line 1346
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$30;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/LibHandlerStub$30;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IIntegerCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->getBlacklistStatus(Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V

    .line 1376
    return-void
.end method

.method public getChatRoomInfo(Ljava/lang/String;IILio/rong/imlib/IResultCallback;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "order"    # I
    .param p4, "callback"    # Lio/rong/imlib/IResultCallback;

    .prologue
    .line 851
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$16;

    invoke-direct {v1, p0, p4}, Lio/rong/imlib/LibHandlerStub$16;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IResultCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/rong/imlib/NativeClient;->queryChatRoomInfo(Ljava/lang/String;IILio/rong/imlib/NativeClient$IResultCallback;)V

    .line 871
    return-void
.end method

.method public getConversation(ILjava/lang/String;)Lio/rong/imlib/model/Conversation;
    .locals 3
    .param p1, "type"    # I
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 446
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lio/rong/imlib/NativeClient;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v0

    .line 447
    .local v0, "model":Lio/rong/imlib/model/Conversation;
    return-object v0
.end method

.method public getConversationDraft(Lio/rong/imlib/model/Conversation;)Ljava/lang/String;
    .locals 3
    .param p1, "conversation"    # Lio/rong/imlib/model/Conversation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 482
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/NativeClient;->getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConversationList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 421
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v1}, Lio/rong/imlib/NativeClient;->getConversationList()Ljava/util/List;

    move-result-object v0

    .line 422
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 423
    :cond_0
    const/4 v0, 0x0

    .line 425
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    :cond_1
    return-object v0
.end method

.method public getConversationListByType([I)Ljava/util/List;
    .locals 2
    .param p1, "types"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 437
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v1, p1}, Lio/rong/imlib/NativeClient;->getConversationList([I)Ljava/util/List;

    move-result-object v0

    .line 438
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 439
    :cond_0
    const/4 v0, 0x0

    .line 441
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    :cond_1
    return-object v0
.end method

.method public getConversationNotificationStatus(ILjava/lang/String;Lio/rong/imlib/ILongCallback;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/ILongCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 492
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    new-instance v2, Lio/rong/imlib/LibHandlerStub$8;

    invoke-direct {v2, p0, p3}, Lio/rong/imlib/LibHandlerStub$8;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/ILongCallback;)V

    invoke-virtual {v0, v1, p2, v2}, Lio/rong/imlib/NativeClient;->getConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V

    .line 526
    return-void
.end method

.method public getConversationUnreadCount(Lio/rong/imlib/model/Conversation;)I
    .locals 3
    .param p1, "conversation"    # Lio/rong/imlib/model/Conversation;

    .prologue
    .line 579
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/NativeClient;->getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDeltaTime()J
    .locals 2

    .prologue
    .line 1232
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0}, Lio/rong/imlib/NativeClient;->getDeltaTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDiscussion(Ljava/lang/String;Lio/rong/imlib/IResultCallback;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/IResultCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 584
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$10;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/LibHandlerStub$10;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IResultCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->getDiscussion(Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V

    .line 620
    return-void
.end method

.method public getMessage(I)Lio/rong/imlib/model/Message;
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0, p1}, Lio/rong/imlib/NativeClient;->getMessage(I)Lio/rong/imlib/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public getNewestMessages(Lio/rong/imlib/model/Conversation;I)Ljava/util/List;
    .locals 4
    .param p1, "conversation"    # Lio/rong/imlib/model/Conversation;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 328
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lio/rong/imlib/NativeClient;->getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 329
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 330
    :cond_0
    const/4 v0, 0x0

    .line 332
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    :cond_1
    return-object v0
.end method

.method public getNotificationQuietHours(Lio/rong/imlib/IGetNotificationQuietHoursCallback;)V
    .locals 2
    .param p1, "callback"    # Lio/rong/imlib/IGetNotificationQuietHoursCallback;

    .prologue
    .line 1078
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$23;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$23;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IGetNotificationQuietHoursCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/NativeClient;->getNotificationQuietHours(Lio/rong/imlib/NativeClient$GetNotificationQuietHoursCallback;)V

    .line 1107
    return-void
.end method

.method public getOlderMessages(Lio/rong/imlib/model/Conversation;JI)Ljava/util/List;
    .locals 6
    .param p1, "conversation"    # Lio/rong/imlib/model/Conversation;
    .param p2, "flagId"    # J
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation;",
            "JI)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 337
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v3

    long-to-int v4, p2

    invoke-virtual {v1, v2, v3, v4, p4}, Lio/rong/imlib/NativeClient;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 338
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 339
    :cond_0
    const/4 v0, 0x0

    .line 342
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    :cond_1
    return-object v0
.end method

.method public getOlderMessagesByObjectName(Lio/rong/imlib/model/Conversation;Ljava/lang/String;JI)Ljava/util/List;
    .locals 7
    .param p1, "conversation"    # Lio/rong/imlib/model/Conversation;
    .param p2, "objectName"    # Ljava/lang/String;
    .param p3, "flagId"    # J
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation;",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    long-to-int v4, p3

    move-object v3, p2

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/NativeClient;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    .line 381
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 382
    :cond_0
    const/4 v6, 0x0

    .line 384
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    :cond_1
    return-object v6
.end method

.method public getPublicServiceList(Lio/rong/imlib/IResultCallback;)V
    .locals 2
    .param p1, "callback"    # Lio/rong/imlib/IResultCallback;

    .prologue
    .line 784
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$15;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$15;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IResultCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/NativeClient;->getPublicServiceList(Lio/rong/imlib/NativeClient$IResultCallback;)V

    .line 816
    return-void
.end method

.method public getPublicServiceProfile(Ljava/lang/String;ILio/rong/imlib/IResultCallback;)V
    .locals 2
    .param p1, "targetId"    # Ljava/lang/String;
    .param p2, "conversationType"    # I
    .param p3, "callback"    # Lio/rong/imlib/IResultCallback;

    .prologue
    .line 744
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$14;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/LibHandlerStub$14;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IResultCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->getPublicServiceProfile(Ljava/lang/String;ILio/rong/imlib/NativeClient$IResultCallback;)V

    .line 779
    return-void
.end method

.method public getRealTimeLocationCurrentState(ILjava/lang/String;)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 1537
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v1, p1, p2}, Lio/rong/imlib/NativeClient;->getRealTimeLocationCurrentState(ILjava/lang/String;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    move-result-object v0

    .line 1539
    .local v0, "state":Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;
    invoke-virtual {v0}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->getValue()I

    move-result v1

    return v1
.end method

.method public getRealTimeLocationParticipants(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "type"    # I
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1532
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/NativeClient;->getRealTimeLocationParticipants(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteHistoryMessages(Lio/rong/imlib/model/Conversation;JILio/rong/imlib/IResultCallback;)V
    .locals 8
    .param p1, "conversation"    # Lio/rong/imlib/model/Conversation;
    .param p2, "dataTime"    # J
    .param p4, "count"    # I
    .param p5, "callback"    # Lio/rong/imlib/IResultCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lio/rong/imlib/LibHandlerStub$7;

    invoke-direct {v7, p0, p5}, Lio/rong/imlib/LibHandlerStub$7;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IResultCallback;)V

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v7}, Lio/rong/imlib/NativeClient;->getRemoteHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;JILio/rong/imlib/NativeClient$IResultCallback;)V

    .line 376
    return-void
.end method

.method public getSendTimeByMessageId(I)J
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 1604
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0, p1}, Lio/rong/imlib/NativeClient;->getSendTimeByMessageId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTextMessageDraft(Lio/rong/imlib/model/Conversation;)Ljava/lang/String;
    .locals 3
    .param p1, "conversation"    # Lio/rong/imlib/model/Conversation;

    .prologue
    .line 1418
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/NativeClient;->getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalUnreadCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0}, Lio/rong/imlib/NativeClient;->getTotalUnreadCount()I

    move-result v0

    return v0
.end method

.method public getUnreadCount([I)I
    .locals 3
    .param p1, "types"    # [I

    .prologue
    .line 183
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 184
    :cond_0
    const/4 v2, 0x0

    .line 193
    :goto_0
    return v2

    .line 186
    :cond_1
    array-length v2, p1

    new-array v0, v2, [Lio/rong/imlib/model/Conversation$ConversationType;

    .line 188
    .local v0, "conversationTypes":[Lio/rong/imlib/model/Conversation$ConversationType;
    const/4 v1, 0x0

    .line 189
    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 190
    aget v2, p1, v1

    invoke-static {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    aput-object v2, v0, v1

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 193
    :cond_2
    iget-object v2, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v2, v0}, Lio/rong/imlib/NativeClient;->getUnreadCount([Lio/rong/imlib/model/Conversation$ConversationType;)I

    move-result v2

    goto :goto_0
.end method

.method public getUnreadCountById(ILjava/lang/String;)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    .line 199
    .local v0, "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 200
    :cond_0
    const/4 v1, 0x0

    .line 201
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v1, v0, p2}, Lio/rong/imlib/NativeClient;->getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public init(Ljava/lang/String;)V
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lio/rong/imlib/NativeClient;->init(Landroid/content/Context;Ljava/lang/String;)Lio/rong/imlib/NativeClient;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    .line 51
    return-void
.end method

.method public insertMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;
    .locals 6
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/rong/imlib/NativeClient;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 229
    .local v0, "result":Lio/rong/imlib/model/Message;
    return-object v0
.end method

.method public joinChatRoom(Ljava/lang/String;ILio/rong/imlib/IOperationCallback;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "defMessageCount"    # I
    .param p3, "callback"    # Lio/rong/imlib/IOperationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 875
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$17;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/LibHandlerStub$17;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->joinChatRoom(Ljava/lang/String;ILio/rong/imlib/NativeClient$OperationCallback;)V

    .line 904
    return-void
.end method

.method public joinExistChatRoom(Ljava/lang/String;ILio/rong/imlib/IOperationCallback;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "defMessageCount"    # I
    .param p3, "callback"    # Lio/rong/imlib/IOperationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 941
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$19;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/LibHandlerStub$19;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->joinExistChatRoom(Ljava/lang/String;ILio/rong/imlib/NativeClient$OperationCallback;)V

    .line 970
    return-void
.end method

.method public joinGroup(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/IOperationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 841
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$OperationCallback;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/LibHandlerStub$OperationCallback;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->joinGroup(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 842
    return-void
.end method

.method public joinRealTimeLocation(ILjava/lang/String;)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 1522
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/NativeClient;->joinRealTimeLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public quitChatRoom(Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/IOperationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 974
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$20;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/LibHandlerStub$20;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->quitChatRoom(Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 1003
    return-void
.end method

.method public quitDiscussion(Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/IOperationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 831
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$OperationCallback;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/LibHandlerStub$OperationCallback;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->quitDiscussion(Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 832
    return-void
.end method

.method public quitGroup(Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/IOperationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 846
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$OperationCallback;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/LibHandlerStub$OperationCallback;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->quitGroup(Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 847
    return-void
.end method

.method public quitRealTimeLocation(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 1527
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/NativeClient;->quitRealTimeLocation(ILjava/lang/String;)V

    .line 1528
    return-void
.end method

.method public reJoinChatRoom(Ljava/lang/String;ILio/rong/imlib/IOperationCallback;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "defMessageCount"    # I
    .param p3, "callback"    # Lio/rong/imlib/IOperationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 908
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$18;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/LibHandlerStub$18;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->reJoinChatRoom(Ljava/lang/String;ILio/rong/imlib/NativeClient$OperationCallback;)V

    .line 937
    return-void
.end method

.method public registerMessageType(Ljava/lang/String;)V
    .locals 4
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 143
    .local v1, "loader":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/rong/imlib/model/MessageContent;>;"
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 149
    :goto_0
    :try_start_1
    iget-object v2, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-static {v1}, Lio/rong/imlib/NativeClient;->registerMessageType(Ljava/lang/Class;)V
    :try_end_1
    .catch Lio/rong/imlib/AnnotationNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    :goto_1
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v2, "registerMessageType"

    const-string v3, "ClassNotFoundException"

    invoke-static {p0, v2, v3, v0}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 151
    .local v0, "e":Lio/rong/imlib/AnnotationNotFoundException;
    const-string/jumbo v2, "registerMessageType"

    const-string v3, "AnnotationNotFoundException"

    invoke-static {p0, v2, v3, v0}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public removeConversation(ILjava/lang/String;)Z
    .locals 3
    .param p1, "typeValue"    # I
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    .line 453
    .local v0, "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    if-nez v0, :cond_0

    .line 454
    const-string/jumbo v1, "removeConversation"

    const-string/jumbo v2, "the conversation type is null"

    invoke-static {p0, v1, v2}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v1, 0x0

    .line 457
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v1, v0, p2}, Lio/rong/imlib/NativeClient;->removeConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public removeDiscussionMember(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/IOperationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 826
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$OperationCallback;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/LibHandlerStub$OperationCallback;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->removeMemberFromDiscussion(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 827
    return-void
.end method

.method public removeFromBlacklist(Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/IOperationCallback;

    .prologue
    .line 1310
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$29;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/LibHandlerStub$29;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->removeFromBlacklist(Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 1341
    return-void
.end method

.method public removeNotificationQuietHours(Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .param p1, "callback"    # Lio/rong/imlib/IOperationCallback;

    .prologue
    .line 1041
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$22;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$22;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/NativeClient;->removeNotificationQuietHours(Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 1074
    return-void
.end method

.method public saveConversationDraft(Lio/rong/imlib/model/Conversation;Ljava/lang/String;)Z
    .locals 3
    .param p1, "conversation"    # Lio/rong/imlib/model/Conversation;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 476
    const-string/jumbo v0, "saveConversationDraft"

    invoke-static {p0, v0, p2}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lio/rong/imlib/NativeClient;->saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveTextMessageDraft(Lio/rong/imlib/model/Conversation;Ljava/lang/String;)Z
    .locals 3
    .param p1, "conversation"    # Lio/rong/imlib/model/Conversation;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1423
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lio/rong/imlib/NativeClient;->saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public searchPublicService(Ljava/lang/String;IILio/rong/imlib/IResultCallback;)V
    .locals 2
    .param p1, "keyWords"    # Ljava/lang/String;
    .param p2, "businessType"    # I
    .param p3, "searchType"    # I
    .param p4, "callback"    # Lio/rong/imlib/IResultCallback;

    .prologue
    .line 673
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$12;

    invoke-direct {v1, p0, p4}, Lio/rong/imlib/LibHandlerStub$12;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IResultCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/rong/imlib/NativeClient;->searchPublicService(Ljava/lang/String;IILio/rong/imlib/NativeClient$IResultCallback;)V

    .line 705
    return-void
.end method

.method public sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/ILongSendMessageCallback;)Lio/rong/imlib/model/Message;
    .locals 3
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "pushContent"    # Ljava/lang/String;
    .param p3, "pushData"    # Ljava/lang/String;
    .param p4, "callback"    # Lio/rong/imlib/ILongSendMessageCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v2, Lio/rong/imlib/LibHandlerStub$5;

    invoke-direct {v2, p0, p4}, Lio/rong/imlib/LibHandlerStub$5;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/ILongSendMessageCallback;)V

    invoke-virtual {v1, p1, p2, p3, v2}, Lio/rong/imlib/NativeClient;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultSendMessageCallback;)Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 274
    .local v0, "result":Lio/rong/imlib/model/Message;
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    .line 276
    return-object v0
.end method

.method public sendStatusMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/ILongCallback;)Lio/rong/imlib/model/Message;
    .locals 7
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "callback"    # Lio/rong/imlib/ILongCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lio/rong/imlib/LibHandlerStub$6;

    invoke-direct {v5, p0, p2}, Lio/rong/imlib/LibHandlerStub$6;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/ILongCallback;)V

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/NativeClient;->sendStatusMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;ILio/rong/imlib/NativeClient$IResultCallback;)Lio/rong/imlib/model/Message;

    move-result-object v6

    .line 321
    .local v6, "result":Lio/rong/imlib/model/Message;
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    .line 323
    return-object v6
.end method

.method public setConnectionStatusListener(Lio/rong/imlib/IConnectionStatusListener;)V
    .locals 1
    .param p1, "callback"    # Lio/rong/imlib/IConnectionStatusListener;

    .prologue
    .line 157
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v0, Lio/rong/imlib/LibHandlerStub$3;

    invoke-direct {v0, p0, p1}, Lio/rong/imlib/LibHandlerStub$3;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IConnectionStatusListener;)V

    invoke-static {v0}, Lio/rong/imlib/NativeClient;->setConnectionStatusListener(Lio/rong/imlib/NativeClient$ICodeListener;)V

    .line 174
    return-void
.end method

.method public setConversationNotificationStatus(ILjava/lang/String;ILio/rong/imlib/ILongCallback;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "callback"    # Lio/rong/imlib/ILongCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-static {p3}, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    move-result-object v2

    new-instance v3, Lio/rong/imlib/LibHandlerStub$9;

    invoke-direct {v3, p0, p4}, Lio/rong/imlib/LibHandlerStub$9;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/ILongCallback;)V

    invoke-virtual {v0, v1, p2, v2, v3}, Lio/rong/imlib/NativeClient;->setConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;Lio/rong/imlib/NativeClient$IResultCallback;)V

    .line 563
    return-void
.end method

.method public setConversationTopStatus(ILjava/lang/String;Z)Z
    .locals 3
    .param p1, "typeValue"    # I
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "isTop"    # Z

    .prologue
    .line 567
    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    .line 569
    .local v0, "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    if-nez v0, :cond_0

    .line 570
    const-string/jumbo v1, "setConversationTopStatus"

    const-string v2, "ConversationType is null"

    invoke-static {p0, v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v1, 0x0

    .line 574
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v1, v0, p2, p3}, Lio/rong/imlib/NativeClient;->setConversationToTop(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public setDiscussionInviteStatus(Ljava/lang/String;ILio/rong/imlib/IOperationCallback;)V
    .locals 2
    .param p1, "targetId"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "callback"    # Lio/rong/imlib/IOperationCallback;

    .prologue
    .line 1237
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$27;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/LibHandlerStub$27;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->setDiscussionInviteStatus(Ljava/lang/String;ILio/rong/imlib/NativeClient$OperationCallback;)V

    .line 1269
    return-void
.end method

.method public setDiscussionName(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/IOperationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$OperationCallback;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/LibHandlerStub$OperationCallback;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->setDiscussionName(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 625
    return-void
.end method

.method public setMessageExtra(ILjava/lang/String;)Z
    .locals 1
    .param p1, "messageId"    # I
    .param p2, "values"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/NativeClient;->setMessageExtra(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMessageReceivedStatus(II)Z
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/model/Message$ReceivedStatus;

    invoke-direct {v1, p2}, Lio/rong/imlib/model/Message$ReceivedStatus;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;)Z

    move-result v0

    return v0
.end method

.method public setMessageSentStatus(II)Z
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-static {p2}, Lio/rong/imlib/model/Message$SentStatus;->setValue(I)Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;)Z

    move-result v0

    return v0
.end method

.method public setNotificationQuietHours(Ljava/lang/String;ILio/rong/imlib/IOperationCallback;)V
    .locals 2
    .param p1, "startTime"    # Ljava/lang/String;
    .param p2, "spanMinutes"    # I
    .param p3, "callback"    # Lio/rong/imlib/IOperationCallback;

    .prologue
    .line 1008
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$21;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/LibHandlerStub$21;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->setNotificationQuietHours(Ljava/lang/String;ILio/rong/imlib/NativeClient$OperationCallback;)V

    .line 1037
    return-void
.end method

.method public setOnReceiveMessageListener(Lio/rong/imlib/OnReceiveMessageListener;)V
    .locals 2
    .param p1, "listener"    # Lio/rong/imlib/OnReceiveMessageListener;

    .prologue
    .line 206
    if-nez p1, :cond_0

    .line 224
    :goto_0
    return-void

    .line 209
    :cond_0
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub;->mReceiverMessageListener:Lio/rong/imlib/OnReceiveMessageListener;

    .line 211
    new-instance v0, Lio/rong/imlib/LibHandlerStub$4;

    invoke-direct {v0, p0, p1}, Lio/rong/imlib/LibHandlerStub$4;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/OnReceiveMessageListener;)V

    .line 223
    .local v0, "receiveMessageListener":Lio/rong/imlib/NativeClient$OnReceiveMessageListener;
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v1, v0}, Lio/rong/imlib/NativeClient;->setOnReceiveMessageListener(Lio/rong/imlib/NativeClient$OnReceiveMessageListener;)V

    goto :goto_0
.end method

.method public setUserData(Lio/rong/imlib/model/UserData;Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .param p1, "userData"    # Lio/rong/imlib/model/UserData;
    .param p2, "callback"    # Lio/rong/imlib/IOperationCallback;

    .prologue
    .line 1433
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$32;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/LibHandlerStub$32;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->setUserData(Lio/rong/imlib/model/UserData;Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 1464
    return-void
.end method

.method public setupRealTimeLocation(ILjava/lang/String;)I
    .locals 3
    .param p1, "conversationType"    # I
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 1511
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    iget-object v2, p0, Lio/rong/imlib/LibHandlerStub;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, p2}, Lio/rong/imlib/NativeClient;->setupRealTimeLocation(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 1512
    .local v0, "errorCode":I
    return v0
.end method

.method public startRealTimeLocation(ILjava/lang/String;)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 1517
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/NativeClient;->startRealTimeLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public subscribePublicService(Ljava/lang/String;IZLio/rong/imlib/IOperationCallback;)V
    .locals 2
    .param p1, "targetId"    # Ljava/lang/String;
    .param p2, "categoryId"    # I
    .param p3, "subscribe"    # Z
    .param p4, "callback"    # Lio/rong/imlib/IOperationCallback;

    .prologue
    .line 709
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$13;

    invoke-direct {v1, p0, p4}, Lio/rong/imlib/LibHandlerStub$13;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/rong/imlib/NativeClient;->subscribePublicService(Ljava/lang/String;IZLio/rong/imlib/NativeClient$OperationCallback;)V

    .line 739
    return-void
.end method

.method public syncGroup(Ljava/util/List;Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .param p2, "callback"    # Lio/rong/imlib/IOperationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Group;",
            ">;",
            "Lio/rong/imlib/IOperationCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 836
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Group;>;"
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$OperationCallback;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/LibHandlerStub$OperationCallback;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->syncGroup(Ljava/util/List;Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 837
    return-void
.end method

.method public updateConversationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "portrait"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, p4}, Lio/rong/imlib/NativeClient;->updateConversationInfo(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 432
    .local v0, "result":Z
    return v0
.end method

.method public updateMessageReceiptStatus(Ljava/lang/String;IJ)Z
    .locals 1
    .param p1, "targetId"    # Ljava/lang/String;
    .param p2, "categoryId"    # I
    .param p3, "timestamp"    # J

    .prologue
    .line 1600
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/rong/imlib/NativeClient;->updateMessageReceiptStatus(Ljava/lang/String;IJ)Z

    move-result v0

    return v0
.end method

.method public updateRealTimeLocationStatus(ILjava/lang/String;DD)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D

    .prologue
    .line 1595
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lio/rong/imlib/NativeClient;->updateRealTimeLocationStatus(ILjava/lang/String;DD)V

    .line 1596
    return-void
.end method

.method public uploadMedia(Lio/rong/imlib/model/Conversation;Ljava/lang/String;Lio/rong/imlib/IUploadCallback;)V
    .locals 7
    .param p1, "conversation"    # Lio/rong/imlib/model/Conversation;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/IUploadCallback;

    .prologue
    .line 1118
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1120
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1121
    iget-object v2, p0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v3, Lio/rong/imlib/LibHandlerStub$24;

    invoke-direct {v3, p0}, Lio/rong/imlib/LibHandlerStub$24;-><init>(Lio/rong/imlib/LibHandlerStub;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1130
    :cond_0
    :try_start_0
    iget-object v2, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v6, Lio/rong/imlib/LibHandlerStub$25;

    invoke-direct {v6, p0, p3}, Lio/rong/imlib/LibHandlerStub$25;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IUploadCallback;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lio/rong/imlib/NativeClient;->uploadMedia(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/io/InputStream;Lio/rong/imlib/NativeClient$IResultProgressCallback;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    :goto_0
    return-void

    .line 1174
    :catch_0
    move-exception v0

    .line 1175
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public validateAuth(Ljava/lang/String;)Z
    .locals 1
    .param p1, "auth"    # Ljava/lang/String;

    .prologue
    .line 1111
    const/4 v0, 0x0

    return v0
.end method

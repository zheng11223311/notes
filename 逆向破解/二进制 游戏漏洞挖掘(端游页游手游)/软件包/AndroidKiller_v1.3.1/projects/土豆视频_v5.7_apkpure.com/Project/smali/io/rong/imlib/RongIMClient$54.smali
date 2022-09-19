.class Lio/rong/imlib/RongIMClient$54;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

.field final synthetic val$message:Lio/rong/imlib/model/Message;

.field final synthetic val$pushContent:Ljava/lang/String;

.field final synthetic val$pushData:Ljava/lang/String;

.field final synthetic val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 0

    .prologue
    .line 3052
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$54;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$54;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$54;->val$message:Lio/rong/imlib/model/Message;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$54;->val$pushContent:Ljava/lang/String;

    iput-object p5, p0, Lio/rong/imlib/RongIMClient$54;->val$pushData:Ljava/lang/String;

    iput-object p6, p0, Lio/rong/imlib/RongIMClient$54;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 3057
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$54;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v2, :cond_1

    .line 3059
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$54;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    if-eqz v2, :cond_0

    .line 3060
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$54;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    sget-object v3, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v2, v3}, Lio/rong/imlib/RongIMClient$SendMessageCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3108
    :cond_0
    :goto_0
    return-void

    .line 3066
    :cond_1
    :try_start_0
    const-string/jumbo v2, "sendMessage"

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$54;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v3, v3, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$54;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$54;->val$message:Lio/rong/imlib/model/Message;

    iget-object v4, p0, Lio/rong/imlib/RongIMClient$54;->val$pushContent:Ljava/lang/String;

    iget-object v5, p0, Lio/rong/imlib/RongIMClient$54;->val$pushData:Ljava/lang/String;

    new-instance v6, Lio/rong/imlib/RongIMClient$54$1;

    invoke-direct {v6, p0}, Lio/rong/imlib/RongIMClient$54$1;-><init>(Lio/rong/imlib/RongIMClient$54;)V

    invoke-interface {v2, v3, v4, v5, v6}, Lio/rong/imlib/IHandler;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/ILongSendMessageCallback;)Lio/rong/imlib/model/Message;

    move-result-object v1

    .line 3096
    .local v1, "msg":Lio/rong/imlib/model/Message;
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$54;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v3

    invoke-virtual {v2, v3}, Lio/rong/imlib/model/Message;->setMessageId(I)V

    .line 3098
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$54;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v2, :cond_0

    .line 3099
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$54;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v2, v1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3101
    .end local v1    # "msg":Lio/rong/imlib/model/Message;
    :catch_0
    move-exception v0

    .line 3102
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3104
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$54;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v2, :cond_0

    .line 3105
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$54;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v3, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v2, v3}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method

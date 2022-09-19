.class Lio/rong/imlib/RongIMClient$55;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->sendStatusMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

.field final synthetic val$message:Lio/rong/imlib/model/Message;

.field final synthetic val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 0

    .prologue
    .line 3124
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$55;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$55;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$55;->val$message:Lio/rong/imlib/model/Message;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$55;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3128
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$55;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v2, :cond_1

    .line 3129
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$55;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    if-eqz v2, :cond_0

    .line 3130
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$55;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    sget-object v3, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v2, v3}, Lio/rong/imlib/RongIMClient$SendMessageCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3165
    :cond_0
    :goto_0
    return-void

    .line 3137
    :cond_1
    :try_start_0
    const-string/jumbo v2, "sendStatusMessage"

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$55;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v3, v3, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$55;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$55;->val$message:Lio/rong/imlib/model/Message;

    new-instance v4, Lio/rong/imlib/RongIMClient$55$1;

    invoke-direct {v4, p0}, Lio/rong/imlib/RongIMClient$55$1;-><init>(Lio/rong/imlib/RongIMClient$55;)V

    invoke-interface {v2, v3, v4}, Lio/rong/imlib/IHandler;->sendStatusMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/ILongCallback;)Lio/rong/imlib/model/Message;

    move-result-object v1

    .line 3156
    .local v1, "msg":Lio/rong/imlib/model/Message;
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$55;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v3

    invoke-virtual {v2, v3}, Lio/rong/imlib/model/Message;->setMessageId(I)V

    .line 3158
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$55;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v2, :cond_0

    .line 3159
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$55;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v2, v1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3160
    .end local v1    # "msg":Lio/rong/imlib/model/Message;
    :catch_0
    move-exception v0

    .line 3161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3162
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$55;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v2, :cond_0

    .line 3163
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$55;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v3, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v2, v3}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method

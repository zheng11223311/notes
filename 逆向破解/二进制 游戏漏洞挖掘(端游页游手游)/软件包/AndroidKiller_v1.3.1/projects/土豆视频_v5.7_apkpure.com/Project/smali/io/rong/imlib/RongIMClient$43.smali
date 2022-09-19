.class Lio/rong/imlib/RongIMClient$43;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

.field final synthetic val$conversation:Lio/rong/imlib/model/Conversation;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation;)V
    .locals 0

    .prologue
    .line 2462
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$43;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$43;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$43;->val$conversation:Lio/rong/imlib/model/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2465
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$43;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v2, :cond_1

    .line 2466
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$43;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v2, :cond_0

    .line 2467
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$43;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v3, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v2, v3}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2482
    :cond_0
    :goto_0
    return-void

    .line 2472
    :cond_1
    :try_start_0
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$43;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$43;->val$conversation:Lio/rong/imlib/model/Conversation;

    invoke-interface {v2, v3}, Lio/rong/imlib/IHandler;->clearTextMessageDraft(Lio/rong/imlib/model/Conversation;)Z

    move-result v0

    .line 2473
    .local v0, "bool":Z
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$43;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v2, :cond_0

    .line 2474
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$43;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imlib/RongIMClient$ResultCallback;->onCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2476
    .end local v0    # "bool":Z
    :catch_0
    move-exception v1

    .line 2477
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2478
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$43;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v2, :cond_0

    .line 2479
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$43;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v3, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v2, v3}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method

.class Lio/rong/imlib/RongIMClient$29;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->clearMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

.field final synthetic val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field final synthetic val$targetId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 0

    .prologue
    .line 1883
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$29;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$29;->val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$29;->val$targetId:Ljava/lang/String;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$29;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1886
    new-instance v1, Lio/rong/imlib/model/Conversation;

    invoke-direct {v1}, Lio/rong/imlib/model/Conversation;-><init>()V

    .line 1887
    .local v1, "conversation":Lio/rong/imlib/model/Conversation;
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$29;->val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v1, v3}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 1888
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$29;->val$targetId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 1889
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$29;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v3, v3, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v3, :cond_1

    .line 1890
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$29;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v3, :cond_0

    .line 1891
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$29;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v4, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v3, v4}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1905
    :cond_0
    :goto_0
    return-void

    .line 1896
    :cond_1
    :try_start_0
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$29;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v3, v3, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-interface {v3, v1}, Lio/rong/imlib/IHandler;->clearMessages(Lio/rong/imlib/model/Conversation;)Z

    move-result v0

    .line 1897
    .local v0, "bool":Z
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$29;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v3, :cond_0

    .line 1898
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$29;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imlib/RongIMClient$ResultCallback;->onCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1900
    .end local v0    # "bool":Z
    :catch_0
    move-exception v2

    .line 1901
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1902
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$29;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v3, :cond_0

    .line 1903
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$29;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v4, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v3, v4}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method

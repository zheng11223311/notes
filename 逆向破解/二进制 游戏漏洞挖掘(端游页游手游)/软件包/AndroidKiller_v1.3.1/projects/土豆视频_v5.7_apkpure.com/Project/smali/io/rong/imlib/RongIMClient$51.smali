.class Lio/rong/imlib/RongIMClient$51;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

.field final synthetic val$content:Lio/rong/imlib/model/MessageContent;

.field final synthetic val$senderUserId:Ljava/lang/String;

.field final synthetic val$targetId:Ljava/lang/String;

.field final synthetic val$type:Lio/rong/imlib/model/Conversation$ConversationType;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 0

    .prologue
    .line 2892
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$51;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$51;->val$targetId:Ljava/lang/String;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$51;->val$type:Lio/rong/imlib/model/Conversation$ConversationType;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$51;->val$content:Lio/rong/imlib/model/MessageContent;

    iput-object p5, p0, Lio/rong/imlib/RongIMClient$51;->val$senderUserId:Ljava/lang/String;

    iput-object p6, p0, Lio/rong/imlib/RongIMClient$51;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2895
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$51;->val$targetId:Ljava/lang/String;

    iget-object v4, p0, Lio/rong/imlib/RongIMClient$51;->val$type:Lio/rong/imlib/model/Conversation$ConversationType;

    iget-object v5, p0, Lio/rong/imlib/RongIMClient$51;->val$content:Lio/rong/imlib/model/MessageContent;

    invoke-static {v3, v4, v5}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v1

    .line 2897
    .local v1, "message":Lio/rong/imlib/model/Message;
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$51;->val$senderUserId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2898
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$51;->val$senderUserId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    .line 2902
    :goto_0
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$51;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v3, v3, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v3, :cond_2

    .line 2903
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$51;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v3, :cond_0

    .line 2904
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$51;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v4, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v3, v4}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2921
    :cond_0
    :goto_1
    return-void

    .line 2900
    :cond_1
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$51;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$1100(Lio/rong/imlib/RongIMClient;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    goto :goto_0

    .line 2910
    :cond_2
    :try_start_0
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$51;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v3, v3, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-interface {v3, v1}, Lio/rong/imlib/IHandler;->insertMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v2

    .line 2911
    .local v2, "result":Lio/rong/imlib/model/Message;
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$51;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v3, :cond_0

    .line 2912
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$51;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v3, v2}, Lio/rong/imlib/RongIMClient$ResultCallback;->onCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2914
    .end local v2    # "result":Lio/rong/imlib/model/Message;
    :catch_0
    move-exception v0

    .line 2915
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2917
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$51;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v3, :cond_0

    .line 2918
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$51;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v4, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v3, v4}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_1
.end method

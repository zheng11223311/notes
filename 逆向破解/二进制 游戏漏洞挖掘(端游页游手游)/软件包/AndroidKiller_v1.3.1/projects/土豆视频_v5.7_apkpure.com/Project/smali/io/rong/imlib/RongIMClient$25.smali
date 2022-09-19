.class Lio/rong/imlib/RongIMClient$25;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

.field final synthetic val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field final synthetic val$count:I

.field final synthetic val$oldestMessageId:I

.field final synthetic val$targetId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;II)V
    .locals 0

    .prologue
    .line 1717
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$25;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$25;->val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$25;->val$targetId:Ljava/lang/String;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$25;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    iput p5, p0, Lio/rong/imlib/RongIMClient$25;->val$oldestMessageId:I

    iput p6, p0, Lio/rong/imlib/RongIMClient$25;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1720
    new-instance v0, Lio/rong/imlib/model/Conversation;

    invoke-direct {v0}, Lio/rong/imlib/model/Conversation;-><init>()V

    .line 1721
    .local v0, "conversation":Lio/rong/imlib/model/Conversation;
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$25;->val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0, v3}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 1722
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$25;->val$targetId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 1723
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$25;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v3, v3, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v3, :cond_1

    .line 1724
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$25;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v3, :cond_0

    .line 1725
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$25;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v4, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v3, v4}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1744
    :cond_0
    :goto_0
    return-void

    .line 1730
    :cond_1
    :try_start_0
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$25;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v3, v3, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    iget v4, p0, Lio/rong/imlib/RongIMClient$25;->val$oldestMessageId:I

    int-to-long v4, v4

    iget v6, p0, Lio/rong/imlib/RongIMClient$25;->val$count:I

    invoke-interface {v3, v0, v4, v5, v6}, Lio/rong/imlib/IHandler;->getOlderMessages(Lio/rong/imlib/model/Conversation;JI)Ljava/util/List;

    move-result-object v2

    .line 1732
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$25;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v3, :cond_0

    .line 1734
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$25;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v3, v2}, Lio/rong/imlib/RongIMClient$ResultCallback;->onCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1736
    .end local v2    # "messages":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    :catch_0
    move-exception v1

    .line 1737
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1738
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$25;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v3, :cond_0

    .line 1740
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$25;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v4, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v3, v4}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method

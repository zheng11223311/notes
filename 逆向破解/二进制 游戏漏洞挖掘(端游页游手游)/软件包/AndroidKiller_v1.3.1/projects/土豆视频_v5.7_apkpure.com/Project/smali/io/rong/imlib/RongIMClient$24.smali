.class Lio/rong/imlib/RongIMClient$24;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->getRemoteHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;JILio/rong/imlib/RongIMClient$ResultCallback;)V
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

.field final synthetic val$dateTime:J

.field final synthetic val$targetId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;JI)V
    .locals 1

    .prologue
    .line 1652
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$24;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$24;->val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$24;->val$targetId:Ljava/lang/String;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$24;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    iput-wide p5, p0, Lio/rong/imlib/RongIMClient$24;->val$dateTime:J

    iput p7, p0, Lio/rong/imlib/RongIMClient$24;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1655
    new-instance v1, Lio/rong/imlib/model/Conversation;

    invoke-direct {v1}, Lio/rong/imlib/model/Conversation;-><init>()V

    .line 1656
    .local v1, "conversation":Lio/rong/imlib/model/Conversation;
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$24;->val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v1, v0}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 1657
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$24;->val$targetId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 1658
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$24;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v0, :cond_1

    .line 1659
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$24;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v0, :cond_0

    .line 1660
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$24;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v0, v2}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1698
    :cond_0
    :goto_0
    return-void

    .line 1665
    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$24;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    iget-wide v2, p0, Lio/rong/imlib/RongIMClient$24;->val$dateTime:J

    iget v4, p0, Lio/rong/imlib/RongIMClient$24;->val$count:I

    new-instance v5, Lio/rong/imlib/RongIMClient$24$1;

    invoke-direct {v5, p0}, Lio/rong/imlib/RongIMClient$24$1;-><init>(Lio/rong/imlib/RongIMClient$24;)V

    invoke-interface/range {v0 .. v5}, Lio/rong/imlib/IHandler;->getRemoteHistoryMessages(Lio/rong/imlib/model/Conversation;JILio/rong/imlib/IResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1690
    :catch_0
    move-exception v6

    .line 1691
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1692
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$24;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v0, :cond_0

    .line 1694
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$24;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v0, v2}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method

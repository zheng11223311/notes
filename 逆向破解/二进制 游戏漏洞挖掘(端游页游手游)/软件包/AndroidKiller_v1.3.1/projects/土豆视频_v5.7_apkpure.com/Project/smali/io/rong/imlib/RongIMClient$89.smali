.class Lio/rong/imlib/RongIMClient$89;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->updateMessageReceiptStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;JLio/rong/imlib/RongIMClient$OperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

.field final synthetic val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field final synthetic val$targetId:Ljava/lang/String;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;J)V
    .locals 1

    .prologue
    .line 4986
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$89;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$89;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$89;->val$targetId:Ljava/lang/String;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$89;->val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    iput-wide p5, p0, Lio/rong/imlib/RongIMClient$89;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 4990
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$89;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v1, :cond_1

    .line 4991
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$89;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v1, :cond_0

    .line 4992
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$89;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$OperationCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 5009
    :cond_0
    :goto_0
    return-void

    .line 4997
    :cond_1
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$89;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$89;->val$targetId:Ljava/lang/String;

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$89;->val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v3

    iget-wide v4, p0, Lio/rong/imlib/RongIMClient$89;->val$timestamp:J

    invoke-interface {v1, v2, v3, v4, v5}, Lio/rong/imlib/IHandler;->updateMessageReceiptStatus(Ljava/lang/String;IJ)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 4998
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$89;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v1, :cond_0

    .line 4999
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$89;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$OperationCallback;->onSuccess()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5006
    :catch_0
    move-exception v0

    .line 5007
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 5002
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$89;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v1, :cond_0

    .line 5003
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$89;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->UNKNOWN:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$OperationCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

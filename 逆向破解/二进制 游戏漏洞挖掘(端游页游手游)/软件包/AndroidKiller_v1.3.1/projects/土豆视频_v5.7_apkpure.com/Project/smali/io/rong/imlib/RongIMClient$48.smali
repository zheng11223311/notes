.class Lio/rong/imlib/RongIMClient$48;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->removeMemberFromDiscussion(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

.field final synthetic val$discussionId:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2746
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$48;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$48;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$48;->val$discussionId:Ljava/lang/String;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$48;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2750
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$48;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v1, :cond_1

    .line 2751
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$48;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v1, :cond_0

    .line 2752
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$48;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$OperationCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2780
    :cond_0
    :goto_0
    return-void

    .line 2757
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$48;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$48;->val$discussionId:Ljava/lang/String;

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$48;->val$userId:Ljava/lang/String;

    new-instance v4, Lio/rong/imlib/RongIMClient$48$1;

    invoke-direct {v4, p0}, Lio/rong/imlib/RongIMClient$48$1;-><init>(Lio/rong/imlib/RongIMClient$48;)V

    invoke-interface {v1, v2, v3, v4}, Lio/rong/imlib/IHandler;->removeDiscussionMember(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2775
    :catch_0
    move-exception v0

    .line 2776
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2777
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$48;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v1, :cond_0

    .line 2778
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$48;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$OperationCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method

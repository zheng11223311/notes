.class Lio/rong/imlib/RongIMClient$78;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->removeFromBlacklist(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4410
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$78;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$78;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$78;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4414
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$78;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v1, :cond_1

    .line 4415
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$78;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v1, :cond_0

    .line 4416
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$78;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$OperationCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4443
    :cond_0
    :goto_0
    return-void

    .line 4422
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$78;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$78;->val$userId:Ljava/lang/String;

    new-instance v3, Lio/rong/imlib/RongIMClient$78$1;

    invoke-direct {v3, p0}, Lio/rong/imlib/RongIMClient$78$1;-><init>(Lio/rong/imlib/RongIMClient$78;)V

    invoke-interface {v1, v2, v3}, Lio/rong/imlib/IHandler;->removeFromBlacklist(Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4438
    :catch_0
    move-exception v0

    .line 4439
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4440
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$78;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v1, :cond_0

    .line 4441
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$78;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$OperationCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method

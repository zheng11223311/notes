.class Lio/rong/imlib/RongIMClient$91;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->syncUserData(Lio/rong/imlib/model/UserData;Lio/rong/imlib/RongIMClient$OperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

.field final synthetic val$userData:Lio/rong/imlib/model/UserData;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Lio/rong/imlib/model/UserData;)V
    .locals 0

    .prologue
    .line 5085
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$91;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$91;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$91;->val$userData:Lio/rong/imlib/model/UserData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5089
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$91;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v1, :cond_1

    .line 5090
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$91;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v1, :cond_0

    .line 5091
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$91;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$OperationCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 5115
    :cond_0
    :goto_0
    return-void

    .line 5096
    :cond_1
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$91;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$91;->val$userData:Lio/rong/imlib/model/UserData;

    new-instance v3, Lio/rong/imlib/RongIMClient$91$1;

    invoke-direct {v3, p0}, Lio/rong/imlib/RongIMClient$91$1;-><init>(Lio/rong/imlib/RongIMClient$91;)V

    invoke-interface {v1, v2, v3}, Lio/rong/imlib/IHandler;->setUserData(Lio/rong/imlib/model/UserData;Lio/rong/imlib/IOperationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5109
    :catch_0
    move-exception v0

    .line 5110
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5112
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$91;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v1, :cond_0

    .line 5113
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$91;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$OperationCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method

.class Lio/rong/imlib/RongIMClient$87;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->setNotificationQuietHours(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

.field final synthetic val$spanMinutes:I

.field final synthetic val$startTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 4908
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$87;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$87;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$87;->val$startTime:Ljava/lang/String;

    iput p4, p0, Lio/rong/imlib/RongIMClient$87;->val$spanMinutes:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 4912
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$87;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v1, :cond_1

    .line 4913
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$87;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v1, :cond_0

    .line 4914
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$87;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$OperationCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4938
    :cond_0
    :goto_0
    return-void

    .line 4919
    :cond_1
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$87;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$87;->val$startTime:Ljava/lang/String;

    iget v3, p0, Lio/rong/imlib/RongIMClient$87;->val$spanMinutes:I

    new-instance v4, Lio/rong/imlib/RongIMClient$87$1;

    invoke-direct {v4, p0}, Lio/rong/imlib/RongIMClient$87$1;-><init>(Lio/rong/imlib/RongIMClient$87;)V

    invoke-interface {v1, v2, v3, v4}, Lio/rong/imlib/IHandler;->setNotificationQuietHours(Ljava/lang/String;ILio/rong/imlib/IOperationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4932
    :catch_0
    move-exception v0

    .line 4933
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4935
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$87;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v1, :cond_0

    .line 4936
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$87;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$OperationCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method

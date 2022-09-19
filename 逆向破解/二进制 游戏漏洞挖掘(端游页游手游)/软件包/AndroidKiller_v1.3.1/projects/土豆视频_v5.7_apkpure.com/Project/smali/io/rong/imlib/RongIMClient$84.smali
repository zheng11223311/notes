.class Lio/rong/imlib/RongIMClient$84;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->unsubscribePublicService(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

.field final synthetic val$publicServiceId:Ljava/lang/String;

.field final synthetic val$publicServiceType:Lio/rong/imlib/model/Conversation$PublicServiceType;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Lio/rong/imlib/model/Conversation$PublicServiceType;)V
    .locals 0

    .prologue
    .line 4747
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$84;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$84;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$84;->val$publicServiceId:Ljava/lang/String;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$84;->val$publicServiceType:Lio/rong/imlib/model/Conversation$PublicServiceType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 4751
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$84;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v1, :cond_1

    .line 4752
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$84;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v1, :cond_0

    .line 4753
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$84;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$OperationCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4777
    :cond_0
    :goto_0
    return-void

    .line 4758
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$84;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$84;->val$publicServiceId:Ljava/lang/String;

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$84;->val$publicServiceType:Lio/rong/imlib/model/Conversation$PublicServiceType;

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation$PublicServiceType;->getValue()I

    move-result v3

    const/4 v4, 0x0

    new-instance v5, Lio/rong/imlib/RongIMClient$84$1;

    invoke-direct {v5, p0}, Lio/rong/imlib/RongIMClient$84$1;-><init>(Lio/rong/imlib/RongIMClient$84;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lio/rong/imlib/IHandler;->subscribePublicService(Ljava/lang/String;IZLio/rong/imlib/IOperationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4774
    :catch_0
    move-exception v0

    .line 4775
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

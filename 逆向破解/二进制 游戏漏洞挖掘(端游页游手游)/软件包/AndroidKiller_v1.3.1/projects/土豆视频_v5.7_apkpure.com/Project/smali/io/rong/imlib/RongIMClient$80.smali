.class Lio/rong/imlib/RongIMClient$80;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->getBlacklist(Lio/rong/imlib/RongIMClient$GetBlacklistCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$GetBlacklistCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$GetBlacklistCallback;)V
    .locals 0

    .prologue
    .line 4509
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$80;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$80;->val$callback:Lio/rong/imlib/RongIMClient$GetBlacklistCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4513
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$80;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v1, :cond_1

    .line 4514
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$80;->val$callback:Lio/rong/imlib/RongIMClient$GetBlacklistCallback;

    if-eqz v1, :cond_0

    .line 4515
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$80;->val$callback:Lio/rong/imlib/RongIMClient$GetBlacklistCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$GetBlacklistCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4545
    :cond_0
    :goto_0
    return-void

    .line 4520
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$80;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    new-instance v2, Lio/rong/imlib/RongIMClient$80$1;

    invoke-direct {v2, p0}, Lio/rong/imlib/RongIMClient$80$1;-><init>(Lio/rong/imlib/RongIMClient$80;)V

    invoke-interface {v1, v2}, Lio/rong/imlib/IHandler;->getBlacklist(Lio/rong/imlib/IStringCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4540
    :catch_0
    move-exception v0

    .line 4541
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4542
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$80;->val$callback:Lio/rong/imlib/RongIMClient$GetBlacklistCallback;

    if-eqz v1, :cond_0

    .line 4543
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$80;->val$callback:Lio/rong/imlib/RongIMClient$GetBlacklistCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$GetBlacklistCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method

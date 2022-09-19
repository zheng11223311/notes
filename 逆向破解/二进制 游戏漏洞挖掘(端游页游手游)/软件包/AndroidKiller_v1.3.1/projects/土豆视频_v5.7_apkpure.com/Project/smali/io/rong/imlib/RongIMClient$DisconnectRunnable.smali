.class Lio/rong/imlib/RongIMClient$DisconnectRunnable;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/RongIMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisconnectRunnable"
.end annotation


# instance fields
.field isReceivePush:Z

.field final synthetic this$0:Lio/rong/imlib/RongIMClient;


# direct methods
.method public constructor <init>(Lio/rong/imlib/RongIMClient;Z)V
    .locals 0
    .param p2, "isReceivePush"    # Z

    .prologue
    .line 281
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$DisconnectRunnable;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-boolean p2, p0, Lio/rong/imlib/RongIMClient$DisconnectRunnable;->isReceivePush:Z

    .line 283
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 288
    :try_start_0
    const-string v1, "DisconnectRunnable"

    const-string v2, "do disconnect!"

    invoke-static {p0, v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$DisconnectRunnable;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v1, :cond_0

    .line 291
    const-string v1, "DisconnectRunnable"

    const-string v2, "mLibHandler is null!"

    invoke-static {p0, v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$DisconnectRunnable;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    iget-boolean v2, p0, Lio/rong/imlib/RongIMClient$DisconnectRunnable;->isReceivePush:Z

    new-instance v3, Lio/rong/imlib/RongIMClient$DisconnectRunnable$1;

    invoke-direct {v3, p0}, Lio/rong/imlib/RongIMClient$DisconnectRunnable$1;-><init>(Lio/rong/imlib/RongIMClient$DisconnectRunnable;)V

    invoke-interface {v1, v2, v3}, Lio/rong/imlib/IHandler;->disconnect(ZLio/rong/imlib/IOperationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

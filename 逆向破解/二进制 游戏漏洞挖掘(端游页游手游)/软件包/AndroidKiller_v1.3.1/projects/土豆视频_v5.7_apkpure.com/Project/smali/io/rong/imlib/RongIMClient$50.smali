.class Lio/rong/imlib/RongIMClient$50;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->getMessage(ILio/rong/imlib/RongIMClient$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

.field final synthetic val$messageId:I


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;I)V
    .locals 0

    .prologue
    .line 2852
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$50;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$50;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    iput p3, p0, Lio/rong/imlib/RongIMClient$50;->val$messageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2855
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$50;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v2, :cond_1

    .line 2856
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$50;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v2, :cond_0

    .line 2857
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$50;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v3, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v2, v3}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2873
    :cond_0
    :goto_0
    return-void

    .line 2862
    :cond_1
    :try_start_0
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$50;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    iget v3, p0, Lio/rong/imlib/RongIMClient$50;->val$messageId:I

    invoke-interface {v2, v3}, Lio/rong/imlib/IHandler;->getMessage(I)Lio/rong/imlib/model/Message;

    move-result-object v1

    .line 2863
    .local v1, "result":Lio/rong/imlib/model/Message;
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$50;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v2, :cond_0

    .line 2864
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$50;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v2, v1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2866
    .end local v1    # "result":Lio/rong/imlib/model/Message;
    :catch_0
    move-exception v0

    .line 2867
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2869
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$50;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v2, :cond_0

    .line 2870
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$50;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v3, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v2, v3}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method

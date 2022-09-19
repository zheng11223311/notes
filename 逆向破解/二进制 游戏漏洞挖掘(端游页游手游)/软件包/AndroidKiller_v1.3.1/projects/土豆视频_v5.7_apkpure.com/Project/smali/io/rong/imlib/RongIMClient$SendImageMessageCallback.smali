.class public abstract Lio/rong/imlib/RongIMClient$SendImageMessageCallback;
.super Lio/rong/imlib/RongIMClient$SendMessageCallback;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/RongIMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SendImageMessageCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6023
    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$SendMessageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAttached(Lio/rong/imlib/model/Message;)V
.end method

.method onAttachedCallback(Lio/rong/imlib/model/Message;)V
    .locals 2
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 6066
    sget-object v0, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$SendImageMessageCallback$2;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$SendImageMessageCallback$2;-><init>(Lio/rong/imlib/RongIMClient$SendImageMessageCallback;Lio/rong/imlib/model/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6072
    return-void
.end method

.method public abstract onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
.end method

.method public onError(Ljava/lang/Integer;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/Integer;
    .param p2, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 6091
    return-void
.end method

.method onFail(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 2
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "code"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 6075
    sget-object v0, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$SendImageMessageCallback$3;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imlib/RongIMClient$SendImageMessageCallback$3;-><init>(Lio/rong/imlib/RongIMClient$SendImageMessageCallback;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6081
    return-void
.end method

.method public abstract onProgress(Lio/rong/imlib/model/Message;I)V
.end method

.method onProgressCallback(Lio/rong/imlib/model/Message;I)V
    .locals 2
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "progress"    # I

    .prologue
    .line 6057
    sget-object v0, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$SendImageMessageCallback$1;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imlib/RongIMClient$SendImageMessageCallback$1;-><init>(Lio/rong/imlib/RongIMClient$SendImageMessageCallback;Lio/rong/imlib/model/Message;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6063
    return-void
.end method

.method public abstract onSuccess(Lio/rong/imlib/model/Message;)V
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 6086
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 6023
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imlib/RongIMClient$SendImageMessageCallback;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method

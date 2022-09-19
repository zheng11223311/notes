.class public abstract Lio/rong/imlib/RongIMClient$Callback;
.super Ljava/lang/Object;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/RongIMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback()V
    .locals 2

    .prologue
    .line 5574
    sget-object v0, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$Callback$1;

    invoke-direct {v1, p0}, Lio/rong/imlib/RongIMClient$Callback$1;-><init>(Lio/rong/imlib/RongIMClient$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5580
    return-void
.end method

.method public abstract onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
.end method

.method public onFail(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 5584
    sget-object v0, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$Callback$2;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$Callback$2;-><init>(Lio/rong/imlib/RongIMClient$Callback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5590
    return-void
.end method

.method public onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 5593
    sget-object v0, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$Callback$3;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$Callback$3;-><init>(Lio/rong/imlib/RongIMClient$Callback;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5599
    return-void
.end method

.method public abstract onSuccess()V
.end method

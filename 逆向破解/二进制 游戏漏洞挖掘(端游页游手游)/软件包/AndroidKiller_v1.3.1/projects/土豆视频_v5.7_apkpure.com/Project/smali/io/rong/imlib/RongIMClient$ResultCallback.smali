.class public abstract Lio/rong/imlib/RongIMClient$ResultCallback;
.super Ljava/lang/Object;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/RongIMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ResultCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/RongIMClient$ResultCallback$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5617
    .local p0, "this":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5619
    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 5655
    .local p0, "this":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    sget-object v0, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$ResultCallback$3;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$ResultCallback$3;-><init>(Lio/rong/imlib/RongIMClient$ResultCallback;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5661
    return-void
.end method

.method public abstract onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
.end method

.method public onFail(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 5637
    .local p0, "this":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<TT;>;"
    sget-object v0, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$ResultCallback$1;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$ResultCallback$1;-><init>(Lio/rong/imlib/RongIMClient$ResultCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5643
    return-void
.end method

.method public onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 5646
    .local p0, "this":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<TT;>;"
    sget-object v0, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$ResultCallback$2;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$ResultCallback$2;-><init>(Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5652
    return-void
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

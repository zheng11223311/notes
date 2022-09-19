.class abstract Lio/rong/imlib/RongIMClient$SyncCallback;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/RongIMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SyncCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5665
    .local p0, "this":Lio/rong/imlib/RongIMClient$SyncCallback;, "Lio/rong/imlib/RongIMClient$SyncCallback<TT;>;"
    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 5679
    .local p0, "this":Lio/rong/imlib/RongIMClient$SyncCallback;, "Lio/rong/imlib/RongIMClient$SyncCallback<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lio/rong/imlib/RongIMClient$SyncCallback;->onSuccess(Ljava/lang/Object;)V

    .line 5680
    return-void
.end method

.method public onFail(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 5669
    .local p0, "this":Lio/rong/imlib/RongIMClient$SyncCallback;, "Lio/rong/imlib/RongIMClient$SyncCallback<TT;>;"
    invoke-static {p1}, Lio/rong/imlib/RongIMClient$ErrorCode;->valueOf(I)Lio/rong/imlib/RongIMClient$ErrorCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/RongIMClient$SyncCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 5670
    return-void
.end method

.method public onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .param p1, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 5674
    .local p0, "this":Lio/rong/imlib/RongIMClient$SyncCallback;, "Lio/rong/imlib/RongIMClient$SyncCallback<TT;>;"
    invoke-virtual {p0, p1}, Lio/rong/imlib/RongIMClient$SyncCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 5675
    return-void
.end method

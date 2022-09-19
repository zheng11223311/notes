.class Lio/rong/imlib/RongIMClient$79$1;
.super Lio/rong/imlib/IIntegerCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$79;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$79;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$79;)V
    .locals 0

    .prologue
    .line 4475
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$79$1;->this$1:Lio/rong/imlib/RongIMClient$79;

    invoke-direct {p0}, Lio/rong/imlib/IIntegerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 2
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4478
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$79$1;->this$1:Lio/rong/imlib/RongIMClient$79;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$79;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v0, :cond_0

    .line 4479
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$79$1;->this$1:Lio/rong/imlib/RongIMClient$79;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$79;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-static {p1}, Lio/rong/imlib/RongIMClient$BlacklistStatus;->setValue(I)Lio/rong/imlib/RongIMClient$BlacklistStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onCallback(Ljava/lang/Object;)V

    .line 4481
    :cond_0
    return-void
.end method

.method public onFailure(I)V
    .locals 1
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4485
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$79$1;->this$1:Lio/rong/imlib/RongIMClient$79;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$79;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v0, :cond_0

    .line 4486
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$79$1;->this$1:Lio/rong/imlib/RongIMClient$79;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$79;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(I)V

    .line 4488
    :cond_0
    return-void
.end method

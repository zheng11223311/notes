.class Lio/rong/imlib/RongIMClient$45$1;
.super Lio/rong/imlib/IOperationCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$45;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$45;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$45;)V
    .locals 0

    .prologue
    .line 2578
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$45$1;->this$1:Lio/rong/imlib/RongIMClient$45;

    invoke-direct {p0}, Lio/rong/imlib/IOperationCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2582
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$45$1;->this$1:Lio/rong/imlib/RongIMClient$45;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$45;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v0, :cond_0

    .line 2583
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$45$1;->this$1:Lio/rong/imlib/RongIMClient$45;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$45;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onCallback()V

    .line 2585
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
    .line 2589
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$45$1;->this$1:Lio/rong/imlib/RongIMClient$45;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$45;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v0, :cond_0

    .line 2590
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$45$1;->this$1:Lio/rong/imlib/RongIMClient$45;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$45;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$OperationCallback;->onFail(I)V

    .line 2592
    :cond_0
    return-void
.end method

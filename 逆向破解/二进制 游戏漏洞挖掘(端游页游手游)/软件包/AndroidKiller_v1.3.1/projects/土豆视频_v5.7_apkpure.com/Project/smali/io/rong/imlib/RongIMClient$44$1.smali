.class Lio/rong/imlib/RongIMClient$44$1;
.super Lio/rong/imlib/IResultCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$44;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$44;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$44;)V
    .locals 0

    .prologue
    .line 2514
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$44$1;->this$1:Lio/rong/imlib/RongIMClient$44;

    invoke-direct {p0}, Lio/rong/imlib/IResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lio/rong/imlib/model/RemoteModelWrap;)V
    .locals 2
    .param p1, "model"    # Lio/rong/imlib/model/RemoteModelWrap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2519
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$44$1;->this$1:Lio/rong/imlib/RongIMClient$44;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$44;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v0, :cond_0

    .line 2520
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/rong/imlib/model/RemoteModelWrap;->getContent()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/rong/imlib/model/RemoteModelWrap;->getContent()Landroid/os/Parcelable;

    move-result-object v0

    instance-of v0, v0, Lio/rong/imlib/model/Discussion;

    if-eqz v0, :cond_1

    .line 2521
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$44$1;->this$1:Lio/rong/imlib/RongIMClient$44;

    iget-object v1, v0, Lio/rong/imlib/RongIMClient$44;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {p1}, Lio/rong/imlib/model/RemoteModelWrap;->getContent()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Discussion;

    invoke-virtual {v1, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onCallback(Ljava/lang/Object;)V

    .line 2526
    :cond_0
    :goto_0
    return-void

    .line 2523
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$44$1;->this$1:Lio/rong/imlib/RongIMClient$44;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$44;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onFailure(I)V
    .locals 2
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2530
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$44$1;->this$1:Lio/rong/imlib/RongIMClient$44;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$44;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v0, :cond_0

    .line 2531
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$44$1;->this$1:Lio/rong/imlib/RongIMClient$44;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$44;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-static {p1}, Lio/rong/imlib/RongIMClient$ErrorCode;->valueOf(I)Lio/rong/imlib/RongIMClient$ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2533
    :cond_0
    return-void
.end method

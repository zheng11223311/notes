.class Lio/rong/imlib/RongIMClient$46$1;
.super Lio/rong/imlib/IResultCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$46;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$46;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$46;)V
    .locals 0

    .prologue
    .line 2636
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$46$1;->this$1:Lio/rong/imlib/RongIMClient$46;

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
    .line 2640
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$46$1;->this$1:Lio/rong/imlib/RongIMClient$46;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$46;->val$callback:Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;

    if-eqz v0, :cond_0

    .line 2642
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/rong/imlib/model/RemoteModelWrap;->getContent()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/rong/imlib/model/RemoteModelWrap;->getContent()Landroid/os/Parcelable;

    move-result-object v0

    instance-of v0, v0, Lio/rong/imlib/model/Discussion;

    if-eqz v0, :cond_1

    .line 2643
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$46$1;->this$1:Lio/rong/imlib/RongIMClient$46;

    iget-object v1, v0, Lio/rong/imlib/RongIMClient$46;->val$callback:Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;

    invoke-virtual {p1}, Lio/rong/imlib/model/RemoteModelWrap;->getContent()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Discussion;

    invoke-virtual {v0}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;->onCallback(Ljava/lang/Object;)V

    .line 2649
    :cond_0
    :goto_0
    return-void

    .line 2645
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$46$1;->this$1:Lio/rong/imlib/RongIMClient$46;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$46;->val$callback:Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0
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
    .line 2653
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$46$1;->this$1:Lio/rong/imlib/RongIMClient$46;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$46;->val$callback:Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;

    if-eqz v0, :cond_0

    .line 2654
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$46$1;->this$1:Lio/rong/imlib/RongIMClient$46;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$46;->val$callback:Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;->onFail(I)V

    .line 2656
    :cond_0
    return-void
.end method

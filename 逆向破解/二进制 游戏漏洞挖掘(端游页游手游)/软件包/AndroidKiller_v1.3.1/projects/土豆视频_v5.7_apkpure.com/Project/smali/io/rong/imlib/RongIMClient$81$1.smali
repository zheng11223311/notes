.class Lio/rong/imlib/RongIMClient$81$1;
.super Lio/rong/imlib/IResultCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$81;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$81;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$81;)V
    .locals 0

    .prologue
    .line 4578
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$81$1;->this$1:Lio/rong/imlib/RongIMClient$81;

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
    .line 4583
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$81$1;->this$1:Lio/rong/imlib/RongIMClient$81;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$81;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/RemoteModelWrap;->getContent()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/RemoteModelWrap;->getContent()Landroid/os/Parcelable;

    move-result-object v0

    instance-of v0, v0, Lio/rong/imlib/model/PublicServiceProfileList;

    if-eqz v0, :cond_0

    .line 4585
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$81$1;->this$1:Lio/rong/imlib/RongIMClient$81;

    iget-object v1, v0, Lio/rong/imlib/RongIMClient$81;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {p1}, Lio/rong/imlib/model/RemoteModelWrap;->getContent()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/PublicServiceProfileList;

    invoke-virtual {v1, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onCallback(Ljava/lang/Object;)V

    .line 4587
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
    .line 4591
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$81$1;->this$1:Lio/rong/imlib/RongIMClient$81;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$81;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v0, :cond_0

    .line 4592
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$81$1;->this$1:Lio/rong/imlib/RongIMClient$81;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$81;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(I)V

    .line 4594
    :cond_0
    return-void
.end method

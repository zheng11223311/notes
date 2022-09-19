.class Lio/rong/imlib/RongIMClient$24$1;
.super Lio/rong/imlib/IResultCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$24;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$24;)V
    .locals 0

    .prologue
    .line 1665
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$24$1;->this$1:Lio/rong/imlib/RongIMClient$24;

    invoke-direct {p0}, Lio/rong/imlib/IResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lio/rong/imlib/model/RemoteModelWrap;)V
    .locals 3
    .param p1, "model"    # Lio/rong/imlib/model/RemoteModelWrap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1670
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$24$1;->this$1:Lio/rong/imlib/RongIMClient$24;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$24;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v1, :cond_0

    .line 1671
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/rong/imlib/model/RemoteModelWrap;->getContent()Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lio/rong/imlib/model/RemoteModelWrap;->getContent()Landroid/os/Parcelable;

    move-result-object v1

    instance-of v1, v1, Lio/rong/imlib/model/RongListWrap;

    if-eqz v1, :cond_1

    .line 1672
    invoke-virtual {p1}, Lio/rong/imlib/model/RemoteModelWrap;->getContent()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/RongListWrap;

    .line 1673
    .local v0, "rongListWrap":Lio/rong/imlib/model/RongListWrap;
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$24$1;->this$1:Lio/rong/imlib/RongIMClient$24;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$24;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v0}, Lio/rong/imlib/model/RongListWrap;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$ResultCallback;->onCallback(Ljava/lang/Object;)V

    .line 1678
    .end local v0    # "rongListWrap":Lio/rong/imlib/model/RongListWrap;
    :cond_0
    :goto_0
    return-void

    .line 1675
    :cond_1
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$24$1;->this$1:Lio/rong/imlib/RongIMClient$24;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$24;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$ResultCallback;->onCallback(Ljava/lang/Object;)V

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
    .line 1683
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$24$1;->this$1:Lio/rong/imlib/RongIMClient$24;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$24;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v0, :cond_0

    .line 1684
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$24$1;->this$1:Lio/rong/imlib/RongIMClient$24;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$24;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-static {p1}, Lio/rong/imlib/RongIMClient$ErrorCode;->valueOf(I)Lio/rong/imlib/RongIMClient$ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1686
    :cond_0
    return-void
.end method

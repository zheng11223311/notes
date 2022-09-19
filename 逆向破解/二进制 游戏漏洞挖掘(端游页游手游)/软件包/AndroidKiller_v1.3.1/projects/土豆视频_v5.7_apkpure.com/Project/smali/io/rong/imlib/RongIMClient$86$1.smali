.class Lio/rong/imlib/RongIMClient$86$1;
.super Lio/rong/imlib/IResultCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$86;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$86;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$86;)V
    .locals 0

    .prologue
    .line 4857
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$86$1;->this$1:Lio/rong/imlib/RongIMClient$86;

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
    .line 4861
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$86$1;->this$1:Lio/rong/imlib/RongIMClient$86;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$86;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v1, :cond_0

    .line 4862
    invoke-virtual {p1}, Lio/rong/imlib/model/RemoteModelWrap;->getContent()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/PublicServiceProfileList;

    .line 4863
    .local v0, "publicServiceInfoList":Lio/rong/imlib/model/PublicServiceProfileList;
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$86$1;->this$1:Lio/rong/imlib/RongIMClient$86;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$86;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v1, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onCallback(Ljava/lang/Object;)V

    .line 4865
    .end local v0    # "publicServiceInfoList":Lio/rong/imlib/model/PublicServiceProfileList;
    :cond_0
    return-void
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
    .line 4869
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$86$1;->this$1:Lio/rong/imlib/RongIMClient$86;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$86;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v0, :cond_0

    .line 4870
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$86$1;->this$1:Lio/rong/imlib/RongIMClient$86;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$86;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-static {p1}, Lio/rong/imlib/RongIMClient$ErrorCode;->valueOf(I)Lio/rong/imlib/RongIMClient$ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4872
    :cond_0
    return-void
.end method

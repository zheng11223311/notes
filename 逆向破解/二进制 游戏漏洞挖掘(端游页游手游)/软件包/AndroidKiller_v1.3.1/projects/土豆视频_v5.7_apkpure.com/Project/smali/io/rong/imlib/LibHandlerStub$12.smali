.class Lio/rong/imlib/LibHandlerStub$12;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Lio/rong/imlib/NativeClient$IResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub;->searchPublicService(Ljava/lang/String;IILio/rong/imlib/IResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/rong/imlib/NativeClient$IResultCallback",
        "<",
        "Lio/rong/imlib/model/PublicServiceProfileList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/LibHandlerStub;

.field final synthetic val$callback:Lio/rong/imlib/IResultCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IResultCallback;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$12;->this$0:Lio/rong/imlib/LibHandlerStub;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$12;->val$callback:Lio/rong/imlib/IResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 693
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$12;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$12$2;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$12$2;-><init>(Lio/rong/imlib/LibHandlerStub$12;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 703
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/PublicServiceProfileList;)V
    .locals 3
    .param p1, "publicServiceInfoList"    # Lio/rong/imlib/model/PublicServiceProfileList;

    .prologue
    .line 677
    new-instance v0, Lio/rong/imlib/model/RemoteModelWrap;

    invoke-direct {v0, p1}, Lio/rong/imlib/model/RemoteModelWrap;-><init>(Landroid/os/Parcelable;)V

    .line 679
    .local v0, "result":Lio/rong/imlib/model/RemoteModelWrap;
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$12;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v1, v1, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v2, Lio/rong/imlib/LibHandlerStub$12$1;

    invoke-direct {v2, p0, v0}, Lio/rong/imlib/LibHandlerStub$12$1;-><init>(Lio/rong/imlib/LibHandlerStub$12;Lio/rong/imlib/model/RemoteModelWrap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 689
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 673
    check-cast p1, Lio/rong/imlib/model/PublicServiceProfileList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imlib/LibHandlerStub$12;->onSuccess(Lio/rong/imlib/model/PublicServiceProfileList;)V

    return-void
.end method

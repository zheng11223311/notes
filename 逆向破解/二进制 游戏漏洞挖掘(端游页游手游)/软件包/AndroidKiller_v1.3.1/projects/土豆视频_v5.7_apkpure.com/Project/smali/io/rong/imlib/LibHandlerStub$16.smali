.class Lio/rong/imlib/LibHandlerStub$16;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Lio/rong/imlib/NativeClient$IResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub;->getChatRoomInfo(Ljava/lang/String;IILio/rong/imlib/IResultCallback;)V
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
        "Lio/rong/imlib/model/ChatRoomInfo;",
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
    .line 851
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$16;->this$0:Lio/rong/imlib/LibHandlerStub;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$16;->val$callback:Lio/rong/imlib/IResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 865
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$16;->val$callback:Lio/rong/imlib/IResultCallback;

    invoke-interface {v1, p1}, Lio/rong/imlib/IResultCallback;->onFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :goto_0
    return-void

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSuccess(Lio/rong/imlib/model/ChatRoomInfo;)V
    .locals 3
    .param p1, "chatRoomInfo"    # Lio/rong/imlib/model/ChatRoomInfo;

    .prologue
    .line 855
    :try_start_0
    new-instance v1, Lio/rong/imlib/model/RemoteModelWrap;

    invoke-direct {v1, p1}, Lio/rong/imlib/model/RemoteModelWrap;-><init>(Landroid/os/Parcelable;)V

    .line 856
    .local v1, "result":Lio/rong/imlib/model/RemoteModelWrap;
    iget-object v2, p0, Lio/rong/imlib/LibHandlerStub$16;->val$callback:Lio/rong/imlib/IResultCallback;

    invoke-interface {v2, v1}, Lio/rong/imlib/IResultCallback;->onComplete(Lio/rong/imlib/model/RemoteModelWrap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    .end local v1    # "result":Lio/rong/imlib/model/RemoteModelWrap;
    :goto_0
    return-void

    .line 857
    :catch_0
    move-exception v0

    .line 858
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 851
    check-cast p1, Lio/rong/imlib/model/ChatRoomInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imlib/LibHandlerStub$16;->onSuccess(Lio/rong/imlib/model/ChatRoomInfo;)V

    return-void
.end method

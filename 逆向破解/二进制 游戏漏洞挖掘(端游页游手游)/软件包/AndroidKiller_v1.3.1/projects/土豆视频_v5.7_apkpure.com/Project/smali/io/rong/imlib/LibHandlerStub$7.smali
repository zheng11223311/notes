.class Lio/rong/imlib/LibHandlerStub$7;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Lio/rong/imlib/NativeClient$IResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub;->getRemoteHistoryMessages(Lio/rong/imlib/model/Conversation;JILio/rong/imlib/IResultCallback;)V
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
        "Ljava/util/List",
        "<",
        "Lio/rong/imlib/model/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/LibHandlerStub;

.field final synthetic val$callback:Lio/rong/imlib/IResultCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IResultCallback;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$7;->this$0:Lio/rong/imlib/LibHandlerStub;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$7;->val$callback:Lio/rong/imlib/IResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 350
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$7;->val$callback:Lio/rong/imlib/IResultCallback;

    if-eqz v1, :cond_0

    .line 352
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$7;->val$callback:Lio/rong/imlib/IResultCallback;

    invoke-interface {v1, p1}, Lio/rong/imlib/IResultCallback;->onFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 347
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imlib/LibHandlerStub$7;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    iget-object v3, p0, Lio/rong/imlib/LibHandlerStub$7;->val$callback:Lio/rong/imlib/IResultCallback;

    if-eqz v3, :cond_1

    .line 362
    const/4 v1, 0x0

    .line 364
    .local v1, "result":Lio/rong/imlib/model/RemoteModelWrap;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 365
    :cond_0
    iget-object v3, p0, Lio/rong/imlib/LibHandlerStub$7;->val$callback:Lio/rong/imlib/IResultCallback;

    invoke-interface {v3, v1}, Lio/rong/imlib/IResultCallback;->onComplete(Lio/rong/imlib/model/RemoteModelWrap;)V

    .line 374
    .end local v1    # "result":Lio/rong/imlib/model/RemoteModelWrap;
    :cond_1
    :goto_0
    return-void

    .line 367
    .restart local v1    # "result":Lio/rong/imlib/model/RemoteModelWrap;
    :cond_2
    new-instance v2, Lio/rong/imlib/model/RemoteModelWrap;

    const-class v3, Lio/rong/imlib/model/Message;

    invoke-static {p1, v3}, Lio/rong/imlib/model/RongListWrap;->obtain(Ljava/util/List;Ljava/lang/Class;)Lio/rong/imlib/model/RongListWrap;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/rong/imlib/model/RemoteModelWrap;-><init>(Landroid/os/Parcelable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    .end local v1    # "result":Lio/rong/imlib/model/RemoteModelWrap;
    .local v2, "result":Lio/rong/imlib/model/RemoteModelWrap;
    :try_start_1
    iget-object v3, p0, Lio/rong/imlib/LibHandlerStub$7;->val$callback:Lio/rong/imlib/IResultCallback;

    invoke-interface {v3, v2}, Lio/rong/imlib/IResultCallback;->onComplete(Lio/rong/imlib/model/RemoteModelWrap;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .end local v2    # "result":Lio/rong/imlib/model/RemoteModelWrap;
    .restart local v1    # "result":Lio/rong/imlib/model/RemoteModelWrap;
    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 370
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "result":Lio/rong/imlib/model/RemoteModelWrap;
    .restart local v2    # "result":Lio/rong/imlib/model/RemoteModelWrap;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "result":Lio/rong/imlib/model/RemoteModelWrap;
    .restart local v1    # "result":Lio/rong/imlib/model/RemoteModelWrap;
    goto :goto_1
.end method

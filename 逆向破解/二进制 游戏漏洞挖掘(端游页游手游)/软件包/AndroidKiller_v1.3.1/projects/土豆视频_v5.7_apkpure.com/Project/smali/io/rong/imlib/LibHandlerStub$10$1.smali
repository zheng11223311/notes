.class Lio/rong/imlib/LibHandlerStub$10$1;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub$10;->onSuccess(Lio/rong/imlib/model/Discussion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/LibHandlerStub$10;

.field final synthetic val$discussion:Lio/rong/imlib/model/Discussion;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub$10;Lio/rong/imlib/model/Discussion;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$10$1;->this$1:Lio/rong/imlib/LibHandlerStub$10;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$10$1;->val$discussion:Lio/rong/imlib/model/Discussion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 593
    new-instance v1, Lio/rong/imlib/model/RemoteModelWrap;

    iget-object v2, p0, Lio/rong/imlib/LibHandlerStub$10$1;->val$discussion:Lio/rong/imlib/model/Discussion;

    invoke-direct {v1, v2}, Lio/rong/imlib/model/RemoteModelWrap;-><init>(Landroid/os/Parcelable;)V

    .line 595
    .local v1, "result":Lio/rong/imlib/model/RemoteModelWrap;
    :try_start_0
    iget-object v2, p0, Lio/rong/imlib/LibHandlerStub$10$1;->this$1:Lio/rong/imlib/LibHandlerStub$10;

    iget-object v2, v2, Lio/rong/imlib/LibHandlerStub$10;->val$callback:Lio/rong/imlib/IResultCallback;

    invoke-interface {v2, v1}, Lio/rong/imlib/IResultCallback;->onComplete(Lio/rong/imlib/model/RemoteModelWrap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :goto_0
    return-void

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

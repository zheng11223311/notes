.class Lio/rong/imlib/LibHandlerStub$27$1;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub$27;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/LibHandlerStub$27;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub$27;)V
    .locals 0

    .prologue
    .line 1241
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$27$1;->this$1:Lio/rong/imlib/LibHandlerStub$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1245
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$27$1;->this$1:Lio/rong/imlib/LibHandlerStub$27;

    iget-object v1, v1, Lio/rong/imlib/LibHandlerStub$27;->val$callback:Lio/rong/imlib/IOperationCallback;

    invoke-interface {v1}, Lio/rong/imlib/IOperationCallback;->onComplete()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    :goto_0
    return-void

    .line 1246
    :catch_0
    move-exception v0

    .line 1247
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

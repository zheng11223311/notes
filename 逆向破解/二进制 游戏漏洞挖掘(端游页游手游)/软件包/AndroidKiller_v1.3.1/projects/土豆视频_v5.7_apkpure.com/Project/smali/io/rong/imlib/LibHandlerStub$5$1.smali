.class Lio/rong/imlib/LibHandlerStub$5$1;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub$5;->onSuccess(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/LibHandlerStub$5;

.field final synthetic val$messageId:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub$5;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$5$1;->this$1:Lio/rong/imlib/LibHandlerStub$5;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$5$1;->val$messageId:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 248
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$5$1;->this$1:Lio/rong/imlib/LibHandlerStub$5;

    iget-object v1, v1, Lio/rong/imlib/LibHandlerStub$5;->val$callback:Lio/rong/imlib/ILongSendMessageCallback;

    iget-object v2, p0, Lio/rong/imlib/LibHandlerStub$5$1;->val$messageId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lio/rong/imlib/ILongSendMessageCallback;->onComplete(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

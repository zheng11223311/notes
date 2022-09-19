.class Lio/rong/imlib/LibHandlerStub$4;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Lio/rong/imlib/NativeClient$OnReceiveMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub;->setOnReceiveMessageListener(Lio/rong/imlib/OnReceiveMessageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/LibHandlerStub;

.field final synthetic val$listener:Lio/rong/imlib/OnReceiveMessageListener;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/OnReceiveMessageListener;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$4;->this$0:Lio/rong/imlib/LibHandlerStub;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$4;->val$listener:Lio/rong/imlib/OnReceiveMessageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Lio/rong/imlib/model/Message;I)V
    .locals 3
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "left"    # I

    .prologue
    .line 215
    :try_start_0
    const-string v1, "LibHandlerStub"

    const-string v2, "------OnReceiveMessageListener--------onReceived-------"

    invoke-static {p0, v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$4;->val$listener:Lio/rong/imlib/OnReceiveMessageListener;

    invoke-interface {v1, p1, p2}, Lio/rong/imlib/OnReceiveMessageListener;->onReceived(Lio/rong/imlib/model/Message;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.class Lio/rong/imlib/LibHandlerStub$5;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Lio/rong/imlib/NativeClient$IResultSendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/ILongSendMessageCallback;)Lio/rong/imlib/model/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/rong/imlib/NativeClient$IResultSendMessageCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/LibHandlerStub;

.field final synthetic val$callback:Lio/rong/imlib/ILongSendMessageCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/ILongSendMessageCallback;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$5;->this$0:Lio/rong/imlib/LibHandlerStub;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$5;->val$callback:Lio/rong/imlib/ILongSendMessageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;I)V
    .locals 2
    .param p1, "messageId"    # Ljava/lang/Integer;
    .param p2, "errorCode"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$5;->val$callback:Lio/rong/imlib/ILongSendMessageCallback;

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$5;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$5$2;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imlib/LibHandlerStub$5$2;-><init>(Lio/rong/imlib/LibHandlerStub$5;Ljava/lang/Integer;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 239
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lio/rong/imlib/LibHandlerStub$5;->onError(Ljava/lang/Integer;I)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "messageId"    # Ljava/lang/Integer;

    .prologue
    .line 242
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$5;->val$callback:Lio/rong/imlib/ILongSendMessageCallback;

    if-nez v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$5;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$5$1;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$5$1;-><init>(Lio/rong/imlib/LibHandlerStub$5;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 239
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imlib/LibHandlerStub$5;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method

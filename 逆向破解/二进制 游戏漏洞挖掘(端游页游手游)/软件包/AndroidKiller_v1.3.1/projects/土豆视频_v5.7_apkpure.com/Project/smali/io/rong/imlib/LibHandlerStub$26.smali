.class Lio/rong/imlib/LibHandlerStub$26;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Lio/rong/imlib/NativeClient$IResultProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub;->downloadMedia(Lio/rong/imlib/model/Conversation;ILjava/lang/String;Lio/rong/imlib/IDownloadMediaCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/rong/imlib/NativeClient$IResultProgressCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/LibHandlerStub;

.field final synthetic val$callback:Lio/rong/imlib/IDownloadMediaCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IDownloadMediaCallback;)V
    .locals 0

    .prologue
    .line 1182
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$26;->this$0:Lio/rong/imlib/LibHandlerStub;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$26;->val$callback:Lio/rong/imlib/IDownloadMediaCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 1216
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$26;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$26$3;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$26$3;-><init>(Lio/rong/imlib/LibHandlerStub$26;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1226
    return-void
.end method

.method public onProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 1186
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$26;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$26$1;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$26$1;-><init>(Lio/rong/imlib/LibHandlerStub$26;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1196
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1182
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imlib/LibHandlerStub$26;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "localMediaPath"    # Ljava/lang/String;

    .prologue
    .line 1200
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$26;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$26$2;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$26$2;-><init>(Lio/rong/imlib/LibHandlerStub$26;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1212
    return-void
.end method

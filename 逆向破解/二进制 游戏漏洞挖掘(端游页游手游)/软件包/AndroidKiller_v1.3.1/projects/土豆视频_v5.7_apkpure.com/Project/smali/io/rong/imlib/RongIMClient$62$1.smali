.class Lio/rong/imlib/RongIMClient$62$1;
.super Lio/rong/imlib/IDownloadMediaCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$62;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$62;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$62;)V
    .locals 0

    .prologue
    .line 3540
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$62$1;->this$1:Lio/rong/imlib/RongIMClient$62;

    invoke-direct {p0}, Lio/rong/imlib/IDownloadMediaCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3544
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$62$1;->this$1:Lio/rong/imlib/RongIMClient$62;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$62;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    if-eqz v0, :cond_0

    .line 3545
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$62$1;->this$1:Lio/rong/imlib/RongIMClient$62;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$62;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$DownloadMediaCallback;->onCallback(Ljava/lang/Object;)V

    .line 3547
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
    .line 3551
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$62$1;->this$1:Lio/rong/imlib/RongIMClient$62;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$62;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    if-eqz v0, :cond_0

    .line 3552
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$62$1;->this$1:Lio/rong/imlib/RongIMClient$62;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$62;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    invoke-static {p1}, Lio/rong/imlib/RongIMClient$ErrorCode;->valueOf(I)Lio/rong/imlib/RongIMClient$ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$DownloadMediaCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3554
    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 1
    .param p1, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3558
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$62$1;->this$1:Lio/rong/imlib/RongIMClient$62;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$62;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    if-eqz v0, :cond_0

    .line 3559
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$62$1;->this$1:Lio/rong/imlib/RongIMClient$62;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$62;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$DownloadMediaCallback;->onProgressCallback(I)V

    .line 3561
    :cond_0
    return-void
.end method

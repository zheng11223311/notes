.class Lio/rong/imlib/RongIMClient$61$1;
.super Lio/rong/imlib/IUploadCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$61;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$61;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$61;)V
    .locals 0

    .prologue
    .line 3447
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$61$1;->this$1:Lio/rong/imlib/RongIMClient$61;

    invoke-direct {p0}, Lio/rong/imlib/IUploadCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3450
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$61$1;->this$1:Lio/rong/imlib/RongIMClient$61;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$61;->val$messageContent:Lio/rong/imlib/model/MessageContent;

    instance-of v1, v1, Lio/rong/message/ImageMessage;

    if-eqz v1, :cond_2

    .line 3451
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$61$1;->this$1:Lio/rong/imlib/RongIMClient$61;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$61;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    check-cast v0, Lio/rong/message/ImageMessage;

    .line 3452
    .local v0, "content":Lio/rong/message/ImageMessage;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/message/ImageMessage;->setRemoteUri(Landroid/net/Uri;)V

    .line 3457
    .end local v0    # "content":Lio/rong/message/ImageMessage;
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$61$1;->this$1:Lio/rong/imlib/RongIMClient$61;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$61;->val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    if-eqz v1, :cond_1

    .line 3458
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$61$1;->this$1:Lio/rong/imlib/RongIMClient$61;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$61;->val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$61$1;->this$1:Lio/rong/imlib/RongIMClient$61;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient$61;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$UploadMediaCallback;->onCallback(Ljava/lang/Object;)V

    .line 3459
    :cond_1
    return-void

    .line 3453
    :cond_2
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$61$1;->this$1:Lio/rong/imlib/RongIMClient$61;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$61;->val$messageContent:Lio/rong/imlib/model/MessageContent;

    instance-of v1, v1, Lio/rong/message/FileMessage;

    if-eqz v1, :cond_0

    .line 3454
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$61$1;->this$1:Lio/rong/imlib/RongIMClient$61;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$61;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    check-cast v0, Lio/rong/message/FileMessage;

    .line 3455
    .local v0, "content":Lio/rong/message/FileMessage;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/message/FileMessage;->setRemoteUri(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onFailure(I)V
    .locals 3
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3463
    const-string/jumbo v0, "upload media client"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$61$1;->this$1:Lio/rong/imlib/RongIMClient$61;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$61;->val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    if-eqz v0, :cond_0

    .line 3466
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$61$1;->this$1:Lio/rong/imlib/RongIMClient$61;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$61;->val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    iget-object v1, p0, Lio/rong/imlib/RongIMClient$61$1;->this$1:Lio/rong/imlib/RongIMClient$61;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$61;->val$message:Lio/rong/imlib/model/Message;

    invoke-static {p1}, Lio/rong/imlib/RongIMClient$ErrorCode;->valueOf(I)Lio/rong/imlib/RongIMClient$ErrorCode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/RongIMClient$UploadMediaCallback;->onFail(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3467
    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 2
    .param p1, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3471
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$61$1;->this$1:Lio/rong/imlib/RongIMClient$61;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$61;->val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    if-eqz v0, :cond_0

    .line 3472
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$61$1;->this$1:Lio/rong/imlib/RongIMClient$61;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$61;->val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    iget-object v1, p0, Lio/rong/imlib/RongIMClient$61$1;->this$1:Lio/rong/imlib/RongIMClient$61;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$61;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v0, v1, p1}, Lio/rong/imlib/RongIMClient$UploadMediaCallback;->onProgressCallback(Lio/rong/imlib/model/Message;I)V

    .line 3473
    :cond_0
    return-void
.end method

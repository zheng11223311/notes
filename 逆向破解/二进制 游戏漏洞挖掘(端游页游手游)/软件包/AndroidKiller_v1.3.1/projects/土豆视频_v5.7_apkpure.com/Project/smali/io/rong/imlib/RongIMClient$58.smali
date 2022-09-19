.class Lio/rong/imlib/RongIMClient$58;
.super Lio/rong/imlib/RongIMClient$UploadMediaCallback;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->sendImageMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

.field final synthetic val$pushContent:Ljava/lang/String;

.field final synthetic val$pushData:Ljava/lang/String;

.field final synthetic val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

.field final synthetic val$sendMessageCallback:Lio/rong/imlib/RongIMClient$SendMessageCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback$Result;)V
    .locals 0

    .prologue
    .line 3276
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$58;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$58;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$58;->val$pushContent:Ljava/lang/String;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$58;->val$pushData:Ljava/lang/String;

    iput-object p5, p0, Lio/rong/imlib/RongIMClient$58;->val$sendMessageCallback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    iput-object p6, p0, Lio/rong/imlib/RongIMClient$58;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$UploadMediaCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 4
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 3302
    sget-object v0, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {p1, v0}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 3303
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$58;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v1

    sget-object v2, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lio/rong/imlib/RongIMClient;->setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 3304
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$58;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    if-eqz v0, :cond_0

    .line 3305
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$58;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient$SendImageMessageCallback;->onFail(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3306
    :cond_0
    return-void
.end method

.method public onProgress(Lio/rong/imlib/model/Message;I)V
    .locals 1
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "progress"    # I

    .prologue
    .line 3279
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$58;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    if-eqz v0, :cond_0

    .line 3280
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$58;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient$SendImageMessageCallback;->onProgressCallback(Lio/rong/imlib/model/Message;I)V

    .line 3281
    :cond_0
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 6
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 3285
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$58;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$58;->val$pushContent:Ljava/lang/String;

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$58;->val$pushData:Ljava/lang/String;

    iget-object v4, p0, Lio/rong/imlib/RongIMClient$58;->val$sendMessageCallback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    new-instance v5, Lio/rong/imlib/RongIMClient$58$1;

    invoke-direct {v5, p0}, Lio/rong/imlib/RongIMClient$58$1;-><init>(Lio/rong/imlib/RongIMClient$58;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 3298
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3276
    check-cast p1, Lio/rong/imlib/model/Message;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imlib/RongIMClient$58;->onSuccess(Lio/rong/imlib/model/Message;)V

    return-void
.end method

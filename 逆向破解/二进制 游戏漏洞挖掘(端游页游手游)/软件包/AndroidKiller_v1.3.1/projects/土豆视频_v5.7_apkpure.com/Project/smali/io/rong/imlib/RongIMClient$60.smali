.class Lio/rong/imlib/RongIMClient$60;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->sendImageMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Lio/rong/imlib/model/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

.field final synthetic val$pushContent:Ljava/lang/String;

.field final synthetic val$pushData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3365
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$60;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$60;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$60;->val$pushContent:Ljava/lang/String;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$60;->val$pushData:Ljava/lang/String;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 3383
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$60;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    if-eqz v0, :cond_0

    .line 3384
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$60;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3385
    :cond_0
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 6
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 3369
    if-eqz p1, :cond_1

    .line 3370
    sget-object v1, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {p1, v1}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 3371
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$60;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v2

    sget-object v3, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lio/rong/imlib/RongIMClient;->setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 3372
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$60;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    if-eqz v1, :cond_0

    .line 3373
    new-instance v0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;

    iget-object v1, p0, Lio/rong/imlib/RongIMClient$60;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$60;->val$pushContent:Ljava/lang/String;

    iget-object v4, p0, Lio/rong/imlib/RongIMClient$60;->val$pushData:Ljava/lang/String;

    iget-object v5, p0, Lio/rong/imlib/RongIMClient$60;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;)V

    .line 3374
    .local v0, "watcher":Lio/rong/imlib/RongIMClient$uploadImageStatusListener;
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$60;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    invoke-virtual {v1, p1, v0}, Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;->onAttachedCallback(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$uploadImageStatusListener;)V

    .line 3379
    .end local v0    # "watcher":Lio/rong/imlib/RongIMClient$uploadImageStatusListener;
    :cond_0
    return-void

    .line 3377
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Message Content \u4e3a\u7a7a\uff01"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3365
    check-cast p1, Lio/rong/imlib/model/Message;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imlib/RongIMClient$60;->onSuccess(Lio/rong/imlib/model/Message;)V

    return-void
.end method

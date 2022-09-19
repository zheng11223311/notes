.class Lio/rong/imlib/RongIMClient$uploadImageStatusListener$1;
.super Lio/rong/imlib/RongIMClient$SendMessageCallback;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->success()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$uploadImageStatusListener;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$uploadImageStatusListener;)V
    .locals 0

    .prologue
    .line 5936
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener$1;->this$1:Lio/rong/imlib/RongIMClient$uploadImageStatusListener;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$SendMessageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 4
    .param p1, "messageId"    # Ljava/lang/Integer;
    .param p2, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 5939
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener$1;->this$1:Lio/rong/imlib/RongIMClient$uploadImageStatusListener;

    invoke-static {v0}, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->access$2200(Lio/rong/imlib/RongIMClient$uploadImageStatusListener;)Lio/rong/imlib/model/Message;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 5940
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener$1;->this$1:Lio/rong/imlib/RongIMClient$uploadImageStatusListener;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lio/rong/imlib/RongIMClient;->setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 5941
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener$1;->this$1:Lio/rong/imlib/RongIMClient$uploadImageStatusListener;

    invoke-static {v0}, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->access$2300(Lio/rong/imlib/RongIMClient$uploadImageStatusListener;)Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5942
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener$1;->this$1:Lio/rong/imlib/RongIMClient$uploadImageStatusListener;

    invoke-static {v0}, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->access$2300(Lio/rong/imlib/RongIMClient$uploadImageStatusListener;)Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener$1;->this$1:Lio/rong/imlib/RongIMClient$uploadImageStatusListener;

    invoke-static {v1}, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->access$2200(Lio/rong/imlib/RongIMClient$uploadImageStatusListener;)Lio/rong/imlib/model/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;->onFail(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 5943
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "messageId"    # Ljava/lang/Integer;

    .prologue
    .line 5947
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener$1;->this$1:Lio/rong/imlib/RongIMClient$uploadImageStatusListener;

    invoke-static {v0}, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->access$2200(Lio/rong/imlib/RongIMClient$uploadImageStatusListener;)Lio/rong/imlib/model/Message;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Message$SentStatus;->SENT:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 5948
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener$1;->this$1:Lio/rong/imlib/RongIMClient$uploadImageStatusListener;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lio/rong/imlib/model/Message$SentStatus;->SENT:Lio/rong/imlib/model/Message$SentStatus;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lio/rong/imlib/RongIMClient;->setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 5949
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener$1;->this$1:Lio/rong/imlib/RongIMClient$uploadImageStatusListener;

    invoke-static {v0}, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->access$2300(Lio/rong/imlib/RongIMClient$uploadImageStatusListener;)Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5950
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener$1;->this$1:Lio/rong/imlib/RongIMClient$uploadImageStatusListener;

    invoke-static {v0}, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->access$2300(Lio/rong/imlib/RongIMClient$uploadImageStatusListener;)Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imlib/RongIMClient$uploadImageStatusListener$1;->this$1:Lio/rong/imlib/RongIMClient$uploadImageStatusListener;

    invoke-static {v1}, Lio/rong/imlib/RongIMClient$uploadImageStatusListener;->access$2200(Lio/rong/imlib/RongIMClient$uploadImageStatusListener;)Lio/rong/imlib/model/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;->onSuccess(Lio/rong/imlib/model/Message;)V

    .line 5951
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 5936
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imlib/RongIMClient$uploadImageStatusListener$1;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method

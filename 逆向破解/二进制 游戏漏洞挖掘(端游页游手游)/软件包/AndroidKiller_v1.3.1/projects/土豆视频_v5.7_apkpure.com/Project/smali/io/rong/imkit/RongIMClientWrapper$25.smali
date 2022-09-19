.class Lio/rong/imkit/RongIMClientWrapper$25;
.super Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;
.source "RongIMClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIMClientWrapper;->sendImageMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/RongIMClientWrapper;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

.field final synthetic val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;Lio/rong/imlib/RongIMClient$ResultCallback$Result;)V
    .locals 0

    .prologue
    .line 1907
    iput-object p1, p0, Lio/rong/imkit/RongIMClientWrapper$25;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iput-object p2, p0, Lio/rong/imkit/RongIMClientWrapper$25;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    iput-object p3, p0, Lio/rong/imkit/RongIMClientWrapper$25;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttached(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$uploadImageStatusListener;)V
    .locals 1
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "listener"    # Lio/rong/imlib/RongIMClient$uploadImageStatusListener;

    .prologue
    .line 1911
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$25;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v0, v0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1913
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$25;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    if-eqz v0, :cond_0

    .line 1914
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$25;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;->onAttached(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$uploadImageStatusListener;)V

    .line 1915
    :cond_0
    return-void
.end method

.method public onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 1931
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$25;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    invoke-static {v0, p1, p2}, Lio/rong/imkit/RongIMClientWrapper;->access$000(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1933
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$25;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    if-eqz v0, :cond_0

    .line 1934
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$25;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1935
    :cond_0
    return-void
.end method

.method public onProgress(Lio/rong/imlib/model/Message;I)V
    .locals 2
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "progress"    # I

    .prologue
    .line 1920
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$25;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v0, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;

    invoke-virtual {v0, p1}, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;->setMessage(Lio/rong/imlib/model/Message;)V

    .line 1921
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$25;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v0, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;

    invoke-virtual {v0, p2}, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;->setProgress(I)V

    .line 1922
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$25;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v0, v0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper$25;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1924
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$25;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    if-eqz v0, :cond_0

    .line 1925
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$25;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;->onProgress(Lio/rong/imlib/model/Message;I)V

    .line 1926
    :cond_0
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 2
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 1940
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$25;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lio/rong/imkit/RongIMClientWrapper;->access$000(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1942
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$25;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    if-eqz v0, :cond_0

    .line 1943
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$25;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;->onSuccess(Lio/rong/imlib/model/Message;)V

    .line 1944
    :cond_0
    return-void
.end method

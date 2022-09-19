.class Lio/rong/imkit/RongIMClientWrapper$23;
.super Lio/rong/imlib/RongIMClient$SendImageMessageCallback;
.source "RongIMClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIMClientWrapper;->sendImageMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/RongIMClientWrapper;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

.field final synthetic val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback$Result;)V
    .locals 0

    .prologue
    .line 1766
    iput-object p1, p0, Lio/rong/imkit/RongIMClientWrapper$23;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iput-object p2, p0, Lio/rong/imkit/RongIMClientWrapper$23;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    iput-object p3, p0, Lio/rong/imkit/RongIMClientWrapper$23;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$SendImageMessageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttached(Lio/rong/imlib/model/Message;)V
    .locals 1
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 1771
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$23;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v0, v0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1773
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$23;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$23;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$SendImageMessageCallback;->onAttached(Lio/rong/imlib/model/Message;)V

    .line 1775
    :cond_0
    return-void
.end method

.method public onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 1791
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$23;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    invoke-static {v0, p1, p2}, Lio/rong/imkit/RongIMClientWrapper;->access$000(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1793
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$23;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$23;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient$SendImageMessageCallback;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1795
    :cond_0
    return-void
.end method

.method public onProgress(Lio/rong/imlib/model/Message;I)V
    .locals 2
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "progress"    # I

    .prologue
    .line 1780
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$23;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v0, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;

    invoke-virtual {v0, p1}, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;->setMessage(Lio/rong/imlib/model/Message;)V

    .line 1781
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$23;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v0, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;

    invoke-virtual {v0, p2}, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;->setProgress(I)V

    .line 1782
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$23;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v0, v0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper$23;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1784
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$23;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    if-eqz v0, :cond_0

    .line 1785
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$23;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient$SendImageMessageCallback;->onProgress(Lio/rong/imlib/model/Message;I)V

    .line 1786
    :cond_0
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 2
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 1800
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$23;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lio/rong/imkit/RongIMClientWrapper;->access$000(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1802
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$23;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    if-eqz v0, :cond_0

    .line 1803
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$23;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$SendImageMessageCallback;->onSuccess(Lio/rong/imlib/model/Message;)V

    .line 1804
    :cond_0
    return-void
.end method

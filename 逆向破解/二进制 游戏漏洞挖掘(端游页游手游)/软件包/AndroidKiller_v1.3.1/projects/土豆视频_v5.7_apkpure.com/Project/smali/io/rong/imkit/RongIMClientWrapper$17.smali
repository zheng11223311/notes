.class Lio/rong/imkit/RongIMClientWrapper$17;
.super Lio/rong/imlib/RongIMClient$SendMessageCallback;
.source "RongIMClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIMClientWrapper;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/RongIMClientWrapper;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

.field final synthetic val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Lio/rong/imlib/RongIMClient$SendMessageCallback;)V
    .locals 0

    .prologue
    .line 1457
    iput-object p1, p0, Lio/rong/imkit/RongIMClientWrapper$17;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iput-object p2, p0, Lio/rong/imkit/RongIMClientWrapper$17;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iput-object p3, p0, Lio/rong/imkit/RongIMClientWrapper$17;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$SendMessageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 2
    .param p1, "messageId"    # Ljava/lang/Integer;
    .param p2, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 1474
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$17;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v0, Lio/rong/imlib/model/Message;

    sget-object v1, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 1475
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper$17;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$17;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v0, Lio/rong/imlib/model/Message;

    invoke-static {v1, v0, p2}, Lio/rong/imkit/RongIMClientWrapper;->access$000(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1478
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$17;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$17;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient$SendMessageCallback;->onError(Ljava/lang/Integer;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1480
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "messageId"    # Ljava/lang/Integer;

    .prologue
    .line 1460
    iget-object v2, p0, Lio/rong/imkit/RongIMClientWrapper$17;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v2, Lio/rong/imlib/model/Message;

    sget-object v3, Lio/rong/imlib/model/Message$SentStatus;->SENT:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v2, v3}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 1461
    sget-object v2, Lio/rong/imkit/RongIMClientWrapper;->sS:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v2, v2, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lio/rong/imlib/RongIMClient;->getSendTimeByMessageId(I)J

    move-result-wide v0

    .line 1462
    .local v0, "tt":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1463
    iget-object v2, p0, Lio/rong/imkit/RongIMClientWrapper$17;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v2, Lio/rong/imlib/model/Message;

    invoke-virtual {v2, v0, v1}, Lio/rong/imlib/model/Message;->setSentTime(J)V

    .line 1465
    :cond_0
    iget-object v3, p0, Lio/rong/imkit/RongIMClientWrapper$17;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v2, p0, Lio/rong/imkit/RongIMClientWrapper$17;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v2, Lio/rong/imlib/model/Message;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lio/rong/imkit/RongIMClientWrapper;->access$000(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1468
    iget-object v2, p0, Lio/rong/imkit/RongIMClientWrapper$17;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    if-eqz v2, :cond_1

    .line 1469
    iget-object v2, p0, Lio/rong/imkit/RongIMClientWrapper$17;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    invoke-virtual {v2, p1}, Lio/rong/imlib/RongIMClient$SendMessageCallback;->onSuccess(Ljava/lang/Object;)V

    .line 1470
    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1457
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/RongIMClientWrapper$17;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method

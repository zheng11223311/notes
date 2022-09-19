.class Lio/rong/imkit/RongIMClientWrapper$20;
.super Lio/rong/imlib/RongIMClient$SendMessageCallback;
.source "RongIMClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIMClientWrapper;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V
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
    .line 1610
    iput-object p1, p0, Lio/rong/imkit/RongIMClientWrapper$20;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iput-object p2, p0, Lio/rong/imkit/RongIMClientWrapper$20;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iput-object p3, p0, Lio/rong/imkit/RongIMClientWrapper$20;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$SendMessageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 2
    .param p1, "messageId"    # Ljava/lang/Integer;
    .param p2, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 1631
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$20;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 1641
    :cond_0
    :goto_0
    return-void

    .line 1634
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$20;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v0, Lio/rong/imlib/model/Message;

    sget-object v1, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 1635
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper$20;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$20;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v0, Lio/rong/imlib/model/Message;

    invoke-static {v1, v0, p2}, Lio/rong/imkit/RongIMClientWrapper;->access$000(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1639
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$20;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    if-eqz v0, :cond_0

    .line 1640
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper$20;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient$SendMessageCallback;->onError(Ljava/lang/Integer;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "messageId"    # Ljava/lang/Integer;

    .prologue
    .line 1614
    :try_start_0
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper$20;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v1, Lio/rong/imlib/model/Message;

    sget-object v4, Lio/rong/imlib/model/Message$SentStatus;->SENT:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v1, v4}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 1615
    sget-object v1, Lio/rong/imkit/RongIMClientWrapper;->sS:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v1, v1, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lio/rong/imlib/RongIMClient;->getSendTimeByMessageId(I)J

    move-result-wide v2

    .line 1616
    .local v2, "tt":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 1617
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper$20;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v1, Lio/rong/imlib/model/Message;

    invoke-virtual {v1, v2, v3}, Lio/rong/imlib/model/Message;->setSentTime(J)V

    .line 1619
    :cond_0
    iget-object v4, p0, Lio/rong/imkit/RongIMClientWrapper$20;->this$0:Lio/rong/imkit/RongIMClientWrapper;

    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper$20;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v1, Lio/rong/imlib/model/Message;

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lio/rong/imkit/RongIMClientWrapper;->access$000(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1621
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper$20;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    if-eqz v1, :cond_1

    .line 1622
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper$20;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    invoke-virtual {v1, p1}, Lio/rong/imlib/RongIMClient$SendMessageCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1626
    .end local v2    # "tt":J
    :cond_1
    :goto_0
    return-void

    .line 1623
    :catch_0
    move-exception v0

    .line 1624
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1610
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/RongIMClientWrapper$20;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method

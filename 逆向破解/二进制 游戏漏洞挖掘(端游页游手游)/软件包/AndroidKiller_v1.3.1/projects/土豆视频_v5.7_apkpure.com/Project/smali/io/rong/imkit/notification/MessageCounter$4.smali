.class Lio/rong/imkit/notification/MessageCounter$4;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "MessageCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/notification/MessageCounter;->onEventBackgroundThread(Lio/rong/imkit/model/Event$OnReceiveMessageEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/notification/MessageCounter;

.field final synthetic val$counter:Lio/rong/imkit/notification/MessageCounter$Counter;


# direct methods
.method constructor <init>(Lio/rong/imkit/notification/MessageCounter;Lio/rong/imkit/notification/MessageCounter$Counter;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lio/rong/imkit/notification/MessageCounter$4;->this$0:Lio/rong/imkit/notification/MessageCounter;

    iput-object p2, p0, Lio/rong/imkit/notification/MessageCounter$4;->val$counter:Lio/rong/imkit/notification/MessageCounter$Counter;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 181
    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "msgCount"    # Ljava/lang/Integer;

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, "currentConversationMsgCount":I
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongContext;->getCurrentConversationList()Ljava/util/List;

    move-result-object v3

    .line 169
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/model/ConversationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/ConversationInfo;

    .line 170
    .local v0, "conversationInfo":Lio/rong/imkit/model/ConversationInfo;
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v5

    invoke-virtual {v0}, Lio/rong/imkit/model/ConversationInfo;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v0}, Lio/rong/imkit/model/ConversationInfo;->getTargetId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lio/rong/imkit/RongIMClientWrapper;->getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 171
    goto :goto_0

    .line 173
    .end local v0    # "conversationInfo":Lio/rong/imkit/model/ConversationInfo;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v4, v5, v1

    .line 174
    .local v4, "totalCount":I
    iget-object v5, p0, Lio/rong/imkit/notification/MessageCounter$4;->val$counter:Lio/rong/imkit/notification/MessageCounter$Counter;

    iput v4, v5, Lio/rong/imkit/notification/MessageCounter$Counter;->mCount:I

    .line 175
    iget-object v5, p0, Lio/rong/imkit/notification/MessageCounter$4;->val$counter:Lio/rong/imkit/notification/MessageCounter$Counter;

    invoke-virtual {v5, v4}, Lio/rong/imkit/notification/MessageCounter$Counter;->onMessageIncreased(I)V

    .line 176
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 163
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/notification/MessageCounter$4;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method

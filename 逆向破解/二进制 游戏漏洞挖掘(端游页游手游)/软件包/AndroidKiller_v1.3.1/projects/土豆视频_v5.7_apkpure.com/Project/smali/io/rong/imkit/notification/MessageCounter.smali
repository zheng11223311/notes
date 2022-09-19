.class public Lio/rong/imkit/notification/MessageCounter;
.super Ljava/lang/Object;
.source "MessageCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/notification/MessageCounter$Counter;
    }
.end annotation


# instance fields
.field mContext:Lio/rong/imkit/RongContext;

.field mCounters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/notification/MessageCounter$Counter;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lio/rong/imkit/RongContext;)V
    .locals 2
    .param p1, "context"    # Lio/rong/imkit/RongContext;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lio/rong/imkit/notification/MessageCounter;->mContext:Lio/rong/imkit/RongContext;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/notification/MessageCounter;->mCounters:Ljava/util/List;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/rong/imkit/notification/MessageCounter;->mHandler:Landroid/os/Handler;

    .line 36
    invoke-virtual {p1}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 37
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    iget-object v2, p0, Lio/rong/imkit/notification/MessageCounter;->mCounters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/notification/MessageCounter$Counter;

    .line 132
    .local v1, "messageCounter":Lio/rong/imkit/notification/MessageCounter$Counter;
    iput v3, v1, Lio/rong/imkit/notification/MessageCounter$Counter;->mCount:I

    .line 133
    invoke-virtual {v1, v3}, Lio/rong/imkit/notification/MessageCounter$Counter;->onMessageIncreased(I)V

    goto :goto_0

    .line 135
    .end local v1    # "messageCounter":Lio/rong/imkit/notification/MessageCounter$Counter;
    :cond_0
    return-void
.end method

.method public onEvent(Lio/rong/imkit/model/Event$ConversationRemoveEvent;)V
    .locals 4
    .param p1, "event"    # Lio/rong/imkit/model/Event$ConversationRemoveEvent;

    .prologue
    .line 194
    iget-object v0, p0, Lio/rong/imkit/notification/MessageCounter;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/model/Event$ConversationUnreadEvent;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationRemoveEvent;->getType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationRemoveEvent;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/rong/imkit/model/Event$ConversationUnreadEvent;-><init>(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method public onEvent(Lio/rong/imkit/model/Event$ConversationUnreadEvent;)V
    .locals 6
    .param p1, "event"    # Lio/rong/imkit/model/Event$ConversationUnreadEvent;

    .prologue
    .line 198
    iget-object v3, p0, Lio/rong/imkit/notification/MessageCounter;->mCounters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/notification/MessageCounter$Counter;

    .line 199
    .local v0, "counter":Lio/rong/imkit/notification/MessageCounter$Counter;
    invoke-virtual {v0}, Lio/rong/imkit/notification/MessageCounter$Counter;->getFilter()Lio/rong/imkit/model/ConversationTypeFilter;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/model/ConversationTypeFilter;->getLevel()Lio/rong/imkit/model/ConversationTypeFilter$Level;

    move-result-object v3

    sget-object v4, Lio/rong/imkit/model/ConversationTypeFilter$Level;->ALL:Lio/rong/imkit/model/ConversationTypeFilter$Level;

    invoke-virtual {v3, v4}, Lio/rong/imkit/model/ConversationTypeFilter$Level;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 201
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v3

    new-instance v4, Lio/rong/imkit/notification/MessageCounter$5;

    invoke-direct {v4, p0, v0}, Lio/rong/imkit/notification/MessageCounter$5;-><init>(Lio/rong/imkit/notification/MessageCounter;Lio/rong/imkit/notification/MessageCounter$Counter;)V

    const/4 v5, 0x0

    new-array v5, v5, [Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v3, v4, v5}, Lio/rong/imkit/RongIMClientWrapper;->getUnreadCount(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    goto :goto_0

    .line 214
    :cond_1
    const-string v3, "onEvent(Event.ConversationUnreadEvent)"

    const-string v4, "RongIM.getInstance() is null"

    invoke-static {p0, v3, v4}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_2
    invoke-virtual {v0}, Lio/rong/imkit/notification/MessageCounter$Counter;->getFilter()Lio/rong/imkit/model/ConversationTypeFilter;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/model/ConversationTypeFilter;->getLevel()Lio/rong/imkit/model/ConversationTypeFilter$Level;

    move-result-object v3

    sget-object v4, Lio/rong/imkit/model/ConversationTypeFilter$Level;->CONVERSATION_TYPE:Lio/rong/imkit/model/ConversationTypeFilter$Level;

    invoke-virtual {v3, v4}, Lio/rong/imkit/model/ConversationTypeFilter$Level;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    invoke-virtual {v0}, Lio/rong/imkit/notification/MessageCounter$Counter;->getFilter()Lio/rong/imkit/model/ConversationTypeFilter;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/model/ConversationTypeFilter;->getConversationTypeList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lio/rong/imkit/notification/MessageCounter$Counter;->getFilter()Lio/rong/imkit/model/ConversationTypeFilter;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/model/ConversationTypeFilter;->getConversationTypeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/rong/imlib/model/Conversation$ConversationType;

    .line 219
    .local v2, "types":[Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 220
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v3

    new-instance v4, Lio/rong/imkit/notification/MessageCounter$6;

    invoke-direct {v4, p0, v0}, Lio/rong/imkit/notification/MessageCounter$6;-><init>(Lio/rong/imkit/notification/MessageCounter;Lio/rong/imkit/notification/MessageCounter$Counter;)V

    invoke-virtual {v3, v2, v4}, Lio/rong/imkit/RongIMClientWrapper;->getUnreadCount([Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto/16 :goto_0

    .line 233
    :cond_3
    const-string v3, "onEvent(Event.ConversationUnreadEvent)"

    const-string v4, "RongIM.getInstance() is null"

    invoke-static {p0, v3, v4}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 237
    .end local v0    # "counter":Lio/rong/imkit/notification/MessageCounter$Counter;
    .end local v2    # "types":[Lio/rong/imlib/model/Conversation$ConversationType;
    :cond_4
    return-void
.end method

.method public onEventBackgroundThread(Lio/rong/imkit/model/Event$OnReceiveMessageEvent;)V
    .locals 9
    .param p1, "receiveMessageEvent"    # Lio/rong/imkit/model/Event$OnReceiveMessageEvent;

    .prologue
    .line 139
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v4

    .line 140
    .local v4, "message":Lio/rong/imlib/model/Message;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongContext;->getCurrentConversationList()Ljava/util/List;

    move-result-object v3

    .line 141
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/model/ConversationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/ConversationInfo;

    .line 142
    .local v0, "conversationInfo":Lio/rong/imkit/model/ConversationInfo;
    invoke-virtual {v4}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v7

    invoke-virtual {v0}, Lio/rong/imkit/model/ConversationInfo;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v8

    if-ne v7, v8, :cond_0

    invoke-virtual {v0}, Lio/rong/imkit/model/ConversationInfo;->getTargetId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lio/rong/imkit/model/ConversationInfo;->getTargetId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 191
    .end local v0    # "conversationInfo":Lio/rong/imkit/model/ConversationInfo;
    :cond_1
    return-void

    .line 147
    :cond_2
    invoke-virtual {v4}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 148
    invoke-virtual {v4}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lio/rong/imlib/MessageTag;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/MessageTag;

    .line 149
    .local v5, "msgTag":Lio/rong/imlib/MessageTag;
    if-eqz v5, :cond_1

    invoke-interface {v5}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 150
    iget-object v7, p0, Lio/rong/imkit/notification/MessageCounter;->mCounters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/notification/MessageCounter$Counter;

    .line 151
    .local v1, "counter":Lio/rong/imkit/notification/MessageCounter$Counter;
    invoke-virtual {v1, v4}, Lio/rong/imkit/notification/MessageCounter$Counter;->isCount(Lio/rong/imlib/model/Message;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 152
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getLeft()I

    move-result v7

    if-eqz v7, :cond_4

    .line 153
    iget-object v7, p0, Lio/rong/imkit/notification/MessageCounter;->mHandler:Landroid/os/Handler;

    new-instance v8, Lio/rong/imkit/notification/MessageCounter$3;

    invoke-direct {v8, p0, v1}, Lio/rong/imkit/notification/MessageCounter$3;-><init>(Lio/rong/imkit/notification/MessageCounter;Lio/rong/imkit/notification/MessageCounter$Counter;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 161
    :cond_4
    invoke-virtual {v1}, Lio/rong/imkit/notification/MessageCounter$Counter;->getFilter()Lio/rong/imkit/model/ConversationTypeFilter;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/model/ConversationTypeFilter;->getConversationTypeList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Lio/rong/imkit/notification/MessageCounter$Counter;->getFilter()Lio/rong/imkit/model/ConversationTypeFilter;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imkit/model/ConversationTypeFilter;->getConversationTypeList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lio/rong/imlib/model/Conversation$ConversationType;

    .line 162
    .local v6, "types":[Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 163
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v7

    new-instance v8, Lio/rong/imkit/notification/MessageCounter$4;

    invoke-direct {v8, p0, v1}, Lio/rong/imkit/notification/MessageCounter$4;-><init>(Lio/rong/imkit/notification/MessageCounter;Lio/rong/imkit/notification/MessageCounter$Counter;)V

    invoke-virtual {v7, v6, v8}, Lio/rong/imkit/RongIMClientWrapper;->getUnreadCount([Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0

    .line 184
    :cond_5
    const-string/jumbo v7, "registerMessageCounter"

    const-string v8, "RongIM.getInstance() is null"

    invoke-static {p0, v7, v8}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerMessageCounter(Lio/rong/imkit/notification/MessageCounter$Counter;)V
    .locals 4
    .param p1, "counter"    # Lio/rong/imkit/notification/MessageCounter$Counter;

    .prologue
    .line 66
    iget-object v1, p0, Lio/rong/imkit/notification/MessageCounter;->mCounters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p1}, Lio/rong/imkit/notification/MessageCounter$Counter;->getFilter()Lio/rong/imkit/model/ConversationTypeFilter;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/model/ConversationTypeFilter;->getLevel()Lio/rong/imkit/model/ConversationTypeFilter$Level;

    move-result-object v1

    sget-object v2, Lio/rong/imkit/model/ConversationTypeFilter$Level;->ALL:Lio/rong/imkit/model/ConversationTypeFilter$Level;

    invoke-virtual {v1, v2}, Lio/rong/imkit/model/ConversationTypeFilter$Level;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 69
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/notification/MessageCounter$1;

    invoke-direct {v2, p0, p1}, Lio/rong/imkit/notification/MessageCounter$1;-><init>(Lio/rong/imkit/notification/MessageCounter;Lio/rong/imkit/notification/MessageCounter$Counter;)V

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongIMClientWrapper;->getTotalUnreadCount(Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string/jumbo v1, "registerMessageCounter"

    const-string v2, "RongIM.getInstance() is null"

    invoke-static {p0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p1}, Lio/rong/imkit/notification/MessageCounter$Counter;->getFilter()Lio/rong/imkit/model/ConversationTypeFilter;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/model/ConversationTypeFilter;->getLevel()Lio/rong/imkit/model/ConversationTypeFilter$Level;

    move-result-object v1

    sget-object v2, Lio/rong/imkit/model/ConversationTypeFilter$Level;->CONVERSATION_TYPE:Lio/rong/imkit/model/ConversationTypeFilter$Level;

    invoke-virtual {v1, v2}, Lio/rong/imkit/model/ConversationTypeFilter$Level;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p1}, Lio/rong/imkit/notification/MessageCounter$Counter;->getFilter()Lio/rong/imkit/model/ConversationTypeFilter;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/model/ConversationTypeFilter;->getConversationTypeList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imkit/notification/MessageCounter$Counter;->getFilter()Lio/rong/imkit/model/ConversationTypeFilter;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/model/ConversationTypeFilter;->getConversationTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/rong/imlib/model/Conversation$ConversationType;

    .line 97
    .local v0, "types":[Lio/rong/imlib/model/Conversation$ConversationType;
    const-string/jumbo v1, "registerMessageCounter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RongIM.getInstance() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 100
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/notification/MessageCounter$2;

    invoke-direct {v2, p0, p1}, Lio/rong/imkit/notification/MessageCounter$2;-><init>(Lio/rong/imkit/notification/MessageCounter;Lio/rong/imkit/notification/MessageCounter$Counter;)V

    invoke-virtual {v1, v0, v2}, Lio/rong/imkit/RongIMClientWrapper;->getUnreadCount([Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0

    .line 121
    :cond_3
    const-string/jumbo v1, "registerMessageCounter"

    const-string v2, "RongIM.getInstance() is null"

    invoke-static {p0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterMessageCounter(Lio/rong/imkit/notification/MessageCounter;)V
    .locals 1
    .param p1, "counter"    # Lio/rong/imkit/notification/MessageCounter;

    .prologue
    .line 127
    iget-object v0, p0, Lio/rong/imkit/notification/MessageCounter;->mCounters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

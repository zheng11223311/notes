.class public Lio/rong/imkit/RongIMClientWrapper;
.super Lio/rong/imlib/RongIMClient;
.source "RongIMClientWrapper.java"


# static fields
.field private static mConnectionStatusListener:Lio/rong/imlib/RongIMClient$ConnectionStatusListener;

.field static sConnectionStatusListener:Lio/rong/imlib/RongIMClient$ConnectionStatusListener;

.field static sMemberSelectListener:Lio/rong/imkit/RongIM$OnSelectMemberListener;

.field static sMessageListener:Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;

.field static sS:Lio/rong/imkit/RongIMClientWrapper;


# instance fields
.field mClient:Lio/rong/imlib/RongIMClient;

.field mContext:Lio/rong/imkit/RongContext;

.field mRegCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lio/rong/imkit/RongIMClientWrapper$3;

    invoke-direct {v0}, Lio/rong/imkit/RongIMClientWrapper$3;-><init>()V

    sput-object v0, Lio/rong/imkit/RongIMClientWrapper;->mConnectionStatusListener:Lio/rong/imlib/RongIMClient$ConnectionStatusListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lio/rong/imlib/RongIMClient;-><init>()V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .param p0, "x0"    # Lio/rong/imkit/RongIMClientWrapper;
    .param p1, "x1"    # Lio/rong/imlib/model/Message;
    .param p2, "x2"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lio/rong/imkit/RongIMClientWrapper;->filterSentMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    return-void
.end method

.method public static connect(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)Lio/rong/imkit/RongIMClientWrapper;
    .locals 4
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "callback"    # Lio/rong/imlib/RongIMClient$ConnectCallback;

    .prologue
    .line 114
    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$1;

    invoke-direct {v1, p1}, Lio/rong/imkit/RongIMClientWrapper$1;-><init>(Lio/rong/imlib/RongIMClient$ConnectCallback;)V

    invoke-static {p0, v1}, Lio/rong/imlib/RongIMClient;->connect(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)Lio/rong/imlib/RongIMClient;

    move-result-object v0

    .line 139
    .local v0, "client":Lio/rong/imlib/RongIMClient;
    if-eqz v0, :cond_0

    .line 140
    invoke-static {v0}, Lio/rong/imkit/RongIMClientWrapper;->initConnectedData(Lio/rong/imlib/RongIMClient;)V

    .line 142
    :cond_0
    sget-object v1, Lio/rong/imkit/RongIMClientWrapper;->sS:Lio/rong/imkit/RongIMClientWrapper;

    iput-object v0, v1, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    .line 143
    const-string v1, "RongIMClientWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sget-object v1, Lio/rong/imkit/RongIMClientWrapper;->sS:Lio/rong/imkit/RongIMClientWrapper;

    return-object v1
.end method

.method private filterSendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "messageContent"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 2065
    new-instance v0, Lio/rong/imlib/model/Message;

    invoke-direct {v0}, Lio/rong/imlib/model/Message;-><init>()V

    .line 2066
    .local v0, "message":Lio/rong/imlib/model/Message;
    invoke-virtual {v0, p1}, Lio/rong/imlib/model/Message;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 2067
    invoke-virtual {v0, p2}, Lio/rong/imlib/model/Message;->setTargetId(Ljava/lang/String;)V

    .line 2068
    invoke-virtual {v0, p3}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 2070
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getOnSendMessageListener()Lio/rong/imkit/RongIM$OnSendMessageListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2071
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getOnSendMessageListener()Lio/rong/imkit/RongIM$OnSendMessageListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/rong/imkit/RongIM$OnSendMessageListener;->onSend(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 2074
    :cond_0
    return-object v0
.end method

.method private filterSendMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;
    .locals 1
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 1978
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getOnSendMessageListener()Lio/rong/imkit/RongIM$OnSendMessageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1979
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getOnSendMessageListener()Lio/rong/imkit/RongIM$OnSendMessageListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/rong/imkit/RongIM$OnSendMessageListener;->onSend(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object p1

    .line 1982
    :cond_0
    return-object p1
.end method

.method private filterSentMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 11
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    const/4 v10, 0x1

    .line 1987
    const/4 v8, 0x0

    .line 1988
    .local v8, "sentMessageErrorCode":Lio/rong/imkit/RongIM$SentMessageErrorCode;
    const/4 v7, 0x0

    .line 1990
    .local v7, "isExecute":Z
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getOnSendMessageListener()Lio/rong/imkit/RongIM$OnSendMessageListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1992
    if-eqz p2, :cond_0

    .line 1993
    invoke-virtual {p2}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v0

    invoke-static {v0}, Lio/rong/imkit/RongIM$SentMessageErrorCode;->setValue(I)Lio/rong/imkit/RongIM$SentMessageErrorCode;

    move-result-object v8

    .line 1996
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getOnSendMessageListener()Lio/rong/imkit/RongIM$OnSendMessageListener;

    move-result-object v0

    invoke-interface {v0, p1, v8}, Lio/rong/imkit/RongIM$OnSendMessageListener;->onSent(Lio/rong/imlib/model/Message;Lio/rong/imkit/RongIM$SentMessageErrorCode;)Z

    move-result v7

    .line 1999
    :cond_1
    if-eqz p2, :cond_c

    if-nez v7, :cond_c

    .line 2001
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->NOT_IN_DISCUSSION:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->NOT_IN_GROUP:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->NOT_IN_CHATROOM:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->REJECTED_BY_BLACKLIST:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->FORBIDDEN_IN_GROUP:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->FORBIDDEN_IN_CHATROOM:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->KICKED_FROM_CHATROOM:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2005
    :cond_2
    const/4 v4, 0x0

    .line 2007
    .local v4, "informationMessage":Lio/rong/message/InformationNotificationMessage;
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->NOT_IN_DISCUSSION:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2008
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    sget v1, Lio/rong/imkit/R$string;->rc_info_not_in_discussion:I

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/rong/message/InformationNotificationMessage;->obtain(Ljava/lang/String;)Lio/rong/message/InformationNotificationMessage;

    move-result-object v4

    .line 2023
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rong"

    new-instance v5, Lio/rong/imkit/RongIMClientWrapper$26;

    invoke-direct {v5, p0}, Lio/rong/imkit/RongIMClientWrapper$26;-><init>(Lio/rong/imkit/RongIMClientWrapper;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lio/rong/imkit/RongIMClientWrapper;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2036
    .end local v4    # "informationMessage":Lio/rong/message/InformationNotificationMessage;
    :cond_4
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v6

    .line 2037
    .local v6, "content":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/rong/imlib/MessageTag;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lio/rong/imlib/MessageTag;

    .line 2039
    .local v9, "tag":Lio/rong/imlib/MessageTag;
    if-eqz v9, :cond_5

    invoke-interface {v9}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v10, :cond_5

    .line 2040
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;

    invoke-direct {v1, p1, p2}, Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;-><init>(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 2054
    .end local v6    # "content":Lio/rong/imlib/model/MessageContent;
    .end local v9    # "tag":Lio/rong/imlib/MessageTag;
    :cond_5
    :goto_1
    return-void

    .line 2009
    .restart local v4    # "informationMessage":Lio/rong/message/InformationNotificationMessage;
    :cond_6
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->NOT_IN_GROUP:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2010
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    sget v1, Lio/rong/imkit/R$string;->rc_info_not_in_group:I

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/rong/message/InformationNotificationMessage;->obtain(Ljava/lang/String;)Lio/rong/message/InformationNotificationMessage;

    move-result-object v4

    goto :goto_0

    .line 2011
    :cond_7
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->NOT_IN_CHATROOM:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2012
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    sget v1, Lio/rong/imkit/R$string;->rc_info_not_in_chatroom:I

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/rong/message/InformationNotificationMessage;->obtain(Ljava/lang/String;)Lio/rong/message/InformationNotificationMessage;

    move-result-object v4

    goto :goto_0

    .line 2013
    :cond_8
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->REJECTED_BY_BLACKLIST:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2014
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    sget v1, Lio/rong/imkit/R$string;->rc_rejected_by_blacklist_prompt:I

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/rong/message/InformationNotificationMessage;->obtain(Ljava/lang/String;)Lio/rong/message/InformationNotificationMessage;

    move-result-object v4

    goto :goto_0

    .line 2015
    :cond_9
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->FORBIDDEN_IN_GROUP:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2016
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    sget v1, Lio/rong/imkit/R$string;->rc_info_forbidden_to_talk:I

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/rong/message/InformationNotificationMessage;->obtain(Ljava/lang/String;)Lio/rong/message/InformationNotificationMessage;

    move-result-object v4

    goto/16 :goto_0

    .line 2017
    :cond_a
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->FORBIDDEN_IN_CHATROOM:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2018
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    sget v1, Lio/rong/imkit/R$string;->rc_forbidden_in_chatroom:I

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/rong/message/InformationNotificationMessage;->obtain(Ljava/lang/String;)Lio/rong/message/InformationNotificationMessage;

    move-result-object v4

    goto/16 :goto_0

    .line 2019
    :cond_b
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->KICKED_FROM_CHATROOM:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2020
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    sget v1, Lio/rong/imkit/R$string;->rc_kicked_from_chatroom:I

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/rong/message/InformationNotificationMessage;->obtain(Ljava/lang/String;)Lio/rong/message/InformationNotificationMessage;

    move-result-object v4

    goto/16 :goto_0

    .line 2044
    .end local v4    # "informationMessage":Lio/rong/message/InformationNotificationMessage;
    :cond_c
    if-eqz p1, :cond_5

    .line 2045
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v6

    .line 2047
    .restart local v6    # "content":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/rong/imlib/MessageTag;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lio/rong/imlib/MessageTag;

    .line 2049
    .restart local v9    # "tag":Lio/rong/imlib/MessageTag;
    if-eqz v9, :cond_5

    invoke-interface {v9}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v10, :cond_5

    .line 2050
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private generatePushContent(Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "content"    # Lio/rong/imlib/model/MessageContent;
    .param p3, "pushContent"    # Ljava/lang/String;

    .prologue
    .line 1399
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v2, p3

    .line 1418
    .end local p3    # "pushContent":Ljava/lang/String;
    .local v2, "pushContent":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1403
    .end local v2    # "pushContent":Ljava/lang/String;
    .restart local p3    # "pushContent":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongIMClientWrapper;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    .line 1404
    .local v0, "id":Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v4, v0}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v1

    .line 1405
    .local v1, "info":Lio/rong/imlib/model/UserInfo;
    if-nez v1, :cond_1

    .line 1406
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongContext;->getCurrentUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v1

    .line 1407
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    sget-object v4, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {p1, v4}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {p1, v4}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1410
    :cond_2
    if-eqz p2, :cond_3

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1411
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v4

    invoke-virtual {v4, p2}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v3

    .line 1414
    .local v3, "span":Landroid/text/Spannable;
    if-eqz v3, :cond_3

    .line 1415
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .end local v3    # "span":Landroid/text/Spannable;
    :cond_3
    move-object v2, p3

    .line 1418
    .end local p3    # "pushContent":Ljava/lang/String;
    .restart local v2    # "pushContent":Ljava/lang/String;
    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Lio/rong/imkit/RongContext;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rongContext"    # Lio/rong/imkit/RongContext;

    .prologue
    .line 70
    invoke-static {p0}, Lio/rong/imlib/RongIMClient;->init(Landroid/content/Context;)V

    .line 72
    invoke-static {p0}, Lio/rong/imkit/utils/SystemUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "processName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "mainProcessName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v2, Lio/rong/imkit/RongIMClientWrapper;

    invoke-direct {v2}, Lio/rong/imkit/RongIMClientWrapper;-><init>()V

    sput-object v2, Lio/rong/imkit/RongIMClientWrapper;->sS:Lio/rong/imkit/RongIMClientWrapper;

    .line 79
    sget-object v2, Lio/rong/imkit/RongIMClientWrapper;->sS:Lio/rong/imkit/RongIMClientWrapper;

    iput-object p1, v2, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    .line 80
    sget-object v2, Lio/rong/imkit/RongIMClientWrapper;->sS:Lio/rong/imkit/RongIMClientWrapper;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lio/rong/imkit/RongIMClientWrapper;->mRegCache:Ljava/util/List;

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Lio/rong/imkit/RongContext;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rongContext"    # Lio/rong/imkit/RongContext;
    .param p2, "appKey"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p0, p2}, Lio/rong/imlib/RongIMClient;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    invoke-static {p0}, Lio/rong/imkit/utils/SystemUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "processName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "mainProcessName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v2, Lio/rong/imkit/RongIMClientWrapper;

    invoke-direct {v2}, Lio/rong/imkit/RongIMClientWrapper;-><init>()V

    sput-object v2, Lio/rong/imkit/RongIMClientWrapper;->sS:Lio/rong/imkit/RongIMClientWrapper;

    .line 99
    sget-object v2, Lio/rong/imkit/RongIMClientWrapper;->sS:Lio/rong/imkit/RongIMClientWrapper;

    iput-object p1, v2, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    .line 100
    sget-object v2, Lio/rong/imkit/RongIMClientWrapper;->sS:Lio/rong/imkit/RongIMClientWrapper;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lio/rong/imkit/RongIMClientWrapper;->mRegCache:Ljava/util/List;

    .line 102
    invoke-virtual {p1, p2}, Lio/rong/imkit/RongContext;->saveAppKey(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static final initConnectedData(Lio/rong/imlib/RongIMClient;)V
    .locals 2
    .param p0, "client"    # Lio/rong/imlib/RongIMClient;

    .prologue
    .line 149
    const-string v0, "RongIMClientWrapper"

    const-string v1, "initConnectedData"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Lio/rong/imkit/RongIMClientWrapper$2;

    invoke-direct {v0}, Lio/rong/imkit/RongIMClientWrapper$2;-><init>()V

    invoke-static {v0}, Lio/rong/imlib/RongIMClient;->setOnReceiveMessageListener(Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;)V

    .line 213
    sget-object v0, Lio/rong/imkit/RongIMClientWrapper;->mConnectionStatusListener:Lio/rong/imlib/RongIMClient$ConnectionStatusListener;

    invoke-static {v0}, Lio/rong/imlib/RongIMClient;->setConnectionStatusListener(Lio/rong/imlib/RongIMClient$ConnectionStatusListener;)V

    .line 214
    return-void
.end method

.method public static registerMessageType(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/rong/imlib/model/MessageContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/rong/imlib/AnnotationNotFoundException;
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/rong/imlib/model/MessageContent;>;"
    invoke-static {p0}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 251
    return-void
.end method

.method public static setConnectionStatusListener(Lio/rong/imlib/RongIMClient$ConnectionStatusListener;)V
    .locals 0
    .param p0, "listener"    # Lio/rong/imlib/RongIMClient$ConnectionStatusListener;

    .prologue
    .line 240
    sput-object p0, Lio/rong/imkit/RongIMClientWrapper;->sConnectionStatusListener:Lio/rong/imlib/RongIMClient$ConnectionStatusListener;

    .line 241
    return-void
.end method

.method private setMessageAttachedUserInfo(Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/MessageContent;
    .locals 3
    .param p1, "content"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 1952
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getUserInfoAttachedState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1954
    invoke-virtual {p1}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1955
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongIMClientWrapper;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    .line 1957
    .local v1, "userId":Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getCurrentUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    .line 1959
    .local v0, "info":Lio/rong/imlib/model/UserInfo;
    if-nez v0, :cond_0

    .line 1960
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    .line 1962
    :cond_0
    if-eqz v0, :cond_1

    .line 1963
    invoke-virtual {p1, v0}, Lio/rong/imlib/model/MessageContent;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 1967
    .end local v0    # "info":Lio/rong/imlib/model/UserInfo;
    .end local v1    # "userId":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method public static setOnReceiveMessageListener(Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;)V
    .locals 2
    .param p0, "listener"    # Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;

    .prologue
    .line 329
    const-string v0, "RongIMClientWrapper"

    const-string/jumbo v1, "setOnReceiveMessageListener"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sput-object p0, Lio/rong/imkit/RongIMClientWrapper;->sMessageListener:Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;

    .line 331
    return-void
.end method

.method public static setOnReceivePushMessageListener(Lio/rong/imlib/RongIMClient$OnReceivePushMessageListener;)V
    .locals 0
    .param p0, "listener"    # Lio/rong/imlib/RongIMClient$OnReceivePushMessageListener;

    .prologue
    .line 339
    invoke-static {p0}, Lio/rong/imlib/RongIMClient;->setOnReceivePushMessageListener(Lio/rong/imlib/RongIMClient$OnReceivePushMessageListener;)V

    .line 340
    return-void
.end method


# virtual methods
.method public addMemberToDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "discussionId"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lio/rong/imlib/RongIMClient$OperationCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1237
    .local p2, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 1238
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1240
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imkit/RongIMClientWrapper$13;-><init>(Lio/rong/imkit/RongIMClientWrapper;Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->addMemberToDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 1256
    return-void
.end method

.method public addToBlacklist(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 2505
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2506
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2508
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$38;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imkit/RongIMClientWrapper$38;-><init>(Lio/rong/imkit/RongIMClientWrapper;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/RongIMClient;->addToBlacklist(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 2525
    return-void
.end method

.method public varargs clearConversations(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 2
    .param p1, "callback"    # Lio/rong/imlib/RongIMClient$ResultCallback;
    .param p2, "conversationTypes"    # [Lio/rong/imlib/model/Conversation$ConversationType;

    .prologue
    .line 2477
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2478
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2480
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->clearConversations(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 2481
    return-void
.end method

.method public varargs clearConversations([Lio/rong/imlib/model/Conversation$ConversationType;)Z
    .locals 2
    .param p1, "conversationTypes"    # [Lio/rong/imlib/model/Conversation$ConversationType;

    .prologue
    .line 2491
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2492
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2494
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient;->clearConversations([Lio/rong/imlib/model/Conversation$ConversationType;)Z

    move-result v0

    return v0
.end method

.method public clearMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 864
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 865
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imkit/RongIMClientWrapper$8;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->clearMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 883
    return-void
.end method

.method public clearMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 3
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 843
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v1, :cond_0

    .line 844
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 846
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v1, p1, p2}, Lio/rong/imlib/RongIMClient;->clearMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    move-result v0

    .line 848
    .local v0, "bool":Z
    if-eqz v0, :cond_1

    .line 849
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/model/Event$MessagesClearEvent;

    invoke-direct {v2, p1, p2}, Lio/rong/imkit/model/Event$MessagesClearEvent;-><init>(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 851
    :cond_1
    return v0
.end method

.method public clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 917
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 918
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_0
    const-string v0, "clearMessagesUnreadStatus"

    const-string/jumbo v1, "result :"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$9;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imkit/RongIMClientWrapper$9;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 936
    return-void
.end method

.method public clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 4
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 895
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v1, :cond_0

    .line 896
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 898
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v1, p1, p2}, Lio/rong/imlib/RongIMClient;->clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    move-result v0

    .line 899
    .local v0, "result":Z
    const-string v1, "clearMessagesUnreadStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    if-eqz v0, :cond_1

    .line 901
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/model/Event$ConversationUnreadEvent;

    invoke-direct {v2, p1, p2}, Lio/rong/imkit/model/Event$ConversationUnreadEvent;-><init>(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 904
    :cond_1
    return v0
.end method

.method public clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1144
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 1145
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1147
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1148
    return-void
.end method

.method public clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 1
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 1098
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public createDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1207
    .local p2, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 1208
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1210
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imkit/RongIMClientWrapper$12;-><init>(Lio/rong/imkit/RongIMClientWrapper;Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->createDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;)V

    .line 1225
    return-void
.end method

.method public deleteMessages([ILio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "messageIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 812
    .local p2, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$7;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imkit/RongIMClientWrapper$7;-><init>(Lio/rong/imkit/RongIMClientWrapper;[ILio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/RongIMClient;->deleteMessages([ILio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 831
    return-void
.end method

.method public deleteMessages([I)Z
    .locals 3
    .param p1, "messageIds"    # [I

    .prologue
    .line 792
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v1, :cond_0

    .line 793
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 795
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v1, p1}, Lio/rong/imlib/RongIMClient;->deleteMessages([I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 797
    .local v0, "bool":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 798
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/model/Event$MessageDeleteEvent;

    invoke-direct {v2, p1}, Lio/rong/imkit/model/Event$MessageDeleteEvent;-><init>([I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 800
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient;->disconnect()V

    .line 293
    :cond_1
    return-void
.end method

.method public disconnect(Z)V
    .locals 2
    .param p1, "isReceivePush"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient;->disconnect(Z)V

    .line 308
    return-void
.end method

.method public downloadMedia(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$MediaType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$DownloadMediaCallback;)V
    .locals 6
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "mediaType"    # Lio/rong/imlib/RongIMClient$MediaType;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "callback"    # Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    .prologue
    .line 2110
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2111
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2113
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->downloadMedia(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$MediaType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$DownloadMediaCallback;)V

    .line 2114
    return-void
.end method

.method public downloadMedia(Ljava/lang/String;Lio/rong/imlib/RongIMClient$DownloadMediaCallback;)V
    .locals 5
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    .prologue
    .line 2125
    :try_start_0
    invoke-static {}, Lcom/sea_monster/resource/ResourceHandler;->getInstance()Lcom/sea_monster/resource/ResourceHandler;

    move-result-object v1

    new-instance v2, Lcom/sea_monster/resource/Resource;

    invoke-direct {v2, p1}, Lcom/sea_monster/resource/Resource;-><init>(Ljava/lang/String;)V

    new-instance v3, Lio/rong/imkit/RongIMClientWrapper$27;

    invoke-direct {v3, p0, p2}, Lio/rong/imkit/RongIMClientWrapper$27;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$DownloadMediaCallback;)V

    new-instance v4, Lio/rong/imkit/RongIMClientWrapper$28;

    invoke-direct {v4, p0, p2}, Lio/rong/imkit/RongIMClientWrapper$28;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$DownloadMediaCallback;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/sea_monster/resource/ResourceHandler;->requestResource(Lcom/sea_monster/resource/Resource;Lcom/sea_monster/resource/ResCallback;Lcom/sea_monster/network/StoreStatusCallback;)Lcom/sea_monster/network/AbstractHttpRequest;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2151
    :goto_0
    return-void

    .line 2148
    :catch_0
    move-exception v0

    .line 2149
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public getBlacklist(Lio/rong/imlib/RongIMClient$GetBlacklistCallback;)V
    .locals 2
    .param p1, "callback"    # Lio/rong/imlib/RongIMClient$GetBlacklistCallback;

    .prologue
    .line 2579
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2580
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2582
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient;->getBlacklist(Lio/rong/imlib/RongIMClient$GetBlacklistCallback;)V

    .line 2583
    return-void
.end method

.method public getBlacklistStatus(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/RongIMClient$BlacklistStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2566
    .local p2, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/RongIMClient$BlacklistStatus;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2567
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2569
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->getBlacklistStatus(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2570
    return-void
.end method

.method public getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;
    .locals 2
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 423
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Conversation;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 411
    return-void
.end method

.method public getConversationList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient;->getConversationList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs getConversationList([Lio/rong/imlib/model/Conversation$ConversationType;)Ljava/util/List;
    .locals 2
    .param p1, "types"    # [Lio/rong/imlib/model/Conversation$ConversationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient;->getConversationList([Lio/rong/imlib/model/Conversation$ConversationType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p1, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Conversation;>;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient;->getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 349
    return-void
.end method

.method public varargs getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 2
    .param p2, "types"    # [Lio/rong/imlib/model/Conversation$ConversationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;>;[",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Conversation;>;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 379
    return-void
.end method

.method public getConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2163
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2164
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2166
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$29;

    invoke-direct {v1, p0, p2, p1, p3}, Lio/rong/imkit/RongIMClientWrapper$29;-><init>(Lio/rong/imkit/RongIMClientWrapper;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->getConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2185
    return-void
.end method

.method public getCurrentConnectionStatus()Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient;->getCurrentConnectionStatus()Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2358
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2359
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2361
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeltaTime()J
    .locals 2

    .prologue
    .line 2371
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2372
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2374
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient;->getDeltaTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDiscussion(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "discussionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Discussion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1159
    .local p2, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Discussion;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 1160
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1162
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->getDiscussion(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1163
    return-void
.end method

.method public getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "oldestMessageId"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 706
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 707
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/rong/imlib/RongIMClient;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 6
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "objectName"    # Ljava/lang/String;
    .param p4, "oldestMessageId"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 724
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 6
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "oldestMessageId"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "II",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 758
    .local p5, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 759
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 762
    return-void
.end method

.method public getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 7
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "objectName"    # Ljava/lang/String;
    .param p4, "oldestMessageId"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 740
    .local p6, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 741
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lio/rong/imlib/RongIMClient;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 744
    return-void
.end method

.method public getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 671
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 672
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ILio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "I",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 688
    .local p4, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 689
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/rong/imlib/RongIMClient;->getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ILio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 692
    return-void
.end method

.method public getNotificationQuietHours(Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;)V
    .locals 2
    .param p1, "callback"    # Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;

    .prologue
    .line 2653
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2654
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2656
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$42;

    invoke-direct {v1, p0, p1}, Lio/rong/imkit/RongIMClientWrapper$42;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient;->getNotificationQuietHours(Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;)V

    .line 2673
    return-void
.end method

.method public getPublicServiceList(Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/PublicServiceProfileList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2758
    .local p1, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/PublicServiceProfileList;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2759
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2761
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient;->getPublicServiceList(Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2762
    return-void
.end method

.method public getPublicServiceProfile(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "publicServiceType"    # Lio/rong/imlib/model/Conversation$PublicServiceType;
    .param p2, "publicServiceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$PublicServiceType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/PublicServiceProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2684
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/PublicServiceProfile;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2685
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2687
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->getPublicServiceProfile(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2688
    return-void
.end method

.method public getRemoteHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;JILio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 9
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "dataTime"    # J
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "JI",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 777
    .local p6, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 778
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 780
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lio/rong/imlib/RongIMClient;->getRemoteHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;JILio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 781
    return-void
.end method

.method public getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 1066
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 1067
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1069
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1111
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 1112
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1114
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1115
    return-void
.end method

.method public getTotalUnreadCount()I
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 577
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient;->getTotalUnreadCount()I

    move-result v0

    return v0
.end method

.method public getTotalUnreadCount(Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p1, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$6;

    invoke-direct {v1, p0, p1}, Lio/rong/imkit/RongIMClientWrapper$6;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient;->getTotalUnreadCount(Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 566
    return-void
.end method

.method public getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 608
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 609
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs getUnreadCount([Lio/rong/imlib/model/Conversation$ConversationType;)I
    .locals 2
    .param p1, "conversationTypes"    # [Lio/rong/imlib/model/Conversation$ConversationType;

    .prologue
    .line 639
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 640
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient;->getUnreadCount([Lio/rong/imlib/model/Conversation$ConversationType;)I

    move-result v0

    return v0
.end method

.method public varargs getUnreadCount(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 2
    .param p2, "conversationTypes"    # [Lio/rong/imlib/model/Conversation$ConversationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;[",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 624
    .local p1, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 625
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->getUnreadCount(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 628
    return-void
.end method

.method public getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 592
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 593
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 596
    return-void
.end method

.method public getUnreadCount([Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "conversationTypes"    # [Lio/rong/imlib/model/Conversation$ConversationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 654
    .local p2, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 655
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->getUnreadCount([Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 658
    return-void
.end method

.method public insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;
    .locals 4
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "senderUserId"    # Ljava/lang/String;
    .param p4, "content"    # Lio/rong/imlib/model/MessageContent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1378
    iget-object v2, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v2, :cond_0

    .line 1379
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1382
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/rong/imlib/MessageTag;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/MessageTag;

    .line 1384
    .local v1, "tag":Lio/rong/imlib/MessageTag;
    const/4 v0, 0x0

    .line 1386
    .local v0, "message":Lio/rong/imlib/model/Message;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1387
    iget-object v2, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v2, p1, p2, p3, p4}, Lio/rong/imlib/RongIMClient;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 1393
    :goto_0
    iget-object v2, p0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1395
    return-object v0

    .line 1389
    :cond_1
    invoke-static {p2, p1, p4}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 1390
    const-string v2, "insertMessage"

    const-string v3, "Message is missing MessageTag.ISPERSISTED"

    invoke-static {p0, v2, v3}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 7
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "senderUserId"    # Ljava/lang/String;
    .param p4, "content"    # Lio/rong/imlib/model/MessageContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/MessageContent;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1334
    .local p5, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Message;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 1335
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1338
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/rong/imlib/MessageTag;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lio/rong/imlib/MessageTag;

    .line 1340
    .local v6, "tag":Lio/rong/imlib/MessageTag;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1342
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v5, Lio/rong/imkit/RongIMClientWrapper$16;

    invoke-direct {v5, p0, p5}, Lio/rong/imkit/RongIMClientWrapper$16;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1364
    :goto_0
    return-void

    .line 1362
    :cond_1
    const-string v0, "insertMessage"

    const-string v1, "Message is missing MessageTag.ISPERSISTED"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public joinChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "chatroomId"    # Ljava/lang/String;
    .param p2, "defMessageCount"    # I
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 2386
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2387
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2389
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$35;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imkit/RongIMClientWrapper$35;-><init>(Lio/rong/imkit/RongIMClientWrapper;Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->joinChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 2406
    return-void
.end method

.method public joinExistChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "chatroomId"    # Ljava/lang/String;
    .param p2, "defMessageCount"    # I
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 2417
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2418
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2420
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$36;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imkit/RongIMClientWrapper$36;-><init>(Lio/rong/imkit/RongIMClientWrapper;Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->joinExistChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 2437
    return-void
.end method

.method public joinGroup(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2296
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2297
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2299
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$33;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imkit/RongIMClientWrapper$33;-><init>(Lio/rong/imkit/RongIMClientWrapper;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->joinGroup(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 2316
    return-void
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/rong/imkit/RongIMClientWrapper;->disconnect(Z)V

    .line 317
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getMessageCounterLogic()Lio/rong/imkit/notification/MessageCounter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getMessageCounterLogic()Lio/rong/imkit/notification/MessageCounter;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/notification/MessageCounter;->clearCache()V

    .line 319
    :cond_0
    return-void
.end method

.method public quitChatRoom(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "chatroomId"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 2447
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2448
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2450
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$37;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imkit/RongIMClientWrapper$37;-><init>(Lio/rong/imkit/RongIMClientWrapper;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/RongIMClient;->quitChatRoom(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 2467
    return-void
.end method

.method public quitDiscussion(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "discussionId"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 1301
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 1302
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1304
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$15;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imkit/RongIMClientWrapper$15;-><init>(Lio/rong/imkit/RongIMClientWrapper;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/RongIMClient;->quitDiscussion(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 1320
    return-void
.end method

.method public quitGroup(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2329
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2330
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2332
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$34;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imkit/RongIMClientWrapper$34;-><init>(Lio/rong/imkit/RongIMClientWrapper;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/RongIMClient;->quitGroup(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 2349
    return-void
.end method

.method public reconnect(Lio/rong/imlib/RongIMClient$ConnectCallback;)V
    .locals 2
    .param p1, "callback"    # Lio/rong/imlib/RongIMClient$ConnectCallback;

    .prologue
    .line 274
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient;->reconnect(Lio/rong/imlib/RongIMClient$ConnectCallback;)V

    .line 278
    return-void
.end method

.method public removeConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 441
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 442
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$4;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imkit/RongIMClientWrapper$4;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->removeConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 462
    return-void
.end method

.method public removeConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 476
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v1, :cond_0

    .line 477
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 479
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v1, p1, p2}, Lio/rong/imlib/RongIMClient;->removeConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    move-result v0

    .line 481
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 482
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/model/Event$ConversationRemoveEvent;

    invoke-direct {v2, p1, p2}, Lio/rong/imkit/model/Event$ConversationRemoveEvent;-><init>(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 484
    :cond_1
    return v0
.end method

.method public removeFromBlacklist(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 2535
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2536
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2539
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$39;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imkit/RongIMClientWrapper$39;-><init>(Lio/rong/imkit/RongIMClientWrapper;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/RongIMClient;->removeFromBlacklist(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 2556
    return-void
.end method

.method public removeMemberFromDiscussion(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "discussionId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 1272
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 1273
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1275
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imkit/RongIMClientWrapper$14;-><init>(Lio/rong/imkit/RongIMClientWrapper;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->removeMemberFromDiscussion(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 1290
    return-void
.end method

.method public removeNotificationQuietHours(Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 2624
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2625
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2627
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$41;

    invoke-direct {v1, p0, p1}, Lio/rong/imkit/RongIMClientWrapper$41;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient;->removeNotificationQuietHours(Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 2644
    return-void
.end method

.method public saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1128
    .local p4, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 1129
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1131
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/rong/imlib/RongIMClient;->saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1132
    return-void
.end method

.method public saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 1083
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 1084
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1086
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public searchPublicService(Lio/rong/imlib/RongIMClient$SearchType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "searchType"    # Lio/rong/imlib/RongIMClient$SearchType;
    .param p2, "keywords"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/RongIMClient$SearchType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/PublicServiceProfileList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2700
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/PublicServiceProfileList;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2701
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2703
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->searchPublicService(Lio/rong/imlib/RongIMClient$SearchType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2704
    return-void
.end method

.method public searchPublicServiceByType(Lio/rong/imlib/model/Conversation$PublicServiceType;Lio/rong/imlib/RongIMClient$SearchType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "publicServiceType"    # Lio/rong/imlib/model/Conversation$PublicServiceType;
    .param p2, "searchType"    # Lio/rong/imlib/RongIMClient$SearchType;
    .param p3, "keywords"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$PublicServiceType;",
            "Lio/rong/imlib/RongIMClient$SearchType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/PublicServiceProfileList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2715
    .local p4, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/PublicServiceProfileList;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2716
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2718
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/rong/imlib/RongIMClient;->searchPublicServiceByType(Lio/rong/imlib/model/Conversation$PublicServiceType;Lio/rong/imlib/RongIMClient$SearchType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2719
    return-void
.end method

.method public sendImageMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;)V
    .locals 11
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "content"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "pushContent"    # Ljava/lang/String;
    .param p5, "pushData"    # Ljava/lang/String;
    .param p6, "callback"    # Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    .prologue
    .line 1748
    invoke-static {p2, p1, p3}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v8

    .line 1750
    .local v8, "message":Lio/rong/imlib/model/Message;
    invoke-direct {p0, v8}, Lio/rong/imkit/RongIMClientWrapper;->filterSendMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v10

    .line 1751
    .local v10, "temp":Lio/rong/imlib/model/Message;
    if-nez v10, :cond_0

    .line 1808
    :goto_0
    return-void

    .line 1754
    :cond_0
    if-eq v10, v8, :cond_1

    .line 1755
    move-object v8, v10

    .line 1757
    :cond_1
    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object p3

    .line 1759
    invoke-direct {p0, p3}, Lio/rong/imkit/RongIMClientWrapper;->setMessageAttachedUserInfo(Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/MessageContent;

    move-result-object p3

    .line 1761
    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    invoke-direct {p0, p1, v1, p4}, Lio/rong/imkit/RongIMClientWrapper;->generatePushContent(Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1763
    new-instance v9, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v9}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1764
    .local v9, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;>;"
    new-instance v1, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;

    invoke-direct {v1}, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;-><init>()V

    iput-object v1, v9, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 1766
    new-instance v7, Lio/rong/imkit/RongIMClientWrapper$23;

    move-object/from16 v0, p6

    invoke-direct {v7, p0, v0, v9}, Lio/rong/imkit/RongIMClientWrapper$23;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback$Result;)V

    .line 1807
    .local v7, "sendMessageCallback":Lio/rong/imlib/RongIMClient$SendImageMessageCallback;
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lio/rong/imlib/RongIMClient;->sendImageMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;)V

    goto :goto_0
.end method

.method public sendImageMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;)V
    .locals 5
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "pushContent"    # Ljava/lang/String;
    .param p3, "pushData"    # Ljava/lang/String;
    .param p4, "callback"    # Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    .prologue
    .line 1822
    invoke-direct {p0, p1}, Lio/rong/imkit/RongIMClientWrapper;->filterSendMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v2

    .line 1824
    .local v2, "temp":Lio/rong/imlib/model/Message;
    if-nez v2, :cond_0

    .line 1878
    :goto_0
    return-void

    .line 1827
    :cond_0
    if-eq v2, p1, :cond_1

    .line 1828
    move-object p1, v2

    .line 1830
    :cond_1
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/rong/imkit/RongIMClientWrapper;->setMessageAttachedUserInfo(Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/MessageContent;

    .line 1832
    new-instance v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v0}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1833
    .local v0, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;>;"
    new-instance v3, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;

    invoke-direct {v3}, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;-><init>()V

    iput-object v3, v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 1835
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lio/rong/imkit/RongIMClientWrapper;->generatePushContent(Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1837
    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$24;

    invoke-direct {v1, p0, p4, v0}, Lio/rong/imkit/RongIMClientWrapper$24;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback$Result;)V

    .line 1877
    .local v1, "sendMessageCallback":Lio/rong/imlib/RongIMClient$SendImageMessageCallback;
    iget-object v3, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v3, p1, p2, p3, v1}, Lio/rong/imlib/RongIMClient;->sendImageMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;)V

    goto :goto_0
.end method

.method public sendImageMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;)V
    .locals 5
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "pushContent"    # Ljava/lang/String;
    .param p3, "pushData"    # Ljava/lang/String;
    .param p4, "callback"    # Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    .prologue
    .line 1894
    invoke-direct {p0, p1}, Lio/rong/imkit/RongIMClientWrapper;->filterSendMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v2

    .line 1896
    .local v2, "temp":Lio/rong/imlib/model/Message;
    if-nez v2, :cond_0

    .line 1948
    :goto_0
    return-void

    .line 1899
    :cond_0
    if-eq v2, p1, :cond_1

    .line 1900
    move-object p1, v2

    .line 1902
    :cond_1
    new-instance v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v0}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1903
    .local v0, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;>;"
    new-instance v3, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;

    invoke-direct {v3}, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;-><init>()V

    iput-object v3, v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 1905
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lio/rong/imkit/RongIMClientWrapper;->generatePushContent(Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1907
    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$25;

    invoke-direct {v1, p0, p4, v0}, Lio/rong/imkit/RongIMClientWrapper$25;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;Lio/rong/imlib/RongIMClient$ResultCallback$Result;)V

    .line 1947
    .local v1, "sendMessageCallback":Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;
    iget-object v3, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v3, p1, p2, p3, v1}, Lio/rong/imlib/RongIMClient;->sendImageMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;)V

    goto :goto_0
.end method

.method public sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;
    .locals 18
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "content"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "pushContent"    # Ljava/lang/String;
    .param p5, "pushData"    # Ljava/lang/String;
    .param p6, "callback"    # Lio/rong/imlib/RongIMClient$SendMessageCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1435
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v4, :cond_0

    .line 1436
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1438
    :cond_0
    new-instance v15, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v15}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1439
    .local v15, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imlib/model/Message;>;"
    move-object/from16 v11, p1

    .line 1440
    .local v11, "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    move-object/from16 v12, p2

    .line 1442
    .local v12, "id":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v14

    .line 1444
    .local v14, "messageTemp":Lio/rong/imlib/model/Message;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lio/rong/imkit/RongIMClientWrapper;->filterSendMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v17

    .line 1445
    .local v17, "temp":Lio/rong/imlib/model/Message;
    if-nez v17, :cond_1

    .line 1446
    const/4 v13, 0x0

    .line 1490
    :goto_0
    return-object v13

    .line 1448
    :cond_1
    move-object/from16 v0, v17

    if-eq v0, v14, :cond_2

    .line 1449
    move-object/from16 v14, v17

    .line 1451
    :cond_2
    invoke-virtual {v14}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object p3

    .line 1453
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lio/rong/imkit/RongIMClientWrapper;->setMessageAttachedUserInfo(Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/MessageContent;

    move-result-object p3

    .line 1455
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lio/rong/imkit/RongIMClientWrapper;->generatePushContent(Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1457
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v10, Lio/rong/imkit/RongIMClientWrapper$17;

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v10, v0, v15, v1}, Lio/rong/imkit/RongIMClientWrapper$17;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Lio/rong/imlib/RongIMClient$SendMessageCallback;)V

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v10}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;

    move-result-object v13

    .line 1483
    .local v13, "message":Lio/rong/imlib/model/Message;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lio/rong/imlib/MessageTag;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v16

    check-cast v16, Lio/rong/imlib/MessageTag;

    .line 1485
    .local v16, "tag":Lio/rong/imlib/MessageTag;
    if-eqz v16, :cond_3

    invoke-interface/range {v16 .. v16}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1486
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v4}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v4

    invoke-virtual {v4, v13}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1488
    :cond_3
    iput-object v13, v15, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    goto :goto_0
.end method

.method public sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;
    .locals 6
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "pushContent"    # Ljava/lang/String;
    .param p3, "pushData"    # Ljava/lang/String;
    .param p4, "callback"    # Lio/rong/imlib/RongIMClient$SendMessageCallback;

    .prologue
    .line 1677
    iget-object v4, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v4, :cond_0

    .line 1678
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1680
    :cond_0
    new-instance v1, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v1}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1682
    .local v1, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imlib/model/Message;>;"
    invoke-direct {p0, p1}, Lio/rong/imkit/RongIMClientWrapper;->filterSendMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v3

    .line 1684
    .local v3, "temp":Lio/rong/imlib/model/Message;
    if-nez v3, :cond_1

    .line 1685
    const/4 v0, 0x0

    .line 1730
    :goto_0
    return-object v0

    .line 1687
    :cond_1
    if-eq v3, p1, :cond_2

    .line 1688
    move-object p1, v3

    .line 1690
    :cond_2
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    invoke-direct {p0, v4}, Lio/rong/imkit/RongIMClientWrapper;->setMessageAttachedUserInfo(Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 1692
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-direct {p0, v4, v5, p2}, Lio/rong/imkit/RongIMClientWrapper;->generatePushContent(Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1694
    iget-object v4, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v5, Lio/rong/imkit/RongIMClientWrapper$22;

    invoke-direct {v5, p0, v1, p4}, Lio/rong/imkit/RongIMClientWrapper$22;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Lio/rong/imlib/RongIMClient$SendMessageCallback;)V

    invoke-virtual {v4, p1, p2, p3, v5}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 1723
    .local v0, "msg":Lio/rong/imlib/model/Message;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lio/rong/imlib/MessageTag;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lio/rong/imlib/MessageTag;

    .line 1725
    .local v2, "tag":Lio/rong/imlib/MessageTag;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1726
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    invoke-virtual {v4, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1728
    :cond_3
    iput-object v0, v1, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    goto :goto_0
.end method

.method public sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 17
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "content"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "pushContent"    # Ljava/lang/String;
    .param p5, "pushData"    # Ljava/lang/String;
    .param p6, "callback"    # Lio/rong/imlib/RongIMClient$SendMessageCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/MessageContent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$SendMessageCallback;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1509
    .local p7, "resultCallback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Message;>;"
    new-instance v15, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v15}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1510
    .local v15, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imlib/model/Message;>;"
    move-object/from16 v12, p1

    .line 1511
    .local v12, "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    move-object/from16 v13, p2

    .line 1513
    .local v13, "id":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v14

    .line 1515
    .local v14, "message":Lio/rong/imlib/model/Message;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lio/rong/imkit/RongIMClientWrapper;->filterSendMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v16

    .line 1516
    .local v16, "temp":Lio/rong/imlib/model/Message;
    if-nez v16, :cond_0

    .line 1580
    :goto_0
    return-void

    .line 1519
    :cond_0
    move-object/from16 v0, v16

    if-eq v0, v14, :cond_1

    .line 1520
    move-object/from16 v14, v16

    .line 1522
    :cond_1
    invoke-virtual {v14}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object p3

    .line 1524
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lio/rong/imkit/RongIMClientWrapper;->setMessageAttachedUserInfo(Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/MessageContent;

    move-result-object p3

    .line 1526
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lio/rong/imkit/RongIMClientWrapper;->generatePushContent(Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1528
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v10, Lio/rong/imkit/RongIMClientWrapper$18;

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v10, v0, v15, v1}, Lio/rong/imkit/RongIMClientWrapper$18;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Lio/rong/imlib/RongIMClient$SendMessageCallback;)V

    new-instance v11, Lio/rong/imkit/RongIMClientWrapper$19;

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v11, v0, v15, v1}, Lio/rong/imkit/RongIMClientWrapper$19;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v11}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0
.end method

.method public sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 8
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "pushContent"    # Ljava/lang/String;
    .param p3, "pushData"    # Ljava/lang/String;
    .param p4, "callback"    # Lio/rong/imlib/RongIMClient$SendMessageCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Message;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$SendMessageCallback;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1594
    .local p5, "resultCallback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Message;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 1595
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1597
    :cond_0
    new-instance v6, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v6}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1599
    .local v6, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imlib/model/Message;>;"
    invoke-direct {p0, p1}, Lio/rong/imkit/RongIMClientWrapper;->filterSendMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v7

    .line 1600
    .local v7, "temp":Lio/rong/imlib/model/Message;
    if-nez v7, :cond_1

    .line 1663
    :goto_0
    return-void

    .line 1603
    :cond_1
    if-eq v7, p1, :cond_2

    .line 1604
    move-object p1, v7

    .line 1606
    :cond_2
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/rong/imkit/RongIMClientWrapper;->setMessageAttachedUserInfo(Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 1608
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lio/rong/imkit/RongIMClientWrapper;->generatePushContent(Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1610
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v4, Lio/rong/imkit/RongIMClientWrapper$20;

    invoke-direct {v4, p0, v6, p4}, Lio/rong/imkit/RongIMClientWrapper$20;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Lio/rong/imlib/RongIMClient$SendMessageCallback;)V

    new-instance v5, Lio/rong/imkit/RongIMClientWrapper$21;

    invoke-direct {v5, p0, v6, p5}, Lio/rong/imkit/RongIMClientWrapper$21;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0
.end method

.method public setConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 7
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "notificationStatus"    # Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2198
    .local p4, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2199
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2201
    :cond_0
    iget-object v6, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v0, Lio/rong/imkit/RongIMClientWrapper$30;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/rong/imkit/RongIMClientWrapper$30;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$ResultCallback;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V

    invoke-virtual {v6, p1, p2, p3, v0}, Lio/rong/imlib/RongIMClient;->setConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2217
    return-void
.end method

.method public setConversationToTop(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ZLio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 7
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "isTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Z",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 498
    .local p4, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_0
    iget-object v6, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v0, Lio/rong/imkit/RongIMClientWrapper$5;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/rong/imkit/RongIMClientWrapper$5;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Z)V

    invoke-virtual {v6, p1, p2, p3, v0}, Lio/rong/imlib/RongIMClient;->setConversationToTop(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ZLio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 517
    return-void
.end method

.method public setConversationToTop(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "isTop"    # Z

    .prologue
    .line 530
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v1, :cond_0

    .line 531
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v1, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->setConversationToTop(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Z)Z

    move-result v0

    .line 535
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 536
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/model/Event$ConversationTopEvent;

    invoke-direct {v2, p1, p2, p3}, Lio/rong/imkit/model/Event$ConversationTopEvent;-><init>(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 539
    :cond_1
    return v0
.end method

.method public setDiscussionInviteStatus(Ljava/lang/String;Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "discussionId"    # Ljava/lang/String;
    .param p2, "status"    # Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 2230
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2231
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2233
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$31;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imkit/RongIMClientWrapper$31;-><init>(Lio/rong/imkit/RongIMClientWrapper;Ljava/lang/String;Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->setDiscussionInviteStatus(Ljava/lang/String;Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 2249
    return-void
.end method

.method public setDiscussionName(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "discussionId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 1175
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 1176
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1178
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$11;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imkit/RongIMClientWrapper$11;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->setDiscussionName(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 1195
    return-void
.end method

.method public setMessageExtra(ILjava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 964
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 965
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 967
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->setMessageExtra(ILjava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 968
    return-void
.end method

.method public setMessageExtra(ILjava/lang/String;)Z
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 948
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 949
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 951
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->setMessageExtra(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "receivedStatus"    # Lio/rong/imlib/model/Message$ReceivedStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/rong/imlib/model/Message$ReceivedStatus;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 996
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 997
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 999
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1000
    return-void
.end method

.method public setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;)Z
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "receivedStatus"    # Lio/rong/imlib/model/Message$ReceivedStatus;

    .prologue
    .line 980
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 981
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 983
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;)Z

    move-result v0

    return v0
.end method

.method public setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "sentStatus"    # Lio/rong/imlib/model/Message$SentStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/rong/imlib/model/Message$SentStatus;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1033
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 1034
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1036
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$10;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imkit/RongIMClientWrapper$10;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$ResultCallback;ILio/rong/imlib/model/Message$SentStatus;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1054
    return-void
.end method

.method public setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;)Z
    .locals 3
    .param p1, "messageId"    # I
    .param p2, "sentStatus"    # Lio/rong/imlib/model/Message$SentStatus;

    .prologue
    .line 1012
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v1, :cond_0

    .line 1013
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1015
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v1, p1, p2}, Lio/rong/imlib/RongIMClient;->setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;)Z

    move-result v0

    .line 1017
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 1018
    iget-object v1, p0, Lio/rong/imkit/RongIMClientWrapper;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/model/Event$MessageSentStatusEvent;

    invoke-direct {v2, p1, p2}, Lio/rong/imkit/model/Event$MessageSentStatusEvent;-><init>(ILio/rong/imlib/model/Message$SentStatus;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1020
    :cond_1
    return v0
.end method

.method public setNotificationQuietHours(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "startTime"    # Ljava/lang/String;
    .param p2, "spanMinutes"    # I
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 2594
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2595
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2597
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$40;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imkit/RongIMClientWrapper$40;-><init>(Lio/rong/imkit/RongIMClientWrapper;Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->setNotificationQuietHours(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 2615
    return-void
.end method

.method public subscribePublicService(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "publicServiceType"    # Lio/rong/imlib/model/Conversation$PublicServiceType;
    .param p2, "publicServiceId"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 2730
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2731
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2733
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->subscribePublicService(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 2734
    return-void
.end method

.method public syncGroup(Ljava/util/List;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p2, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Group;",
            ">;",
            "Lio/rong/imlib/RongIMClient$OperationCallback;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2262
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Group;>;"
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2263
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2265
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$32;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imkit/RongIMClientWrapper$32;-><init>(Lio/rong/imkit/RongIMClientWrapper;Ljava/util/List;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/RongIMClient;->syncGroup(Ljava/util/List;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 2282
    return-void
.end method

.method public syncUserData(Lio/rong/imlib/model/UserData;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "userData"    # Lio/rong/imlib/model/UserData;
    .param p2, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 2772
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2773
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2775
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imkit/RongIMClientWrapper$43;

    invoke-direct {v1, p0, p2}, Lio/rong/imkit/RongIMClientWrapper$43;-><init>(Lio/rong/imkit/RongIMClientWrapper;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/RongIMClient;->syncUserData(Lio/rong/imlib/model/UserData;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 2790
    return-void
.end method

.method public unsubscribePublicService(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "publicServiceType"    # Lio/rong/imlib/model/Conversation$PublicServiceType;
    .param p2, "publicServiceId"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 2745
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2746
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2748
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->unsubscribePublicService(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 2749
    return-void
.end method

.method public uploadMedia(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/io/InputStream;Lio/rong/imlib/RongIMClient$UploadMediaCallback;)V
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "stream"    # Ljava/io/InputStream;
    .param p4, "callback"    # Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    .prologue
    .line 2091
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2092
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u670d\u52a1\u5c1a\u672a\u8fde\u63a5!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2094
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/RongIMClientWrapper;->mClient:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/rong/imlib/RongIMClient;->uploadMedia(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/io/InputStream;Lio/rong/imlib/RongIMClient$UploadMediaCallback;)V

    .line 2095
    return-void
.end method

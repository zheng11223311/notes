.class public Lio/rong/imkit/model/UIMessage;
.super Lio/rong/imlib/model/Message;
.source "UIMessage.java"


# instance fields
.field private mProgress:I

.field private mUserInfo:Lio/rong/imlib/model/UserInfo;

.field private textMessageContent:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lio/rong/imlib/model/Message;-><init>()V

    return-void
.end method

.method public static obtain(Lio/rong/imlib/model/Message;)Lio/rong/imkit/model/UIMessage;
    .locals 4
    .param p0, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 42
    new-instance v0, Lio/rong/imkit/model/UIMessage;

    invoke-direct {v0}, Lio/rong/imkit/model/UIMessage;-><init>()V

    .line 44
    .local v0, "uiMessage":Lio/rong/imkit/model/UIMessage;
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 45
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setTargetId(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setMessageId(I)V

    .line 47
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setObjectName(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 49
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 50
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setSenderUserId(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setReceivedStatus(Lio/rong/imlib/model/Message$ReceivedStatus;)V

    .line 52
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setMessageDirection(Lio/rong/imlib/model/Message$MessageDirection;)V

    .line 53
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getReceivedTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/rong/imkit/model/UIMessage;->setReceivedTime(J)V

    .line 54
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/rong/imkit/model/UIMessage;->setSentTime(J)V

    .line 55
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setExtra(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 58
    return-object v0
.end method


# virtual methods
.method public getMessage()Lio/rong/imlib/model/Message;
    .locals 4

    .prologue
    .line 23
    new-instance v0, Lio/rong/imlib/model/Message;

    invoke-direct {v0}, Lio/rong/imlib/model/Message;-><init>()V

    .line 25
    .local v0, "message":Lio/rong/imlib/model/Message;
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 26
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setTargetId(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getMessageId()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setMessageId(I)V

    .line 28
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setObjectName(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 30
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 31
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setReceivedStatus(Lio/rong/imlib/model/Message$ReceivedStatus;)V

    .line 33
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setMessageDirection(Lio/rong/imlib/model/Message$MessageDirection;)V

    .line 34
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getReceivedTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/rong/imlib/model/Message;->setReceivedTime(J)V

    .line 35
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getSentTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/rong/imlib/model/Message;->setSentTime(J)V

    .line 36
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setExtra(Ljava/lang/String;)V

    .line 38
    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lio/rong/imkit/model/UIMessage;->mProgress:I

    return v0
.end method

.method public getTextMessageContent()Landroid/text/SpannableStringBuilder;
    .locals 3

    .prologue
    .line 63
    iget-object v2, p0, Lio/rong/imkit/model/UIMessage;->textMessageContent:Landroid/text/SpannableStringBuilder;

    if-nez v2, :cond_0

    .line 65
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    instance-of v2, v2, Lio/rong/message/TextMessage;

    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    check-cast v1, Lio/rong/message/TextMessage;

    .line 67
    .local v1, "textMessage":Lio/rong/message/TextMessage;
    invoke-virtual {v1}, Lio/rong/message/TextMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 68
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Lio/rong/message/TextMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 69
    .local v0, "spannable":Landroid/text/SpannableStringBuilder;
    invoke-static {v0}, Lio/rong/imkit/util/AndroidEmoji;->ensure(Landroid/text/Spannable;)V

    .line 70
    invoke-virtual {p0, v0}, Lio/rong/imkit/model/UIMessage;->setTextMessageContent(Landroid/text/SpannableStringBuilder;)V

    .line 75
    .end local v0    # "spannable":Landroid/text/SpannableStringBuilder;
    .end local v1    # "textMessage":Lio/rong/message/TextMessage;
    :cond_0
    iget-object v2, p0, Lio/rong/imkit/model/UIMessage;->textMessageContent:Landroid/text/SpannableStringBuilder;

    return-object v2
.end method

.method public getUserInfo()Lio/rong/imlib/model/UserInfo;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lio/rong/imkit/model/UIMessage;->mUserInfo:Lio/rong/imlib/model/UserInfo;

    return-object v0
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 92
    iput p1, p0, Lio/rong/imkit/model/UIMessage;->mProgress:I

    .line 93
    return-void
.end method

.method public setTextMessageContent(Landroid/text/SpannableStringBuilder;)V
    .locals 0
    .param p1, "textMessageContent"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 79
    iput-object p1, p0, Lio/rong/imkit/model/UIMessage;->textMessageContent:Landroid/text/SpannableStringBuilder;

    .line 80
    return-void
.end method

.method public setUserInfo(Lio/rong/imlib/model/UserInfo;)V
    .locals 0
    .param p1, "userInfo"    # Lio/rong/imlib/model/UserInfo;

    .prologue
    .line 88
    iput-object p1, p0, Lio/rong/imkit/model/UIMessage;->mUserInfo:Lio/rong/imlib/model/UserInfo;

    .line 89
    return-void
.end method

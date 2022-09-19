.class public Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider;
.super Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
.source "TudouInfoNotificationMsgItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider",
        "<",
        "Lio/rong/message/InformationNotificationMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lio/rong/imkit/model/ProviderTag;
    centerInHorizontal = true
    messageContent = Lio/rong/message/InformationNotificationMessage;
    showPortrait = false
    showProgress = false
    showSummaryWithName = false
    showWarning = false
.end annotation


# instance fields
.field mDownloadHandler:Landroid/os/Handler;

.field mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;-><init>()V

    .line 42
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 43
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "InfoNotificationMsgItemProvider"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider;->mWorkThread:Landroid/os/HandlerThread;

    .line 44
    iget-object v0, p0, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider;->mDownloadHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method private getWrapContent(Lio/rong/imkit/RongContext;Lio/rong/message/InformationNotificationMessage;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "instance"    # Lio/rong/imkit/RongContext;
    .param p2, "informationNotificationMessage"    # Lio/rong/message/InformationNotificationMessage;

    .prologue
    .line 83
    if-nez p2, :cond_0

    .line 84
    const-string v0, ""

    .line 115
    :goto_0
    return-object v0

    .line 86
    :cond_0
    const-string v1, ""

    .line 89
    .local v1, "currentUserId":Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 90
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongIMClientWrapper;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    .line 93
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 94
    const-string v0, ""

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p2}, Lio/rong/message/InformationNotificationMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v3

    .line 97
    .local v3, "userInfo":Lio/rong/imlib/model/UserInfo;
    invoke-virtual {p2}, Lio/rong/message/InformationNotificationMessage;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "message":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 99
    if-eqz v2, :cond_3

    const-string/jumbo v4, "\u79bb\u5f00"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 100
    move-object v0, v2

    .local v0, "content":Ljava/lang/String;
    goto :goto_0

    .line 102
    .end local v0    # "content":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u6b22\u8fce\u52a0\u5165\u623f\u95f4\uff0c\u4f60\u7684\u6635\u79f0\u4e3a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_0

    .line 105
    .end local v0    # "content":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u8fdb\u5165\u4e86\u623f\u95f4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_0

    .line 108
    .end local v0    # "content":Ljava/lang/String;
    :cond_5
    if-eqz v2, :cond_6

    const-string/jumbo v4, "\u79bb\u5f00"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 109
    move-object v0, v2

    .restart local v0    # "content":Ljava/lang/String;
    goto/16 :goto_0

    .line 111
    .end local v0    # "content":Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u8fdb\u5165\u4e86\u623f\u95f4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/String;
    goto/16 :goto_0
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "x3"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 34
    check-cast p3, Lio/rong/message/InformationNotificationMessage;

    .end local p3    # "x2":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider;->bindView(Landroid/view/View;ILio/rong/message/InformationNotificationMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public bindView(Landroid/view/View;ILio/rong/message/InformationNotificationMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/message/InformationNotificationMessage;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider$ViewHolder;

    .line 51
    .local v1, "viewHolder":Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider$ViewHolder;
    invoke-virtual {p0, p3}, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider;->getContentSummary(Lio/rong/message/InformationNotificationMessage;)Landroid/text/Spannable;

    move-result-object v0

    .line 58
    .local v0, "spannable":Landroid/text/Spannable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 59
    iget-object v2, v1, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider$ViewHolder;->contentTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v2, v1, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider$ViewHolder;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v2, v1, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider$ViewHolder;->contentTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;
    .locals 1
    .param p1, "x0"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 34
    check-cast p1, Lio/rong/message/InformationNotificationMessage;

    .end local p1    # "x0":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1}, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider;->getContentSummary(Lio/rong/message/InformationNotificationMessage;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getContentSummary(Lio/rong/message/InformationNotificationMessage;)Landroid/text/Spannable;
    .locals 2
    .param p1, "data"    # Lio/rong/message/InformationNotificationMessage;

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    const-string v0, "getContentSummary"

    const-string v1, "DiscussionNotificationMessage is null;"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 78
    :goto_0
    return-object v0

    .line 75
    :cond_0
    const-string v0, "getContentSummary"

    const-string v1, "call getContentSummary()  method "

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider;->getWrapContent(Lio/rong/imkit/RongContext;Lio/rong/message/InformationNotificationMessage;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 155
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$layout;->rc_item_information_notification_message:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 156
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider$ViewHolder;

    invoke-direct {v1, p0}, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider$ViewHolder;-><init>(Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider;)V

    .line 157
    .local v1, "viewHolder":Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->rc_msg:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider$ViewHolder;->contentTextView:Landroid/widget/TextView;

    .line 158
    iget-object v2, v1, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider$ViewHolder;->contentTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 161
    return-object v0
.end method

.method public onEventBackgroundThread(Lio/rong/imlib/model/UserInfo;)V
    .locals 4
    .param p1, "userInfo"    # Lio/rong/imlib/model/UserInfo;

    .prologue
    .line 171
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider;->mDownloadHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider$2;

    invoke-direct {v1, p0, p1}, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider$2;-><init>(Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider;Lio/rong/imlib/model/UserInfo;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public bridge synthetic onItemClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "x3"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 34
    check-cast p3, Lio/rong/message/InformationNotificationMessage;

    .end local p3    # "x2":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider;->onItemClick(Landroid/view/View;ILio/rong/message/InformationNotificationMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;ILio/rong/message/InformationNotificationMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/message/InformationNotificationMessage;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 121
    return-void
.end method

.method public bridge synthetic onItemLongClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "x3"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 34
    check-cast p3, Lio/rong/message/InformationNotificationMessage;

    .end local p3    # "x2":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider;->onItemLongClick(Landroid/view/View;ILio/rong/message/InformationNotificationMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILio/rong/message/InformationNotificationMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/message/InformationNotificationMessage;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 125
    const/4 v3, 0x0

    .line 127
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 129
    :cond_0
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-static {v5, v6}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v2

    .line 130
    .local v2, "key":Lio/rong/imkit/model/ConversationKey;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongContext;->getPublicServiceInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v5

    invoke-virtual {v2}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/cache/RongCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/PublicServiceProfile;

    .line 131
    .local v0, "info":Lio/rong/imlib/model/PublicServiceProfile;
    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 141
    .end local v0    # "info":Lio/rong/imlib/model/PublicServiceProfile;
    .end local v2    # "key":Lio/rong/imkit/model/ConversationKey;
    :cond_1
    :goto_0
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lio/rong/imkit/R$string;->rc_dialog_item_message_delete:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 143
    .local v1, "items":[Ljava/lang/String;
    invoke-static {v3, v1}, Lio/rong/imkit/widget/ArraysDialogFragment;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v5

    new-instance v6, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider$1;

    invoke-direct {v6, p0, p4}, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider$1;-><init>(Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual {v5, v6}, Lio/rong/imkit/widget/ArraysDialogFragment;->setArraysDialogItemListener(Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v6, v5}, Lio/rong/imkit/widget/ArraysDialogFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 151
    return-void

    .line 134
    .end local v1    # "items":[Ljava/lang/String;
    :cond_2
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongContext;->getUserInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v5

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/cache/RongCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imlib/model/UserInfo;

    .line 135
    .local v4, "userInfo":Lio/rong/imlib/model/UserInfo;
    if-eqz v4, :cond_1

    .line 136
    invoke-virtual {v4}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

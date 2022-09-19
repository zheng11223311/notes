.class public Lio/rong/imkit/widget/provider/PrivateConversationProvider;
.super Ljava/lang/Object;
.source "PrivateConversationProvider.java"

# interfaces
.implements Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider",
        "<",
        "Lio/rong/imkit/model/UIConversation;",
        ">;"
    }
.end annotation

.annotation runtime Lio/rong/imkit/model/ConversationProviderTag;
    conversationType = "private"
    portraitPosition = 0x1
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/view/View;ILandroid/os/Parcelable;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/os/Parcelable;

    .prologue
    .line 33
    check-cast p3, Lio/rong/imkit/model/UIConversation;

    .end local p3    # "x2":Landroid/os/Parcelable;
    invoke-virtual {p0, p1, p2, p3}, Lio/rong/imkit/widget/provider/PrivateConversationProvider;->bindView(Landroid/view/View;ILio/rong/imkit/model/UIConversation;)V

    return-void
.end method

.method public bindView(Landroid/view/View;ILio/rong/imkit/model/UIConversation;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "data"    # Lio/rong/imkit/model/UIConversation;

    .prologue
    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;

    .line 60
    .local v3, "holder":Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;
    const/4 v8, 0x0

    .line 61
    .local v8, "tag":Lio/rong/imkit/model/ProviderTag;
    if-nez p3, :cond_0

    .line 62
    iget-object v11, v3, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v11, v3, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->time:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v11, v3, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->content:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v11, v3, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getUIConversationTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v11, Ljava/util/Date;

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-static {v11}, Lio/rong/imkit/util/RongDateUtils;->getConversationListFormatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 70
    .local v9, "time":Ljava/lang/String;
    iget-object v11, v3, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const/4 v5, 0x0

    .line 75
    .local v5, "readRec":Z
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lio/rong/imkit/R$bool;->rc_read_receipt:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 79
    :goto_1
    const/4 v11, 0x1

    if-ne v5, v11, :cond_1

    .line 80
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v11

    sget-object v12, Lio/rong/imlib/model/Message$SentStatus;->READ:Lio/rong/imlib/model/Message$SentStatus;

    if-ne v11, v12, :cond_6

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v12}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 81
    iget-object v11, v3, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->readStatus:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    :cond_1
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getShowDraftFlag()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 88
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 89
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v7, Landroid/text/SpannableString;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lio/rong/imkit/R$string;->rc_message_content_draft:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 91
    .local v7, "string":Landroid/text/SpannableString;
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lio/rong/imkit/R$color;->rc_draft_color:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v12, 0x0

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v13

    const/16 v14, 0x21

    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 92
    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getDraft()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 95
    invoke-static {v0}, Lio/rong/imkit/util/AndroidEmoji;->ensure(Landroid/text/Spannable;)V

    .line 97
    iget-object v11, v3, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v7    # "string":Landroid/text/SpannableString;
    :goto_3
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 104
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Lio/rong/imkit/RongContext;->getMessageProviderTag(Ljava/lang/Class;)Lio/rong/imkit/model/ProviderTag;

    move-result-object v8

    .line 106
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v11

    sget-object v12, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    if-eq v11, v12, :cond_3

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v11

    sget-object v12, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    if-ne v11, v12, :cond_9

    :cond_3
    if-eqz v8, :cond_9

    invoke-interface {v8}, Lio/rong/imkit/model/ProviderTag;->showWarning()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lio/rong/imkit/R$dimen;->rc_message_send_status_image_size:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v10, v11

    .line 109
    .local v10, "width":I
    const/4 v1, 0x0

    .line 110
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v11

    sget-object v12, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    if-ne v11, v12, :cond_8

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lio/rong/imkit/R$drawable;->rc_conversation_list_msg_send_failure:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 114
    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    .line 115
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12, v10, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 116
    iget-object v11, v3, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->content:Landroid/widget/TextView;

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 117
    iget-object v11, v3, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->content:Landroid/widget/TextView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v1, v12, v13, v14}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 123
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v10    # "width":I
    :cond_5
    :goto_5
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v12

    invoke-static {v11, v12}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v4

    .line 124
    .local v4, "key":Lio/rong/imkit/model/ConversationKey;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v11

    invoke-virtual {v11, v4}, Lio/rong/imkit/RongContext;->getConversationNotifyStatusFromCache(Lio/rong/imkit/model/ConversationKey;)Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    move-result-object v6

    .line 125
    .local v6, "status":Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;
    if-eqz v6, :cond_a

    sget-object v11, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->DO_NOT_DISTURB:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    invoke-virtual {v6, v11}, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 126
    iget-object v11, v3, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->notificationBlockImage:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 76
    .end local v4    # "key":Lio/rong/imkit/model/ConversationKey;
    .end local v6    # "status":Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 83
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_6
    iget-object v11, v3, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->readStatus:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 100
    :cond_7
    iget-object v11, v3, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getConversationContent()Landroid/text/Spannable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 112
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "width":I
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v11

    sget-object v12, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    if-ne v11, v12, :cond_4

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lio/rong/imkit/R$drawable;->rc_conversation_list_msg_sending:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_4

    .line 120
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v10    # "width":I
    :cond_9
    iget-object v11, v3, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->content:Landroid/widget/TextView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 128
    .restart local v4    # "key":Lio/rong/imkit/model/ConversationKey;
    .restart local v6    # "status":Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;
    :cond_a
    iget-object v11, v3, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->notificationBlockImage:Landroid/widget/ImageView;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public getPortraitUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 155
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 153
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v0

    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public getSummary(Lio/rong/imkit/model/UIConversation;)Landroid/text/Spannable;
    .locals 1
    .param p1, "data"    # Lio/rong/imkit/model/UIConversation;

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 140
    move-object v0, p1

    .line 144
    .local v0, "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 142
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$layout;->rc_item_base_conversation:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, "result":Landroid/view/View;
    new-instance v0, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;-><init>(Lio/rong/imkit/widget/provider/PrivateConversationProvider;)V

    .line 48
    .local v0, "holder":Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->rc_conversation_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->title:Landroid/widget/TextView;

    .line 49
    sget v2, Lio/rong/imkit/R$id;->rc_conversation_time:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->time:Landroid/widget/TextView;

    .line 50
    sget v2, Lio/rong/imkit/R$id;->rc_conversation_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->content:Landroid/widget/TextView;

    .line 51
    sget v2, Lio/rong/imkit/R$id;->rc_conversation_msg_block:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->notificationBlockImage:Landroid/widget/ImageView;

    .line 52
    sget v2, Lio/rong/imkit/R$id;->rc_conversation_status:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->readStatus:Landroid/widget/TextView;

    .line 53
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    return-object v1
.end method

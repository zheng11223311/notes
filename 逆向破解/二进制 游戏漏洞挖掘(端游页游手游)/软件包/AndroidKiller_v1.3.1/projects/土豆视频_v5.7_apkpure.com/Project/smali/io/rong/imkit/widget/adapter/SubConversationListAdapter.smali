.class public Lio/rong/imkit/widget/adapter/SubConversationListAdapter;
.super Lio/rong/imkit/widget/adapter/BaseAdapter;
.source "SubConversationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/adapter/BaseAdapter",
        "<",
        "Lio/rong/imkit/model/UIConversation;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Lio/rong/imkit/widget/adapter/BaseAdapter;-><init>()V

    .line 52
    iput-object p1, p0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->mContext:Landroid/content/Context;

    .line 53
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILio/rong/imkit/model/UIConversation;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "data"    # Lio/rong/imkit/model/UIConversation;

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x63

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;

    .line 97
    .local v0, "holder":Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/RongContext;->getConversationTemplate(Ljava/lang/String;)Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    move-result-object v1

    .line 99
    .local v1, "provider":Lio/rong/imkit/widget/provider/IContainerItemProvider;
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    invoke-virtual {v4, v1}, Lio/rong/imkit/widget/ProviderContainerView;->inflate(Lio/rong/imkit/widget/provider/IContainerItemProvider;)Landroid/view/View;

    move-result-object v3

    .line 101
    .local v3, "view":Landroid/view/View;
    invoke-interface {v1, v3, p2, p3}, Lio/rong/imkit/widget/provider/IContainerItemProvider;->bindView(Landroid/view/View;ILandroid/os/Parcelable;)V

    .line 104
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->layout:Landroid/view/View;

    iget-object v5, p0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$color;->rc_conversation_top_bg:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 109
    :goto_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/RongContext;->getConversationProviderTag(Ljava/lang/String;)Lio/rong/imkit/model/ConversationProviderTag;

    move-result-object v2

    .line 112
    .local v2, "tag":Lio/rong/imkit/model/ConversationProviderTag;
    invoke-interface {v2}, Lio/rong/imkit/model/ConversationProviderTag;->portraitPosition()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 113
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->leftImageLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 115
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v4, v5, :cond_1

    .line 116
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->leftImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$drawable;->rc_group_default_portrait:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/AsyncImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :goto_1
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getIconUrl()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 124
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->leftImageView:Lio/rong/imkit/widget/AsyncImageView;

    new-instance v5, Lcom/sea_monster/resource/Resource;

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getIconUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    .line 129
    :goto_2
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v4

    if-lez v4, :cond_6

    .line 130
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadType()Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    move-result-object v4

    sget-object v5, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->REMIND_WITH_COUNTING:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    invoke-virtual {v4, v5}, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 132
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v4

    if-le v4, v9, :cond_4

    .line 134
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    iget-object v5, p0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$string;->rc_message_unread_count:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :goto_3
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_unread_count_bg:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    :goto_4
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->rightImageLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :goto_5
    return-void

    .line 107
    .end local v2    # "tag":Lio/rong/imkit/model/ConversationProviderTag;
    :cond_0
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->layout:Landroid/view/View;

    iget-object v5, p0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$color;->rc_text_color_primary_inverse:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 117
    .restart local v2    # "tag":Lio/rong/imkit/model/ConversationProviderTag;
    :cond_1
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v4, v5, :cond_2

    .line 118
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->leftImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$drawable;->rc_default_discussion_portrait:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/AsyncImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 120
    :cond_2
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->leftImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$drawable;->rc_default_portrait:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/AsyncImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 126
    :cond_3
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->leftImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {v4, v10}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    goto/16 :goto_2

    .line 136
    :cond_4
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 140
    :cond_5
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_unread_remind_without_count:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 144
    :cond_6
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 148
    :cond_7
    invoke-interface {v2}, Lio/rong/imkit/model/ConversationProviderTag;->portraitPosition()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e

    .line 149
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->rightImageLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 151
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v4, v5, :cond_9

    .line 152
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->rightImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$drawable;->rc_group_default_portrait:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/AsyncImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    :goto_6
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getIconUrl()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 160
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->rightImageView:Lio/rong/imkit/widget/AsyncImageView;

    new-instance v5, Lcom/sea_monster/resource/Resource;

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getIconUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    .line 165
    :goto_7
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v4

    if-lez v4, :cond_8

    .line 166
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountRight:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadType()Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    move-result-object v4

    sget-object v5, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->REMIND_WITH_COUNTING:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    invoke-virtual {v4, v5}, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 169
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v4

    if-le v4, v9, :cond_c

    .line 170
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountRight:Landroid/widget/TextView;

    iget-object v5, p0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$string;->rc_message_unread_count:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :goto_8
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_unread_count_bg:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    :cond_8
    :goto_9
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->leftImageLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 153
    :cond_9
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v4, v5, :cond_a

    .line 154
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->rightImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$drawable;->rc_default_discussion_portrait:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/AsyncImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 156
    :cond_a
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->rightImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$drawable;->rc_default_portrait:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/AsyncImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 162
    :cond_b
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->rightImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {v4, v10}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    goto :goto_7

    .line 172
    :cond_c
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountRight:Landroid/widget/TextView;

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 176
    :cond_d
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_unread_remind_without_count:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 181
    :cond_e
    invoke-interface {v2}, Lio/rong/imkit/model/ConversationProviderTag;->portraitPosition()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_f

    .line 182
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->rightImageLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->leftImageLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 185
    :cond_f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "the portrait position is wrong!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected bridge synthetic bindView(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p3, Lio/rong/imkit/model/UIConversation;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->bindView(Landroid/view/View;ILio/rong/imkit/model/UIConversation;)V

    return-void
.end method

.method public findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I
    .locals 4
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-virtual {p0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v0

    .line 58
    .local v0, "index":I
    const/4 v2, -0x1

    .local v2, "position":I
    move v1, v0

    .line 60
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    if-lez v1, :cond_0

    .line 61
    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {v3, p1}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    move v2, v0

    .line 68
    :cond_0
    return v2

    :cond_1
    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/UIConversation;

    .line 32
    .local v0, "conversation":Lio/rong/imkit/model/UIConversation;
    if-nez v0, :cond_0

    .line 33
    const-wide/16 v2, 0x0

    .line 34
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v2, v1

    goto :goto_0
.end method

.method protected newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 73
    iget-object v2, p0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lio/rong/imkit/R$layout;->rc_item_conversation:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 75
    .local v1, "result":Landroid/view/View;
    new-instance v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;-><init>(Lio/rong/imkit/widget/adapter/SubConversationListAdapter;)V

    .line 76
    .local v0, "holder":Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->rc_item_conversation:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->layout:Landroid/view/View;

    .line 77
    sget v2, Lio/rong/imkit/R$id;->rc_item1:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->leftImageLayout:Landroid/view/View;

    .line 78
    sget v2, Lio/rong/imkit/R$id;->rc_item2:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->rightImageLayout:Landroid/view/View;

    .line 79
    sget v2, Lio/rong/imkit/R$id;->rc_left:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->leftImageView:Lio/rong/imkit/widget/AsyncImageView;

    .line 80
    sget v2, Lio/rong/imkit/R$id;->rc_right:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->rightImageView:Lio/rong/imkit/widget/AsyncImageView;

    .line 81
    sget v2, Lio/rong/imkit/R$id;->rc_content:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/ProviderContainerView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    .line 82
    sget v2, Lio/rong/imkit/R$id;->rc_unread_message:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    .line 83
    sget v2, Lio/rong/imkit/R$id;->rc_unread_message_right:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountRight:Landroid/widget/TextView;

    .line 84
    sget v2, Lio/rong/imkit/R$id;->rc_unread_message_icon:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    .line 85
    sget v2, Lio/rong/imkit/R$id;->rc_unread_message_icon_right:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountRightIcon:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    return-object v1
.end method

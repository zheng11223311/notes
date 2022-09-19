.class public Lio/rong/imkit/widget/adapter/ConversationListAdapter;
.super Lio/rong/imkit/widget/adapter/BaseAdapter;
.source "ConversationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;
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
    .line 53
    invoke-direct {p0}, Lio/rong/imkit/widget/adapter/BaseAdapter;-><init>()V

    .line 54
    iput-object p1, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 56
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

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;

    .line 121
    .local v0, "holder":Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;
    if-nez p3, :cond_0

    .line 253
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/RongContext;->getConversationTemplate(Ljava/lang/String;)Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    move-result-object v1

    .line 127
    .local v1, "provider":Lio/rong/imkit/widget/provider/IContainerItemProvider;
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    invoke-virtual {v4, v1}, Lio/rong/imkit/widget/ProviderContainerView;->inflate(Lio/rong/imkit/widget/provider/IContainerItemProvider;)Landroid/view/View;

    move-result-object v3

    .line 129
    .local v3, "view":Landroid/view/View;
    invoke-interface {v1, v3, p2, p3}, Lio/rong/imkit/widget/provider/IContainerItemProvider;->bindView(Landroid/view/View;ILandroid/os/Parcelable;)V

    .line 132
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->layout:Landroid/view/View;

    iget-object v5, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$drawable;->rc_item_top_list_selector:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    :goto_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/RongContext;->getConversationProviderTag(Ljava/lang/String;)Lio/rong/imkit/model/ConversationProviderTag;

    move-result-object v2

    .line 141
    .local v2, "tag":Lio/rong/imkit/model/ConversationProviderTag;
    invoke-interface {v2}, Lio/rong/imkit/model/ConversationProviderTag;->portraitPosition()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 142
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 144
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v4, v5}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$drawable;->rc_default_group_portrait:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/AsyncImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    :goto_2
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageLayout:Landroid/view/View;

    new-instance v5, Lio/rong/imkit/widget/adapter/ConversationListAdapter$1;

    invoke-direct {v5, p0, p3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter$1;-><init>(Lio/rong/imkit/widget/adapter/ConversationListAdapter;Lio/rong/imkit/model/UIConversation;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageLayout:Landroid/view/View;

    new-instance v5, Lio/rong/imkit/widget/adapter/ConversationListAdapter$2;

    invoke-direct {v5, p0, p3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter$2;-><init>(Lio/rong/imkit/widget/adapter/ConversationListAdapter;Lio/rong/imkit/model/UIConversation;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 167
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getIconUrl()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 168
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageView:Lio/rong/imkit/widget/AsyncImageView;

    new-instance v5, Lcom/sea_monster/resource/Resource;

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getIconUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    .line 172
    :goto_3
    const-string v4, "bindView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUnReadMessageCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 174
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadType()Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    move-result-object v4

    sget-object v5, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->REMIND_WITH_COUNTING:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    invoke-virtual {v4, v5}, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 176
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v4

    if-le v4, v9, :cond_5

    .line 177
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    iget-object v5, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$string;->rc_message_unread_count:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :goto_4
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_unread_count_bg:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    :goto_5
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->rightImageLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :goto_6
    const-string v4, "leftImageLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Visibility:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 135
    .end local v2    # "tag":Lio/rong/imkit/model/ConversationProviderTag;
    :cond_1
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->layout:Landroid/view/View;

    iget-object v5, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$drawable;->rc_item_list_selector:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 146
    .restart local v2    # "tag":Lio/rong/imkit/model/ConversationProviderTag;
    :cond_2
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v4, v5}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 147
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$drawable;->rc_default_discussion_portrait:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/AsyncImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 149
    :cond_3
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$drawable;->rc_default_portrait:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/AsyncImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 170
    :cond_4
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {v4, v10}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    goto/16 :goto_3

    .line 179
    :cond_5
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 184
    :cond_6
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_unread_remind_without_count:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 188
    :cond_7
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 192
    :cond_8
    invoke-interface {v2}, Lio/rong/imkit/model/ConversationProviderTag;->portraitPosition()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_f

    .line 193
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->rightImageLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->rightImageLayout:Landroid/view/View;

    new-instance v5, Lio/rong/imkit/widget/adapter/ConversationListAdapter$3;

    invoke-direct {v5, p0, p3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter$3;-><init>(Lio/rong/imkit/widget/adapter/ConversationListAdapter;Lio/rong/imkit/model/UIConversation;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->rightImageLayout:Landroid/view/View;

    new-instance v5, Lio/rong/imkit/widget/adapter/ConversationListAdapter$4;

    invoke-direct {v5, p0, p3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter$4;-><init>(Lio/rong/imkit/widget/adapter/ConversationListAdapter;Lio/rong/imkit/model/UIConversation;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 211
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v4, v5}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 212
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->rightImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$drawable;->rc_default_group_portrait:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/AsyncImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :goto_7
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getIconUrl()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 220
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->rightImageView:Lio/rong/imkit/widget/AsyncImageView;

    new-instance v5, Lcom/sea_monster/resource/Resource;

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getIconUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    .line 225
    :goto_8
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v4

    if-lez v4, :cond_e

    .line 226
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadType()Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    move-result-object v4

    sget-object v5, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->REMIND_WITH_COUNTING:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    invoke-virtual {v4, v5}, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 228
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v4

    if-le v4, v9, :cond_c

    .line 230
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountRight:Landroid/widget/TextView;

    iget-object v5, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$string;->rc_message_unread_count:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :goto_9
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountRightIcon:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_unread_count_bg:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    :goto_a
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 213
    :cond_9
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v4, v5}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 214
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->rightImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$drawable;->rc_default_discussion_portrait:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/AsyncImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 216
    :cond_a
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->rightImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$drawable;->rc_default_portrait:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/AsyncImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 222
    :cond_b
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->rightImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {v4, v10}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    goto :goto_8

    .line 232
    :cond_c
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountRight:Landroid/widget/TextView;

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 236
    :cond_d
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountRightIcon:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_unread_remind_without_count:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a

    .line 240
    :cond_e
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a

    .line 245
    :cond_f
    invoke-interface {v2}, Lio/rong/imkit/model/ConversationProviderTag;->portraitPosition()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_10

    .line 246
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->rightImageLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v4, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 249
    :cond_10
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
    .line 25
    check-cast p3, Lio/rong/imkit/model/UIConversation;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->bindView(Landroid/view/View;ILio/rong/imkit/model/UIConversation;)V

    return-void
.end method

.method public findGatherPosition(Lio/rong/imlib/model/Conversation$ConversationType;)I
    .locals 5
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;

    .prologue
    .line 60
    invoke-virtual {p0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getCount()I

    move-result v0

    .line 61
    .local v0, "index":I
    const/4 v2, -0x1

    .line 63
    .local v2, "position":I
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/RongContext;->getConversationGatherState(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v0

    .line 65
    .end local v0    # "index":I
    .local v1, "index":I
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    if-lez v1, :cond_1

    .line 66
    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {v3, p1}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    move v2, v0

    .line 73
    :cond_1
    return v2
.end method

.method public findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I
    .locals 5
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getCount()I

    move-result v0

    .line 78
    .local v0, "index":I
    const/4 v2, -0x1

    .line 79
    .local v2, "position":I
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/RongContext;->getConversationGatherState(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v1, v0

    .line 80
    .end local v0    # "index":I
    .local v1, "index":I
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    if-lez v1, :cond_1

    .line 81
    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {v3, p1}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    move v2, v0

    .line 95
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v1, v0

    .line 87
    .end local v0    # "index":I
    .restart local v1    # "index":I
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    if-lez v1, :cond_1

    .line 88
    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {v3, p1}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    move v2, v0

    .line 91
    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/UIConversation;

    .line 33
    .local v0, "conversation":Lio/rong/imkit/model/UIConversation;
    if-nez v0, :cond_0

    .line 34
    const-wide/16 v2, 0x0

    .line 35
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
    .line 100
    iget-object v2, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lio/rong/imkit/R$layout;->rc_item_conversation:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 102
    .local v1, "result":Landroid/view/View;
    new-instance v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;-><init>(Lio/rong/imkit/widget/adapter/ConversationListAdapter;)V

    .line 103
    .local v0, "holder":Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->rc_item_conversation:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->layout:Landroid/view/View;

    .line 104
    sget v2, Lio/rong/imkit/R$id;->rc_item1:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageLayout:Landroid/view/View;

    .line 105
    sget v2, Lio/rong/imkit/R$id;->rc_item2:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->rightImageLayout:Landroid/view/View;

    .line 106
    sget v2, Lio/rong/imkit/R$id;->rc_left:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageView:Lio/rong/imkit/widget/AsyncImageView;

    .line 107
    sget v2, Lio/rong/imkit/R$id;->rc_right:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->rightImageView:Lio/rong/imkit/widget/AsyncImageView;

    .line 108
    sget v2, Lio/rong/imkit/R$id;->rc_content:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/ProviderContainerView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    .line 109
    sget v2, Lio/rong/imkit/R$id;->rc_unread_message:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    .line 110
    sget v2, Lio/rong/imkit/R$id;->rc_unread_message_right:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountRight:Landroid/widget/TextView;

    .line 111
    sget v2, Lio/rong/imkit/R$id;->rc_unread_message_icon:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    .line 112
    sget v2, Lio/rong/imkit/R$id;->rc_unread_message_icon_right:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountRightIcon:Landroid/widget/ImageView;

    .line 113
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    return-object v1
.end method

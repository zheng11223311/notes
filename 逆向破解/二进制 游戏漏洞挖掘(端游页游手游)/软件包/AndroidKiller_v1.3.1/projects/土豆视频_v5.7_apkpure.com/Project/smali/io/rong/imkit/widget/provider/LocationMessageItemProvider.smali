.class public Lio/rong/imkit/widget/provider/LocationMessageItemProvider;
.super Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
.source "LocationMessageItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider",
        "<",
        "Lio/rong/message/LocationMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lio/rong/imkit/model/ProviderTag;
    messageContent = Lio/rong/message/LocationMessage;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;-><init>()V

    .line 37
    return-void
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
    check-cast p3, Lio/rong/message/LocationMessage;

    .end local p3    # "x2":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/LocationMessageItemProvider;->bindView(Landroid/view/View;ILio/rong/message/LocationMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public bindView(Landroid/view/View;ILio/rong/message/LocationMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/message/LocationMessage;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;

    .line 100
    .local v0, "holder":Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;
    invoke-virtual {p3}, Lio/rong/message/LocationMessage;->getImgUri()Landroid/net/Uri;

    move-result-object v1

    .line 101
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    :cond_0
    iget-object v2, v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;->img:Lio/rong/imkit/widget/AsyncImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    .line 106
    :goto_0
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v2, v3, :cond_2

    .line 107
    iget-object v2, v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    sget v3, Lio/rong/imkit/R$drawable;->rc_ic_bubble_no_right:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 112
    :goto_1
    iget-object v2, v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p3}, Lio/rong/message/LocationMessage;->getPoi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void

    .line 104
    :cond_1
    iget-object v2, v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;->img:Lio/rong/imkit/widget/AsyncImageView;

    new-instance v3, Lcom/sea_monster/resource/Resource;

    invoke-direct {v3, v1}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v2, v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    sget v3, Lio/rong/imkit/R$drawable;->rc_ic_bubble_no_left:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public bridge synthetic getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;
    .locals 1
    .param p1, "x0"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 34
    check-cast p1, Lio/rong/message/LocationMessage;

    .end local p1    # "x0":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/LocationMessageItemProvider;->getContentSummary(Lio/rong/message/LocationMessage;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getContentSummary(Lio/rong/message/LocationMessage;)Landroid/text/Spannable;
    .locals 3
    .param p1, "data"    # Lio/rong/message/LocationMessage;

    .prologue
    .line 117
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_message_content_location:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$layout;->rc_item_location_message:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;-><init>(Lio/rong/imkit/widget/provider/LocationMessageItemProvider;)V

    .line 49
    .local v0, "holder":Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->rc_img:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;->img:Lio/rong/imkit/widget/AsyncImageView;

    .line 50
    sget v2, Lio/rong/imkit/R$id;->rc_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;->title:Landroid/widget/TextView;

    .line 51
    sget v2, Lio/rong/imkit/R$id;->rc_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    .line 53
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    return-object v1
.end method

.method public bridge synthetic onItemClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "x3"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 34
    check-cast p3, Lio/rong/message/LocationMessage;

    .end local p3    # "x2":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/LocationMessageItemProvider;->onItemClick(Landroid/view/View;ILio/rong/message/LocationMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;ILio/rong/message/LocationMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/message/LocationMessage;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 60
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
    check-cast p3, Lio/rong/message/LocationMessage;

    .end local p3    # "x2":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/LocationMessageItemProvider;->onItemLongClick(Landroid/view/View;ILio/rong/message/LocationMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILio/rong/message/LocationMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/message/LocationMessage;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 64
    const/4 v3, 0x0

    .line 66
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

    .line 69
    :cond_0
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-static {v5, v6}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v2

    .line 70
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

    .line 72
    .local v0, "info":Lio/rong/imlib/model/PublicServiceProfile;
    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 85
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

    .line 87
    .local v1, "items":[Ljava/lang/String;
    invoke-static {v3, v1}, Lio/rong/imkit/widget/ArraysDialogFragment;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v5

    new-instance v6, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$1;

    invoke-direct {v6, p0, p4}, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$1;-><init>(Lio/rong/imkit/widget/provider/LocationMessageItemProvider;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual {v5, v6}, Lio/rong/imkit/widget/ArraysDialogFragment;->setArraysDialogItemListener(Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v6, v5}, Lio/rong/imkit/widget/ArraysDialogFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 95
    return-void

    .line 76
    .end local v1    # "items":[Ljava/lang/String;
    :cond_2
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v4

    .line 77
    .local v4, "userInfo":Lio/rong/imlib/model/UserInfo;
    if-nez v4, :cond_3

    .line 78
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v4

    .line 79
    :cond_3
    if-eqz v4, :cond_1

    .line 80
    invoke-virtual {v4}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.class public Lio/rong/imkit/widget/provider/ImageMessageItemProvider;
.super Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
.source "ImageMessageItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider",
        "<",
        "Lio/rong/message/ImageMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lio/rong/imkit/model/ProviderTag;
    messageContent = Lio/rong/message/ImageMessage;
    showProgress = false
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;-><init>()V

    .line 32
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
    .line 29
    check-cast p3, Lio/rong/message/ImageMessage;

    .end local p3    # "x2":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/ImageMessageItemProvider;->bindView(Landroid/view/View;ILio/rong/message/ImageMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public bindView(Landroid/view/View;ILio/rong/message/ImageMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/message/ImageMessage;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;

    .line 88
    .local v0, "holder":Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v3

    sget-object v4, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v3, v4, :cond_0

    .line 89
    sget v3, Lio/rong/imkit/R$drawable;->rc_ic_bubble_no_right:I

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 94
    :goto_0
    iget-object v4, v0, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;->img:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {p3}, Lio/rong/message/ImageMessage;->getThumUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, v3}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    .line 96
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getProgress()I

    move-result v1

    .line 98
    .local v1, "progress":I
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v2

    .line 100
    .local v2, "status":Lio/rong/imlib/model/Message$SentStatus;
    sget-object v3, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v2, v3}, Lio/rong/imlib/model/Message$SentStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x64

    if-ge v1, v3, :cond_3

    .line 102
    if-nez v1, :cond_2

    .line 103
    iget-object v3, v0, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;->message:Landroid/widget/TextView;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lio/rong/imkit/R$string;->rc_waiting:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :goto_2
    iget-object v3, v0, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;->message:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    :goto_3
    return-void

    .line 91
    .end local v1    # "progress":I
    .end local v2    # "status":Lio/rong/imlib/model/Message$SentStatus;
    :cond_0
    sget v3, Lio/rong/imkit/R$drawable;->rc_ic_bubble_no_left:I

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 94
    :cond_1
    new-instance v3, Lcom/sea_monster/resource/Resource;

    invoke-virtual {p3}, Lio/rong/message/ImageMessage;->getThumUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    goto :goto_1

    .line 105
    .restart local v1    # "progress":I
    .restart local v2    # "status":Lio/rong/imlib/model/Message$SentStatus;
    :cond_2
    iget-object v3, v0, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;->message:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 109
    :cond_3
    iget-object v3, v0, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;->message:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public bridge synthetic getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;
    .locals 1
    .param p1, "x0"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 29
    check-cast p1, Lio/rong/message/ImageMessage;

    .end local p1    # "x0":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/ImageMessageItemProvider;->getContentSummary(Lio/rong/message/ImageMessage;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getContentSummary(Lio/rong/message/ImageMessage;)Landroid/text/Spannable;
    .locals 3
    .param p1, "data"    # Lio/rong/message/ImageMessage;

    .prologue
    .line 115
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_message_content_image:I

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
    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$layout;->rc_item_image_message:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;-><init>(Lio/rong/imkit/widget/provider/ImageMessageItemProvider;)V

    .line 43
    .local v0, "holder":Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->rc_msg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;->message:Landroid/widget/TextView;

    .line 44
    sget v2, Lio/rong/imkit/R$id;->rc_img:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;->img:Lio/rong/imkit/widget/AsyncImageView;

    .line 46
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 47
    return-object v1
.end method

.method public bridge synthetic onItemClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "x3"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 29
    check-cast p3, Lio/rong/message/ImageMessage;

    .end local p3    # "x2":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/ImageMessageItemProvider;->onItemClick(Landroid/view/View;ILio/rong/message/ImageMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;ILio/rong/message/ImageMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/message/ImageMessage;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 52
    if-nez p3, :cond_0

    .line 55
    :cond_0
    return-void
.end method

.method public bridge synthetic onItemLongClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "x3"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 29
    check-cast p3, Lio/rong/message/ImageMessage;

    .end local p3    # "x2":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/ImageMessageItemProvider;->onItemLongClick(Landroid/view/View;ILio/rong/message/ImageMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILio/rong/message/ImageMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/message/ImageMessage;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 62
    .local v1, "name":Ljava/lang/String;
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v3

    sget-object v4, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v3, v4}, Lio/rong/imlib/model/Message$SentStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 66
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v2

    .line 67
    .local v2, "userInfo":Lio/rong/imlib/model/UserInfo;
    if-nez v2, :cond_1

    .line 68
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v2

    .line 69
    :cond_1
    if-eqz v2, :cond_2

    .line 70
    invoke-virtual {v2}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 72
    .end local v2    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_2
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lio/rong/imkit/R$string;->rc_dialog_item_message_delete:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 74
    .local v0, "items":[Ljava/lang/String;
    invoke-static {v1, v0}, Lio/rong/imkit/widget/ArraysDialogFragment;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v3

    new-instance v4, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$1;

    invoke-direct {v4, p0, p4}, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$1;-><init>(Lio/rong/imkit/widget/provider/ImageMessageItemProvider;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual {v3, v4}, Lio/rong/imkit/widget/ArraysDialogFragment;->setArraysDialogItemListener(Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v4, v3}, Lio/rong/imkit/widget/ArraysDialogFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0
.end method

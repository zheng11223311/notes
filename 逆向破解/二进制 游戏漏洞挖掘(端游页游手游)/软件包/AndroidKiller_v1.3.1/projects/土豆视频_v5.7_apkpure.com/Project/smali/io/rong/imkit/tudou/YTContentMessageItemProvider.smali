.class public Lio/rong/imkit/tudou/YTContentMessageItemProvider;
.super Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
.source "YTContentMessageItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/tudou/YTContentMessageItemProvider$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider",
        "<",
        "Lio/rong/imkit/tudou/YTContentMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lio/rong/imkit/model/ProviderTag;
    messageContent = Lio/rong/imkit/tudou/YTContentMessage;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;-><init>()V

    .line 34
    return-void
.end method

.method public static formatTime(D)Ljava/lang/String;
    .locals 10
    .param p0, "s"    # D

    .prologue
    .line 116
    double-to-long v2, p0

    .line 118
    .local v2, "msec":J
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x3c

    rem-long v8, v2, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "seconds":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x3c

    div-long v8, v2, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "minutes":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u5206"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u79d2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 126
    .end local v1    # "minutes":Ljava/lang/String;
    .end local v4    # "seconds":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, ""

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;ILio/rong/imkit/tudou/YTContentMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/imkit/tudou/YTContentMessage;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/tudou/YTContentMessageItemProvider$ViewHolder;

    .line 98
    .local v0, "holder":Lio/rong/imkit/tudou/YTContentMessageItemProvider$ViewHolder;
    iget-object v1, v0, Lio/rong/imkit/tudou/YTContentMessageItemProvider$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6211\u6b63\u5728\u770b\u3010"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lio/rong/imkit/tudou/YTContentMessage;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u3011"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lio/rong/imkit/tudou/YTContentMessage;->getDuration()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Lio/rong/imkit/tudou/YTContentMessageItemProvider;->formatTime(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, v0, Lio/rong/imkit/tudou/YTContentMessageItemProvider$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {p3}, Lio/rong/imkit/tudou/YTContentMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v2, v0, Lio/rong/imkit/tudou/YTContentMessageItemProvider$ViewHolder;->img:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {p3}, Lio/rong/imkit/tudou/YTContentMessage;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    .line 102
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v1, v2, :cond_1

    .line 103
    iget-object v1, v0, Lio/rong/imkit/tudou/YTContentMessageItemProvider$ViewHolder;->mContainer:Landroid/view/View;

    sget v2, Lio/rong/imkit/R$drawable;->tudou_send_video_blue_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 107
    :goto_1
    return-void

    .line 100
    :cond_0
    new-instance v1, Lcom/sea_monster/resource/Resource;

    invoke-virtual {p3}, Lio/rong/imkit/tudou/YTContentMessage;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sea_monster/resource/Resource;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v1, v0, Lio/rong/imkit/tudou/YTContentMessageItemProvider$ViewHolder;->mContainer:Landroid/view/View;

    sget v2, Lio/rong/imkit/R$drawable;->tudou_send_video_left_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public bridge synthetic bindView(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "x3"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 32
    check-cast p3, Lio/rong/imkit/tudou/YTContentMessage;

    .end local p3    # "x2":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/tudou/YTContentMessageItemProvider;->bindView(Landroid/view/View;ILio/rong/imkit/tudou/YTContentMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public getContentSummary(Lio/rong/imkit/tudou/YTContentMessage;)Landroid/text/Spannable;
    .locals 3
    .param p1, "data"    # Lio/rong/imkit/tudou/YTContentMessage;

    .prologue
    .line 111
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_message_content_rich_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public bridge synthetic getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;
    .locals 1
    .param p1, "x0"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 32
    check-cast p1, Lio/rong/imkit/tudou/YTContentMessage;

    .end local p1    # "x0":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1}, Lio/rong/imkit/tudou/YTContentMessageItemProvider;->getContentSummary(Lio/rong/imkit/tudou/YTContentMessage;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$layout;->yt_content_message:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 45
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lio/rong/imkit/tudou/YTContentMessageItemProvider$ViewHolder;

    invoke-direct {v0, p0}, Lio/rong/imkit/tudou/YTContentMessageItemProvider$ViewHolder;-><init>(Lio/rong/imkit/tudou/YTContentMessageItemProvider;)V

    .line 46
    .local v0, "holder":Lio/rong/imkit/tudou/YTContentMessageItemProvider$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->rc_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/tudou/YTContentMessageItemProvider$ViewHolder;->title:Landroid/widget/TextView;

    .line 47
    sget v2, Lio/rong/imkit/R$id;->rc_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/tudou/YTContentMessageItemProvider$ViewHolder;->content:Landroid/widget/TextView;

    .line 48
    sget v2, Lio/rong/imkit/R$id;->rc_img:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v2, v0, Lio/rong/imkit/tudou/YTContentMessageItemProvider$ViewHolder;->img:Lio/rong/imkit/widget/AsyncImageView;

    .line 49
    sget v2, Lio/rong/imkit/R$id;->rc_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Lio/rong/imkit/tudou/YTContentMessageItemProvider$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    .line 50
    sget v2, Lio/rong/imkit/R$id;->rc_title_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lio/rong/imkit/tudou/YTContentMessageItemProvider$ViewHolder;->mContainer:Landroid/view/View;

    .line 51
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    return-object v1
.end method

.method public onItemClick(Landroid/view/View;ILio/rong/imkit/tudou/YTContentMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/imkit/tudou/YTContentMessage;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/rong/imkit/tools/RongWebviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    const-string/jumbo v1, "url"

    invoke-virtual {p3}, Lio/rong/imkit/tudou/YTContentMessage;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "defaultUA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method public bridge synthetic onItemClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "x3"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 32
    check-cast p3, Lio/rong/imkit/tudou/YTContentMessage;

    .end local p3    # "x2":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/tudou/YTContentMessageItemProvider;->onItemClick(Landroid/view/View;ILio/rong/imkit/tudou/YTContentMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILio/rong/imkit/tudou/YTContentMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/imkit/tudou/YTContentMessage;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 66
    const/4 v3, 0x0

    .line 67
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

    .line 71
    .local v0, "info":Lio/rong/imlib/model/PublicServiceProfile;
    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 83
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

    .line 85
    .local v1, "items":[Ljava/lang/String;
    invoke-static {v3, v1}, Lio/rong/imkit/widget/ArraysDialogFragment;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v5

    new-instance v6, Lio/rong/imkit/tudou/YTContentMessageItemProvider$1;

    invoke-direct {v6, p0, p4}, Lio/rong/imkit/tudou/YTContentMessageItemProvider$1;-><init>(Lio/rong/imkit/tudou/YTContentMessageItemProvider;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual {v5, v6}, Lio/rong/imkit/widget/ArraysDialogFragment;->setArraysDialogItemListener(Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v6, v5}, Lio/rong/imkit/widget/ArraysDialogFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 93
    return-void

    .line 75
    .end local v1    # "items":[Ljava/lang/String;
    :cond_2
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v4

    .line 76
    .local v4, "userInfo":Lio/rong/imlib/model/UserInfo;
    if-nez v4, :cond_3

    .line 77
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v4

    .line 78
    :cond_3
    if-eqz v4, :cond_1

    .line 79
    invoke-virtual {v4}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public bridge synthetic onItemLongClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "x3"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 32
    check-cast p3, Lio/rong/imkit/tudou/YTContentMessage;

    .end local p3    # "x2":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/tudou/YTContentMessageItemProvider;->onItemLongClick(Landroid/view/View;ILio/rong/imkit/tudou/YTContentMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

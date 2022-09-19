.class public Lio/rong/imkit/widget/provider/TextMessageItemProvider;
.super Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
.source "TextMessageItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider",
        "<",
        "Lio/rong/message/TextMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lio/rong/imkit/model/ProviderTag;
    messageContent = Lio/rong/message/TextMessage;
.end annotation


# instance fields
.field arraysDialogFragment:Lio/rong/imkit/widget/ArraysDialogFragment;

.field items:[Ljava/lang/String;


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
    check-cast p3, Lio/rong/message/TextMessage;

    .end local p3    # "x2":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/TextMessageItemProvider;->bindView(Landroid/view/View;ILio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public bindView(Landroid/view/View;ILio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/message/TextMessage;
    .param p4, "data"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;

    .line 132
    .local v0, "holder":Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v3

    sget-object v4, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v3, v4, :cond_1

    .line 133
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;->message:Lio/rong/imkit/model/LinkTextView;

    sget v4, Lio/rong/imkit/R$drawable;->rc_ic_bubble_right_selector:I

    invoke-virtual {v3, v4}, Lio/rong/imkit/model/LinkTextView;->setBackgroundResource(I)V

    .line 134
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;->message:Lio/rong/imkit/model/LinkTextView;

    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/model/LinkTextView;->setTextColor(I)V

    .line 140
    :goto_0
    iget-object v2, v0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;->message:Lio/rong/imkit/model/LinkTextView;

    .line 141
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getTextMessageContent()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 142
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getTextMessageContent()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 143
    .local v1, "len":I
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_2

    const/16 v3, 0x1f4

    if-le v1, v3, :cond_2

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lio/rong/imkit/widget/provider/TextMessageItemProvider$2;

    invoke-direct {v4, p0, v2, p4}, Lio/rong/imkit/widget/provider/TextMessageItemProvider$2;-><init>(Lio/rong/imkit/widget/provider/TextMessageItemProvider;Landroid/widget/TextView;Lio/rong/imkit/model/UIMessage;)V

    const-wide/16 v6, 0x32

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    .end local v1    # "len":I
    :cond_0
    :goto_1
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;->message:Lio/rong/imkit/model/LinkTextView;

    invoke-static {}, Lio/rong/imkit/model/LinkTextView$LinkTextViewMovementMethod;->getInstance()Lio/rong/imkit/model/LinkTextView$LinkTextViewMovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/model/LinkTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 156
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;->message:Lio/rong/imkit/model/LinkTextView;

    new-instance v4, Lio/rong/imkit/widget/provider/TextMessageItemProvider$3;

    invoke-direct {v4, p0, p1}, Lio/rong/imkit/widget/provider/TextMessageItemProvider$3;-><init>(Lio/rong/imkit/widget/provider/TextMessageItemProvider;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Lio/rong/imkit/model/LinkTextView;->setOnLinkClickListener(Lio/rong/imkit/model/LinkTextView$OnLinkClickListener;)V

    .line 167
    return-void

    .line 136
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_1
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;->message:Lio/rong/imkit/model/LinkTextView;

    sget v4, Lio/rong/imkit/R$drawable;->rc_ic_bubble_left_selector:I

    invoke-virtual {v3, v4}, Lio/rong/imkit/model/LinkTextView;->setBackgroundResource(I)V

    .line 137
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;->message:Lio/rong/imkit/model/LinkTextView;

    const-string v4, "#313131"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/model/LinkTextView;->setTextColor(I)V

    goto :goto_0

    .line 151
    .restart local v1    # "len":I
    .restart local v2    # "textView":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getTextMessageContent()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getArraysDialogFragment()Lio/rong/imkit/widget/ArraysDialogFragment;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextMessageItemProvider;->arraysDialogFragment:Lio/rong/imkit/widget/ArraysDialogFragment;

    if-nez v0, :cond_0

    .line 124
    const-string/jumbo v0, "\u9009\u62e9\u4f60\u8981\u7684\u64cd\u4f5c"

    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextMessageItemProvider;->items:[Ljava/lang/String;

    invoke-static {v0, v1}, Lio/rong/imkit/widget/ArraysDialogFragment;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextMessageItemProvider;->arraysDialogFragment:Lio/rong/imkit/widget/ArraysDialogFragment;

    goto :goto_0
.end method

.method public bridge synthetic getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;
    .locals 1
    .param p1, "x0"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 34
    check-cast p1, Lio/rong/message/TextMessage;

    .end local p1    # "x0":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/TextMessageItemProvider;->getContentSummary(Lio/rong/message/TextMessage;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getContentSummary(Lio/rong/message/TextMessage;)Landroid/text/Spannable;
    .locals 3
    .param p1, "data"    # Lio/rong/message/TextMessage;

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x64

    .line 57
    if-nez p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-object v1

    .line 60
    :cond_1
    invoke-virtual {p1}, Lio/rong/message/TextMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_2
    new-instance v1, Landroid/text/SpannableString;

    invoke-static {v0}, Lio/rong/imkit/util/AndroidEmoji;->ensure(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$layout;->rc_item_text_message:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;-><init>(Lio/rong/imkit/widget/provider/TextMessageItemProvider;)V

    .line 50
    .local v0, "holder":Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;
    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/LinkTextView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;->message:Lio/rong/imkit/model/LinkTextView;

    .line 51
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
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
    check-cast p3, Lio/rong/message/TextMessage;

    .end local p3    # "x2":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/TextMessageItemProvider;->onItemClick(Landroid/view/View;ILio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;ILio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/message/TextMessage;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 73
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
    check-cast p3, Lio/rong/message/TextMessage;

    .end local p3    # "x2":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/TextMessageItemProvider;->onItemLongClick(Landroid/view/View;ILio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/message/TextMessage;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    const/4 v10, 0x1

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;

    .line 78
    .local v0, "holder":Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;
    iput-boolean v10, v0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;->longClick:Z

    .line 79
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    move-object v6, p1

    .line 80
    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 81
    .local v4, "text":Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    instance-of v6, v4, Landroid/text/Spannable;

    if-eqz v6, :cond_0

    .line 82
    check-cast v4, Landroid/text/Spannable;

    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 85
    :cond_0
    const/4 v3, 0x0

    .line 86
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v7}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v7}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 88
    :cond_1
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v7

    invoke-static {v6, v7}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v2

    .line 89
    .local v2, "key":Lio/rong/imkit/model/ConversationKey;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/RongContext;->getPublicServiceInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v6

    invoke-virtual {v2}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/rong/imkit/cache/RongCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/model/PublicServiceProfile;

    .line 90
    .local v1, "info":Lio/rong/imlib/model/PublicServiceProfile;
    if-eqz v1, :cond_2

    .line 91
    invoke-virtual {v1}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 104
    .end local v1    # "info":Lio/rong/imlib/model/PublicServiceProfile;
    .end local v2    # "key":Lio/rong/imkit/model/ConversationKey;
    :cond_2
    :goto_0
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lio/rong/imkit/R$string;->rc_dialog_item_message_copy:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lio/rong/imkit/R$string;->rc_dialog_item_message_delete:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    iput-object v6, p0, Lio/rong/imkit/widget/provider/TextMessageItemProvider;->items:[Ljava/lang/String;

    .line 106
    iget-object v6, p0, Lio/rong/imkit/widget/provider/TextMessageItemProvider;->items:[Ljava/lang/String;

    invoke-static {v3, v6}, Lio/rong/imkit/widget/ArraysDialogFragment;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v6

    iput-object v6, p0, Lio/rong/imkit/widget/provider/TextMessageItemProvider;->arraysDialogFragment:Lio/rong/imkit/widget/ArraysDialogFragment;

    .line 107
    iget-object v6, p0, Lio/rong/imkit/widget/provider/TextMessageItemProvider;->arraysDialogFragment:Lio/rong/imkit/widget/ArraysDialogFragment;

    new-instance v7, Lio/rong/imkit/widget/provider/TextMessageItemProvider$1;

    invoke-direct {v7, p0, p1, p3, p4}, Lio/rong/imkit/widget/provider/TextMessageItemProvider$1;-><init>(Lio/rong/imkit/widget/provider/TextMessageItemProvider;Landroid/view/View;Lio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual {v6, v7}, Lio/rong/imkit/widget/ArraysDialogFragment;->setArraysDialogItemListener(Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v7, v6}, Lio/rong/imkit/widget/ArraysDialogFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 120
    return-void

    .line 93
    :cond_3
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 94
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v5

    .line 95
    .local v5, "userInfo":Lio/rong/imlib/model/UserInfo;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    .line 96
    :cond_4
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/RongContext;->getUserInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v6

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/rong/imkit/cache/RongCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "userInfo":Lio/rong/imlib/model/UserInfo;
    check-cast v5, Lio/rong/imlib/model/UserInfo;

    .line 98
    .restart local v5    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_5
    if-eqz v5, :cond_2

    .line 99
    invoke-virtual {v5}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

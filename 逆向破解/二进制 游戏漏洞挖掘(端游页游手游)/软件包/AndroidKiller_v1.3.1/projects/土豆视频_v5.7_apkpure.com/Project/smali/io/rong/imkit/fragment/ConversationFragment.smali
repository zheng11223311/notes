.class public Lio/rong/imkit/fragment/ConversationFragment;
.super Lio/rong/imkit/fragment/DispatchResultFragment;
.source "ConversationFragment.java"


# instance fields
.field fragment:Lio/rong/imkit/fragment/MessageInputFragment;

.field mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field mCurrentConversationInfo:Lio/rong/imkit/model/ConversationInfo;

.field mInputFragment:Lio/rong/imkit/fragment/UriFragment;

.field mListFragment:Lio/rong/imkit/fragment/UriFragment;

.field mTargetId:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field private onInfoButtonClick:Lio/rong/imkit/widget/InputView$OnInfoButtonClick;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lio/rong/imkit/fragment/DispatchResultFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageListFragment()Lio/rong/imkit/fragment/UriFragment;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationFragment;->mListFragment:Lio/rong/imkit/fragment/UriFragment;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method protected initFragment(Landroid/net/Uri;)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x1

    .line 79
    if-nez p1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 84
    .local v5, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, "typeStr":Ljava/lang/String;
    invoke-static {v7}, Lio/rong/imlib/model/Conversation$ConversationType;->valueOf(Ljava/lang/String;)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v9

    iput-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 86
    const-string/jumbo v9, "targetId"

    invoke-virtual {p1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mTargetId:Ljava/lang/String;

    .line 87
    const-string/jumbo v9, "title"

    invoke-virtual {p1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mTitle:Ljava/lang/String;

    .line 89
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    iget-object v10, p0, Lio/rong/imkit/fragment/ConversationFragment;->mTargetId:Ljava/lang/String;

    invoke-static {v9, v10}, Lio/rong/imkit/model/ConversationInfo;->obtain(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imkit/model/ConversationInfo;

    move-result-object v9

    iput-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mCurrentConversationInfo:Lio/rong/imkit/model/ConversationInfo;

    .line 90
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v9

    iget-object v10, p0, Lio/rong/imkit/fragment/ConversationFragment;->mCurrentConversationInfo:Lio/rong/imkit/model/ConversationInfo;

    invoke-virtual {v9, v10}, Lio/rong/imkit/RongContext;->registerConversationInfo(Lio/rong/imkit/model/ConversationInfo;)V

    .line 93
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    const v10, 0x102000a

    invoke-virtual {v9, v10}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v9

    check-cast v9, Lio/rong/imkit/fragment/UriFragment;

    iput-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mListFragment:Lio/rong/imkit/fragment/UriFragment;

    .line 94
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    const v10, 0x1020017

    invoke-virtual {v9, v10}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v9

    check-cast v9, Lio/rong/imkit/fragment/UriFragment;

    iput-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/UriFragment;

    .line 96
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mListFragment:Lio/rong/imkit/fragment/UriFragment;

    if-nez v9, :cond_2

    .line 97
    new-instance v9, Lio/rong/imkit/fragment/MessageListFragment;

    invoke-direct {v9}, Lio/rong/imkit/fragment/MessageListFragment;-><init>()V

    iput-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mListFragment:Lio/rong/imkit/fragment/UriFragment;

    .line 99
    :cond_2
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/UriFragment;

    if-nez v9, :cond_3

    .line 100
    new-instance v9, Lio/rong/imkit/fragment/MessageInputFragment;

    invoke-direct {v9}, Lio/rong/imkit/fragment/MessageInputFragment;-><init>()V

    iput-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/UriFragment;

    .line 102
    :cond_3
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mListFragment:Lio/rong/imkit/fragment/UriFragment;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mListFragment:Lio/rong/imkit/fragment/UriFragment;

    invoke-virtual {v9}, Lio/rong/imkit/fragment/UriFragment;->getUri()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mListFragment:Lio/rong/imkit/fragment/UriFragment;

    invoke-virtual {v9}, Lio/rong/imkit/fragment/UriFragment;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 103
    :cond_4
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mListFragment:Lio/rong/imkit/fragment/UriFragment;

    invoke-virtual {v9, p1}, Lio/rong/imkit/fragment/UriFragment;->setUri(Landroid/net/Uri;)V

    .line 105
    :cond_5
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/UriFragment;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/UriFragment;

    invoke-virtual {v9}, Lio/rong/imkit/fragment/UriFragment;->getUri()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/UriFragment;

    invoke-virtual {v9}, Lio/rong/imkit/fragment/UriFragment;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 106
    :cond_6
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/UriFragment;

    invoke-virtual {v9, p1}, Lio/rong/imkit/fragment/UriFragment;->setUri(Landroid/net/Uri;)V

    .line 108
    :cond_7
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "discussion"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string/jumbo v9, "targetIds"

    invoke-virtual {p1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 109
    const-string/jumbo v9, "targetIds"

    invoke-virtual {p1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "delimiter"

    invoke-virtual {p1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, "userIds":[Ljava/lang/String;
    if-eqz v8, :cond_9

    array-length v9, v8

    if-lez v9, :cond_9

    .line 113
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_8

    aget-object v2, v0, v1

    .line 115
    .local v2, "item":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    .end local v2    # "item":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lio/rong/imkit/fragment/ConversationFragment$1;

    invoke-direct {v10, p0, p1, v4}, Lio/rong/imkit/fragment/ConversationFragment$1;-><init>(Lio/rong/imkit/fragment/ConversationFragment;Landroid/net/Uri;Ljava/util/List;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "userIds":[Ljava/lang/String;
    :cond_9
    :goto_2
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v9, v10, :cond_a

    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v9, v10, :cond_0

    .line 186
    :cond_a
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v9

    new-instance v10, Lio/rong/imkit/fragment/ConversationFragment$3;

    invoke-direct {v10, p0}, Lio/rong/imkit/fragment/ConversationFragment$3;-><init>(Lio/rong/imkit/fragment/ConversationFragment;)V

    invoke-virtual {v9, v10}, Lio/rong/imkit/RongContext;->executorBackground(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 150
    :cond_b
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "chatroom"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 151
    const-string/jumbo v9, "targetId"

    invoke-virtual {p1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "targetId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 156
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lio/rong/imkit/fragment/ConversationFragment$2;

    invoke-direct {v10, p0, v6}, Lio/rong/imkit/fragment/ConversationFragment$2;-><init>(Lio/rong/imkit/fragment/ConversationFragment;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 237
    invoke-super {p0, p1}, Lio/rong/imkit/fragment/DispatchResultFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 238
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lio/rong/imkit/fragment/DispatchResultFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    sget v1, Lio/rong/imkit/R$layout;->rc_fr_conversation:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x1020017

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/fragment/MessageInputFragment;

    iput-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment;->fragment:Lio/rong/imkit/fragment/MessageInputFragment;

    .line 53
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment;->fragment:Lio/rong/imkit/fragment/MessageInputFragment;

    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationFragment;->onInfoButtonClick:Lio/rong/imkit/widget/InputView$OnInfoButtonClick;

    invoke-virtual {v1, v2}, Lio/rong/imkit/fragment/MessageInputFragment;->setOnInfoButtonClick(Lio/rong/imkit/widget/InputView$OnInfoButtonClick;)V

    .line 54
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v0, v1, :cond_0

    .line 213
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/fragment/ConversationFragment$4;

    invoke-direct {v1, p0}, Lio/rong/imkit/fragment/ConversationFragment$4;-><init>(Lio/rong/imkit/fragment/ConversationFragment;)V

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->executorBackground(Ljava/lang/Runnable;)V

    .line 222
    :cond_0
    invoke-super {p0}, Lio/rong/imkit/fragment/DispatchResultFragment;->onDestroy()V

    .line 223
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment;->mCurrentConversationInfo:Lio/rong/imkit/model/ConversationInfo;

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->unregisterConversationInfo(Lio/rong/imkit/model/ConversationInfo;)V

    .line 206
    invoke-super {p0}, Lio/rong/imkit/fragment/DispatchResultFragment;->onDestroyView()V

    .line 207
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lio/rong/imkit/RongNotificationManager;->getInstance()Lio/rong/imkit/RongNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongNotificationManager;->onRemoveNotification()V

    .line 64
    invoke-super {p0}, Lio/rong/imkit/fragment/DispatchResultFragment;->onResume()V

    .line 65
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 200
    invoke-super {p0, p1, p2}, Lio/rong/imkit/fragment/DispatchResultFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 201
    return-void
.end method

.method public setOnInfoButtonClick(Lio/rong/imkit/widget/InputView$OnInfoButtonClick;)V
    .locals 1
    .param p1, "onInfoButtonClick"    # Lio/rong/imkit/widget/InputView$OnInfoButtonClick;

    .prologue
    .line 70
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationFragment;->onInfoButtonClick:Lio/rong/imkit/widget/InputView$OnInfoButtonClick;

    .line 72
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationFragment;->fragment:Lio/rong/imkit/fragment/MessageInputFragment;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationFragment;->fragment:Lio/rong/imkit/fragment/MessageInputFragment;

    invoke-virtual {v0, p1}, Lio/rong/imkit/fragment/MessageInputFragment;->setOnInfoButtonClick(Lio/rong/imkit/widget/InputView$OnInfoButtonClick;)V

    .line 74
    :cond_0
    return-void
.end method

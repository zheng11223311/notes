.class public Lio/rong/imkit/fragment/MessageInputFragment;
.super Lio/rong/imkit/fragment/UriFragment;
.source "MessageInputFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final IS_SHOW_EXTEND_INPUTS:Ljava/lang/String; = "isShowExtendInputs"


# instance fields
.field mConversation:Lio/rong/imlib/model/Conversation;

.field mInput:Lio/rong/imkit/widget/InputView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lio/rong/imkit/fragment/UriFragment;-><init>()V

    return-void
.end method

.method private getDispatchFragment(Landroid/support/v4/app/Fragment;)Lio/rong/imkit/fragment/DispatchResultFragment;
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 202
    instance-of v0, p1, Lio/rong/imkit/fragment/DispatchResultFragment;

    if-eqz v0, :cond_0

    .line 203
    check-cast p1, Lio/rong/imkit/fragment/DispatchResultFragment;

    .line 208
    .end local p1    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object p1

    .line 205
    .restart local p1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 206
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must has a parent fragment instance of DispatchFragment."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/rong/imkit/fragment/MessageInputFragment;->getDispatchFragment(Landroid/support/v4/app/Fragment;)Lio/rong/imkit/fragment/DispatchResultFragment;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method protected initFragment(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 159
    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 160
    .local v2, "type":Lio/rong/imlib/model/Conversation$ConversationType;
    const-string/jumbo v3, "targetId"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "targetId":Ljava/lang/String;
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "title":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-static {v2, v0, v1}, Lio/rong/imlib/model/Conversation;->obtain(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v3

    iput-object v3, p0, Lio/rong/imkit/fragment/MessageInputFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    .line 169
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageInputFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    if-eqz v3, :cond_0

    .line 170
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageInputFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {p0, v3}, Lio/rong/imkit/fragment/MessageInputFragment;->setCurrentConversation(Lio/rong/imlib/model/Conversation;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 232
    shr-int/lit8 v0, p1, 0x7

    .line 233
    .local v0, "index":I
    if-eqz v0, :cond_3

    .line 234
    add-int/lit8 v0, v0, -0x1

    .line 235
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/MessageInputFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongContext;->getRegisteredExtendProviderList(Lio/rong/imlib/model/Conversation$ConversationType;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_0

    .line 236
    const-string v1, "onActivityResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity result provider index out of range: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lio/rong/imkit/RLog;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_0
    return-void

    .line 241
    :cond_0
    if-nez v0, :cond_1

    .line 242
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getPrimaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v1

    and-int/lit8 v2, p1, 0x7f

    invoke-virtual {v1, v2, p2, p3}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 243
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 244
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getSecondaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v1

    and-int/lit8 v2, p1, 0x7f

    invoke-virtual {v1, v2, p2, p3}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 246
    :cond_2
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/MessageInputFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongContext;->getRegisteredExtendProviderList(Lio/rong/imlib/model/Conversation$ConversationType;)Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, v0, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;

    and-int/lit8 v2, p1, 0x7f

    invoke-virtual {v1, v2, p2, p3}, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 252
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lio/rong/imkit/fragment/UriFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
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
    .line 39
    sget v1, Lio/rong/imkit/R$layout;->rc_fr_messageinput:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "view":Landroid/view/View;
    sget v1, Lio/rong/imkit/R$id;->rc_input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/widget/InputView;

    iput-object v1, p0, Lio/rong/imkit/fragment/MessageInputFragment;->mInput:Lio/rong/imkit/widget/InputView;

    .line 41
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 42
    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 182
    const-string v0, "onDestroyView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the primary input provider is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getPrimaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getPrimaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onDetached()V

    .line 186
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getSecondaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getSecondaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onDetached()V

    .line 190
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 192
    invoke-super {p0}, Lio/rong/imkit/fragment/UriFragment;->onDestroyView()V

    .line 193
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$InputViewEvent;)V
    .locals 2
    .param p1, "event"    # Lio/rong/imkit/model/Event$InputViewEvent;

    .prologue
    .line 258
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$InputViewEvent;->isVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageInputFragment;->mInput:Lio/rong/imkit/widget/InputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/InputView;->setExtendInputsVisibility(I)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageInputFragment;->mInput:Lio/rong/imkit/widget/InputView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/InputView;->setExtendInputsVisibility(I)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/16 v4, 0x1f4

    .line 47
    invoke-super {p0, p1, p2}, Lio/rong/imkit/fragment/UriFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 49
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getPrimaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v1

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MainInputProvider must not be null."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_0
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageInputFragment;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 55
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageInputFragment;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "isShowExtendInputs"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "isShowExtendInputs":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    :cond_1
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageInputFragment;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/fragment/MessageInputFragment$1;

    invoke-direct {v2, p0}, Lio/rong/imkit/fragment/MessageInputFragment$1;-><init>(Lio/rong/imkit/fragment/MessageInputFragment;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    .end local v0    # "isShowExtendInputs":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 66
    .restart local v0    # "isShowExtendInputs":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageInputFragment;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/fragment/MessageInputFragment$2;

    invoke-direct {v2, p0}, Lio/rong/imkit/fragment/MessageInputFragment$2;-><init>(Lio/rong/imkit/fragment/MessageInputFragment;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setCurrentConversation(Lio/rong/imlib/model/Conversation;)V
    .locals 10
    .param p1, "conversation"    # Lio/rong/imlib/model/Conversation;

    .prologue
    .line 82
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/RongContext;->getPrimaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v6

    invoke-virtual {v6, p1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->setCurrentConversation(Lio/rong/imlib/model/Conversation;)V

    .line 84
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/RongContext;->getSecondaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 85
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/RongContext;->getSecondaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v6

    invoke-virtual {v6, p1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->setCurrentConversation(Lio/rong/imlib/model/Conversation;)V

    .line 88
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/RongContext;->getMenuInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 89
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/RongContext;->getMenuInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v6

    invoke-virtual {v6, p1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->setCurrentConversation(Lio/rong/imlib/model/Conversation;)V

    .line 92
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    iget-object v7, p0, Lio/rong/imkit/fragment/MessageInputFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v7}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/rong/imkit/RongContext;->getRegisteredExtendProviderList(Lio/rong/imlib/model/Conversation$ConversationType;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/widget/provider/InputProvider;

    .line 93
    .local v4, "provider":Lio/rong/imkit/widget/provider/InputProvider;
    invoke-virtual {v4, p1}, Lio/rong/imkit/widget/provider/InputProvider;->setCurrentConversation(Lio/rong/imlib/model/Conversation;)V

    goto :goto_0

    .line 96
    .end local v4    # "provider":Lio/rong/imkit/widget/provider/InputProvider;
    :cond_2
    iget-object v6, p0, Lio/rong/imkit/fragment/MessageInputFragment;->mInput:Lio/rong/imkit/widget/InputView;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    iget-object v8, p0, Lio/rong/imkit/fragment/MessageInputFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v8}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/rong/imkit/RongContext;->getRegisteredExtendProviderList(Lio/rong/imlib/model/Conversation$ConversationType;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/rong/imkit/widget/InputView;->setExtendProvider(Ljava/util/List;)V

    .line 98
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    iget-object v7, p0, Lio/rong/imkit/fragment/MessageInputFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v7}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/rong/imkit/RongContext;->getRegisteredExtendProviderList(Lio/rong/imlib/model/Conversation$ConversationType;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/widget/provider/InputProvider;

    .line 99
    .restart local v4    # "provider":Lio/rong/imkit/widget/provider/InputProvider;
    iget-object v6, p0, Lio/rong/imkit/fragment/MessageInputFragment;->mInput:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v4, p0, v6}, Lio/rong/imkit/widget/provider/InputProvider;->onAttached(Lio/rong/imkit/fragment/MessageInputFragment;Lio/rong/imkit/widget/InputView;)V

    goto :goto_1

    .line 102
    .end local v4    # "provider":Lio/rong/imkit/widget/provider/InputProvider;
    :cond_3
    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6, v7}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6, v7}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 105
    :cond_4
    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v7

    invoke-static {v6, v7}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v2

    .line 106
    .local v2, "key":Lio/rong/imkit/model/ConversationKey;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v2}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/rong/imkit/RongContext;->getPublicServiceInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v1

    .line 107
    .local v1, "info":Lio/rong/imlib/model/PublicServiceProfile;
    if-nez v1, :cond_7

    .line 108
    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v6

    invoke-static {v6}, Lio/rong/imlib/model/Conversation$PublicServiceType;->setValue(I)Lio/rong/imlib/model/Conversation$PublicServiceType;

    move-result-object v5

    .line 109
    .local v5, "type":Lio/rong/imlib/model/Conversation$PublicServiceType;
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 110
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v6

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lio/rong/imkit/fragment/MessageInputFragment$3;

    invoke-direct {v8, p0, p1}, Lio/rong/imkit/fragment/MessageInputFragment$3;-><init>(Lio/rong/imkit/fragment/MessageInputFragment;Lio/rong/imlib/model/Conversation;)V

    invoke-virtual {v6, v5, v7, v8}, Lio/rong/imkit/RongIMClientWrapper;->getPublicServiceProfile(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 149
    .end local v1    # "info":Lio/rong/imlib/model/PublicServiceProfile;
    .end local v2    # "key":Lio/rong/imkit/model/ConversationKey;
    .end local v5    # "type":Lio/rong/imlib/model/Conversation$PublicServiceType;
    :cond_5
    :goto_2
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/RongContext;->getPrimaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v6

    iget-object v7, p0, Lio/rong/imkit/fragment/MessageInputFragment;->mInput:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v6, p0, v7}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onAttached(Lio/rong/imkit/fragment/MessageInputFragment;Lio/rong/imkit/widget/InputView;)V

    .line 151
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/RongContext;->getSecondaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 152
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/RongContext;->getSecondaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v6

    iget-object v7, p0, Lio/rong/imkit/fragment/MessageInputFragment;->mInput:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v6, p0, v7}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onAttached(Lio/rong/imkit/fragment/MessageInputFragment;Lio/rong/imkit/widget/InputView;)V

    .line 154
    :cond_6
    return-void

    .line 134
    .restart local v1    # "info":Lio/rong/imlib/model/PublicServiceProfile;
    .restart local v2    # "key":Lio/rong/imkit/model/ConversationKey;
    :cond_7
    invoke-virtual {v1}, Lio/rong/imlib/model/PublicServiceProfile;->getMenu()Lio/rong/imlib/model/PublicServiceMenu;

    move-result-object v3

    .line 135
    .local v3, "menu":Lio/rong/imlib/model/PublicServiceMenu;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lio/rong/imlib/model/PublicServiceMenu;->getMenuItems()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v3}, Lio/rong/imlib/model/PublicServiceMenu;->getMenuItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 136
    iget-object v6, p0, Lio/rong/imkit/fragment/MessageInputFragment;->mInput:Lio/rong/imkit/widget/InputView;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongContext;->getPrimaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v7

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imkit/RongContext;->getSecondaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v8

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v9

    invoke-virtual {v9}, Lio/rong/imkit/RongContext;->getMenuInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lio/rong/imkit/widget/InputView;->setInputProviderEx(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    goto :goto_2

    .line 140
    :cond_8
    iget-object v6, p0, Lio/rong/imkit/fragment/MessageInputFragment;->mInput:Lio/rong/imkit/widget/InputView;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongContext;->getPrimaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v7

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imkit/RongContext;->getSecondaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lio/rong/imkit/widget/InputView;->setInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    goto :goto_2

    .line 145
    .end local v1    # "info":Lio/rong/imlib/model/PublicServiceProfile;
    .end local v2    # "key":Lio/rong/imkit/model/ConversationKey;
    .end local v3    # "menu":Lio/rong/imlib/model/PublicServiceMenu;
    :cond_9
    iget-object v6, p0, Lio/rong/imkit/fragment/MessageInputFragment;->mInput:Lio/rong/imkit/widget/InputView;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongContext;->getPrimaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v7

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imkit/RongContext;->getSecondaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lio/rong/imkit/widget/InputView;->setInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    goto/16 :goto_2
.end method

.method public setOnInfoButtonClick(Lio/rong/imkit/widget/InputView$OnInfoButtonClick;)V
    .locals 1
    .param p1, "onInfoButtonClick"    # Lio/rong/imkit/widget/InputView$OnInfoButtonClick;

    .prologue
    .line 77
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageInputFragment;->mInput:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v0, p1}, Lio/rong/imkit/widget/InputView;->setOnInfoButtonClickListener(Lio/rong/imkit/widget/InputView$OnInfoButtonClick;)V

    .line 78
    return-void
.end method

.method public startActivityFromProvider(Lio/rong/imkit/widget/provider/InputProvider;Landroid/content/Intent;I)V
    .locals 3
    .param p1, "provider"    # Lio/rong/imkit/widget/provider/InputProvider;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    const/4 v0, -0x1

    .line 217
    if-ne p3, v0, :cond_0

    .line 218
    invoke-virtual {p0, p2, v0}, Lio/rong/imkit/fragment/MessageInputFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 227
    :goto_0
    return-void

    .line 221
    :cond_0
    and-int/lit8 v0, p3, -0x80

    if-eqz v0, :cond_1

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 7 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    invoke-direct {p0, p0}, Lio/rong/imkit/fragment/MessageInputFragment;->getDispatchFragment(Landroid/support/v4/app/Fragment;)Lio/rong/imkit/fragment/DispatchResultFragment;

    move-result-object v0

    invoke-virtual {p1}, Lio/rong/imkit/widget/provider/InputProvider;->getIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, p3, 0x7f

    add-int/2addr v1, v2

    invoke-virtual {v0, p0, p2, v1}, Lio/rong/imkit/fragment/DispatchResultFragment;->startActivityForResult(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_0
.end method

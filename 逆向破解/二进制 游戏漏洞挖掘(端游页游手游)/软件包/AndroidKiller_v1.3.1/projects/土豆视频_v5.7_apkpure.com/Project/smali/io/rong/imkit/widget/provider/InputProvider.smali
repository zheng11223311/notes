.class public abstract Lio/rong/imkit/widget/provider/InputProvider;
.super Ljava/lang/Object;
.source "InputProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;,
        Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;
    }
.end annotation


# instance fields
.field index:I

.field mContext:Lio/rong/imkit/RongContext;

.field mCurrentConversation:Lio/rong/imlib/model/Conversation;

.field mCurrentView:Lio/rong/imkit/widget/InputView;

.field mFragment:Lio/rong/imkit/fragment/MessageInputFragment;


# direct methods
.method public constructor <init>(Lio/rong/imkit/RongContext;)V
    .locals 0
    .param p1, "context"    # Lio/rong/imkit/RongContext;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lio/rong/imkit/widget/provider/InputProvider;->mContext:Lio/rong/imkit/RongContext;

    .line 61
    return-void
.end method


# virtual methods
.method public getContext()Lio/rong/imkit/RongContext;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lio/rong/imkit/widget/provider/InputProvider;->mContext:Lio/rong/imkit/RongContext;

    return-object v0
.end method

.method public getCurrentConversation()Lio/rong/imlib/model/Conversation;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lio/rong/imkit/widget/provider/InputProvider;->mCurrentConversation:Lio/rong/imlib/model/Conversation;

    return-object v0
.end method

.method public getCurrentFragment()Lio/rong/imkit/fragment/MessageInputFragment;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lio/rong/imkit/widget/provider/InputProvider;->mFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lio/rong/imkit/widget/provider/InputProvider;->index:I

    return v0
.end method

.method public getInputView()Lio/rong/imkit/widget/InputView;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lio/rong/imkit/widget/provider/InputProvider;->mCurrentView:Lio/rong/imkit/widget/InputView;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 98
    return-void
.end method

.method public onAttached(Lio/rong/imkit/fragment/MessageInputFragment;Lio/rong/imkit/widget/InputView;)V
    .locals 0
    .param p1, "fragment"    # Lio/rong/imkit/fragment/MessageInputFragment;
    .param p2, "inputView"    # Lio/rong/imkit/widget/InputView;

    .prologue
    .line 160
    iput-object p1, p0, Lio/rong/imkit/widget/provider/InputProvider;->mFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    .line 161
    iput-object p2, p0, Lio/rong/imkit/widget/provider/InputProvider;->mCurrentView:Lio/rong/imkit/widget/InputView;

    .line 162
    return-void
.end method

.method public onDetached()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lio/rong/imkit/widget/provider/InputProvider;->mFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    .line 170
    iput-object v0, p0, Lio/rong/imkit/widget/provider/InputProvider;->mCurrentView:Lio/rong/imkit/widget/InputView;

    .line 171
    return-void
.end method

.method public publish(Lio/rong/imlib/model/MessageContent;)V
    .locals 1
    .param p1, "content"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/rong/imkit/widget/provider/InputProvider;->publish(Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 128
    return-void
.end method

.method public publish(Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 6
    .param p1, "content"    # Lio/rong/imlib/model/MessageContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/MessageContent;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Message;>;"
    const/4 v2, 0x0

    .line 137
    if-nez p1, :cond_1

    .line 138
    const-string v0, "publish"

    const-string v2, "content is null"

    invoke-static {p0, v0, v2}, Lio/rong/imkit/RLog;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/widget/provider/InputProvider;->mCurrentConversation:Lio/rong/imlib/model/Conversation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/rong/imkit/widget/provider/InputProvider;->mCurrentConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/rong/imkit/widget/provider/InputProvider;->mCurrentConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    if-nez v0, :cond_3

    .line 143
    :cond_2
    iget-object v0, p0, Lio/rong/imkit/widget/provider/InputProvider;->mFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    iget-object v2, p0, Lio/rong/imkit/widget/provider/InputProvider;->mContext:Lio/rong/imkit/RongContext;

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_notice_input_conversation_error:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/rong/imkit/fragment/MessageInputFragment;->showNotification(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 147
    :cond_3
    iget-object v0, p0, Lio/rong/imkit/widget/provider/InputProvider;->mCurrentConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lio/rong/imkit/widget/provider/InputProvider;->mCurrentConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-static {v0, v3, p1}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v1

    .line 148
    .local v1, "message":Lio/rong/imlib/model/Message;
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lio/rong/imkit/RongIMClientWrapper;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0
.end method

.method public setCurrentConversation(Lio/rong/imlib/model/Conversation;)V
    .locals 0
    .param p1, "conversation"    # Lio/rong/imlib/model/Conversation;

    .prologue
    .line 70
    iput-object p1, p0, Lio/rong/imkit/widget/provider/InputProvider;->mCurrentConversation:Lio/rong/imlib/model/Conversation;

    .line 71
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 40
    iput p1, p0, Lio/rong/imkit/widget/provider/InputProvider;->index:I

    .line 41
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lio/rong/imkit/widget/provider/InputProvider;->mFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    invoke-virtual {v0, p0, p1, p2}, Lio/rong/imkit/fragment/MessageInputFragment;->startActivityFromProvider(Lio/rong/imkit/widget/provider/InputProvider;Landroid/content/Intent;I)V

    .line 109
    return-void
.end method

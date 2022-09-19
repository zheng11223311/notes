.class Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;
.super Ljava/lang/Object;
.source "VoiceMessageItemProvider.java"

# interfaces
.implements Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayListener"
.end annotation


# instance fields
.field mParent:Landroid/view/View;

.field final synthetic this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCover(Z)V
    .locals 0
    .param p1, "limited"    # Z

    .prologue
    .line 73
    return-void
.end method

.method public onFinish()V
    .locals 6

    .prologue
    .line 89
    iget-object v1, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    iget-object v1, v1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    iget-object v1, v1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 92
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    iget-object v1, v1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mCurrentMessage:Lio/rong/imlib/model/Message;

    invoke-virtual {v1}, Lio/rong/imlib/model/Message;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v0

    .line 93
    .local v0, "isListened":Z
    iget-object v1, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    iget-object v1, v1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mCurrentMessage:Lio/rong/imlib/model/Message;

    invoke-virtual {v1}, Lio/rong/imlib/model/Message;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/Message$ReceivedStatus;->setListened()V

    .line 94
    invoke-static {}, Lio/rong/imkit/RongIMClientWrapper;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    iget-object v2, v2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mCurrentMessage:Lio/rong/imlib/model/Message;

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v2

    iget-object v3, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    iget-object v3, v3, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mCurrentMessage:Lio/rong/imlib/model/Message;

    invoke-virtual {v3}, Lio/rong/imlib/model/Message;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lio/rong/imlib/RongIMClient;->setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 95
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    iget-object v2, v2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mCurrentMessage:Lio/rong/imlib/model/Message;

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Lio/rong/imkit/model/Event$PlayAudioEvent;->obtain(Lio/rong/imlib/model/MessageContent;ZZ)Lio/rong/imkit/model/Event$PlayAudioEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 96
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/model/Event$MessageListenedEvent;

    iget-object v3, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    iget-object v3, v3, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mCurrentMessage:Lio/rong/imlib/model/Message;

    invoke-virtual {v3}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    iget-object v4, v4, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mCurrentMessage:Lio/rong/imlib/model/Message;

    invoke-virtual {v4}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    iget-object v5, v5, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mCurrentMessage:Lio/rong/imlib/model/Message;

    invoke-virtual {v5}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lio/rong/imkit/model/Event$MessageListenedEvent;-><init>(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public onPlay(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    iget-object v0, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    iget-object v0, v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    iget-object v0, v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 65
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 66
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->mParent:Landroid/view/View;

    .line 68
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 6

    .prologue
    .line 77
    iget-object v1, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    iget-object v1, v1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    iget-object v1, v1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 80
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    iget-object v1, v1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mCurrentMessage:Lio/rong/imlib/model/Message;

    invoke-virtual {v1}, Lio/rong/imlib/model/Message;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v0

    .line 81
    .local v0, "isListened":Z
    iget-object v1, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    iget-object v1, v1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mCurrentMessage:Lio/rong/imlib/model/Message;

    invoke-virtual {v1}, Lio/rong/imlib/model/Message;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/Message$ReceivedStatus;->setListened()V

    .line 82
    invoke-static {}, Lio/rong/imkit/RongIMClientWrapper;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    iget-object v2, v2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mCurrentMessage:Lio/rong/imlib/model/Message;

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v2

    iget-object v3, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    iget-object v3, v3, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mCurrentMessage:Lio/rong/imlib/model/Message;

    invoke-virtual {v3}, Lio/rong/imlib/model/Message;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lio/rong/imlib/RongIMClient;->setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 83
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    iget-object v2, v2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mCurrentMessage:Lio/rong/imlib/model/Message;

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lio/rong/imkit/model/Event$PlayAudioEvent;->obtain(Lio/rong/imlib/model/MessageContent;ZZ)Lio/rong/imkit/model/Event$PlayAudioEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 84
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/model/Event$MessageListenedEvent;

    iget-object v3, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    iget-object v3, v3, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mCurrentMessage:Lio/rong/imlib/model/Message;

    invoke-virtual {v3}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    iget-object v4, v4, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mCurrentMessage:Lio/rong/imlib/model/Message;

    invoke-virtual {v4}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;->this$0:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    iget-object v5, v5, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mCurrentMessage:Lio/rong/imlib/model/Message;

    invoke-virtual {v5}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lio/rong/imkit/model/Event$MessageListenedEvent;-><init>(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

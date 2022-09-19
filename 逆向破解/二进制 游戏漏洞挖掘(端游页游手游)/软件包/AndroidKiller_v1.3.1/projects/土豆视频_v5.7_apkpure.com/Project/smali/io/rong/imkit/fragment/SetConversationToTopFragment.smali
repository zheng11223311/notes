.class public Lio/rong/imkit/fragment/SetConversationToTopFragment;
.super Lio/rong/imkit/fragment/BaseSettingFragment;
.source "SetConversationToTopFragment.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lio/rong/imkit/fragment/SetConversationToTopFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/rong/imkit/fragment/SetConversationToTopFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lio/rong/imkit/fragment/BaseSettingFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method protected initData()V
    .locals 4

    .prologue
    .line 26
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 29
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SetConversationToTopFragment;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SetConversationToTopFragment;->getTargetId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/rong/imkit/fragment/SetConversationToTopFragment$1;

    invoke-direct {v3, p0}, Lio/rong/imkit/fragment/SetConversationToTopFragment$1;-><init>(Lio/rong/imkit/fragment/SetConversationToTopFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/rong/imkit/RongIMClientWrapper;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 44
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 94
    :cond_0
    invoke-super {p0}, Lio/rong/imkit/fragment/BaseSettingFragment;->onDestroy()V

    .line 96
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$ConversationTopEvent;)V
    .locals 2
    .param p1, "conversationTopEvent"    # Lio/rong/imkit/model/Event$ConversationTopEvent;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationTopEvent;->getTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SetConversationToTopFragment;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationTopEvent;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v0

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SetConversationToTopFragment;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 84
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationTopEvent;->isTop()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/rong/imkit/fragment/SetConversationToTopFragment;->setSwitchBtnStatus(Z)V

    .line 86
    :cond_0
    return-void
.end method

.method protected onSettingItemClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    const-string v0, "onSettingItemClick"

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method protected setSwitchBtnVisibility()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method protected setSwitchButtonEnabled()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget v0, Lio/rong/imkit/R$string;->rc_setting_set_top:I

    invoke-virtual {p0, v0}, Lio/rong/imkit/fragment/SetConversationToTopFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toggleSwitch(Z)V
    .locals 4
    .param p1, "toggle"    # Z

    .prologue
    .line 74
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SetConversationToTopFragment;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SetConversationToTopFragment;->getTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SetConversationToTopFragment;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SetConversationToTopFragment;->getTargetId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lio/rong/imkit/RongIMClientWrapper;->setConversationToTop(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ZLio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    sget-object v0, Lio/rong/imkit/fragment/SetConversationToTopFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "toggleSwitch() args is null"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

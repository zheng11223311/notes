.class public Lio/rong/imkit/fragment/ClearConversationMsgFragment;
.super Lio/rong/imkit/fragment/BaseSettingFragment;
.source "ClearConversationMsgFragment.java"

# interfaces
.implements Lio/rong/imkit/widget/AlterDialogFragment$AlterDialogBtnListener;


# instance fields
.field private conversation:Lio/rong/imlib/model/Conversation;


# direct methods
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
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method protected initData()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public onDialogNegativeClick(Lio/rong/imkit/widget/AlterDialogFragment;)V
    .locals 0
    .param p1, "dialog"    # Lio/rong/imkit/widget/AlterDialogFragment;

    .prologue
    .line 57
    invoke-virtual {p1}, Lio/rong/imkit/widget/AlterDialogFragment;->dismiss()V

    .line 58
    return-void
.end method

.method public onDialogPositiveClick(Lio/rong/imkit/widget/AlterDialogFragment;)V
    .locals 4
    .param p1, "dialog"    # Lio/rong/imkit/widget/AlterDialogFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lio/rong/imkit/fragment/ClearConversationMsgFragment;->conversation:Lio/rong/imlib/model/Conversation;

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/ClearConversationMsgFragment;->conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/ClearConversationMsgFragment;->conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/rong/imkit/fragment/ClearConversationMsgFragment$1;

    invoke-direct {v3, p0}, Lio/rong/imkit/fragment/ClearConversationMsgFragment$1;-><init>(Lio/rong/imkit/fragment/ClearConversationMsgFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/rong/imkit/RongIMClientWrapper;->clearMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 78
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/ClearConversationMsgFragment;->conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/ClearConversationMsgFragment;->conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lio/rong/imkit/RongIMClientWrapper;->clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0
.end method

.method protected onSettingItemClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    new-instance v1, Lio/rong/imlib/model/Conversation;

    invoke-direct {v1}, Lio/rong/imlib/model/Conversation;-><init>()V

    iput-object v1, p0, Lio/rong/imkit/fragment/ClearConversationMsgFragment;->conversation:Lio/rong/imlib/model/Conversation;

    .line 45
    iget-object v1, p0, Lio/rong/imkit/fragment/ClearConversationMsgFragment;->conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/ClearConversationMsgFragment;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 46
    iget-object v1, p0, Lio/rong/imkit/fragment/ClearConversationMsgFragment;->conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/ClearConversationMsgFragment;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 48
    sget v1, Lio/rong/imkit/R$string;->rc_setting_name:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/fragment/ClearConversationMsgFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_setting_clear_msg_prompt:I

    invoke-virtual {p0, v2}, Lio/rong/imkit/fragment/ClearConversationMsgFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_dialog_cancel:I

    invoke-virtual {p0, v3}, Lio/rong/imkit/fragment/ClearConversationMsgFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$string;->rc_dialog_ok:I

    invoke-virtual {p0, v4}, Lio/rong/imkit/fragment/ClearConversationMsgFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lio/rong/imkit/widget/AlterDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/widget/AlterDialogFragment;

    move-result-object v0

    .line 49
    .local v0, "dialogFragment":Lio/rong/imkit/widget/AlterDialogFragment;
    invoke-virtual {v0, p0}, Lio/rong/imkit/widget/AlterDialogFragment;->setOnAlterDialogBtnListener(Lio/rong/imkit/widget/AlterDialogFragment$AlterDialogBtnListener;)V

    .line 50
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ClearConversationMsgFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/AlterDialogFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 52
    return-void
.end method

.method protected setSwitchBtnVisibility()I
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x8

    return v0
.end method

.method protected setSwitchButtonEnabled()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget v0, Lio/rong/imkit/R$string;->rc_setting_clear_msg_name:I

    invoke-virtual {p0, v0}, Lio/rong/imkit/fragment/ClearConversationMsgFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toggleSwitch(Z)V
    .locals 0
    .param p1, "toggle"    # Z

    .prologue
    .line 85
    return-void
.end method

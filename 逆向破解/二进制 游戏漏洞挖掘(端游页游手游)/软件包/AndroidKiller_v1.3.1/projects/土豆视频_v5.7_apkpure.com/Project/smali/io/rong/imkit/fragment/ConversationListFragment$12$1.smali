.class Lio/rong/imkit/fragment/ConversationListFragment$12$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/ConversationListFragment$12;->OnArraysDialogItemClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/fragment/ConversationListFragment$12;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationListFragment$12;)V
    .locals 0

    .prologue
    .line 1073
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationListFragment$12$1;->this$1:Lio/rong/imkit/fragment/ConversationListFragment$12;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 1086
    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    .line 1076
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$12$1;->this$1:Lio/rong/imkit/fragment/ConversationListFragment$12;

    iget-object v0, v0, Lio/rong/imkit/fragment/ConversationListFragment$12;->val$uiConversation:Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v0}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1077
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment$12$1;->this$1:Lio/rong/imkit/fragment/ConversationListFragment$12;

    iget-object v1, v1, Lio/rong/imkit/fragment/ConversationListFragment$12;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    sget v2, Lio/rong/imkit/R$string;->rc_conversation_list_popup_cancel_top:I

    invoke-virtual {v1, v2}, Lio/rong/imkit/fragment/ConversationListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1081
    :goto_0
    return-void

    .line 1079
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment$12$1;->this$1:Lio/rong/imkit/fragment/ConversationListFragment$12;

    iget-object v1, v1, Lio/rong/imkit/fragment/ConversationListFragment$12;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    sget v2, Lio/rong/imkit/R$string;->rc_conversation_list_dialog_set_top:I

    invoke-virtual {v1, v2}, Lio/rong/imkit/fragment/ConversationListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1073
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/ConversationListFragment$12$1;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method

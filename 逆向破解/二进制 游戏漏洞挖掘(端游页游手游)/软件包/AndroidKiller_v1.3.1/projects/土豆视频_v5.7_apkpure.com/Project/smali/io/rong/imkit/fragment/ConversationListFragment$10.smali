.class Lio/rong/imkit/fragment/ConversationListFragment$10;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/ConversationListFragment;->onEventMainThread(Lio/rong/imkit/model/Event$MessagesClearEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Lio/rong/imlib/model/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/ConversationListFragment;

.field final synthetic val$originalIndex:I


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationListFragment;I)V
    .locals 0

    .prologue
    .line 875
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationListFragment$10;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    iput p2, p0, Lio/rong/imkit/fragment/ConversationListFragment$10;->val$originalIndex:I

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 888
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Conversation;)V
    .locals 4
    .param p1, "conversation"    # Lio/rong/imlib/model/Conversation;

    .prologue
    .line 878
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lio/rong/imkit/model/UIConversation;->obtain(Lio/rong/imlib/model/Conversation;Z)Lio/rong/imkit/model/UIConversation;

    move-result-object v1

    .line 879
    .local v1, "uiConversation":Lio/rong/imkit/model/UIConversation;
    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationListFragment$10;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    invoke-static {v2}, Lio/rong/imkit/fragment/ConversationListFragment;->access$000(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v2

    iget v3, p0, Lio/rong/imkit/fragment/ConversationListFragment$10;->val$originalIndex:I

    invoke-virtual {v2, v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->remove(I)V

    .line 880
    invoke-static {}, Lio/rong/imkit/util/ConversationListUtils;->getInstance()Lio/rong/imkit/util/ConversationListUtils;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment$10;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    invoke-static {v3}, Lio/rong/imkit/fragment/ConversationListFragment;->access$000(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lio/rong/imkit/util/ConversationListUtils;->findPositionForNewConversation(Lio/rong/imkit/model/UIConversation;Lio/rong/imkit/widget/adapter/ConversationListAdapter;)I

    move-result v0

    .line 881
    .local v0, "newPos":I
    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationListFragment$10;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    invoke-static {v2}, Lio/rong/imkit/fragment/ConversationListFragment;->access$000(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->add(Ljava/lang/Object;I)V

    .line 882
    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationListFragment$10;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    invoke-static {v2}, Lio/rong/imkit/fragment/ConversationListFragment;->access$000(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->notifyDataSetChanged()V

    .line 883
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 875
    check-cast p1, Lio/rong/imlib/model/Conversation;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/ConversationListFragment$10;->onSuccess(Lio/rong/imlib/model/Conversation;)V

    return-void
.end method

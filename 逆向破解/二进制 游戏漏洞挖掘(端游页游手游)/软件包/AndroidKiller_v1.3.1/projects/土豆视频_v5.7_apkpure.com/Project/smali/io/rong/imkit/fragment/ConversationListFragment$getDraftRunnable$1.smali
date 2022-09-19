.class Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;)V
    .locals 0

    .prologue
    .line 1266
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable$1;->this$1:Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 1283
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1266
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable$1;->this$1:Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;

    iget-object v0, v0, Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;->conversation:Lio/rong/imkit/model/UIConversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIConversation;->setShowDraftFlag(Z)V

    .line 1278
    :goto_0
    return-void

    .line 1273
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable$1;->this$1:Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;

    iget-object v0, v0, Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;->conversation:Lio/rong/imkit/model/UIConversation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIConversation;->setShowDraftFlag(Z)V

    .line 1274
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable$1;->this$1:Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;

    iget-object v0, v0, Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;->conversation:Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v0, p1}, Lio/rong/imkit/model/UIConversation;->setDraft(Ljava/lang/String;)V

    .line 1277
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable$1;->this$1:Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;

    iget-object v0, v0, Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    invoke-static {v0}, Lio/rong/imkit/fragment/ConversationListFragment;->access$000(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable$1;->this$1:Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;

    iget v1, v1, Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;->index:I

    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable$1;->this$1:Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;

    iget-object v2, v2, Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    invoke-static {v2}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable$1;->this$1:Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;

    iget v3, v3, Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;->index:I

    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable$1;->this$1:Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;

    iget-object v4, v4, Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    invoke-static {v4}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable$1;->this$1:Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;

    iget-object v3, v3, Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    invoke-static {v3}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

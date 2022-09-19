.class Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "SubConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;->run()V
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
.field final synthetic this$1:Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable$1;->this$1:Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 877
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 860
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 863
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable$1;->this$1:Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;

    iget-object v0, v0, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;->conversation:Lio/rong/imkit/model/UIConversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIConversation;->setShowDraftFlag(Z)V

    .line 872
    :goto_0
    return-void

    .line 867
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable$1;->this$1:Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;

    iget-object v0, v0, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;->conversation:Lio/rong/imkit/model/UIConversation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIConversation;->setShowDraftFlag(Z)V

    .line 868
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable$1;->this$1:Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;

    iget-object v0, v0, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;->conversation:Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v0, p1}, Lio/rong/imkit/model/UIConversation;->setDraft(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable$1;->this$1:Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;

    iget-object v0, v0, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    invoke-static {v0}, Lio/rong/imkit/fragment/SubConversationListFragment;->access$000(Lio/rong/imkit/fragment/SubConversationListFragment;)Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable$1;->this$1:Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;

    iget v1, v1, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;->index:I

    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable$1;->this$1:Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;

    iget-object v2, v2, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    invoke-static {v2}, Lio/rong/imkit/fragment/SubConversationListFragment;->access$100(Lio/rong/imkit/fragment/SubConversationListFragment;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable$1;->this$1:Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;

    iget v3, v3, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;->index:I

    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable$1;->this$1:Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;

    iget-object v4, v4, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    invoke-static {v4}, Lio/rong/imkit/fragment/SubConversationListFragment;->access$100(Lio/rong/imkit/fragment/SubConversationListFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable$1;->this$1:Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;

    iget-object v3, v3, Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    invoke-static {v3}, Lio/rong/imkit/fragment/SubConversationListFragment;->access$100(Lio/rong/imkit/fragment/SubConversationListFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

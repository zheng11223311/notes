.class Lio/rong/imkit/fragment/MessageListFragment$10;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/MessageListFragment;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lio/rong/imkit/model/UIMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/MessageListFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/MessageListFragment;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 3
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 617
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    const-string v1, "IPC:getConversationMessage"

    invoke-virtual {p1}, Lio/rong/imlib/RongIMClient$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 585
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/MessageListFragment$10;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/UIMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    const/4 v5, 0x0

    .line 589
    move-object v2, p1

    .line 591
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_0

    .line 592
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iput-boolean v5, v3, Lio/rong/imkit/fragment/MessageListFragment;->mHasMore:Z

    .line 593
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v3, v3, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v4, v4, Lio/rong/imkit/fragment/MessageListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 594
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    const/4 v4, 0x0

    iput-object v4, v3, Lio/rong/imkit/fragment/MessageListFragment;->mHeaderView:Landroid/view/View;

    .line 602
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/model/UIMessage;

    .line 603
    .local v1, "item":Lio/rong/imkit/model/UIMessage;
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v3, v3, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v3, v1, v5}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->add(Ljava/lang/Object;I)V

    goto :goto_1

    .line 596
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lio/rong/imkit/model/UIMessage;
    :cond_0
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lio/rong/imkit/fragment/MessageListFragment;->mHasMore:Z

    goto :goto_0

    .line 605
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v3, v3, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    .line 607
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v3, v3, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 610
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v3, v3, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 612
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iput-boolean v5, v3, Lio/rong/imkit/fragment/MessageListFragment;->mIsLoading:Z

    .line 613
    return-void
.end method

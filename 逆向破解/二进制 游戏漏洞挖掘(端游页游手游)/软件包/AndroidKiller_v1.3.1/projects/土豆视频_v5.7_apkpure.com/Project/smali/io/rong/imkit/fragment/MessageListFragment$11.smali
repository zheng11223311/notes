.class Lio/rong/imkit/fragment/MessageListFragment$11;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/MessageListFragment;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/MessageListFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/MessageListFragment;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 635
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v5, v5, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 637
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v5, v5, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v7, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v7, v7, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 638
    .local v1, "firstView":Landroid/view/View;
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v5, v5, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v7, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v7, v7, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 640
    .local v2, "lastView":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 641
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v5, v5, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v5

    iget-object v7, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v7, v7, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v7

    add-int v4, v5, v7

    .line 642
    .local v4, "listViewPadding":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_1

    move v5, v6

    :goto_0
    sub-int v0, v7, v5

    .line 643
    .local v0, "childViewsHeight":I
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v5, v5, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getBottom()I

    move-result v5

    sub-int v3, v5, v4

    .line 645
    .local v3, "listViewHeight":I
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    const-string v7, "handle-DELETE_MESSAGE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "firstView-top-height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    const-string v7, "handle-DELETE_MESSAGE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lastView-bottom-height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    const-string v7, "handle-DELETE_MESSAGE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "childViews-height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    const-string v7, "handle-DELETE_MESSAGE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "listView-height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    if-ge v0, v3, :cond_2

    .line 651
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v5, v5, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 652
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v5, v5, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 657
    :goto_1
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v5, v5, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v5}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    .line 660
    .end local v0    # "childViewsHeight":I
    .end local v1    # "firstView":Landroid/view/View;
    .end local v2    # "lastView":Landroid/view/View;
    .end local v3    # "listViewHeight":I
    .end local v4    # "listViewPadding":I
    :cond_0
    return-void

    .line 642
    .restart local v1    # "firstView":Landroid/view/View;
    .restart local v2    # "lastView":Landroid/view/View;
    .restart local v4    # "listViewPadding":I
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    goto/16 :goto_0

    .line 654
    .restart local v0    # "childViewsHeight":I
    .restart local v3    # "listViewHeight":I
    :cond_2
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v5, v5, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setTranscriptMode(I)V

    goto :goto_1
.end method

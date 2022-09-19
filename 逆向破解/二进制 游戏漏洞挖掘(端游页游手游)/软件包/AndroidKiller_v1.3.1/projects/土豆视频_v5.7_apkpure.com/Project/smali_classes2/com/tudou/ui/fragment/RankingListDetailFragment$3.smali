.class Lcom/tudou/ui/fragment/RankingListDetailFragment$3;
.super Landroid/os/Handler;
.source "RankingListDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/RankingListDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/RankingListDetailFragment;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 141
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 143
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/RankingDetailList;

    .line 144
    .local v0, "list":Lcom/youku/vo/RankingDetailList;
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$000(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 145
    iget-object v1, v0, Lcom/youku/vo/RankingDetailList;->results:Lcom/youku/vo/RankingDetailList$Results;

    iget-object v1, v1, Lcom/youku/vo/RankingDetailList$Results;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$700(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 147
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    iget-object v1, v0, Lcom/youku/vo/RankingDetailList;->results:Lcom/youku/vo/RankingDetailList$Results;

    iget-object v1, v1, Lcom/youku/vo/RankingDetailList$Results;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;

    invoke-virtual {v2, v1}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->initHearder(Lcom/youku/vo/RankingDetailList$Results$RankingDetail;)V

    .line 152
    iget-object v1, v0, Lcom/youku/vo/RankingDetailList;->results:Lcom/youku/vo/RankingDetailList$Results;

    iget-object v1, v1, Lcom/youku/vo/RankingDetailList$Results;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$000(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lcom/youku/vo/RankingDetailList;->results:Lcom/youku/vo/RankingDetailList$Results;

    iget-object v2, v2, Lcom/youku/vo/RankingDetailList$Results;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 154
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    new-instance v2, Lcom/tudou/adapter/RankingListDetailAdapter;

    iget-object v3, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$900(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$000(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/tudou/adapter/RankingListDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$802(Lcom/tudou/ui/fragment/RankingListDetailFragment;Lcom/tudou/adapter/RankingListDetailAdapter;)Lcom/tudou/adapter/RankingListDetailAdapter;

    .line 156
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$700(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$800(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/tudou/adapter/RankingListDetailAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$400(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$700(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$800(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/tudou/adapter/RankingListDetailAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/adapter/RankingListDetailAdapter;->notifyDataSetChanged()V

    .line 160
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$700(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 161
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto/16 :goto_0

    .line 165
    .end local v0    # "list":Lcom/youku/vo/RankingDetailList;
    :pswitch_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$700(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 166
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 167
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$400(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    sget-object v2, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v1, v2}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 168
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$700(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x186a1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

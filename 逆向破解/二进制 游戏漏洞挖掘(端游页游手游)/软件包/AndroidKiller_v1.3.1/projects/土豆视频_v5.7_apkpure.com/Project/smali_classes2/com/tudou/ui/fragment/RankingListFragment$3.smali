.class Lcom/tudou/ui/fragment/RankingListFragment$3;
.super Landroid/os/Handler;
.source "RankingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/RankingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/RankingListFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/RankingListFragment;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/tudou/ui/fragment/RankingListFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 121
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/RankingList;

    .line 124
    .local v0, "list":Lcom/youku/vo/RankingList;
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListFragment;->access$200(Lcom/tudou/ui/fragment/RankingListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 125
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListFragment;->access$200(Lcom/tudou/ui/fragment/RankingListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lcom/youku/vo/RankingList;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget-object v1, v0, Lcom/youku/vo/RankingList;->results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListFragment;->access$300(Lcom/tudou/ui/fragment/RankingListFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    sget-object v2, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    const-string v3, "\u6682\u65e0\u76f8\u5173\u5185\u5bb9"

    invoke-virtual {v1, v2, v3}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListFragment;->access$300(Lcom/tudou/ui/fragment/RankingListFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListFragment;->access$400(Lcom/tudou/ui/fragment/RankingListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListFragment;->access$300(Lcom/tudou/ui/fragment/RankingListFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :goto_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListFragment;->access$500(Lcom/tudou/ui/fragment/RankingListFragment;)Lcom/tudou/adapter/RankingListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/adapter/RankingListAdapter;->notifyDataSetChanged()V

    .line 139
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListFragment;->access$400(Lcom/tudou/ui/fragment/RankingListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 140
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListFragment;->access$300(Lcom/tudou/ui/fragment/RankingListFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListFragment;->access$400(Lcom/tudou/ui/fragment/RankingListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 135
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListFragment;->access$300(Lcom/tudou/ui/fragment/RankingListFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/RankingListFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    invoke-virtual {v1, v2}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 143
    .end local v0    # "list":Lcom/youku/vo/RankingList;
    :pswitch_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListFragment;->access$400(Lcom/tudou/ui/fragment/RankingListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 149
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 150
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListFragment;->access$300(Lcom/tudou/ui/fragment/RankingListFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    sget-object v2, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v1, v2}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 151
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListFragment;->access$300(Lcom/tudou/ui/fragment/RankingListFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment$3;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/RankingListFragment;->access$400(Lcom/tudou/ui/fragment/RankingListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x186a1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

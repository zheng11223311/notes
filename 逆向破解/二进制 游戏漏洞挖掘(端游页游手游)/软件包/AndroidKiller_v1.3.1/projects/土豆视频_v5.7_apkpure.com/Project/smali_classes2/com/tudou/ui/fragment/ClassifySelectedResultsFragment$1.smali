.class Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;
.super Landroid/os/Handler;
.source "ClassifySelectedResultsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 158
    :goto_0
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x271b

    if-ne v0, v1, :cond_f

    .line 164
    :cond_0
    :goto_1
    return-void

    .line 79
    :pswitch_1
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/youku/vo/ChannelFilterVideos;

    .line 81
    .local v10, "temp":Lcom/youku/vo/ChannelFilterVideos;
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, v10, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 84
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$200(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 85
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$300(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)I

    move-result v0

    if-eq v0, v12, :cond_6

    .line 90
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    iget-object v1, v10, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    :goto_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$300(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)I

    move-result v0

    if-ne v0, v12, :cond_7

    .line 95
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$400(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 102
    :goto_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$500(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$300(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)I

    move-result v0

    if-ne v0, v12, :cond_4

    .line 103
    :cond_3
    const-string v0, "1"

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$600(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 104
    iget-object v7, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    new-instance v0, Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$700(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$800(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$900(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-direct/range {v0 .. v6}, Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/youku/vo/ChannelFilterVideos;Ljava/lang/String;Lcom/youku/ui/YoukuFragment;)V

    invoke-static {v7, v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$502(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    .line 107
    :goto_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$500(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$500(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 113
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$300(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)I

    move-result v0

    if-ne v0, v12, :cond_5

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->setSelection(I)V

    .line 115
    :cond_5
    invoke-static {v12}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->setTipsLayoutVisibility(Z)V

    goto/16 :goto_0

    .line 92
    :cond_6
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0, v10}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$002(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;Lcom/youku/vo/ChannelFilterVideos;)Lcom/youku/vo/ChannelFilterVideos;

    goto/16 :goto_2

    .line 98
    :cond_7
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$400(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    goto/16 :goto_3

    .line 106
    :cond_8
    iget-object v11, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    new-instance v0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$700(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$800(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$900(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$1000(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Z

    move-result v6

    iget-object v7, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-direct/range {v0 .. v7}, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/youku/vo/ChannelFilterVideos;Ljava/lang/String;ZLcom/youku/ui/YoukuFragment;)V

    invoke-static {v11, v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$502(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    goto/16 :goto_4

    .line 118
    .end local v10    # "temp":Lcom/youku/vo/ChannelFilterVideos;
    :pswitch_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$300(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$300(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)I

    move-result v0

    if-eq v0, v12, :cond_9

    .line 119
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$310(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)I

    .line 121
    :cond_9
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 122
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_a

    .line 123
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 129
    :goto_5
    invoke-static {v13}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->setTipsLayoutVisibility(Z)V

    goto/16 :goto_0

    .line 125
    :cond_a
    const v0, 0x7f0d0210

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_5

    .line 127
    :cond_b
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$400(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    goto :goto_5

    .line 132
    :pswitch_3
    const/4 v9, 0x0

    .line 133
    .local v9, "mInfo":Lcom/youku/vo/ChannelListInfo;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    sget-object v0, Lcom/tudou/ui/activity/HomePageActivity;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v0, v0, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v0, v0, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_d

    .line 134
    const-string v1, "422"

    sget-object v0, Lcom/tudou/ui/activity/HomePageActivity;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v0, v0, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v0, v0, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/ChannelListInfo;

    iget-object v0, v0, Lcom/youku/vo/ChannelListInfo;->channel_id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 135
    sget-object v0, Lcom/tudou/ui/activity/HomePageActivity;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v0, v0, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v0, v0, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "mInfo":Lcom/youku/vo/ChannelListInfo;
    check-cast v9, Lcom/youku/vo/ChannelListInfo;

    .line 133
    .restart local v9    # "mInfo":Lcom/youku/vo/ChannelListInfo;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 138
    :cond_d
    if-nez v9, :cond_e

    .line 140
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$400(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 141
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    goto/16 :goto_1

    .line 145
    :cond_e
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    iget-object v1, v9, Lcom/youku/vo/ChannelListInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$1102(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;Lcom/youku/vo/SkipInfo;)Lcom/youku/vo/SkipInfo;

    .line 146
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0, v12}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$1002(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;Z)Z

    .line 147
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/SkipInfo;->image_state:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$602(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto/16 :goto_0

    .line 154
    .end local v8    # "i":I
    .end local v9    # "mInfo":Lcom/youku/vo/ChannelListInfo;
    :pswitch_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$400(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    goto/16 :goto_0

    .line 162
    :cond_f
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    goto/16 :goto_1

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x2716
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

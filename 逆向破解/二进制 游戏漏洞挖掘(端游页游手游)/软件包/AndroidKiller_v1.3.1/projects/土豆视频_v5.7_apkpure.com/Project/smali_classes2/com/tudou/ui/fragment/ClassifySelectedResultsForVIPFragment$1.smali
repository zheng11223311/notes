.class Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;
.super Landroid/os/Handler;
.source "ClassifySelectedResultsForVIPFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 216
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x271b

    if-ne v0, v1, :cond_f

    .line 222
    :cond_0
    :goto_1
    return-void

    .line 117
    :sswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 118
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/youku/vo/ChannelFilterVideos;

    .line 121
    .local v11, "temp":Lcom/youku/vo/ChannelFilterVideos;
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, v11, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 124
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$200(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$300(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 130
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    iget-object v1, v11, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    :goto_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$300(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 136
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$400(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 143
    :goto_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$500(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$300(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 144
    :cond_3
    const-string v0, "1"

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$600(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 145
    iget-object v7, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    new-instance v0, Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$700(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$800(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$900(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-direct/range {v0 .. v6}, Lcom/tudou/adapter/ClassifySelectedResultsTwoAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/youku/vo/ChannelFilterVideos;Ljava/lang/String;Lcom/youku/ui/YoukuFragment;)V

    invoke-static {v7, v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$502(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    .line 148
    :goto_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$500(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$500(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 154
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$300(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_5

    .line 155
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 156
    :cond_5
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->setTipsLayoutVisibility(Z)V

    goto/16 :goto_0

    .line 132
    :cond_6
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0, v11}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$102(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;Lcom/youku/vo/ChannelFilterVideos;)Lcom/youku/vo/ChannelFilterVideos;

    goto/16 :goto_2

    .line 139
    :cond_7
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$400(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    goto/16 :goto_3

    .line 147
    :cond_8
    iget-object v12, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    new-instance v0, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$700(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$800(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$900(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1000(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Z

    move-result v6

    iget-object v7, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-direct/range {v0 .. v7}, Lcom/tudou/adapter/ClassifySelectedResultsThreeAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/youku/vo/ChannelFilterVideos;Ljava/lang/String;ZLcom/youku/ui/YoukuFragment;)V

    invoke-static {v12, v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$502(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    goto/16 :goto_4

    .line 159
    .end local v11    # "temp":Lcom/youku/vo/ChannelFilterVideos;
    :sswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$300(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$300(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    .line 160
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$310(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)I

    .line 162
    :cond_9
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/ChannelFilterVideos;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/vo/ChannelFilterVideos;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 163
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_a

    .line 164
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 170
    :goto_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tudou/ui/fragment/VipPrivilegeFragment;->setTipsLayoutVisibility(Z)V

    goto/16 :goto_0

    .line 166
    :cond_a
    const v0, 0x7f0d0210

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_5

    .line 168
    :cond_b
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$400(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    goto :goto_5

    .line 173
    :sswitch_2
    const/4 v9, 0x0

    .line 174
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

    .line 175
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

    .line 176
    sget-object v0, Lcom/tudou/ui/activity/HomePageActivity;->mChannalListV5:Lcom/youku/vo/ChannelListV5;

    iget-object v0, v0, Lcom/youku/vo/ChannelListV5;->results:Lcom/youku/vo/ChannelListResults;

    iget-object v0, v0, Lcom/youku/vo/ChannelListResults;->channel_lists_inf:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "mInfo":Lcom/youku/vo/ChannelListInfo;
    check-cast v9, Lcom/youku/vo/ChannelListInfo;

    .line 174
    .restart local v9    # "mInfo":Lcom/youku/vo/ChannelListInfo;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 179
    :cond_d
    if-nez v9, :cond_e

    .line 181
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$400(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 182
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    goto/16 :goto_1

    .line 186
    :cond_e
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    iget-object v1, v9, Lcom/youku/vo/ChannelListInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1102(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;Lcom/youku/vo/SkipInfo;)Lcom/youku/vo/SkipInfo;

    .line 187
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1002(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;Z)Z

    .line 188
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/SkipInfo;->image_state:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$602(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto/16 :goto_0

    .line 195
    .end local v8    # "i":I
    .end local v9    # "mInfo":Lcom/youku/vo/ChannelListInfo;
    :sswitch_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$400(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    goto/16 :goto_0

    .line 198
    :sswitch_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1200(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/youku/vo/MyTicketsListResult;

    .line 200
    .local v10, "results":Lcom/youku/vo/MyTicketsListResult;
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    iget-object v1, v10, Lcom/youku/vo/MyTicketsListResult;->total:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1300(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    .end local v10    # "results":Lcom/youku/vo/MyTicketsListResult;
    :sswitch_5
    const-string v0, "\u83b7\u53d6\u89c2\u5f71\u5238\u5931\u8d25"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1200(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 207
    :sswitch_6
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1400(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/MyVideoResult;

    invoke-static {v1, v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1502(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;Lcom/youku/vo/MyVideoResult;)Lcom/youku/vo/MyVideoResult;

    .line 209
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1600(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)V

    goto/16 :goto_0

    .line 212
    :sswitch_7
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1400(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 220
    :cond_f
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    goto/16 :goto_1

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x2716 -> :sswitch_0
        0x2717 -> :sswitch_1
        0x271b -> :sswitch_2
        0x271c -> :sswitch_3
        0x7531 -> :sswitch_6
        0x7532 -> :sswitch_7
        0x30d41 -> :sswitch_4
        0x30d42 -> :sswitch_5
    .end sparse-switch
.end method

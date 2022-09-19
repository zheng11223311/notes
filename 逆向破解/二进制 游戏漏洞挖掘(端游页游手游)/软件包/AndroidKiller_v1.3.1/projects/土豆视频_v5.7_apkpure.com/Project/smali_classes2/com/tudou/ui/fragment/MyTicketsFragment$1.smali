.class Lcom/tudou/ui/fragment/MyTicketsFragment$1;
.super Landroid/os/Handler;
.source "MyTicketsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MyTicketsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTicketsFragment;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 71
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$000(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$000(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 77
    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$100(Lcom/tudou/ui/fragment/MyTicketsFragment;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 78
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$200(Lcom/tudou/ui/fragment/MyTicketsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$300(Lcom/tudou/ui/fragment/MyTicketsFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/MyTicketsListResult;

    .line 83
    .local v0, "results":Lcom/youku/vo/MyTicketsListResult;
    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/youku/vo/MyTicketsListResult;->results:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 84
    const/16 v1, 0xa

    iget-object v2, v0, Lcom/youku/vo/MyTicketsListResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 85
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$000(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$000(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$400(Lcom/tudou/ui/fragment/MyTicketsFragment;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 91
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$000(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 96
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$500(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 97
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$000(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    iget-object v2, v0, Lcom/youku/vo/MyTicketsListResult;->skip_inf:Lcom/youku/vo/SkipInfo;

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$602(Lcom/tudou/ui/fragment/MyTicketsFragment;Lcom/youku/vo/SkipInfo;)Lcom/youku/vo/SkipInfo;

    .line 99
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$200(Lcom/tudou/ui/fragment/MyTicketsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lcom/youku/vo/MyTicketsListResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    iget-object v2, v0, Lcom/youku/vo/MyTicketsListResult;->total:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$700(Lcom/tudou/ui/fragment/MyTicketsFragment;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$800(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/tudou/adapter/MyTicketsListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/adapter/MyTicketsListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 93
    :cond_4
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$108(Lcom/tudou/ui/fragment/MyTicketsFragment;)I

    goto :goto_1

    .line 103
    :cond_5
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$000(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 104
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$500(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 105
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$500(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    sget-object v2, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v1, v2}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 106
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$500(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 110
    .end local v0    # "results":Lcom/youku/vo/MyTicketsListResult;
    :pswitch_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$000(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 111
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$000(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 113
    :cond_6
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 118
    :goto_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$000(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$500(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    sget-object v2, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v1, v2}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 120
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$500(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/youku/widget/HintView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/youku/widget/HintView;->setVisibility(I)V

    goto/16 :goto_0

    .line 116
    :cond_7
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_2

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x30d41
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

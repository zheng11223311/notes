.class Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;
.super Landroid/os/Handler;
.source "TheShowHistoryRankFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 63
    :pswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 67
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$100(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 68
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$200(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/TheShowRankHistoryResults;

    iget-object v0, v0, Lcom/youku/vo/TheShowRankHistoryResults;->results:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 72
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$200(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/TheShowRankHistoryResults;

    iget-object v0, v0, Lcom/youku/vo/TheShowRankHistoryResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    const/16 v1, 0xa

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/TheShowRankHistoryResults;

    iget-object v0, v0, Lcom/youku/vo/TheShowRankHistoryResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v1, v0, :cond_5

    .line 75
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$300(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 78
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$300(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 79
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 84
    :goto_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$200(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 85
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$400(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 93
    :goto_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$500(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/tudou/adapter/TheShowRankHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 81
    :cond_5
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$108(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)I

    goto :goto_1

    .line 88
    :cond_6
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$400(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$400(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 91
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$400(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 95
    :cond_7
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$400(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$400(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 98
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$400(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 102
    :pswitch_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 103
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 105
    :cond_8
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$200(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_9

    .line 106
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "\u6570\u636e\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :cond_9
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$400(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 112
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$400(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$400(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/youku/widget/HintView;->setVisibility(I)V

    goto/16 :goto_0

    .line 117
    :pswitch_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$600(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$200(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$600(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 119
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->access$500(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/tudou/adapter/TheShowRankHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

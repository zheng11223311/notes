.class Lcom/tudou/ui/fragment/TheShowRankFragment$1;
.super Landroid/os/Handler;
.source "TheShowRankFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/TheShowRankFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/TheShowRankFragment;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x3

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 173
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$100(Lcom/tudou/ui/fragment/TheShowRankFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    iget-object v1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/TheShowRankResults;

    invoke-static {v1, v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$202(Lcom/tudou/ui/fragment/TheShowRankFragment;Lcom/youku/vo/TheShowRankResults;)Lcom/youku/vo/TheShowRankResults;

    .line 107
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$100(Lcom/tudou/ui/fragment/TheShowRankFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/TheShowRankResults;

    iget-object v0, v0, Lcom/youku/vo/TheShowRankResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$100(Lcom/tudou/ui/fragment/TheShowRankFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/TheShowRankResults;

    invoke-static {v1, v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$300(Lcom/tudou/ui/fragment/TheShowRankFragment;Lcom/youku/vo/TheShowRankResults;)V

    .line 110
    iget-object v1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$400(Lcom/tudou/ui/fragment/TheShowRankFragment;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$100(Lcom/tudou/ui/fragment/TheShowRankFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;

    invoke-static {v1, v2, v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$500(Lcom/tudou/ui/fragment/TheShowRankFragment;Landroid/view/View;Lcom/youku/vo/TheShowRankResults$TheShowRankResult;)V

    .line 111
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$100(Lcom/tudou/ui/fragment/TheShowRankFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$100(Lcom/tudou/ui/fragment/TheShowRankFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 115
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$400(Lcom/tudou/ui/fragment/TheShowRankFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$600(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$700(Lcom/tudou/ui/fragment/TheShowRankFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$700(Lcom/tudou/ui/fragment/TheShowRankFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 126
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$800(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/tudou/adapter/TheShowRankAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/adapter/TheShowRankAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$600(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$600(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 124
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$600(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 129
    :pswitch_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 130
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$100(Lcom/tudou/ui/fragment/TheShowRankFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 133
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "\u6570\u636e\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :cond_6
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$600(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 139
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$600(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$600(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/youku/widget/HintView;->setVisibility(I)V

    goto/16 :goto_0

    .line 144
    :pswitch_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$900(Lcom/tudou/ui/fragment/TheShowRankFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 145
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$1200(Lcom/tudou/ui/fragment/TheShowRankFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$1000(Lcom/tudou/ui/fragment/TheShowRankFragment;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$1100(Lcom/tudou/ui/fragment/TheShowRankFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$1010(Lcom/tudou/ui/fragment/TheShowRankFragment;)I

    .line 147
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$1000(Lcom/tudou/ui/fragment/TheShowRankFragment;)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 148
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 149
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$000(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto/16 :goto_0

    .line 153
    :cond_7
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$900(Lcom/tudou/ui/fragment/TheShowRankFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 164
    :pswitch_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$1300(Lcom/tudou/ui/fragment/TheShowRankFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$100(Lcom/tudou/ui/fragment/TheShowRankFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$1300(Lcom/tudou/ui/fragment/TheShowRankFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 166
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$800(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/tudou/adapter/TheShowRankAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/adapter/TheShowRankAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

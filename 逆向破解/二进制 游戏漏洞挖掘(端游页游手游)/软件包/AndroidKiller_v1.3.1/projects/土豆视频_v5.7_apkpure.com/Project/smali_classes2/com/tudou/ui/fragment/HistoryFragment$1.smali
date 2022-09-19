.class Lcom/tudou/ui/fragment/HistoryFragment$1;
.super Landroid/os/Handler;
.source "HistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/HistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isCloseLoading:Z

.field final synthetic this$0:Lcom/tudou/ui/fragment/HistoryFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HistoryFragment;)V
    .locals 1

    .prologue
    .line 112
    iput-object p1, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->isCloseLoading:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v7, 0x7f0d02c3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 118
    iput-boolean v6, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->isCloseLoading:Z

    .line 119
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 242
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    iget-boolean v4, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->isCloseLoading:Z

    invoke-static {v3, v4}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1600(Lcom/tudou/ui/fragment/HistoryFragment;Z)V

    .line 243
    return-void

    .line 122
    :pswitch_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$000(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$100(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 125
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$000(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HistoryFragment;->access$100(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 126
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$200(Lcom/tudou/ui/fragment/HistoryFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :goto_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$400(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/tudou/adapter/HistoryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tudou/adapter/HistoryAdapter;->notifyDataSetChanged()V

    .line 133
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$500(Lcom/tudou/ui/fragment/HistoryFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3, v5}, Lcom/tudou/ui/fragment/HistoryFragment;->access$502(Lcom/tudou/ui/fragment/HistoryFragment;Z)Z

    .line 135
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$400(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/tudou/adapter/HistoryAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HistoryFragment;->access$500(Lcom/tudou/ui/fragment/HistoryFragment;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tudou/adapter/HistoryAdapter;->setEditable(Z)V

    .line 137
    :cond_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$600(Lcom/tudou/ui/fragment/HistoryFragment;)V

    .line 138
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$700(Lcom/tudou/ui/fragment/HistoryFragment;)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$300(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/youku/widget/HintView;

    move-result-object v3

    sget-object v4, Lcom/youku/widget/HintView$Type;->HISTORY_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v3, v4}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    goto :goto_1

    .line 141
    :pswitch_2
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$300(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/youku/widget/HintView;

    move-result-object v3

    sget-object v4, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v3, v4}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    goto :goto_0

    .line 144
    :pswitch_3
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$800(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 145
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$000(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HistoryFragment;->access$800(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 146
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$400(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/tudou/adapter/HistoryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tudou/adapter/HistoryAdapter;->notifyDataSetChanged()V

    .line 148
    :cond_3
    iput-boolean v5, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->isCloseLoading:Z

    .line 149
    const-string v3, "HistoryFragment"

    const-string v4, "get Cache success"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :pswitch_4
    iput-boolean v5, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->isCloseLoading:Z

    goto/16 :goto_0

    .line 155
    :pswitch_5
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$900(Lcom/tudou/ui/fragment/HistoryFragment;)I

    move-result v3

    if-ne v3, v6, :cond_9

    .line 157
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$000(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 158
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$000(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1000(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 160
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3, v5}, Lcom/tudou/ui/fragment/HistoryFragment;->access$502(Lcom/tudou/ui/fragment/HistoryFragment;Z)Z

    .line 162
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$000(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_8

    .line 163
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$300(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/youku/widget/HintView;

    move-result-object v3

    sget-object v4, Lcom/youku/widget/HintView$Type;->HISTORY_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v3, v4}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 180
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1200(Lcom/tudou/ui/fragment/HistoryFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HistoryFragment;->access$000(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 182
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1300(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 183
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1300(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 184
    :cond_5
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1300(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1400(Lcom/tudou/ui/fragment/HistoryFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 185
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1300(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v3

    sget-object v4, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v3, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 188
    :cond_6
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$400(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/tudou/adapter/HistoryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tudou/adapter/HistoryAdapter;->notifyDataSetChanged()V

    .line 191
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$900(Lcom/tudou/ui/fragment/HistoryFragment;)I

    move-result v3

    if-ne v3, v6, :cond_7

    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1300(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    if-eqz v3, :cond_7

    .line 192
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1300(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 195
    :cond_7
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$600(Lcom/tudou/ui/fragment/HistoryFragment;)V

    .line 196
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$700(Lcom/tudou/ui/fragment/HistoryFragment;)V

    goto/16 :goto_0

    .line 165
    :cond_8
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$400(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/tudou/adapter/HistoryAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HistoryFragment;->access$500(Lcom/tudou/ui/fragment/HistoryFragment;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tudou/adapter/HistoryAdapter;->setEditable(Z)V

    goto/16 :goto_2

    .line 168
    :cond_9
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$000(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1000(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 169
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$500(Lcom/tudou/ui/fragment/HistoryFragment;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1100(Lcom/tudou/ui/fragment/HistoryFragment;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$000(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 172
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$000(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/HistoryVideo;

    .line 173
    .local v0, "hv":Lcom/youku/vo/HistoryVideo;
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1100(Lcom/tudou/ui/fragment/HistoryFragment;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/youku/vo/HistoryVideo;->isChecked:Z

    .line 174
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$400(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/tudou/adapter/HistoryAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tudou/adapter/HistoryAdapter;->isContainItem(Lcom/youku/vo/HistoryVideo;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 175
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$400(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/tudou/adapter/HistoryAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tudou/adapter/HistoryAdapter;->addToList(Lcom/youku/vo/HistoryVideo;)V

    .line 171
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 199
    .end local v0    # "hv":Lcom/youku/vo/HistoryVideo;
    .end local v1    # "i":I
    :pswitch_6
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$000(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 200
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$200(Lcom/tudou/ui/fragment/HistoryFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    :goto_4
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 205
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$000(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 206
    const-string v3, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 210
    :cond_b
    :goto_5
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$900(Lcom/tudou/ui/fragment/HistoryFragment;)I

    move-result v3

    if-le v3, v6, :cond_0

    .line 211
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$910(Lcom/tudou/ui/fragment/HistoryFragment;)I

    goto/16 :goto_0

    .line 202
    :cond_c
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$300(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/youku/widget/HintView;

    move-result-object v3

    sget-object v4, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v3, v4}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    goto :goto_4

    .line 208
    :cond_d
    invoke-static {v7}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_5

    .line 214
    :pswitch_7
    const-string v3, "HistoryFragment"

    const-string v4, "delete SQL success"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1500(Lcom/tudou/ui/fragment/HistoryFragment;)V

    goto/16 :goto_0

    .line 225
    :pswitch_8
    const-string v3, "HistoryFragment"

    const-string v4, "delete SERVER success"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v2, Landroid/content/Intent;

    const-string v3, "action_delete_history"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$1300(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 230
    iput-boolean v5, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->isCloseLoading:Z

    goto/16 :goto_0

    .line 233
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_9
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$200(Lcom/tudou/ui/fragment/HistoryFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 235
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HistoryFragment;->access$000(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 236
    const-string v3, "\u5220\u9664\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :cond_e
    invoke-static {v7}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x271b
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

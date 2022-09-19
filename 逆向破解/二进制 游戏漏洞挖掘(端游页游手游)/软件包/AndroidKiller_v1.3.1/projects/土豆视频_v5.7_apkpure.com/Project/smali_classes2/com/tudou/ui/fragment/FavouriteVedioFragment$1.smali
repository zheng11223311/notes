.class Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;
.super Landroid/os/Handler;
.source "FavouriteVedioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/FavouriteVedioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v10, 0x7f0d02c3

    const/16 v9, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 82
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$000(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)I

    move-result v5

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-le v5, v6, :cond_1

    .line 85
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 87
    :cond_0
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/youku/vo/FavouriteVideoResult;

    .line 92
    .local v1, "favourVideoResult":Lcom/youku/vo/FavouriteVideoResult;
    iget-object v5, v1, Lcom/youku/vo/FavouriteVideoResult;->data:Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;

    iget-object v3, v5, Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;->result:Ljava/util/ArrayList;

    .line 94
    .local v3, "tmplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/FavouriteVideo;>;"
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 99
    .local v4, "type":I
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-boolean v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->isfesh:Z

    if-eqz v5, :cond_2

    .line 100
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iput-boolean v7, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->isfesh:Z

    .line 101
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$100(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 103
    :cond_2
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$000(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 104
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    iput-boolean v7, v5, Lcom/tudou/adapter/FavouriteVedioAdapter;->isEdit:Z

    .line 105
    sget-object v5, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->mf:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-virtual {v5}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->refreshEdit()V

    .line 106
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->bottom_layout:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iput v7, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->deleteCount:I

    .line 108
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$100(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 111
    :cond_3
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    iget-boolean v5, v5, Lcom/tudou/adapter/FavouriteVedioAdapter;->isEdit:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    invoke-virtual {v5}, Lcom/tudou/adapter/FavouriteVedioAdapter;->getCount()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$100(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 114
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$100(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/FavouriteVideo;

    iget-boolean v5, v5, Lcom/youku/vo/FavouriteVideo;->isdelete:Z

    if-eqz v5, :cond_4

    .line 115
    add-int/lit8 v0, v0, 0x1

    .line 113
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 118
    :cond_5
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    invoke-virtual {v5}, Lcom/tudou/adapter/FavouriteVedioAdapter;->getCount()I

    move-result v5

    if-ne v0, v5, :cond_6

    .line 119
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 120
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/FavouriteVideo;

    iput-boolean v8, v5, Lcom/youku/vo/FavouriteVideo;->isdelete:Z

    .line 121
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget v6, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->deleteCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->deleteCount:I

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 126
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_6
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$100(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 128
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$100(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_8

    .line 129
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5, v9}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 130
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$200(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Lcom/youku/widget/HintView;

    move-result-object v5

    sget-object v6, Lcom/youku/widget/HintView$Type;->FAVORITE_VIDEO_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v5, v6}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 131
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$200(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Lcom/youku/widget/HintView;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/youku/widget/HintView;->setClickable(Z)V

    .line 154
    :cond_7
    :goto_3
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 156
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    invoke-virtual {v5}, Lcom/tudou/adapter/FavouriteVedioAdapter;->notifyDataSetChanged()V

    .line 162
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-virtual {v5}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->changedeletNum()V

    .line 163
    sget-object v5, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->mf:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-virtual {v5}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->refreshEdit()V

    .line 165
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v5, v4}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$402(Lcom/tudou/ui/fragment/FavouriteVedioFragment;I)I

    goto/16 :goto_0

    .line 133
    :cond_8
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5, v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 134
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$200(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Lcom/youku/widget/HintView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/widget/HintView;->dismiss()V

    .line 135
    packed-switch v4, :pswitch_data_1

    :pswitch_1
    goto :goto_3

    .line 137
    :pswitch_2
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 138
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 139
    :cond_9
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v5, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    goto :goto_3

    .line 142
    :pswitch_3
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 143
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 144
    :cond_a
    iget-object v5, v1, Lcom/youku/vo/FavouriteVideoResult;->data:Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;

    iget v5, v5, Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;->count:I

    iget-object v6, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$100(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_7

    .line 146
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v5, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 147
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v6, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$300(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 169
    .end local v1    # "favourVideoResult":Lcom/youku/vo/FavouriteVideoResult;
    .end local v3    # "tmplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/FavouriteVideo;>;"
    .end local v4    # "type":I
    :pswitch_4
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$000(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)I

    move-result v5

    if-le v5, v8, :cond_b

    .line 170
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$006(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)I

    .line 172
    :cond_b
    const-string v5, "\u6536\u85cf\u9875\u4e91\u6536\u85cf\u8bb0\u5f55\u52a0\u8f7d\u5931\u8d25"

    const-class v6, Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u6211\u7684\u6536\u85cf\u9875\u9762\u6536\u85cf\u8bb0\u5f55\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v5, v6, v7}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 174
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 175
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 176
    :cond_c
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    invoke-virtual {v5}, Lcom/tudou/adapter/FavouriteVedioAdapter;->getCount()I

    move-result v5

    if-nez v5, :cond_d

    .line 177
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 178
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$200(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Lcom/youku/widget/HintView;

    move-result-object v5

    sget-object v6, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v5, v6}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 179
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$200(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Lcom/youku/widget/HintView;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/youku/widget/HintView;->setClickable(Z)V

    .line 180
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$200(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Lcom/youku/widget/HintView;

    move-result-object v5

    new-instance v6, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1$1;

    invoke-direct {v6, p0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1$1;-><init>(Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;)V

    invoke-virtual {v5, v6}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v5

    if-nez v5, :cond_d

    .line 194
    invoke-static {v10}, Lcom/youku/util/Util;->showTips(I)V

    .line 198
    :cond_d
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    invoke-virtual {v5}, Lcom/tudou/adapter/FavouriteVedioAdapter;->notifyDataSetChanged()V

    .line 199
    sget-object v5, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->mf:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-virtual {v5}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->refreshEdit()V

    goto/16 :goto_0

    .line 202
    :pswitch_5
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 203
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 204
    :cond_e
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v5, v8}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$002(Lcom/tudou/ui/fragment/FavouriteVedioFragment;I)I

    .line 205
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iput-boolean v8, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->isfesh:Z

    .line 206
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto/16 :goto_0

    .line 209
    :pswitch_6
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 210
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 212
    :cond_f
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 213
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 214
    :cond_10
    invoke-static {v10}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 135
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

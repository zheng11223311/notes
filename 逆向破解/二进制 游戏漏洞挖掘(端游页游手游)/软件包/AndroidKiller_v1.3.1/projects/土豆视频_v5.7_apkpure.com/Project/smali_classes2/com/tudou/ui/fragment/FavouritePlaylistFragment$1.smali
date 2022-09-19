.class Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;
.super Landroid/os/Handler;
.source "FavouritePlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/FavouritePlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

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

    .line 215
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$000(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)I

    move-result v5

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-le v5, v6, :cond_1

    .line 86
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 87
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 89
    :cond_0
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/youku/vo/FavouritePlaylistResult;

    .line 94
    .local v1, "favouritePl":Lcom/youku/vo/FavouritePlaylistResult;
    iget-object v5, v1, Lcom/youku/vo/FavouritePlaylistResult;->data:Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;

    iget-object v3, v5, Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;->list:Ljava/util/ArrayList;

    .line 95
    .local v3, "tmplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/FavouritePlaylist;>;"
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 100
    .local v4, "type":I
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-boolean v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->isfesh:Z

    if-eqz v5, :cond_2

    .line 101
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iput-boolean v7, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->isfesh:Z

    .line 102
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$100(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 104
    :cond_2
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$000(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 105
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    iput-boolean v7, v5, Lcom/tudou/adapter/FavouritePlaylistAdapter;->isEdit:Z

    .line 106
    sget-object v5, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->mf:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-virtual {v5}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->refreshEdit()V

    .line 107
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->bottom_layout:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iput v7, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->deleteCount:I

    .line 109
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$100(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 112
    :cond_3
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    iget-boolean v5, v5, Lcom/tudou/adapter/FavouritePlaylistAdapter;->isEdit:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    invoke-virtual {v5}, Lcom/tudou/adapter/FavouritePlaylistAdapter;->getCount()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$100(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 115
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$100(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/FavouritePlaylist;

    iget-boolean v5, v5, Lcom/youku/vo/FavouritePlaylist;->isdelete:Z

    if-eqz v5, :cond_4

    .line 116
    add-int/lit8 v0, v0, 0x1

    .line 114
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    :cond_5
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    invoke-virtual {v5}, Lcom/tudou/adapter/FavouritePlaylistAdapter;->getCount()I

    move-result v5

    if-ne v0, v5, :cond_6

    .line 120
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 121
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/FavouritePlaylist;

    iput-boolean v8, v5, Lcom/youku/vo/FavouritePlaylist;->isdelete:Z

    .line 122
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget v6, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->deleteCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->deleteCount:I

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 127
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_6
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$100(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 128
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$100(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_8

    .line 129
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5, v9}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 130
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$200(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Lcom/youku/widget/HintView;

    move-result-object v5

    sget-object v6, Lcom/youku/widget/HintView$Type;->FAVORITE_PLAY_LIST_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v5, v6}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 131
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$200(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Lcom/youku/widget/HintView;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/youku/widget/HintView;->setClickable(Z)V

    .line 154
    :cond_7
    :goto_3
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 156
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    invoke-virtual {v5}, Lcom/tudou/adapter/FavouritePlaylistAdapter;->notifyDataSetChanged()V

    .line 162
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-virtual {v5}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->changedeletNum()V

    .line 163
    sget-object v5, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->mf:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-virtual {v5}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->refreshEdit()V

    .line 164
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v5, v4}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$402(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;I)I

    goto/16 :goto_0

    .line 133
    :cond_8
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5, v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 134
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$200(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Lcom/youku/widget/HintView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/widget/HintView;->dismiss()V

    .line 135
    packed-switch v4, :pswitch_data_1

    :pswitch_1
    goto :goto_3

    .line 137
    :pswitch_2
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 138
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 139
    :cond_9
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v5, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    goto :goto_3

    .line 142
    :pswitch_3
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 143
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 144
    :cond_a
    iget-object v5, v1, Lcom/youku/vo/FavouritePlaylistResult;->data:Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;

    iget v5, v5, Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;->totalPlaylistCount:I

    iget-object v6, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$100(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_7

    .line 146
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v5, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 147
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v6, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$300(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 168
    .end local v1    # "favouritePl":Lcom/youku/vo/FavouritePlaylistResult;
    .end local v3    # "tmplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/FavouritePlaylist;>;"
    .end local v4    # "type":I
    :pswitch_4
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$000(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)I

    move-result v5

    if-le v5, v8, :cond_b

    .line 169
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$006(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)I

    .line 171
    :cond_b
    const-string v5, "\u6536\u85cf\u9875\u4e91\u6536\u85cf\u8bb0\u5f55\u52a0\u8f7d\u5931\u8d25"

    const-class v6, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u6211\u7684\u6536\u85cf\u9875\u9762\u6536\u85cf\u8bb0\u5f55\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v5, v6, v7}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 173
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 174
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 175
    :cond_c
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    invoke-virtual {v5}, Lcom/tudou/adapter/FavouritePlaylistAdapter;->getCount()I

    move-result v5

    if-nez v5, :cond_d

    .line 176
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 177
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$200(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Lcom/youku/widget/HintView;

    move-result-object v5

    sget-object v6, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v5, v6}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 178
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$200(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Lcom/youku/widget/HintView;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/youku/widget/HintView;->setClickable(Z)V

    .line 179
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$200(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Lcom/youku/widget/HintView;

    move-result-object v5

    new-instance v6, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1$1;

    invoke-direct {v6, p0}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1$1;-><init>(Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;)V

    invoke-virtual {v5, v6}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    :cond_d
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v5

    if-nez v5, :cond_e

    .line 193
    invoke-static {v10}, Lcom/youku/util/Util;->showTips(I)V

    .line 195
    :cond_e
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    invoke-virtual {v5}, Lcom/tudou/adapter/FavouritePlaylistAdapter;->notifyDataSetChanged()V

    .line 196
    sget-object v5, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->mf:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-virtual {v5}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->refreshEdit()V

    goto/16 :goto_0

    .line 199
    :pswitch_5
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 200
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 202
    :cond_f
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-static {v5, v8}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->access$002(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;I)I

    .line 203
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iput-boolean v8, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->isfesh:Z

    .line 205
    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto/16 :goto_0

    .line 210
    :pswitch_6
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 211
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 212
    :cond_10
    invoke-static {v10}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 82
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

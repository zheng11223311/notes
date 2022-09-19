.class Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;
.super Landroid/os/Handler;
.source "SubscribeUpdateStreamFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 279
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 473
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 474
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$300(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    sput-boolean v11, Lcom/tudou/ui/fragment/SubscribeFragment;->isAlbumEnable:Z

    .line 483
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 281
    :sswitch_1
    const-string v0, "subListPic"

    const-string v1, " ** SUCCESS ** "

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/youku/vo/SubscribeBean;

    .line 283
    .local v6, "bean":Lcom/youku/vo/SubscribeBean;
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$600(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)I

    move-result v0

    iget v1, v6, Lcom/youku/vo/SubscribeBean;->pg:I

    if-eq v0, v1, :cond_2

    .line 284
    iget-object v0, v6, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$600(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)I

    move-result v0

    if-ne v11, v0, :cond_3

    .line 287
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0, v9}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$802(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;I)I

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-boolean v1, v6, Lcom/youku/vo/SubscribeBean;->is_rec:Z

    invoke-static {v0, v6, v1}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$900(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;Lcom/youku/vo/SubscribeBean;Z)V

    .line 290
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-boolean v1, v6, Lcom/youku/vo/SubscribeBean;->is_rec:Z

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$102(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;Z)Z

    .line 291
    iget-boolean v0, v6, Lcom/youku/vo/SubscribeBean;->is_rec:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$300(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 292
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v0, v10}, Lcom/tudou/ui/fragment/SubscribeFragment;->setMySubVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v0, v9}, Lcom/tudou/ui/fragment/SubscribeFragment;->setTitleRecVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$600(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)I

    move-result v0

    if-ne v0, v11, :cond_4

    .line 295
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mSubscribeBean:Lcom/youku/vo/SubscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 297
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 298
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mSubscribeBean:Lcom/youku/vo/SubscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean;->results:Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/youku/vo/SubscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 300
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mSubscribeBean:Lcom/youku/vo/SubscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 301
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v10}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->SUBSCRIBE_UPDATE_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 304
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$300(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 384
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    :cond_6
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 387
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 389
    :cond_7
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$300(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 390
    sput-boolean v11, Lcom/tudou/ui/fragment/SubscribeFragment;->isAlbumEnable:Z

    .line 393
    :cond_8
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$1100(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 394
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$200(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 395
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$200(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z

    .line 396
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$200(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 398
    :cond_9
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0, v9}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$1102(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;Z)Z

    .line 400
    :cond_a
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->adapter:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/SubscribeAdapter;->notifyDataSetChanged()V

    .line 401
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto/16 :goto_0

    .line 306
    :cond_b
    iget-object v8, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    new-instance v0, Lcom/tudou/adapter/SubscribeAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/tudou/ui/activity/HomePageActivity;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mSubscribeBean:Lcom/youku/vo/SubscribeBean;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$300(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Z

    move-result v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$1000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Landroid/os/Handler;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/tudou/adapter/SubscribeAdapter;-><init>(Landroid/support/v4/app/Fragment;Lcom/tudou/ui/activity/BaseActivity;Lcom/youku/vo/SubscribeBean;ZLandroid/os/Handler;)V

    iput-object v0, v8, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->adapter:Lcom/tudou/adapter/SubscribeAdapter;

    .line 310
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->adapter:Lcom/tudou/adapter/SubscribeAdapter;

    iget-boolean v1, v6, Lcom/youku/vo/SubscribeBean;->is_rec:Z

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/SubscribeAdapter;->setIsRec(Z)V

    .line 311
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->adapter:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 312
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v9}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/youku/widget/HintView;->setVisibility(I)V

    goto/16 :goto_1

    .line 316
    :cond_c
    iget-boolean v0, v6, Lcom/youku/vo/SubscribeBean;->is_rec:Z

    if-eqz v0, :cond_11

    .line 317
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v0, v10}, Lcom/tudou/ui/fragment/SubscribeFragment;->setMySubVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v0, v9}, Lcom/tudou/ui/fragment/SubscribeFragment;->setTitleRecVisibility(I)V

    .line 323
    :goto_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$600(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)I

    move-result v0

    if-ne v0, v11, :cond_d

    .line 324
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mSubscribeBean:Lcom/youku/vo/SubscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 326
    :cond_d
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mSubscribeBean:Lcom/youku/vo/SubscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 328
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mSubscribeBean:Lcom/youku/vo/SubscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 329
    .local v7, "dataSize":I
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-nez v0, :cond_e

    .line 330
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mSubscribeBean:Lcom/youku/vo/SubscribeBean;

    iget-object v1, v6, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    iput-object v1, v0, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    .line 331
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mSubscribeBean:Lcom/youku/vo/SubscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    if-nez v0, :cond_12

    .line 332
    const/4 v7, 0x0

    .line 341
    :cond_e
    :goto_3
    if-nez v7, :cond_15

    .line 342
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v10}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$300(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 345
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    const-string v2, "\u6682\u65e0\u5267\u96c6\u7c7b\u8ba2\u9605"

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    .line 349
    :goto_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    :goto_5
    iget-object v0, v6, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 356
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-nez v0, :cond_f

    .line 357
    iget-object v0, v6, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    if-nez v0, :cond_16

    .line 358
    const/4 v7, 0x0

    .line 366
    :cond_f
    :goto_6
    if-nez v7, :cond_5

    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$600(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)I

    move-result v0

    if-eq v0, v11, :cond_5

    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$500(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 367
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 368
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 369
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 371
    :cond_10
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0, v9}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$502(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;Z)Z

    .line 372
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 374
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$200(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$200(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z

    .line 376
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$200(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 320
    .end local v7    # "dataSize":I
    :cond_11
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v0, v9}, Lcom/tudou/ui/fragment/SubscribeFragment;->setMySubVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v0, v10}, Lcom/tudou/ui/fragment/SubscribeFragment;->setTitleRecVisibility(I)V

    goto/16 :goto_2

    .line 334
    .restart local v7    # "dataSize":I
    :cond_12
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mSubscribeBean:Lcom/youku/vo/SubscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    .line 335
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mSubscribeBean:Lcom/youku/vo/SubscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto/16 :goto_3

    .line 338
    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 347
    :cond_14
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    const-string v2, "\u6682\u65e0\u8ba2\u9605\u5185\u5bb9"

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 351
    :cond_15
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v9}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/youku/widget/HintView;->setVisibility(I)V

    goto/16 :goto_5

    .line 360
    :cond_16
    iget-object v0, v6, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    .line 361
    iget-object v0, v6, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto/16 :goto_6

    .line 363
    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 404
    .end local v6    # "bean":Lcom/youku/vo/SubscribeBean;
    .end local v7    # "dataSize":I
    :sswitch_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 405
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 407
    :cond_18
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u70b9\u51fb\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$1202(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 408
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mSubscribeBean:Lcom/youku/vo/SubscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_19

    .line 409
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 410
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v10}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 414
    :cond_19
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 416
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 417
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 424
    :cond_1a
    :goto_7
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    new-instance v1, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3$1;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3$1;-><init>(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$300(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    sput-boolean v11, Lcom/tudou/ui/fragment/SubscribeFragment;->isAlbumEnable:Z

    goto/16 :goto_0

    .line 419
    :cond_1b
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mSubscribeBean:Lcom/youku/vo/SubscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mSubscribeBean:Lcom/youku/vo/SubscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1a

    goto :goto_7

    .line 444
    :sswitch_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v10}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$300(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 447
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    const-string v2, "\u6682\u65e0\u5267\u96c6\u7c7b\u8ba2\u9605"

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    .line 451
    :goto_8
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$300(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    sput-boolean v11, Lcom/tudou/ui/fragment/SubscribeFragment;->isAlbumEnable:Z

    goto/16 :goto_0

    .line 449
    :cond_1c
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    const-string v2, "\u6682\u65e0\u8ba2\u9605\u5185\u5bb9"

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    goto :goto_8

    .line 457
    :sswitch_4
    const-string v0, "\u6536\u85cf\u6210\u529f"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 460
    :sswitch_5
    const-string v0, "\u6536\u85cf\u5931\u8d25"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 463
    :sswitch_6
    const-string v0, "\u53d6\u6d88\u6536\u85cf"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 466
    :sswitch_7
    const-string v0, "\u53d6\u6d88\u6536\u85cf\u5931\u8d25"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    nop

    :sswitch_data_0
    .sparse-switch
        0x4e25 -> :sswitch_3
        0x4e71 -> :sswitch_1
        0x4e72 -> :sswitch_2
        0x4e73 -> :sswitch_0
        0x4e74 -> :sswitch_0
        0x4943b -> :sswitch_4
        0x4943c -> :sswitch_5
        0x4943d -> :sswitch_6
        0x4943e -> :sswitch_7
    .end sparse-switch
.end method

.class Lcom/tudou/ui/fragment/AttentionFragment$8;
.super Landroid/os/Handler;
.source "AttentionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/AttentionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/AttentionFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/AttentionFragment;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 462
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 464
    :sswitch_0
    iget-object v4, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/youku/vo/Podcast;

    invoke-static {v4, v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1600(Lcom/tudou/ui/fragment/AttentionFragment;Lcom/youku/vo/Podcast;)V

    .line 465
    const-string v0, ""

    .line 466
    .local v0, "attr":Ljava/lang/String;
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v3}, Lcom/tudou/adapter/AttentionAdapter;->getEditMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 467
    const-string v0, "\u7f16\u8f91"

    .line 470
    :cond_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v4}, Lcom/tudou/ui/fragment/AttentionFragment;->access$702(Lcom/tudou/ui/fragment/AttentionFragment;I)I

    .line 472
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$500(Lcom/tudou/ui/fragment/AttentionFragment;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\u6211\u7684\u8ba2\u9605("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/youku/vo/Podcast;

    iget-object v3, v3, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget v3, v3, Lcom/youku/vo/Podcast$Users;->total:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1700(Lcom/tudou/ui/fragment/AttentionFragment;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 475
    iget-object v4, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/youku/vo/Podcast;

    iget-object v3, v3, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget v3, v3, Lcom/youku/vo/Podcast$Users;->total:I

    invoke-static {v4, v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1802(Lcom/tudou/ui/fragment/AttentionFragment;I)I

    .line 476
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/youku/vo/Podcast;

    iget-boolean v3, v3, Lcom/youku/vo/Podcast;->isFirstAccess:Z

    if-nez v3, :cond_2

    .line 477
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3, v7}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1702(Lcom/tudou/ui/fragment/AttentionFragment;Z)Z

    .line 480
    :cond_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/youku/vo/Podcast;

    iget-object v3, v3, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget v3, v3, Lcom/youku/vo/Podcast$Users;->total:I

    if-nez v3, :cond_3

    .line 481
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$500(Lcom/tudou/ui/fragment/AttentionFragment;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u6211\u7684\u8ba2\u9605"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    :cond_3
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$700(Lcom/tudou/ui/fragment/AttentionFragment;)I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 485
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$400(Lcom/tudou/ui/fragment/AttentionFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 486
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v3}, Lcom/tudou/adapter/AttentionAdapter;->clearDeleteList()V

    .line 487
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v3, v6}, Lcom/tudou/adapter/AttentionAdapter;->setEditMode(Z)V

    .line 488
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$300(Lcom/tudou/ui/fragment/AttentionFragment;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 489
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3, v6}, Lcom/tudou/ui/fragment/AttentionFragment;->access$202(Lcom/tudou/ui/fragment/AttentionFragment;Z)Z

    .line 493
    :cond_4
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 494
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 496
    :cond_5
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v3}, Lcom/tudou/adapter/AttentionAdapter;->getEditMode()Z

    move-result v3

    if-nez v3, :cond_6

    .line 497
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$400(Lcom/tudou/ui/fragment/AttentionFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 500
    :cond_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/youku/vo/Podcast;

    iget-object v3, v3, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v3, v3, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_c

    .line 501
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 502
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v4, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v3, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 507
    :goto_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1300(Lcom/tudou/ui/fragment/AttentionFragment;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 508
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$100(Lcom/tudou/ui/fragment/AttentionFragment;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$000(Lcom/tudou/ui/fragment/AttentionFragment;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 509
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v4, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/AttentionFragment;->access$100(Lcom/tudou/ui/fragment/AttentionFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 519
    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$000(Lcom/tudou/ui/fragment/AttentionFragment;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 520
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3, v6}, Lcom/tudou/ui/fragment/AttentionFragment;->access$002(Lcom/tudou/ui/fragment/AttentionFragment;Z)Z

    .line 522
    :cond_8
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3, v6}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1302(Lcom/tudou/ui/fragment/AttentionFragment;Z)Z

    .line 524
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v3}, Lcom/tudou/adapter/AttentionAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_b

    .line 525
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1900(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/youku/widget/HintView;

    move-result-object v3

    sget-object v4, Lcom/youku/widget/HintView$Type;->SUBSCRIBE_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v3, v4}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 526
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1900(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/youku/widget/HintView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 533
    :goto_3
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$600(Lcom/tudou/ui/fragment/AttentionFragment;)V

    .line 534
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto/16 :goto_0

    .line 504
    :cond_9
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v4, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v3, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    goto :goto_1

    .line 511
    :cond_a
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$100(Lcom/tudou/ui/fragment/AttentionFragment;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 513
    :try_start_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v4, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/AttentionFragment;->access$100(Lcom/tudou/ui/fragment/AttentionFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 514
    :catch_0
    move-exception v1

    .line 515
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 529
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_b
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1900(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/youku/widget/HintView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/youku/widget/HintView;->setVisibility(I)V

    goto :goto_3

    .line 537
    :cond_c
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v3}, Lcom/tudou/adapter/AttentionAdapter;->notifyDataSetChanged()V

    .line 538
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$700(Lcom/tudou/ui/fragment/AttentionFragment;)I

    move-result v3

    if-ne v3, v7, :cond_d

    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v3}, Lcom/tudou/adapter/AttentionAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_d

    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1300(Lcom/tudou/ui/fragment/AttentionFragment;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 539
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3, v6}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1302(Lcom/tudou/ui/fragment/AttentionFragment;Z)Z

    .line 545
    :cond_d
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 546
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v3}, Lcom/tudou/adapter/AttentionAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_e

    .line 547
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1900(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/youku/widget/HintView;

    move-result-object v3

    sget-object v4, Lcom/youku/widget/HintView$Type;->SUBSCRIBE_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v3, v4}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 548
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1900(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/youku/widget/HintView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 554
    :goto_4
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$600(Lcom/tudou/ui/fragment/AttentionFragment;)V

    .line 555
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1300(Lcom/tudou/ui/fragment/AttentionFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 556
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3, v6}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1302(Lcom/tudou/ui/fragment/AttentionFragment;Z)Z

    goto/16 :goto_0

    .line 551
    :cond_e
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1900(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/youku/widget/HintView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/youku/widget/HintView;->setVisibility(I)V

    goto :goto_4

    .line 560
    .end local v0    # "attr":Ljava/lang/String;
    :sswitch_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$700(Lcom/tudou/ui/fragment/AttentionFragment;)I

    move-result v3

    if-le v3, v7, :cond_f

    .line 561
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget v4, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v4}, Lcom/tudou/ui/fragment/AttentionFragment;->access$702(Lcom/tudou/ui/fragment/AttentionFragment;I)I

    .line 563
    :cond_f
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 564
    .local v2, "error":Ljava/lang/String;
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 565
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 567
    :cond_10
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 568
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v3}, Lcom/tudou/adapter/AttentionAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_11

    .line 569
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1900(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/youku/widget/HintView;

    move-result-object v3

    sget-object v4, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v3, v4}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 570
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1900(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/youku/widget/HintView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 572
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1900(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/youku/widget/HintView;

    move-result-object v3

    new-instance v4, Lcom/tudou/ui/fragment/AttentionFragment$8$1;

    invoke-direct {v4, p0}, Lcom/tudou/ui/fragment/AttentionFragment$8$1;-><init>(Lcom/tudou/ui/fragment/AttentionFragment$8;)V

    invoke-virtual {v3, v4}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 587
    :cond_11
    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 596
    .end local v2    # "error":Ljava/lang/String;
    :sswitch_2
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 597
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v3, v6}, Lcom/tudou/ui/fragment/AttentionFragment;->access$202(Lcom/tudou/ui/fragment/AttentionFragment;Z)Z

    .line 598
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v3, v6}, Lcom/tudou/adapter/AttentionAdapter;->setEditMode(Z)V

    .line 599
    sput-boolean v7, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 600
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment$8;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto/16 :goto_0

    .line 603
    :sswitch_3
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 604
    const-string v3, "\u53d6\u6d88\u8ba2\u9605\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 605
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto/16 :goto_0

    .line 462
    nop

    :sswitch_data_0
    .sparse-switch
        0xfa0 -> :sswitch_0
        0xfa1 -> :sswitch_1
        0x4e21 -> :sswitch_2
        0x4e22 -> :sswitch_3
    .end sparse-switch
.end method

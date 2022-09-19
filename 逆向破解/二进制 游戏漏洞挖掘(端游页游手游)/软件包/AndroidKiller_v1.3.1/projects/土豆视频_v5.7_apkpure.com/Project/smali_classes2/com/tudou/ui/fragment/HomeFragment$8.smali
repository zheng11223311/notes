.class Lcom/tudou/ui/fragment/HomeFragment$8;
.super Landroid/os/Handler;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HomeFragment;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 585
    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/HomeFragment;->access$500(Lcom/tudou/ui/fragment/HomeFragment;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    .line 647
    :sswitch_0
    sget-object v8, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    sget-object v8, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageData:Lcom/youku/vo/IndexPageData;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/HomeFragment;->access$1100(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/tudou/adapter/IndexPageAdapter;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 648
    sget-object v8, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageData:Lcom/youku/vo/IndexPageData;

    iget-object v8, v8, Lcom/youku/vo/IndexPageData;->index_page_modules:Ljava/util/List;

    sget-object v9, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageData:Lcom/youku/vo/IndexPageData;

    iget-object v9, v9, Lcom/youku/vo/IndexPageData;->index_page_modules:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/IndexPageModuleInfo;

    .line 649
    .local v6, "lastModules":Lcom/youku/vo/IndexPageModuleInfo;
    const-string v8, "guess_tab"

    iget-object v9, v6, Lcom/youku/vo/IndexPageModuleInfo;->sub_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/tudou/ui/fragment/HomeFragment;->access$300()Z

    move-result v8

    if-nez v8, :cond_0

    .line 652
    new-instance v1, Lcom/youku/vo/IndexPageItem;

    invoke-direct {v1}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 653
    .local v1, "guessTitle":Lcom/youku/vo/IndexPageItem;
    const/4 v8, 0x3

    iput v8, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 654
    iput-object v6, v1, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 655
    iget-object v8, v1, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    invoke-static {}, Lcom/tudou/ui/fragment/HomeFragment;->access$1400()Ljava/util/List;

    move-result-object v9

    iput-object v9, v8, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    .line 660
    new-instance v4, Lcom/youku/vo/IndexPageItem;

    invoke-direct {v4}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 661
    .local v4, "item1":Lcom/youku/vo/IndexPageItem;
    new-instance v5, Lcom/youku/vo/IndexPageItem;

    invoke-direct {v5}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 663
    .local v5, "item2":Lcom/youku/vo/IndexPageItem;
    const/4 v8, 0x2

    iput v8, v4, Lcom/youku/vo/IndexPageItem;->changeType:I

    .line 664
    const/4 v8, 0x2

    iput v8, v5, Lcom/youku/vo/IndexPageItem;->changeType:I

    .line 666
    iget v8, v6, Lcom/youku/vo/IndexPageModuleInfo;->image_state:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 667
    const/4 v8, 0x4

    iput v8, v4, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 668
    const/4 v8, 0x4

    iput v8, v5, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 673
    :goto_1
    new-instance v8, Lcom/youku/vo/IndexPageModuleInfo;

    invoke-direct {v8}, Lcom/youku/vo/IndexPageModuleInfo;-><init>()V

    iput-object v8, v4, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 674
    new-instance v8, Lcom/youku/vo/IndexPageModuleInfo;

    invoke-direct {v8}, Lcom/youku/vo/IndexPageModuleInfo;-><init>()V

    iput-object v8, v5, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 676
    iget-object v8, v4, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    .line 677
    iget-object v8, v5, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    .line 678
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-static {}, Lcom/tudou/ui/fragment/HomeFragment;->access$1400()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_c

    .line 679
    invoke-static {}, Lcom/tudou/ui/fragment/HomeFragment;->access$1400()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardInfo;

    .line 680
    .local v0, "cardInfo":Lcom/youku/vo/CardInfo;
    add-int/lit8 v8, v2, 0x1

    iput v8, v0, Lcom/youku/vo/CardInfo;->contentIndex:I

    .line 681
    iget-object v8, v6, Lcom/youku/vo/IndexPageModuleInfo;->title:Ljava/lang/String;

    iput-object v8, v0, Lcom/youku/vo/CardInfo;->channelTitle:Ljava/lang/String;

    .line 682
    rem-int/lit8 v8, v2, 0x4

    if-eqz v8, :cond_2

    rem-int/lit8 v8, v2, 0x4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    .line 683
    :cond_2
    iget-object v8, v4, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v8, v8, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 593
    .end local v0    # "cardInfo":Lcom/youku/vo/CardInfo;
    .end local v1    # "guessTitle":Lcom/youku/vo/IndexPageItem;
    .end local v2    # "i":I
    .end local v4    # "item1":Lcom/youku/vo/IndexPageItem;
    .end local v5    # "item2":Lcom/youku/vo/IndexPageItem;
    .end local v6    # "lastModules":Lcom/youku/vo/IndexPageModuleInfo;
    :sswitch_1
    sget-object v8, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageData:Lcom/youku/vo/IndexPageData;

    iget-object v8, v8, Lcom/youku/vo/IndexPageData;->search_area:Lcom/youku/vo/SearchArea;

    if-eqz v8, :cond_3

    .line 594
    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    iget-object v9, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v9}, Lcom/tudou/ui/fragment/HomeFragment;->access$600(Lcom/tudou/ui/fragment/HomeFragment;)Landroid/widget/TextView;

    move-result-object v9

    sget-object v10, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageData:Lcom/youku/vo/IndexPageData;

    iget-object v10, v10, Lcom/youku/vo/IndexPageData;->search_area:Lcom/youku/vo/SearchArea;

    invoke-static {v8, v9, v10}, Lcom/tudou/ui/fragment/HomeFragment;->access$700(Lcom/tudou/ui/fragment/HomeFragment;Landroid/widget/TextView;Lcom/youku/vo/SearchArea;)V

    .line 596
    :cond_3
    sget-object v8, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    if-eqz v8, :cond_6

    sget-object v8, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_6

    .line 597
    sget-object v8, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/IndexPageItem;

    .line 598
    .local v3, "item":Lcom/youku/vo/IndexPageItem;
    iget v8, v3, Lcom/youku/vo/IndexPageItem;->itemType:I

    if-nez v8, :cond_6

    .line 599
    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/HomeFragment;->access$800(Lcom/tudou/ui/fragment/HomeFragment;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 601
    :try_start_0
    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/tudou/ui/fragment/HomeFragment;->access$802(Lcom/tudou/ui/fragment/HomeFragment;Z)Z

    .line 602
    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/HomeFragment;->access$1000(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v8

    iget-object v9, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v9}, Lcom/tudou/ui/fragment/HomeFragment;->access$900(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/tudou/adapter/SlideItemView;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeHeaderView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :cond_4
    :goto_4
    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/HomeFragment;->access$900(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/tudou/adapter/SlideItemView;

    move-result-object v8

    if-nez v8, :cond_5

    .line 612
    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    new-instance v9, Lcom/tudou/adapter/SlideItemView;

    iget-object v10, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-virtual {v10}, Lcom/tudou/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/tudou/adapter/SlideItemView;-><init>(Landroid/content/Context;)V

    invoke-static {v8, v9}, Lcom/tudou/ui/fragment/HomeFragment;->access$902(Lcom/tudou/ui/fragment/HomeFragment;Lcom/tudou/adapter/SlideItemView;)Lcom/tudou/adapter/SlideItemView;

    .line 614
    :cond_5
    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    iget-object v9, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v9}, Lcom/tudou/ui/fragment/HomeFragment;->access$900(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/tudou/adapter/SlideItemView;

    move-result-object v9

    iget-object v10, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-virtual {v10}, Lcom/tudou/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v8, v9, v3, v10}, Lcom/tudou/ui/fragment/HomeFragment;->initSlide(Lcom/tudou/adapter/SlideItemView;Lcom/youku/vo/IndexPageItem;Landroid/app/Activity;)Lcom/tudou/adapter/SlideItemView;

    move-result-object v7

    .line 616
    .local v7, "view":Landroid/view/View;
    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/HomeFragment;->access$1000(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 617
    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/tudou/ui/fragment/HomeFragment;->access$802(Lcom/tudou/ui/fragment/HomeFragment;Z)Z

    .line 618
    sget-object v8, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 621
    .end local v3    # "item":Lcom/youku/vo/IndexPageItem;
    .end local v7    # "view":Landroid/view/View;
    :cond_6
    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/HomeFragment;->access$1100(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/tudou/adapter/IndexPageAdapter;

    move-result-object v8

    if-nez v8, :cond_8

    .line 622
    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    new-instance v9, Lcom/tudou/adapter/IndexPageAdapter;

    sget-object v10, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    iget-object v11, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-direct {v9, v10, v11}, Lcom/tudou/adapter/IndexPageAdapter;-><init>(Ljava/util/List;Lcom/tudou/ui/fragment/HomeFragment;)V

    invoke-static {v8, v9}, Lcom/tudou/ui/fragment/HomeFragment;->access$1102(Lcom/tudou/ui/fragment/HomeFragment;Lcom/tudou/adapter/IndexPageAdapter;)Lcom/tudou/adapter/IndexPageAdapter;

    .line 623
    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/HomeFragment;->access$1000(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v8

    iget-object v9, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v9}, Lcom/tudou/ui/fragment/HomeFragment;->access$1100(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/tudou/adapter/IndexPageAdapter;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 629
    :goto_5
    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/HomeFragment;->access$900(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/tudou/adapter/SlideItemView;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 630
    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/HomeFragment;->access$1200(Lcom/tudou/ui/fragment/HomeFragment;)V

    .line 632
    :cond_7
    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/HomeFragment;->access$1000(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    goto/16 :goto_0

    .line 625
    :cond_8
    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/HomeFragment;->access$1100(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/tudou/adapter/IndexPageAdapter;

    move-result-object v8

    sget-object v9, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    invoke-virtual {v8, v9}, Lcom/tudou/adapter/IndexPageAdapter;->setData(Ljava/util/List;)V

    goto :goto_5

    .line 636
    :sswitch_2
    const-string v8, "\u9996\u9875\u89c6\u9891\u52a0\u8f7d\u5931\u8d25"

    const-string v9, "\u9996\u9875\u89c6\u9891\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v8, v9}, Lcom/tudou/ui/activity/HomePageActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/HomeFragment;->access$1000(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 639
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v8

    if-nez v8, :cond_9

    .line 640
    const v8, 0x7f0d02c3

    invoke-static {v8}, Lcom/youku/util/Util;->showTips(I)V

    .line 644
    :goto_6
    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/HomeFragment;->access$1300(Lcom/tudou/ui/fragment/HomeFragment;)V

    goto/16 :goto_0

    .line 642
    :cond_9
    const v8, 0x7f0d0394

    invoke-static {v8}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_6

    .line 670
    .restart local v1    # "guessTitle":Lcom/youku/vo/IndexPageItem;
    .restart local v4    # "item1":Lcom/youku/vo/IndexPageItem;
    .restart local v5    # "item2":Lcom/youku/vo/IndexPageItem;
    .restart local v6    # "lastModules":Lcom/youku/vo/IndexPageModuleInfo;
    :cond_a
    const/16 v8, 0x8

    iput v8, v4, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 671
    const/16 v8, 0x8

    iput v8, v5, Lcom/youku/vo/IndexPageItem;->itemType:I

    goto/16 :goto_1

    .line 685
    .restart local v0    # "cardInfo":Lcom/youku/vo/CardInfo;
    .restart local v2    # "i":I
    :cond_b
    iget-object v8, v5, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v8, v8, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 691
    .end local v0    # "cardInfo":Lcom/youku/vo/CardInfo;
    :cond_c
    sget-object v8, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    sget-object v9, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 692
    sget-object v8, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    sget-object v9, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 693
    sget-object v8, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    sget-object v9, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 695
    sget-object v8, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    invoke-static {v8}, Lcom/tudou/ui/fragment/HomeFragment;->access$1500(Ljava/util/List;)V

    .line 696
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/tudou/ui/fragment/HomeFragment;->access$302(Z)Z

    .line 698
    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/HomeFragment;->access$1100(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/tudou/adapter/IndexPageAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tudou/adapter/IndexPageAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 704
    .end local v1    # "guessTitle":Lcom/youku/vo/IndexPageItem;
    .end local v2    # "i":I
    .end local v4    # "item1":Lcom/youku/vo/IndexPageItem;
    .end local v5    # "item2":Lcom/youku/vo/IndexPageItem;
    .end local v6    # "lastModules":Lcom/youku/vo/IndexPageModuleInfo;
    :sswitch_3
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v8

    if-nez v8, :cond_d

    .line 705
    const v8, 0x7f0d02c3

    invoke-static {v8}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 707
    :cond_d
    const v8, 0x7f0d0394

    invoke-static {v8}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 711
    :sswitch_4
    iget-object v9, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/youku/vo/Notifications;

    invoke-static {v9, v8}, Lcom/tudou/ui/fragment/HomeFragment;->access$1600(Lcom/tudou/ui/fragment/HomeFragment;Lcom/youku/vo/Notifications;)V

    goto/16 :goto_0

    .line 714
    :sswitch_5
    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/HomeFragment;->access$1700(Lcom/tudou/ui/fragment/HomeFragment;)V

    goto/16 :goto_0

    .line 717
    :sswitch_6
    iget-object v8, p0, Lcom/tudou/ui/fragment/HomeFragment$8;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/HomeFragment;->access$1000(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    goto/16 :goto_0

    .line 603
    .restart local v3    # "item":Lcom/youku/vo/IndexPageItem;
    :catch_0
    move-exception v8

    goto/16 :goto_4

    .line 588
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_6
        0x384 -> :sswitch_2
        0x385 -> :sswitch_1
        0xfa0 -> :sswitch_4
        0xfa1 -> :sswitch_5
    .end sparse-switch
.end method

.class public Lcom/youku/gamecenter/GameRankActivity;
.super Lcom/youku/gamecenter/GameBaseActivity;
.source "GameRankActivity.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetGameListService$OnGameListServiceListener;
.implements Lcom/youku/gamecenter/OnGameInfoChangedListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/youku/gamecenter/DelayNotifyHandler$OnDelayNotifyListener;


# instance fields
.field private isLoadingData:Z

.field private isScrolling:Z

.field private mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

.field private mBoxId:Ljava/lang/String;

.field private mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

.field private mEndPage:I

.field private mFootView:Landroid/view/View;

.field private mGameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAutoLoad:Z

.field private mListView:Landroid/widget/ListView;

.field private mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

.field private mNoResultView:Landroid/widget/RelativeLayout;

.field private mPageCount:I

.field private mPageName:Ljava/lang/String;

.field private mPosterUrl:Ljava/lang/String;

.field private mShortFootView:Landroid/view/View;

.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mPageName:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mPageCount:I

    .line 55
    iput-boolean v1, p0, Lcom/youku/gamecenter/GameRankActivity;->isLoadingData:Z

    .line 56
    iput-boolean v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mIsAutoLoad:Z

    .line 59
    iput-boolean v1, p0, Lcom/youku/gamecenter/GameRankActivity;->isScrolling:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mGameList:Ljava/util/List;

    .line 63
    invoke-static {}, Lcom/youku/gamecenter/DelayNotifyHandler;->getInstance()Lcom/youku/gamecenter/DelayNotifyHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    return-void
.end method

.method private addHeaderView()V
    .locals 6

    .prologue
    .line 450
    iget-object v3, p0, Lcom/youku/gamecenter/GameRankActivity;->mPosterUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 452
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/youku/gamecenter/GameRankActivity;->initHeaderViewPoster(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    .line 453
    .local v1, "mHeaderView":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 455
    sget v3, Lcom/youku/gamecenter/R$id;->poster:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 457
    .local v2, "mPosterView":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/youku/gamecenter/GameRankActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 460
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/gamecenter/GameRankActivity;->mPosterUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayListenerImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 468
    .end local v1    # "mHeaderView":Landroid/view/View;
    .end local v2    # "mPosterView":Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/youku/gamecenter/R$layout;->layout_game_rank_header:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 467
    .local v0, "header":Landroid/view/View;
    iget-object v3, p0, Lcom/youku/gamecenter/GameRankActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private addIntervalFoot()V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mShortFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mShortFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 364
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$layout;->layout_game_rank_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mShortFootView:Landroid/view/View;

    .line 366
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mShortFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 367
    return-void
.end method

.method private clearToast()V
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameRankActivity;->getToast()Landroid/widget/Toast;

    move-result-object v0

    .line 396
    .local v0, "toast":Landroid/widget/Toast;
    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 399
    :cond_0
    return-void
.end method

.method public static getFootViewFailedTitleResId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    invoke-static {p0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$string;->game_center_tips_no_network_retry:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$string;->game_center_tips_no_network:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 403
    const-string v0, "38"

    iget-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mBoxId:Ljava/lang/String;

    iget v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mEndPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/services/URLContainer;->getHomeBoxGameListUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 417
    :goto_0
    return-object v0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mSource:Ljava/lang/String;

    const-string v1, "45"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    const/4 v0, 0x0

    iget v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mEndPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/services/URLContainer;->getRankActivityDataUrl(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mSource:Ljava/lang/String;

    const-string v1, "44"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    const/4 v0, 0x1

    iget v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mEndPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/services/URLContainer;->getRankActivityDataUrl(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 417
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleLastPageRefresh()V
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameRankActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$string;->tab_last_page_prompt:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameRankActivity;->showNetTips(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method private hasNextPage()Z
    .locals 2

    .prologue
    .line 357
    iget v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mEndPage:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mPageCount:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initFootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 142
    sget v1, Lcom/youku/gamecenter/R$layout;->widget_game_loadding:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, "footView":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    return-object v0
.end method

.method private initHeaderViewPoster(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 444
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_category_poster:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 114
    sget v1, Lcom/youku/gamecenter/R$id;->gamecenter_group:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameRankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 116
    .local v0, "mParentLayout":Landroid/widget/RelativeLayout;
    sget v1, Lcom/youku/gamecenter/R$id;->game_activity_no_result_layout:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameRankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    .line 117
    iget-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    new-instance v1, Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-static {}, Lcom/youku/gamecenter/GameBaseActivity;->isYoukuApp()Z

    move-result v2

    invoke-direct {v1, p0, v0, v2}, Lcom/youku/gamecenter/widgets/LoadingView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    .line 122
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/youku/gamecenter/GameRankActivity;->initFootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mFootView:Landroid/view/View;

    .line 124
    sget v1, Lcom/youku/gamecenter/R$id;->scrollcontainer:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameRankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mListView:Landroid/widget/ListView;

    .line 125
    iget-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 126
    iget-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/youku/gamecenter/GameRankActivity;->mFootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 129
    iget-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mPageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameRankActivity;->setTitlePageName(Ljava/lang/String;)V

    .line 131
    new-instance v1, Lcom/youku/gamecenter/adapter/GameRankAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/youku/gamecenter/GameRankActivity;->mSource:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/youku/gamecenter/adapter/GameRankAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;ZILjava/lang/String;)V

    iput-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    .line 133
    iget-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/youku/gamecenter/GameRankActivity;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    return-void
.end method

.method private isLastPage()Z
    .locals 2

    .prologue
    .line 269
    iget v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mEndPage:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mEndPage:I

    iget v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mPageCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidResult(Lcom/youku/gamecenter/data/GameListInfo;)Z
    .locals 3
    .param p1, "data"    # Lcom/youku/gamecenter/data/GameListInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 421
    if-nez p1, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v0

    .line 424
    :cond_1
    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameListInfo;->getGameList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameListInfo;->getGameList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 425
    goto :goto_0

    .line 427
    :cond_2
    iget-object v2, p1, Lcom/youku/gamecenter/data/GameListInfo;->promotion_apps:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameListInfo;->promotion_apps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 428
    goto :goto_0
.end method

.method private loadData()V
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameRankActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mSource:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mSource:Ljava/lang/String;

    const-string v2, "45"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    sget v1, Lcom/youku/gamecenter/R$string;->game_net_rank:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameRankActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mPageName:Ljava/lang/String;

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mSource:Ljava/lang/String;

    const-string v2, "44"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    sget v1, Lcom/youku/gamecenter/R$string;->game_single_rank:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameRankActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mPageName:Ljava/lang/String;

    goto :goto_0

    .line 86
    :cond_2
    const-string v1, "38"

    iget-object v2, p0, Lcom/youku/gamecenter/GameRankActivity;->mSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const-string v1, "posterUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mPosterUrl:Ljava/lang/String;

    .line 89
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mPageName:Ljava/lang/String;

    .line 90
    const-string v1, "boxId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mBoxId:Ljava/lang/String;

    goto :goto_0
.end method

.method private loadNewPage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 173
    invoke-direct {p0}, Lcom/youku/gamecenter/GameRankActivity;->isLastPage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/youku/gamecenter/GameRankActivity;->handleLastPageRefresh()V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mIsAutoLoad:Z

    .line 180
    iget-boolean v1, p0, Lcom/youku/gamecenter/GameRankActivity;->isLoadingData:Z

    if-nez v1, :cond_0

    .line 184
    invoke-static {p0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 186
    iput-boolean v2, p0, Lcom/youku/gamecenter/GameRankActivity;->mIsAutoLoad:Z

    .line 188
    invoke-direct {p0, v2}, Lcom/youku/gamecenter/GameRankActivity;->setFailedUI(Z)V

    goto :goto_0

    .line 193
    :cond_2
    invoke-direct {p0}, Lcom/youku/gamecenter/GameRankActivity;->showLoadingUI()V

    .line 195
    iput-boolean v2, p0, Lcom/youku/gamecenter/GameRankActivity;->isLoadingData:Z

    .line 198
    new-instance v0, Lcom/youku/gamecenter/services/GetGameListService;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/services/GetGameListService;-><init>(Landroid/content/Context;)V

    .line 199
    .local v0, "service":Lcom/youku/gamecenter/services/GetGameListService;
    invoke-direct {p0}, Lcom/youku/gamecenter/GameRankActivity;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/services/GetGameListService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    goto :goto_0
.end method

.method private setFailedUI(Z)V
    .locals 5
    .param p1, "loadSuccess"    # Z

    .prologue
    const/4 v4, 0x0

    .line 227
    if-nez p1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameRankActivity;->showNetTipsAutomatic()V

    .line 231
    :cond_0
    iget v2, p0, Lcom/youku/gamecenter/GameRankActivity;->mEndPage:I

    if-nez v2, :cond_1

    .line 232
    iget-object v2, p0, Lcom/youku/gamecenter/GameRankActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v2}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 233
    iget-object v2, p0, Lcom/youku/gamecenter/GameRankActivity;->mListView:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 234
    iget-object v2, p0, Lcom/youku/gamecenter/GameRankActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 246
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v2, p0, Lcom/youku/gamecenter/GameRankActivity;->mFootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v2, p0, Lcom/youku/gamecenter/GameRankActivity;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 241
    .local v0, "title":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "title":Landroid/view/View;
    invoke-static {p0}, Lcom/youku/gamecenter/GameRankActivity;->getFootViewFailedTitleResId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v2, p0, Lcom/youku/gamecenter/GameRankActivity;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 244
    .local v1, "title2":Landroid/view/View;
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "title2":Landroid/view/View;
    invoke-direct {p0, p0, v1}, Lcom/youku/gamecenter/GameRankActivity;->setTitle2Content(Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private setFootViewLoadingTitle()V
    .locals 4

    .prologue
    .line 214
    iget v2, p0, Lcom/youku/gamecenter/GameRankActivity;->mEndPage:I

    if-nez v2, :cond_0

    .line 223
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/GameRankActivity;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 219
    .local v0, "title":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "title":Landroid/view/View;
    sget v2, Lcom/youku/gamecenter/R$string;->game_center_tips_loadding:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 221
    iget-object v2, p0, Lcom/youku/gamecenter/GameRankActivity;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 222
    .local v1, "title2":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSuccessUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 336
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 338
    invoke-direct {p0}, Lcom/youku/gamecenter/GameRankActivity;->hasNextPage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 345
    :goto_0
    iget v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mEndPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/youku/gamecenter/GameRankActivity;->addHeaderView()V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    iget-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mGameList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->setData(Ljava/util/List;)V

    .line 353
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->notifyDataSetChanged()V

    .line 354
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 342
    invoke-direct {p0}, Lcom/youku/gamecenter/GameRankActivity;->addIntervalFoot()V

    goto :goto_0
.end method

.method private setTitle2Content(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Landroid/widget/TextView;

    .prologue
    .line 249
    invoke-static {p1}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showLoadingUI()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 206
    iget v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mEndPage:I

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->startAnimation()V

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/youku/gamecenter/GameRankActivity;->setFootViewLoadingTitle()V

    .line 211
    return-void
.end method


# virtual methods
.method getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mPageName:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mFootView:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 299
    invoke-direct {p0}, Lcom/youku/gamecenter/GameRankActivity;->loadNewPage()V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    if-ne v0, p1, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/youku/gamecenter/GameRankActivity;->loadNewPage()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-direct {p0}, Lcom/youku/gamecenter/GameRankActivity;->loadData()V

    .line 69
    invoke-direct {p0}, Lcom/youku/gamecenter/GameRankActivity;->initViews()V

    .line 70
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameRankActivity;->registerReceivers()V

    .line 71
    invoke-direct {p0}, Lcom/youku/gamecenter/GameRankActivity;->loadNewPage()V

    .line 72
    return-void
.end method

.method public onDelayNotify()V
    .locals 2

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/youku/gamecenter/GameRankActivity;->isScrolling:Z

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/DelayNotifyHandler;->sendSimpleMessage(Lcom/youku/gamecenter/DelayNotifyHandler;I)V

    .line 441
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 384
    invoke-super {p0}, Lcom/youku/gamecenter/GameBaseActivity;->onDestroy()V

    .line 385
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameRankActivity;->unRegisterReceivers()V

    .line 386
    invoke-direct {p0}, Lcom/youku/gamecenter/GameRankActivity;->clearToast()V

    .line 387
    return-void
.end method

.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 2
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    const/4 v1, 0x0

    .line 288
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameRankActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 291
    :cond_0
    iput-boolean v1, p0, Lcom/youku/gamecenter/GameRankActivity;->isLoadingData:Z

    .line 293
    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GameRankActivity;->setFailedUI(Z)V

    goto :goto_0
.end method

.method public onGameInfoProgressChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onGameInfoProgressChanged(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/DelayNotifyHandler;->sendSimpleMessage(Lcom/youku/gamecenter/DelayNotifyHandler;I)V

    .line 110
    :cond_0
    return-void
.end method

.method public onGameInfoStatusChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onGameInfoStatusChanged(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->notifyDataSetChanged()V

    .line 101
    :cond_0
    return-void
.end method

.method public onNetworkAvailable()V
    .locals 2

    .prologue
    .line 371
    iget v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mEndPage:I

    iget v1, p0, Lcom/youku/gamecenter/GameRankActivity;->mPageCount:I

    if-ne v0, v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-boolean v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mIsAutoLoad:Z

    if-eqz v0, :cond_0

    .line 379
    invoke-direct {p0}, Lcom/youku/gamecenter/GameRankActivity;->loadNewPage()V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 169
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 151
    if-eqz p2, :cond_1

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameRankActivity;->isScrolling:Z

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameRankActivity;->isScrolling:Z

    .line 159
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/youku/gamecenter/GameRankActivity;->loadNewPage()V

    goto :goto_0
.end method

.method public onSuccess(Lcom/youku/gamecenter/data/GameListInfo;)V
    .locals 2
    .param p1, "rankInfo"    # Lcom/youku/gamecenter/data/GameListInfo;

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameRankActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 316
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameRankActivity;->isLoadingData:Z

    .line 319
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameRankActivity;->isValidResult(Lcom/youku/gamecenter/data/GameListInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameRankActivity;->setFailedUI(Z)V

    goto :goto_0

    .line 324
    :cond_1
    iget v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mPageCount:I

    if-nez v0, :cond_2

    .line 325
    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameListInfo;->getPageCount()I

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mPageCount:I

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mGameList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameListInfo;->getGameList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 329
    iget v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mEndPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mEndPage:I

    .line 331
    invoke-direct {p0}, Lcom/youku/gamecenter/GameRankActivity;->setSuccessUI()V

    goto :goto_0
.end method

.method public registerReceivers()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->addOnNetworkStateChangeReceiver(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;)V

    .line 138
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/DelayNotifyHandler;->addListener(ILcom/youku/gamecenter/DelayNotifyHandler$OnDelayNotifyListener;)V

    .line 139
    return-void
.end method

.method public setLayout()V
    .locals 1

    .prologue
    .line 278
    sget v0, Lcom/youku/gamecenter/R$layout;->activity_game_rank:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameRankActivity;->setContentView(I)V

    .line 279
    return-void
.end method

.method public unRegisterReceivers()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->removeOnNetworkStateChangeReceiver(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;)V

    .line 391
    iget-object v0, p0, Lcom/youku/gamecenter/GameRankActivity;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/DelayNotifyHandler;->removeListener(I)V

    .line 392
    return-void
.end method

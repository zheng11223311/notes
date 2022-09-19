.class public Lcom/youku/gamecenter/GameVideoListActivity;
.super Lcom/youku/gamecenter/GameBaseActivity;
.source "GameVideoListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;
.implements Lcom/youku/gamecenter/services/GetGameCenterVideoListService$OnGameCenterVideoListServiceListener;


# instance fields
.field private isAllListItemShowInOnePage:Z

.field private isLoaddingDatas:Z

.field private isScrolling:Z

.field private mAdapter:Lcom/youku/gamecenter/adapter/GameVideoAdapter;

.field private mEndPage:I

.field private mFootView:Landroid/view/View;

.field private mIsAutoLoad:Z

.field private mListView:Landroid/widget/ListView;

.field private mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

.field private mNoResultView:Landroid/widget/RelativeLayout;

.field private mPageCount:I

.field private mParentLayout:Landroid/widget/RelativeLayout;

.field private mShortFootView:Landroid/view/View;

.field private mVideoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameCenterVideoInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;-><init>()V

    .line 43
    iput v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mPageCount:I

    .line 44
    iput-boolean v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->isLoaddingDatas:Z

    .line 45
    iput-boolean v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mIsAutoLoad:Z

    .line 46
    iput-boolean v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->isScrolling:Z

    .line 47
    iput-boolean v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->isAllListItemShowInOnePage:Z

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mVideoList:Ljava/util/List;

    return-void
.end method

.method private addIntervalFoot()V
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mShortFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mShortFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 270
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$layout;->layout_game_rank_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mShortFootView:Landroid/view/View;

    .line 272
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mShortFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 273
    return-void
.end method

.method private clearToast()V
    .locals 1

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->getToast()Landroid/widget/Toast;

    move-result-object v0

    .line 368
    .local v0, "toast":Landroid/widget/Toast;
    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 370
    const/4 v0, 0x0

    .line 372
    :cond_0
    return-void
.end method

.method public static getFootViewFaildTitleResId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 332
    invoke-static {p0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$string;->game_center_tips_no_network_retry:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 337
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

.method private getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mEndPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/youku/gamecenter/services/URLContainer;->getGameCenterVideoUrlByPage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleLastPageRefresh()V
    .locals 2

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$string;->tab_last_page_prompt:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameVideoListActivity;->showNetTips(Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method private hasNextPage()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 260
    iget v1, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mEndPage:I

    if-nez v1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mEndPage:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mPageCount:I

    if-le v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initFootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 87
    sget v1, Lcom/youku/gamecenter/R$layout;->widget_game_loadding:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "footView":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    return-object v0
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 63
    sget v1, Lcom/youku/gamecenter/R$id;->gamecenter_group:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameVideoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 65
    sget v1, Lcom/youku/gamecenter/R$id;->game_activity_no_result_layout:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameVideoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    .line 66
    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    sget v1, Lcom/youku/gamecenter/R$id;->tv_no_result:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameVideoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    .local v0, "noResultTv":Landroid/widget/TextView;
    sget v1, Lcom/youku/gamecenter/R$string;->game_video_no_result_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    new-instance v1, Lcom/youku/gamecenter/widgets/LoadingView;

    iget-object v2, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/youku/gamecenter/GameBaseActivity;->isYoukuApp()Z

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/youku/gamecenter/widgets/LoadingView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    .line 73
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/youku/gamecenter/GameVideoListActivity;->initFootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mFootView:Landroid/view/View;

    .line 75
    sget v1, Lcom/youku/gamecenter/R$id;->scrollcontainer:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameVideoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mListView:Landroid/widget/ListView;

    .line 76
    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 77
    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mFootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameVideoListActivity;->setTitlePageName(Ljava/lang/String;)V

    .line 82
    new-instance v1, Lcom/youku/gamecenter/adapter/GameVideoAdapter;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/adapter/GameVideoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mAdapter:Lcom/youku/gamecenter/adapter/GameVideoAdapter;

    .line 83
    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mAdapter:Lcom/youku/gamecenter/adapter/GameVideoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    return-void
.end method

.method private isLastPage()Z
    .locals 2

    .prologue
    .line 342
    iget v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mEndPage:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mEndPage:I

    iget v1, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mPageCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidResult(Lcom/youku/gamecenter/data/GameCenterVideoListInfo;)Z
    .locals 2
    .param p1, "data"    # Lcom/youku/gamecenter/data/GameCenterVideoListInfo;

    .prologue
    const/4 v0, 0x0

    .line 231
    if-nez p1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 234
    :cond_1
    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameCenterVideoListInfo;->getVideoInfos()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameCenterVideoListInfo;->getVideoInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadNewPage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 96
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->isLastPage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->handleLastPageRefresh()V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mIsAutoLoad:Z

    .line 103
    iget-boolean v1, p0, Lcom/youku/gamecenter/GameVideoListActivity;->isLoaddingDatas:Z

    if-nez v1, :cond_0

    .line 107
    invoke-static {p0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    iput-boolean v2, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mIsAutoLoad:Z

    .line 111
    invoke-direct {p0, v2}, Lcom/youku/gamecenter/GameVideoListActivity;->setFaildUI(Z)V

    goto :goto_0

    .line 116
    :cond_2
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->showLoadingUI()V

    .line 118
    iput-boolean v2, p0, Lcom/youku/gamecenter/GameVideoListActivity;->isLoaddingDatas:Z

    .line 121
    new-instance v0, Lcom/youku/gamecenter/services/GetGameCenterVideoListService;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/services/GetGameCenterVideoListService;-><init>(Landroid/content/Context;)V

    .line 123
    .local v0, "service":Lcom/youku/gamecenter/services/GetGameCenterVideoListService;
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/services/GetGameCenterVideoListService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    goto :goto_0
.end method

.method private registerReceivers()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->addOnNetworkStateChangeReceiver(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;)V

    .line 132
    return-void
.end method

.method private setFaildUI(Z)V
    .locals 5
    .param p1, "loadSuccess"    # Z

    .prologue
    const/4 v4, 0x0

    .line 300
    if-nez p1, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->showNetTipsAutomatic()V

    .line 304
    :cond_0
    iget v2, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mEndPage:I

    if-nez v2, :cond_1

    .line 305
    iget-object v2, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v2}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 306
    iget-object v2, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mListView:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 307
    iget-object v2, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 319
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v2, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mFootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v2, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 314
    .local v0, "title":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "title":Landroid/view/View;
    invoke-static {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->getFootViewFaildTitleResId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v2, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 317
    .local v1, "title2":Landroid/view/View;
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "title2":Landroid/view/View;
    invoke-direct {p0, p0, v1}, Lcom/youku/gamecenter/GameVideoListActivity;->setTitle2Content(Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private setFootViewLoaddingTitle()V
    .locals 4

    .prologue
    .line 287
    iget v2, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mEndPage:I

    if-nez v2, :cond_0

    .line 296
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 292
    .local v0, "title":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "title":Landroid/view/View;
    sget v2, Lcom/youku/gamecenter/R$string;->game_center_tips_loadding:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 294
    iget-object v2, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 295
    .local v1, "title2":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSuccessUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 243
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 245
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->hasNextPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :goto_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mAdapter:Lcom/youku/gamecenter/adapter/GameVideoAdapter;

    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mVideoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->setData(Ljava/util/List;)V

    .line 256
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mAdapter:Lcom/youku/gamecenter/adapter/GameVideoAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->notifyDataSetChanged()V

    .line 257
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 249
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->addIntervalFoot()V

    goto :goto_0
.end method

.method private setTitle2Content(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Landroid/widget/TextView;

    .prologue
    .line 322
    invoke-static {p1}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    :goto_0
    return-void

    .line 327
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showLoadingUI()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 279
    iget v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mEndPage:I

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->startAnimation()V

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->setFootViewLoaddingTitle()V

    .line 284
    return-void
.end method

.method private unRegisterReceivers()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->removeOnNetworkStateChangeReceiver(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;)V

    .line 136
    return-void
.end method


# virtual methods
.method getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    const-string/jumbo v0, "\u89c6\u9891"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mFootView:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 212
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->loadNewPage()V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    if-ne v0, p1, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->loadNewPage()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->initViews()V

    .line 57
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->registerReceivers()V

    .line 58
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->loadNewPage()V

    .line 59
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 361
    invoke-super {p0}, Lcom/youku/gamecenter/GameBaseActivity;->onDestroy()V

    .line 362
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->unRegisterReceivers()V

    .line 363
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->clearToast()V

    .line 364
    return-void
.end method

.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 2
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 179
    :cond_0
    iput-boolean v1, p0, Lcom/youku/gamecenter/GameVideoListActivity;->isLoaddingDatas:Z

    .line 181
    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GameVideoListActivity;->setFaildUI(Z)V

    goto :goto_0
.end method

.method public onGameInfoStatusChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onGameInfoStatusChanged(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mAdapter:Lcom/youku/gamecenter/adapter/GameVideoAdapter;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mAdapter:Lcom/youku/gamecenter/adapter/GameVideoAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/GameVideoAdapter;->notifyDataSetChanged()V

    .line 228
    :cond_0
    return-void
.end method

.method public onNetworkAvailable()V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->hasNextPage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-boolean v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mIsAutoLoad:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->loadNewPage()V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 158
    if-eq p3, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->isAllListItemShowInOnePage:Z

    .line 159
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 140
    if-eqz p2, :cond_1

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->isScrolling:Z

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->isScrolling:Z

    .line 148
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->isAllListItemShowInOnePage:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->loadNewPage()V

    goto :goto_0
.end method

.method public onSuccess(Lcom/youku/gamecenter/data/GameCenterVideoListInfo;)V
    .locals 2
    .param p1, "listInfo"    # Lcom/youku/gamecenter/data/GameCenterVideoListInfo;

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 191
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->isLoaddingDatas:Z

    .line 194
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameVideoListActivity;->isValidResult(Lcom/youku/gamecenter/data/GameCenterVideoListInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameVideoListActivity;->setFaildUI(Z)V

    goto :goto_0

    .line 199
    :cond_1
    iget v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mPageCount:I

    if-nez v0, :cond_2

    .line 200
    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameCenterVideoListInfo;->getPageCount()I

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mPageCount:I

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mVideoList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameCenterVideoListInfo;->getVideoInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    iget v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mEndPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youku/gamecenter/GameVideoListActivity;->mEndPage:I

    .line 206
    invoke-direct {p0}, Lcom/youku/gamecenter/GameVideoListActivity;->setSuccessUI()V

    goto :goto_0
.end method

.method public setLayout()V
    .locals 1

    .prologue
    .line 351
    sget v0, Lcom/youku/gamecenter/R$layout;->activity_game_video_list:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameVideoListActivity;->setContentView(I)V

    .line 352
    return-void
.end method

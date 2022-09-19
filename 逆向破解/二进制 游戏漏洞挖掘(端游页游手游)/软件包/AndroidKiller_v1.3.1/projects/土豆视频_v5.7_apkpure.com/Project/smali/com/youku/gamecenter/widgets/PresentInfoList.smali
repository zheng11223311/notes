.class public Lcom/youku/gamecenter/widgets/PresentInfoList;
.super Ljava/lang/Object;
.source "PresentInfoList.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetPresentListService$OnPresentListServiceListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;
.implements Lcom/youku/gamecenter/present/PresentButtonHelper$onPresentStatusChangedListener;


# static fields
.field public static PRESENT_LIST:I

.field public static PRESENT_TOTAL:I


# instance fields
.field private isLoaddingDatas:Z

.field private mAdapter:Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;

.field private mContext:Landroid/content/Context;

.field public mEndPage:I

.field private mFootView:Landroid/view/View;

.field private mGameBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

.field private mIsAutoLoad:Z

.field private mListView:Landroid/widget/ListView;

.field public mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

.field private mNoResultView:Landroid/widget/RelativeLayout;

.field private mPagecount:I

.field private mParentLayout:Landroid/widget/RelativeLayout;

.field private mPresentHelper:Lcom/youku/gamecenter/present/PresentButtonHelper;

.field private mPresentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/present/PresentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSource:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0xa

    sput v0, Lcom/youku/gamecenter/widgets/PresentInfoList;->PRESENT_TOTAL:I

    .line 59
    const/16 v0, 0xb

    sput v0, Lcom/youku/gamecenter/widgets/PresentInfoList;->PRESENT_LIST:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/View;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mIsAutoLoad:Z

    .line 54
    iput-boolean v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->isLoaddingDatas:Z

    .line 55
    iput v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mEndPage:I

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mPagecount:I

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mPresentList:Ljava/util/List;

    .line 64
    iput-object p3, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mSource:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {}, Lcom/youku/gamecenter/present/PresentButtonHelper;->getInstance()Lcom/youku/gamecenter/present/PresentButtonHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mPresentHelper:Lcom/youku/gamecenter/present/PresentButtonHelper;

    .line 69
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mSource:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/youku/gamecenter/widgets/PresentInfoList;->initAdapter(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/widgets/PresentInfoList;->initViews(Landroid/view/View;)V

    .line 73
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/PresentInfoList;->initListener()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/widgets/PresentInfoList;)Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/widgets/PresentInfoList;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mAdapter:Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;

    return-object v0
.end method

.method private addIntervalFoot()V
    .locals 4

    .prologue
    .line 353
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$layout;->layout_game_rank_header:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 355
    .local v0, "foot":Landroid/view/View;
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 356
    return-void
.end method

.method private createLoadingByTheme()V
    .locals 4

    .prologue
    .line 93
    new-instance v0, Lcom/youku/gamecenter/widgets/LoadingView;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mParentLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mGameBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {}, Lcom/youku/gamecenter/GameBaseActivity;->isYoukuApp()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/youku/gamecenter/widgets/LoadingView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Z)V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    .line 95
    return-void
.end method

.method public static getFootViewFaildTitleResId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 328
    invoke-static {p0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$string;->game_center_tips_no_network_retry:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 333
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

.method private handleLastPageRefresh()V
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mGameBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mGameBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v1}, Lcom/youku/gamecenter/GameBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->tab_last_page_prompt:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/GameBaseActivity;->showNetTips(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method private hasNextPage()Z
    .locals 2

    .prologue
    .line 338
    iget v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mEndPage:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mPagecount:I

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
    .line 293
    sget v1, Lcom/youku/gamecenter/R$layout;->widget_game_loadding:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 295
    .local v0, "footView":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    return-object v0
.end method

.method private initHeader(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 98
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_rank_header:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mNoResultView:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/youku/gamecenter/widgets/PresentInfoList$1;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/widgets/PresentInfoList$1;-><init>(Lcom/youku/gamecenter/widgets/PresentInfoList;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mPresentHelper:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->addOnPresentStatusChangedListener(Lcom/youku/gamecenter/present/PresentButtonHelper$onPresentStatusChangedListener;)V

    .line 112
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mAdapter:Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 3
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 77
    sget v1, Lcom/youku/gamecenter/R$id;->gamecenter_group:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 79
    sget v1, Lcom/youku/gamecenter/R$id;->scrollcontainer:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mListView:Landroid/widget/ListView;

    .line 80
    sget v1, Lcom/youku/gamecenter/R$id;->game_activity_no_result_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mNoResultView:Landroid/widget/RelativeLayout;

    .line 82
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/PresentInfoList;->createLoadingByTheme()V

    .line 83
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/youku/gamecenter/widgets/PresentInfoList;->initFootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mFootView:Landroid/view/View;

    .line 84
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/widgets/PresentInfoList;->initHeader(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "header":Landroid/view/View;
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 86
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 87
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mFootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method private loadNewPage()V
    .locals 4

    .prologue
    .line 210
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mIsAutoLoad:Z

    .line 212
    iget v2, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mEndPage:I

    iget v3, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mPagecount:I

    if-ne v2, v3, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/PresentInfoList;->handleLastPageRefresh()V

    .line 227
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mGameBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v2}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 218
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mIsAutoLoad:Z

    .line 219
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/PresentInfoList;->setFootViewFaildTitle()V

    goto :goto_0

    .line 222
    :cond_1
    const/4 v1, 0x0

    .line 223
    .local v1, "url":Ljava/lang/String;
    iget v2, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mEndPage:I

    add-int/lit8 v0, v2, 0x1

    .line 224
    .local v0, "page":I
    invoke-static {v0}, Lcom/youku/gamecenter/services/URLContainer;->getGamePresentTotalUrlByPage(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/widgets/PresentInfoList;->setUrl(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/PresentInfoList;->fetchGameList()V

    goto :goto_0
.end method

.method private removeFootViewAndAddIntervalFootWhenNotHasNextPage()V
    .locals 2

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/PresentInfoList;->hasNextPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mFootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 349
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/PresentInfoList;->addIntervalFoot()V

    goto :goto_0
.end method

.method private setFootViewFaildTitle()V
    .locals 4

    .prologue
    .line 313
    iget v2, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mEndPage:I

    if-nez v2, :cond_0

    .line 324
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mFootView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 319
    .local v0, "title":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "title":Landroid/view/View;
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mGameBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v2}, Lcom/youku/gamecenter/widgets/PresentInfoList;->getFootViewFaildTitleResId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 323
    .local v1, "title2":Landroid/view/View;
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mGameBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "title2":Landroid/view/View;
    invoke-direct {p0, v2, v1}, Lcom/youku/gamecenter/widgets/PresentInfoList;->setTitle2Content(Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private setFootViewLoaddingTitle()V
    .locals 4

    .prologue
    .line 301
    iget v2, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mEndPage:I

    if-nez v2, :cond_0

    .line 310
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 306
    .local v0, "title":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "title":Landroid/view/View;
    sget v2, Lcom/youku/gamecenter/R$string;->game_center_tips_loadding:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 308
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 309
    .local v1, "title2":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTitle2Content(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Landroid/widget/TextView;

    .prologue
    .line 359
    invoke-static {p1}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    :goto_0
    return-void

    .line 364
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateUI(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/present/PresentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "presentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/present/PresentInfo;>;"
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mPresentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mPresentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mNoResultView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mAdapter:Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;->setData(Ljava/util/List;)V

    .line 188
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mAdapter:Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;->notifyDataSetChanged()V

    .line 206
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mNoResultView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 192
    iget v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mEndPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mEndPage:I

    .line 195
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mAdapter:Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mPresentList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;->setData(Ljava/util/List;)V

    .line 197
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/youku/gamecenter/widgets/PresentInfoList$2;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/widgets/PresentInfoList$2;-><init>(Lcom/youku/gamecenter/widgets/PresentInfoList;)V

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public fetchGameList()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 118
    iput-boolean v2, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mIsAutoLoad:Z

    .line 120
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mGameBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->isLoaddingDatas:Z

    if-eqz v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mGameBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 125
    iput-boolean v5, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mIsAutoLoad:Z

    .line 126
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/PresentInfoList;->setFootViewFaildTitle()V

    .line 127
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mNoResultView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 128
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mGameBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v1}, Lcom/youku/gamecenter/GameBaseActivity;->showNetTipsAutomatic()V

    goto :goto_0

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mNoResultView:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    if-nez v1, :cond_3

    .line 135
    new-instance v2, Lcom/youku/gamecenter/widgets/LoadingView;

    iget-object v3, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mGameBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v4, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mParentLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {}, Lcom/youku/gamecenter/GameBaseActivity;->isYoukuApp()Z

    move-result v1

    invoke-direct {v2, v3, v4, v1}, Lcom/youku/gamecenter/widgets/LoadingView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Z)V

    iput-object v2, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    iget-boolean v1, v1, Lcom/youku/gamecenter/widgets/LoadingView;->isAniStart:Z

    if-nez v1, :cond_0

    .line 143
    iget v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mEndPage:I

    if-nez v1, :cond_4

    .line 144
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v1}, Lcom/youku/gamecenter/widgets/LoadingView;->startAnimation()V

    .line 146
    :cond_4
    iput-boolean v5, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->isLoaddingDatas:Z

    .line 147
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/PresentInfoList;->setFootViewLoaddingTitle()V

    .line 149
    new-instance v0, Lcom/youku/gamecenter/services/GetPresentListService;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mGameBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-direct {v0, v1}, Lcom/youku/gamecenter/services/GetPresentListService;-><init>(Landroid/content/Context;)V

    .line 151
    .local v0, "service":Lcom/youku/gamecenter/services/GetPresentListService;
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/services/GetPresentListService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    goto :goto_0
.end method

.method public initAdapter(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 156
    move-object v0, p1

    check-cast v0, Lcom/youku/gamecenter/GameBaseActivity;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mGameBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    .line 157
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mContext:Landroid/content/Context;

    .line 158
    new-instance v0, Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mGameBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mPresentHelper:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-direct {v0, v1, v2}, Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;-><init>(Landroid/content/Context;Lcom/youku/gamecenter/present/PresentButtonHelper;)V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mAdapter:Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;

    .line 160
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mFootView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/PresentInfoList;->loadNewPage()V

    .line 251
    :cond_0
    return-void
.end method

.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 3
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mGameBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mGameBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameBaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iput-boolean v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->isLoaddingDatas:Z

    .line 278
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 280
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/PresentInfoList;->setFootViewFaildTitle()V

    .line 282
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mPresentList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mPresentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mNoResultView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mNoResultView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onNetworkAvailable()V
    .locals 2

    .prologue
    .line 231
    iget v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mEndPage:I

    iget v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mPagecount:I

    if-ne v0, v1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-boolean v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mIsAutoLoad:Z

    if-eqz v0, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/PresentInfoList;->loadNewPage()V

    goto :goto_0
.end method

.method public onPresentButtonClick(Lcom/youku/gamecenter/present/PresentInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/youku/gamecenter/present/PresentInfo;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mAdapter:Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;->refreshButtonStatus(Lcom/youku/gamecenter/present/PresentInfo;)V

    .line 379
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 271
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 256
    if-eqz p2, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/PresentInfoList;->loadNewPage()V

    goto :goto_0
.end method

.method public onSuccess(Lcom/youku/gamecenter/present/PresentListInfo;)V
    .locals 3
    .param p1, "presentListInfo"    # Lcom/youku/gamecenter/present/PresentListInfo;

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-virtual {p1}, Lcom/youku/gamecenter/present/PresentListInfo;->getPageCount()I

    move-result v1

    iput v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mPagecount:I

    .line 167
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mGameBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mGameBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v1}, Lcom/youku/gamecenter/GameBaseActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iput-boolean v2, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->isLoaddingDatas:Z

    .line 170
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v1}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 171
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 172
    invoke-virtual {p1}, Lcom/youku/gamecenter/present/PresentListInfo;->getAllPresents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 173
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/PresentInfoList;->setFootViewFaildTitle()V

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {p1}, Lcom/youku/gamecenter/present/PresentListInfo;->getAllPresents()Ljava/util/List;

    move-result-object v0

    .line 177
    .local v0, "presentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/present/PresentInfo;>;"
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/widgets/PresentInfoList;->updateUI(Ljava/util/List;)V

    .line 178
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/PresentInfoList;->removeFootViewAndAddIntervalFootWhenNotHasNextPage()V

    .line 179
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mAdapter:Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;

    invoke-virtual {v1}, Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public refreshDatas()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mAdapter:Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;->notifyDataSetChanged()V

    .line 383
    return-void
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mPresentHelper:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->removeOnPresentStatusChangedListener(Lcom/youku/gamecenter/present/PresentButtonHelper$onPresentStatusChangedListener;)V

    .line 387
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/PresentInfoList;->mUrl:Ljava/lang/String;

    .line 369
    return-void
.end method

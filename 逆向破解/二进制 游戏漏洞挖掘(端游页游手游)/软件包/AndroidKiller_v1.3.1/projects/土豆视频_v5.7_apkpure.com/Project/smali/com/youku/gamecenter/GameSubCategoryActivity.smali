.class public Lcom/youku/gamecenter/GameSubCategoryActivity;
.super Lcom/youku/gamecenter/GameBaseActivity;
.source "GameSubCategoryActivity.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetGameListService$OnGameListServiceListener;
.implements Lcom/youku/gamecenter/OnGameInfoChangedListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/youku/gamecenter/DelayNotifyHandler$OnDelayNotifyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/GameSubCategoryActivity$1;,
        Lcom/youku/gamecenter/GameSubCategoryActivity$TagOnClickListener;,
        Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;,
        Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;,
        Lcom/youku/gamecenter/GameSubCategoryActivity$NoResultViewClickListener;
    }
.end annotation


# static fields
.field public static final FROM_CATEGORY:Ljava/lang/String; = "category_page"

.field public static final FROM_DETAIL:Ljava/lang/String; = "detail_page"

.field public static final FROM_SEARCH_RESULT:Ljava/lang/String; = "searchresult_page"


# instance fields
.field isAllListItemShowInOnePage:Z

.field private isCategory:Z

.field private isLoaddingDatas:Z

.field private isScrolling:Z

.field private mAdapter:Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;

.field private mAppTagAdapter:Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;

.field private mCardTitle:Ljava/lang/String;

.field private mCategoryId:I

.field private mCategoryTitle:Ljava/lang/String;

.field private mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

.field private mEndPage:I

.field private mFocusedPosition:I

.field private mFootView:Landroid/view/View;

.field private mFrom:Ljava/lang/String;

.field private mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

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

.field private mHeaderTagView:Landroid/widget/GridView;

.field private mIsAutoLoad:Z

.field private mListView:Landroid/widget/ListView;

.field private mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

.field private mNoResultView:Landroid/widget/RelativeLayout;

.field private mPageCount:I

.field private mParentLayout:Landroid/widget/RelativeLayout;

.field private mRequestId:Ljava/lang/String;

.field private mShortFootView:Landroid/view/View;

.field private mSource:Ljava/lang/String;

.field private mTagId:Ljava/lang/String;

.field private mTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private mValidPara:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;-><init>()V

    .line 77
    iput-boolean v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mIsAutoLoad:Z

    .line 78
    iput-boolean v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->isLoaddingDatas:Z

    .line 79
    iput-boolean v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->isCategory:Z

    .line 80
    iput-boolean v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->isAllListItemShowInOnePage:Z

    .line 82
    iput-boolean v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->isScrolling:Z

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mTags:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mGameList:Ljava/util/List;

    .line 91
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getInstance()Lcom/youku/gamecenter/GameCenterModel;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    .line 93
    invoke-static {}, Lcom/youku/gamecenter/DelayNotifyHandler;->getInstance()Lcom/youku/gamecenter/DelayNotifyHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    .line 1118
    return-void
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/GameSubCategoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameSubCategoryActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->loadNewPage()V

    return-void
.end method

.method static synthetic access$1002(Lcom/youku/gamecenter/GameSubCategoryActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameSubCategoryActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mCardTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/youku/gamecenter/GameSubCategoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameSubCategoryActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->setUIChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/youku/gamecenter/GameSubCategoryActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameSubCategoryActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mTags:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/gamecenter/GameSubCategoryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameSubCategoryActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mCategoryTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/gamecenter/GameSubCategoryActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameSubCategoryActivity;

    .prologue
    .line 45
    iget v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFocusedPosition:I

    return v0
.end method

.method static synthetic access$702(Lcom/youku/gamecenter/GameSubCategoryActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameSubCategoryActivity;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFocusedPosition:I

    return p1
.end method

.method static synthetic access$800(Lcom/youku/gamecenter/GameSubCategoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameSubCategoryActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->clearCurrentTagDatas()V

    return-void
.end method

.method static synthetic access$902(Lcom/youku/gamecenter/GameSubCategoryActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameSubCategoryActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mTagId:Ljava/lang/String;

    return-object p1
.end method

.method private addIntervalFoot()V
    .locals 3

    .prologue
    .line 480
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mShortFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mShortFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 483
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$layout;->layout_game_rank_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mShortFootView:Landroid/view/View;

    .line 485
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mShortFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 486
    return-void
.end method

.method private addPromotionAppsAt1stTime(Lcom/youku/gamecenter/data/GameListInfo;)V
    .locals 2
    .param p1, "rankInfo"    # Lcom/youku/gamecenter/data/GameListInfo;

    .prologue
    .line 395
    iget v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mEndPage:I

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mGameList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameListInfo;->getPromotion_apps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 398
    :cond_0
    return-void
.end method

.method private addTagsHeader()V
    .locals 2

    .prologue
    .line 160
    sget v0, Lcom/youku/gamecenter/R$id;->gridview:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mHeaderTagView:Landroid/widget/GridView;

    .line 161
    sget v0, Lcom/youku/gamecenter/R$id;->layout_tags:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    new-instance v0, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mTags:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1}, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;-><init>(Lcom/youku/gamecenter/GameSubCategoryActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mAppTagAdapter:Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;

    .line 163
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mHeaderTagView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mAppTagAdapter:Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    return-void
.end method

.method private clearCurrentTagDatas()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 527
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mTagId:Ljava/lang/String;

    .line 529
    iput v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mEndPage:I

    .line 530
    iput v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mPageCount:I

    .line 532
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mGameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 534
    iput-boolean v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->isLoaddingDatas:Z

    .line 536
    return-void
.end method

.method private clearToast()V
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->getToast()Landroid/widget/Toast;

    move-result-object v0

    .line 270
    .local v0, "toast":Landroid/widget/Toast;
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 272
    const/4 v0, 0x0

    .line 274
    :cond_0
    return-void
.end method

.method private fromCategory()Z
    .locals 2

    .prologue
    .line 230
    const-string v0, "category_page"

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private fromDetail()Z
    .locals 2

    .prologue
    .line 222
    const-string v0, "detail_page"

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private fromSearchResult()Z
    .locals 2

    .prologue
    .line 226
    const-string/jumbo v0, "searchresult_page"

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private generateRequestId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mTagId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFootViewFaildTitleResId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    invoke-static {p0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$string;->game_center_tips_no_network_retry:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
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

.method private getURL(Z)Ljava/lang/String;
    .locals 2
    .param p1, "isCategoryClicked"    # Z

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->isCategory:Z

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mTagId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mCategoryId:I

    .line 329
    iget v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mCategoryId:I

    iget v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mEndPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/services/URLContainer;->getGameSubCategoryUrlByPage(II)Ljava/lang/String;

    move-result-object v0

    .line 336
    :goto_0
    return-object v0

    .line 333
    :cond_0
    if-nez p1, :cond_1

    .line 334
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mTagId:Ljava/lang/String;

    iget v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mEndPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/services/URLContainer;->getTagGamesUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 336
    :cond_1
    iget v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mCategoryId:I

    iget v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mEndPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/services/URLContainer;->getGameSubCategoryUrlByPage(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleLastPageRefresh()V
    .locals 2

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$string;->tab_last_page_prompt:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->showNetTips(Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method private hasNextPage()Z
    .locals 2

    .prologue
    .line 522
    iget v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mEndPage:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mPageCount:I

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
    .line 234
    sget v1, Lcom/youku/gamecenter/R$layout;->widget_game_loadding:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 236
    .local v0, "footView":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    return-object v0
.end method

.method private initHeader(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 168
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_rank_header:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 129
    sget v1, Lcom/youku/gamecenter/R$id;->gamecenter_group:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSubCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 131
    sget v1, Lcom/youku/gamecenter/R$id;->game_activity_no_result_layout:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSubCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    .line 132
    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/youku/gamecenter/GameSubCategoryActivity$NoResultViewClickListener;

    invoke-direct {v2, p0, v4}, Lcom/youku/gamecenter/GameSubCategoryActivity$NoResultViewClickListener;-><init>(Lcom/youku/gamecenter/GameSubCategoryActivity;Lcom/youku/gamecenter/GameSubCategoryActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    new-instance v1, Lcom/youku/gamecenter/widgets/LoadingView;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/youku/gamecenter/GameBaseActivity;->isYoukuApp()Z

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/youku/gamecenter/widgets/LoadingView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    .line 137
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GameSubCategoryActivity;->initHeader(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    .line 138
    .local v0, "header":Landroid/view/View;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/youku/gamecenter/GameSubCategoryActivity;->initFootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFootView:Landroid/view/View;

    .line 140
    new-instance v1, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mSource:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFrom:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mAdapter:Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;

    .line 141
    sget v1, Lcom/youku/gamecenter/R$id;->scrollcontainer:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSubCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mListView:Landroid/widget/ListView;

    .line 142
    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 143
    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 145
    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 147
    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mCardTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSubCategoryActivity;->setTitlePageName(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->fromCategory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->addTagsHeader()V

    .line 151
    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mAdapter:Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mAdapter:Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private isCategoryClicked()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 313
    iget-boolean v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mValidPara:Z

    if-nez v1, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v0

    .line 316
    :cond_1
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->fromCategory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    iget v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFocusedPosition:I

    if-nez v1, :cond_0

    .line 320
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isLastPage()Z
    .locals 2

    .prologue
    .line 412
    iget v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mEndPage:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mEndPage:I

    iget v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mPageCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNewRequest(Lcom/youku/gamecenter/data/GameListInfo;)Z
    .locals 2
    .param p1, "rankInfo"    # Lcom/youku/gamecenter/data/GameListInfo;

    .prologue
    .line 387
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameListInfo;->request_id:Ljava/lang/String;

    .line 388
    .local v0, "requestId":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mRequestId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    const/4 v1, 0x0

    .line 391
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isValidResult(Lcom/youku/gamecenter/data/GameListInfo;)Z
    .locals 3
    .param p1, "data"    # Lcom/youku/gamecenter/data/GameListInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 547
    if-nez p1, :cond_1

    .line 556
    :cond_0
    :goto_0
    return v0

    .line 550
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

    .line 551
    goto :goto_0

    .line 553
    :cond_2
    iget-object v2, p1, Lcom/youku/gamecenter/data/GameListInfo;->promotion_apps:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameListInfo;->promotion_apps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 554
    goto :goto_0
.end method

.method private loadNewPage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 278
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->isLastPage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->handleLastPageRefresh()V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mIsAutoLoad:Z

    .line 285
    iget-boolean v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->isLoaddingDatas:Z

    if-nez v1, :cond_0

    .line 289
    invoke-static {p0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 291
    iput-boolean v2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mIsAutoLoad:Z

    .line 293
    invoke-direct {p0, v2}, Lcom/youku/gamecenter/GameSubCategoryActivity;->setFaildUI(Z)V

    goto :goto_0

    .line 298
    :cond_2
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->showLoadingUI()V

    .line 300
    iput-boolean v2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->isLoaddingDatas:Z

    .line 303
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->generateRequestId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mRequestId:Ljava/lang/String;

    .line 304
    new-instance v0, Lcom/youku/gamecenter/services/GetGameListService;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mRequestId:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/youku/gamecenter/services/GetGameListService;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    .local v0, "service":Lcom/youku/gamecenter/services/GetGameListService;
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->isCategoryClicked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GameSubCategoryActivity;->getURL(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/services/GetGameListService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    goto :goto_0
.end method

.method private loadSavedInstance()V
    .locals 10

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 176
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "9"

    iput-object v5, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mSource:Ljava/lang/String;

    .line 178
    const-string v5, "cardTitle"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mCardTitle:Ljava/lang/String;

    .line 180
    const-string/jumbo v5, "tagId"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mTagId:Ljava/lang/String;

    .line 182
    const-string v5, "from"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFrom:Ljava/lang/String;

    .line 184
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->fromDetail()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 185
    const-string v5, "isCategory"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->isCategory:Z

    .line 186
    iput-boolean v6, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mValidPara:Z

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->fromSearchResult()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 191
    const-string v5, "11"

    iput-object v5, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mSource:Ljava/lang/String;

    .line 192
    iput-boolean v9, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->isCategory:Z

    .line 193
    iput-boolean v6, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mValidPara:Z

    goto :goto_0

    .line 197
    :cond_2
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->fromCategory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 198
    iput-boolean v6, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mValidPara:Z

    .line 199
    const-string v5, "focusPosition"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFocusedPosition:I

    .line 200
    const-string v5, "categoryId"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mCategoryId:I

    .line 201
    const-string v5, "categoryTitle"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mCategoryTitle:Ljava/lang/String;

    .line 202
    const-string/jumbo v5, "tagIds"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "tagIds":[Ljava/lang/String;
    const-string/jumbo v5, "tagTitles"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, "tagTitles":[Ljava/lang/String;
    array-length v2, v3

    .line 207
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 208
    iget-object v5, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mTags:Ljava/util/List;

    new-instance v6, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

    aget-object v7, v3, v0

    aget-object v8, v4, v0

    invoke-direct {v6, v7, v8}, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    :cond_3
    if-nez v2, :cond_0

    .line 211
    iput-boolean v9, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mValidPara:Z

    goto :goto_0

    .line 217
    .end local v0    # "i":I
    .end local v2    # "length":I
    .end local v3    # "tagIds":[Ljava/lang/String;
    .end local v4    # "tagTitles":[Ljava/lang/String;
    :cond_4
    iput-boolean v9, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mValidPara:Z

    goto :goto_0
.end method

.method private setFaildUI(Z)V
    .locals 5
    .param p1, "loadSuccess"    # Z

    .prologue
    const/4 v4, 0x0

    .line 429
    if-nez p1, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->showNetTipsAutomatic()V

    .line 433
    :cond_0
    iget v2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mEndPage:I

    if-nez v2, :cond_1

    .line 434
    iget-object v2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v2}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 435
    iget-object v2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mListView:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 436
    iget-object v2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 448
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-object v2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 442
    iget-object v2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 443
    .local v0, "title":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "title":Landroid/view/View;
    invoke-static {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->getFootViewFaildTitleResId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 446
    .local v1, "title2":Landroid/view/View;
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "title2":Landroid/view/View;
    invoke-direct {p0, p0, v1}, Lcom/youku/gamecenter/GameSubCategoryActivity;->setTitle2Content(Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private setFootViewLoaddingTitle()V
    .locals 4

    .prologue
    .line 416
    iget v2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mEndPage:I

    if-nez v2, :cond_0

    .line 425
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 421
    .local v0, "title":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "title":Landroid/view/View;
    sget v2, Lcom/youku/gamecenter/R$string;->game_center_tips_loadding:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 423
    iget-object v2, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 424
    .local v1, "title2":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setOrLoadDatas()V
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mValidPara:Z

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->fromCategory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->loadNewPage()V

    goto :goto_0

    .line 117
    :cond_2
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->fromSearchResult()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->loadNewPage()V

    goto :goto_0

    .line 121
    :cond_3
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->fromDetail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->loadNewPage()V

    goto :goto_0
.end method

.method private setSuccessUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 463
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 465
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->hasNextPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 472
    :goto_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mAdapter:Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mGameList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->setData(Ljava/util/List;)V

    .line 476
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mAdapter:Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->notifyDataSetChanged()V

    .line 477
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 469
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->addIntervalFoot()V

    goto :goto_0
.end method

.method private setTitle2Content(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Landroid/widget/TextView;

    .prologue
    .line 242
    invoke-static {p1}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setUIChanged()V
    .locals 2

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mCardTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->setTitlePageName(Ljava/lang/String;)V

    .line 1157
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 1158
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/youku/gamecenter/GameSubCategoryActivity;->initFootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFootView:Landroid/view/View;

    .line 1159
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1160
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1162
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mAdapter:Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->notifyDataSetChanged()V

    .line 1163
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mAppTagAdapter:Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameSubCategoryActivity$AppTagAdapter;->notifyDataSetChanged()V

    .line 1164
    return-void
.end method

.method private showLoadingUI()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 454
    iget v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mEndPage:I

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->startAnimation()V

    .line 458
    :cond_0
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->setFootViewLoaddingTitle()V

    .line 459
    return-void
.end method


# virtual methods
.method getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    const-string/jumbo v0, "\u6e38\u620f\u5206\u7c7b\u5217\u8868"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 540
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mFootView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 541
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->loadNewPage()V

    .line 544
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->loadSavedInstance()V

    .line 101
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->initViews()V

    .line 103
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->registerReceivers()V

    .line 105
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->setOrLoadDatas()V

    .line 107
    return-void
.end method

.method public onDelayNotify()V
    .locals 2

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->isScrolling:Z

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/DelayNotifyHandler;->sendSimpleMessage(Lcom/youku/gamecenter/DelayNotifyHandler;I)V

    .line 577
    :goto_0
    return-void

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mAdapter:Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 263
    invoke-super {p0}, Lcom/youku/gamecenter/GameBaseActivity;->onDestroy()V

    .line 264
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->unRegisterReceivers()V

    .line 265
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->clearToast()V

    .line 266
    return-void
.end method

.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 2
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    const/4 v1, 0x0

    .line 402
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 405
    :cond_0
    iput-boolean v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->isLoaddingDatas:Z

    .line 407
    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GameSubCategoryActivity;->setFaildUI(Z)V

    goto :goto_0
.end method

.method public onGameInfoProgressChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 514
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onGameInfoProgressChanged(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mAdapter:Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/DelayNotifyHandler;->sendSimpleMessage(Lcom/youku/gamecenter/DelayNotifyHandler;I)V

    .line 519
    :cond_0
    return-void
.end method

.method public onGameInfoStatusChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 506
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onGameInfoStatusChanged(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mAdapter:Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mAdapter:Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameSubCategoryActivity$GameSubCategoryAdapter;->notifyDataSetChanged()V

    .line 510
    :cond_0
    return-void
.end method

.method public onNetworkAvailable()V
    .locals 2

    .prologue
    .line 343
    iget v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mEndPage:I

    iget v1, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mPageCount:I

    if-ne v0, v1, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-boolean v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mIsAutoLoad:Z

    if-eqz v0, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->loadNewPage()V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 591
    if-eq p3, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->isAllListItemShowInOnePage:Z

    .line 592
    return-void

    .line 591
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 597
    if-eqz p2, :cond_1

    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->isScrolling:Z

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->isScrolling:Z

    .line 605
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->isAllListItemShowInOnePage:Z

    if-eqz v0, :cond_0

    .line 608
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->loadNewPage()V

    goto :goto_0
.end method

.method public onSuccess(Lcom/youku/gamecenter/data/GameListInfo;)V
    .locals 2
    .param p1, "rankInfo"    # Lcom/youku/gamecenter/data/GameListInfo;

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameSubCategoryActivity;->isNewRequest(Lcom/youku/gamecenter/data/GameListInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->isLoaddingDatas:Z

    .line 369
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameSubCategoryActivity;->isValidResult(Lcom/youku/gamecenter/data/GameListInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 370
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->setFaildUI(Z)V

    goto :goto_0

    .line 374
    :cond_2
    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameListInfo;->getPageCount()I

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mPageCount:I

    .line 376
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameSubCategoryActivity;->addPromotionAppsAt1stTime(Lcom/youku/gamecenter/data/GameListInfo;)V

    .line 378
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mGameList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameListInfo;->getGameList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 380
    iget v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mEndPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mEndPage:I

    .line 382
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->setSuccessUI()V

    goto :goto_0
.end method

.method public registerReceivers()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->addOnGameInfoChangedListener(Lcom/youku/gamecenter/OnGameInfoChangedListener;)V

    .line 494
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->addOnNetworkStateChangeReceiver(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;)V

    .line 495
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/DelayNotifyHandler;->addListener(ILcom/youku/gamecenter/DelayNotifyHandler$OnDelayNotifyListener;)V

    .line 496
    return-void
.end method

.method public setLayout()V
    .locals 1

    .prologue
    .line 561
    sget v0, Lcom/youku/gamecenter/R$layout;->activity_game_center:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameSubCategoryActivity;->setContentView(I)V

    .line 562
    return-void
.end method

.method public unRegisterReceivers()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->removeOnGameInfoChangedListener(Lcom/youku/gamecenter/OnGameInfoChangedListener;)V

    .line 500
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->removeOnNetworkStateChangeReceiver(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;)V

    .line 501
    iget-object v0, p0, Lcom/youku/gamecenter/GameSubCategoryActivity;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/DelayNotifyHandler;->removeListener(I)V

    .line 502
    return-void
.end method

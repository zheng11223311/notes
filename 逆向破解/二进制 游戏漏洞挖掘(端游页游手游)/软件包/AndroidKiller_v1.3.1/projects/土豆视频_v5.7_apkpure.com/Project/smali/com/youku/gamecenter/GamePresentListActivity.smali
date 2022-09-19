.class public Lcom/youku/gamecenter/GamePresentListActivity;
.super Lcom/youku/gamecenter/GameBaseActivity;
.source "GamePresentListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/youku/gamecenter/services/GetPresentListService$OnPresentListServiceListener;
.implements Lcom/youku/gamecenter/present/PresentButtonHelper$onPresentStatusChangedListener;
.implements Lcom/youku/gamecenter/DelayNotifyHandler$OnDelayNotifyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/GamePresentListActivity$DownloadListener;
    }
.end annotation


# static fields
.field private static final DOWNLOADING_DONE:I = 0x64


# instance fields
.field private TAG:Ljava/lang/String;

.field private isLoaddingDatas:Z

.field private mAdapter:Lcom/youku/gamecenter/adapter/PresentListAdapter;

.field private mAppId:Ljava/lang/String;

.field private mContentLayout:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

.field private mDownloadCountView:Landroid/widget/TextView;

.field private mDownloadIcon:Landroid/widget/ImageView;

.field private mDownloadLayout:Landroid/widget/RelativeLayout;

.field private mDownloadProgress:Landroid/view/View;

.field private mDownloadText:Landroid/widget/TextView;

.field private mEndPage:I

.field private mFootView:Landroid/view/View;

.field private mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

.field private mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

.field private mGameInfoLayout:Landroid/widget/LinearLayout;

.field private mIconView:Landroid/widget/ImageView;

.field private mInnerProgressView:Lcom/youku/gamecenter/widgets/InnerProgressView;

.field private mIsLoadNew:Z

.field private mListView:Landroid/widget/ListView;

.field private mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

.field private mNoResultImageView:Landroid/widget/ImageView;

.field private mNoResultTextView:Landroid/widget/TextView;

.field private mPackageNameFromSDK:Ljava/lang/String;

.field private mPagecount:I

.field private mParentLayout:Landroid/widget/RelativeLayout;

.field private mPresentCountView:Landroid/widget/TextView;

.field private mPresentHelper:Lcom/youku/gamecenter/present/PresentButtonHelper;

.field private mPresentInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/present/PresentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSizeView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field private mUrl:Ljava/lang/String;

.field private totalPresentNum:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;-><init>()V

    .line 53
    const-string v0, "GameCenter"

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->TAG:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    .line 86
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getInstance()Lcom/youku/gamecenter/GameCenterModel;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    .line 88
    invoke-static {}, Lcom/youku/gamecenter/DelayNotifyHandler;->getInstance()Lcom/youku/gamecenter/DelayNotifyHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    .line 93
    iput-boolean v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mIsLoadNew:Z

    .line 94
    iput-boolean v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->isLoaddingDatas:Z

    .line 96
    iput v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mEndPage:I

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mPagecount:I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mPresentInfos:Ljava/util/List;

    .line 110
    iput-object v2, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mPackageNameFromSDK:Ljava/lang/String;

    .line 482
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/GamePresentListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GamePresentListActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/GamePresentListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GamePresentListActivity;

    .prologue
    .line 49
    iget v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mEndPage:I

    return v0
.end method

.method static synthetic access$200(Lcom/youku/gamecenter/GamePresentListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GamePresentListActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->fetchPresentListInfoById()V

    return-void
.end method

.method static synthetic access$300(Lcom/youku/gamecenter/GamePresentListActivity;)Lcom/youku/gamecenter/data/GameInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GamePresentListActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/youku/gamecenter/GamePresentListActivity;Lcom/youku/gamecenter/data/GameInfo;)Lcom/youku/gamecenter/data/GameInfo;
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GamePresentListActivity;
    .param p1, "x1"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/youku/gamecenter/GamePresentListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GamePresentListActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mPackageNameFromSDK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/gamecenter/GamePresentListActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GamePresentListActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/gamecenter/GamePresentListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GamePresentListActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->showFailed()V

    return-void
.end method

.method static synthetic access$700(Lcom/youku/gamecenter/GamePresentListActivity;Lcom/youku/gamecenter/present/PresentListInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GamePresentListActivity;
    .param p1, "x1"    # Lcom/youku/gamecenter/present/PresentListInfo;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GamePresentListActivity;->setSuccess(Lcom/youku/gamecenter/present/PresentListInfo;)V

    return-void
.end method

.method private addIntervalFoot()V
    .locals 4

    .prologue
    .line 589
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$layout;->layout_game_rank_header:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 591
    .local v0, "foot":Landroid/view/View;
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 592
    return-void
.end method

.method private fetchPresentListInfoById()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 228
    iget-boolean v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->isLoaddingDatas:Z

    if-eqz v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-static {p0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 233
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->setFootViewFaildTitle()V

    .line 234
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->showFailed()V

    .line 235
    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->showNetTipsAutomatic()V

    goto :goto_0

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mNoResultImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mNoResultTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    iget-boolean v1, v1, Lcom/youku/gamecenter/widgets/LoadingView;->isAniStart:Z

    if-nez v1, :cond_0

    .line 246
    iget v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mEndPage:I

    if-nez v1, :cond_3

    .line 247
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v1}, Lcom/youku/gamecenter/widgets/LoadingView;->startAnimation()V

    .line 249
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->isLoaddingDatas:Z

    .line 250
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->setFootViewLoaddingTitle()V

    .line 251
    new-instance v0, Lcom/youku/gamecenter/services/GetPresentListService;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/services/GetPresentListService;-><init>(Landroid/content/Context;)V

    .line 252
    .local v0, "service":Lcom/youku/gamecenter/services/GetPresentListService;
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/services/GetPresentListService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    goto :goto_0
.end method

.method private getColor(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getFootViewFaildTitleResId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    invoke-static {p0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$string;->game_center_tips_no_network_retry:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 222
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

.method private getGameInfo(Lcom/youku/gamecenter/present/PresentListInfo;)V
    .locals 3
    .param p1, "presentListInfo"    # Lcom/youku/gamecenter/present/PresentListInfo;

    .prologue
    .line 615
    iget-object v2, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mAppId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/youku/gamecenter/services/URLContainer;->getDetailPageUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/gamecenter/services/GetDetailPageService;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/services/GetDetailPageService;-><init>(Landroid/content/Context;)V

    .line 618
    .local v0, "service":Lcom/youku/gamecenter/services/GetDetailPageService;
    new-instance v2, Lcom/youku/gamecenter/GamePresentListActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/youku/gamecenter/GamePresentListActivity$3;-><init>(Lcom/youku/gamecenter/GamePresentListActivity;Lcom/youku/gamecenter/present/PresentListInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/services/GetDetailPageService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    .line 636
    return-void
.end method

.method private getThemeBackground(I)I
    .locals 4
    .param p1, "styleColorId"    # I

    .prologue
    .line 318
    sget v2, Lcom/youku/gamecenter/R$color;->downloading_backgroud:I

    invoke-direct {p0, v2}, Lcom/youku/gamecenter/GamePresentListActivity;->getColor(I)I

    move-result v1

    .line 320
    .local v1, "color":I
    :try_start_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme:[I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 322
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/youku/gamecenter/R$color;->downloading_backgroud:I

    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 323
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    return v1

    .line 324
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private handleLastPageRefresh()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->tab_last_page_prompt:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/GameBaseActivity;->showNetTips(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method private hasNextPage()Z
    .locals 2

    .prologue
    .line 574
    iget v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mEndPage:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mPagecount:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initFootView()Landroid/view/View;
    .locals 5

    .prologue
    .line 460
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$layout;->widget_game_loadding:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 462
    .local v0, "footView":Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 463
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    return-object v0
.end method

.method private initListView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 293
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->initFootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mFootView:Landroid/view/View;

    .line 294
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfoLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 295
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 296
    new-instance v0, Lcom/youku/gamecenter/adapter/PresentListAdapter;

    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mPresentHelper:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-direct {v0, p0, v1}, Lcom/youku/gamecenter/adapter/PresentListAdapter;-><init>(Landroid/content/Context;Lcom/youku/gamecenter/present/PresentButtonHelper;)V

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mAdapter:Lcom/youku/gamecenter/adapter/PresentListAdapter;

    .line 297
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 298
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mAdapter:Lcom/youku/gamecenter/adapter/PresentListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 299
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 300
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mInnerProgressView:Lcom/youku/gamecenter/widgets/InnerProgressView;

    new-instance v1, Lcom/youku/gamecenter/GamePresentListActivity$DownloadListener;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/GamePresentListActivity$DownloadListener;-><init>(Lcom/youku/gamecenter/GamePresentListActivity;)V

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/InnerProgressView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->addOnGameInfoChangedListener(Lcom/youku/gamecenter/OnGameInfoChangedListener;)V

    .line 306
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mNoResultImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/youku/gamecenter/GamePresentListActivity$1;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/GamePresentListActivity$1;-><init>(Lcom/youku/gamecenter/GamePresentListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 258
    invoke-static {}, Lcom/youku/gamecenter/present/PresentButtonHelper;->getInstance()Lcom/youku/gamecenter/present/PresentButtonHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mPresentHelper:Lcom/youku/gamecenter/present/PresentButtonHelper;

    .line 260
    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$layout;->widget_game_present_head:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfoLayout:Landroid/widget/LinearLayout;

    .line 262
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfoLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/youku/gamecenter/R$id;->game_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mIconView:Landroid/widget/ImageView;

    .line 263
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfoLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/youku/gamecenter/R$id;->game_name:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mTitleView:Landroid/widget/TextView;

    .line 264
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfoLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/youku/gamecenter/R$id;->game_size:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mSizeView:Landroid/widget/TextView;

    .line 265
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfoLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/youku/gamecenter/R$id;->game_download_count:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mDownloadCountView:Landroid/widget/TextView;

    .line 267
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfoLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/youku/gamecenter/R$id;->game_present_count:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mPresentCountView:Landroid/widget/TextView;

    .line 270
    sget v0, Lcom/youku/gamecenter/R$id;->list_game_present:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mListView:Landroid/widget/ListView;

    .line 272
    sget v0, Lcom/youku/gamecenter/R$id;->detail_parent:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 273
    sget v0, Lcom/youku/gamecenter/R$id;->content_layout:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mContentLayout:Landroid/widget/RelativeLayout;

    .line 275
    sget v0, Lcom/youku/gamecenter/R$id;->rl_download:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mDownloadLayout:Landroid/widget/RelativeLayout;

    .line 276
    sget v0, Lcom/youku/gamecenter/R$id;->innerProgressView:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/widgets/InnerProgressView;

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mInnerProgressView:Lcom/youku/gamecenter/widgets/InnerProgressView;

    .line 277
    sget v0, Lcom/youku/gamecenter/R$id;->download_progress:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mDownloadProgress:Landroid/view/View;

    .line 278
    sget v0, Lcom/youku/gamecenter/R$id;->download_icon:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mDownloadIcon:Landroid/widget/ImageView;

    .line 279
    sget v0, Lcom/youku/gamecenter/R$id;->download_text:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mDownloadText:Landroid/widget/TextView;

    .line 281
    new-instance v0, Lcom/youku/gamecenter/widgets/LoadingView;

    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/youku/gamecenter/GameBaseActivity;->isYoukuApp()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/youku/gamecenter/widgets/LoadingView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Z)V

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    .line 284
    sget v0, Lcom/youku/gamecenter/R$id;->iv_no_result:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mNoResultImageView:Landroid/widget/ImageView;

    .line 285
    sget v0, Lcom/youku/gamecenter/R$id;->tv_no_result:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mNoResultTextView:Landroid/widget/TextView;

    .line 287
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mContentLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 289
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->initListView()V

    .line 290
    return-void
.end method

.method private isNeedRefresh(Ljava/lang/String;Lcom/youku/gamecenter/data/GameInfo;)Z
    .locals 2
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v0, 0x1

    .line 449
    if-nez p2, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v0

    .line 452
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p2, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDatas()V
    .locals 3

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "packagename"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "packagename"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mPackageNameFromSDK:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mAdapter:Lcom/youku/gamecenter/adapter/PresentListAdapter;

    iget-object v2, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mPackageNameFromSDK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/adapter/PresentListAdapter;->setPackageName(Ljava/lang/String;)V

    .line 150
    :cond_0
    const-string v1, "pkgNameFromGameDetail"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    const-string v1, "pkgNameFromGameDetail"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/gamecenter/GameCenterModel;->getGameInfoFromCache(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    .line 155
    :cond_1
    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mAppId:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mAppId:Ljava/lang/String;

    iget v2, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mEndPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/youku/gamecenter/services/URLContainer;->getPresentListByAppIdUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GamePresentListActivity;->setUrl(Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->fetchPresentListInfoById()V

    .line 159
    return-void

    .line 162
    :cond_2
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "Launch GamePresentListActivity the intent need putExtra appId or packageName!"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadNewPage()V
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mPresentInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/youku/gamecenter/present/PresentListInfo;->pz:I

    if-gt v1, v2, :cond_0

    .line 187
    :goto_0
    return-void

    .line 173
    :cond_0
    iget v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mEndPage:I

    iget v2, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mPagecount:I

    if-ne v1, v2, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->handleLastPageRefresh()V

    goto :goto_0

    .line 178
    :cond_1
    invoke-static {p0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 179
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->setFootViewFaildTitle()V

    goto :goto_0

    .line 183
    :cond_2
    iget v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mEndPage:I

    add-int/lit8 v0, v1, 0x1

    .line 184
    .local v0, "page":I
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mAppId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/youku/gamecenter/services/URLContainer;->getPresentListByAppIdUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GamePresentListActivity;->setUrl(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->fetchPresentListInfoById()V

    goto :goto_0
.end method

.method private registerReceivers()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->registerReceiver(Landroid/content/Context;)V

    .line 129
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mPresentHelper:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->addOnPresentStatusChangedListener(Lcom/youku/gamecenter/present/PresentButtonHelper$onPresentStatusChangedListener;)V

    .line 130
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/DelayNotifyHandler;->addListener(ILcom/youku/gamecenter/DelayNotifyHandler$OnDelayNotifyListener;)V

    .line 131
    return-void
.end method

.method private removeFootViewAndAddIntervalFootWhenNotHasNextPage()V
    .locals 2

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->hasNextPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mFootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 586
    :goto_0
    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 585
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->addIntervalFoot()V

    goto :goto_0
.end method

.method private setFootViewFaildTitle()V
    .locals 4

    .prologue
    .line 195
    iget v2, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mEndPage:I

    if-nez v2, :cond_0

    .line 204
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, "title":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "title":Landroid/view/View;
    iget-object v2, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/youku/gamecenter/GamePresentListActivity;->getFootViewFaildTitleResId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v2, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 203
    .local v1, "title2":Landroid/view/View;
    iget-object v2, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "title2":Landroid/view/View;
    invoke-direct {p0, v2, v1}, Lcom/youku/gamecenter/GamePresentListActivity;->setTitle2Content(Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private setFootViewLoaddingTitle()V
    .locals 4

    .prologue
    .line 595
    iget v2, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mEndPage:I

    if-nez v2, :cond_0

    .line 604
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 600
    .local v0, "title":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "title":Landroid/view/View;
    sget v2, Lcom/youku/gamecenter/R$string;->game_center_tips_loadding:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 602
    iget-object v2, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 603
    .local v1, "title2":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSuccess(Lcom/youku/gamecenter/present/PresentListInfo;)V
    .locals 3
    .param p1, "presentListInfo"    # Lcom/youku/gamecenter/present/PresentListInfo;

    .prologue
    const/4 v2, 0x0

    .line 642
    iput-boolean v2, p0, Lcom/youku/gamecenter/GamePresentListActivity;->isLoaddingDatas:Z

    .line 643
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v1}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 644
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mContentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 645
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 646
    iget v1, p1, Lcom/youku/gamecenter/present/PresentListInfo;->total:I

    iput v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->totalPresentNum:I

    .line 648
    invoke-virtual {p1}, Lcom/youku/gamecenter/present/PresentListInfo;->getAllPresents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 649
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->setFootViewFaildTitle()V

    .line 657
    :goto_0
    return-void

    .line 653
    :cond_0
    invoke-virtual {p1}, Lcom/youku/gamecenter/present/PresentListInfo;->getAllPresents()Ljava/util/List;

    move-result-object v0

    .line 654
    .local v0, "presentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/present/PresentInfo;>;"
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GamePresentListActivity;->setUIDatas(Ljava/util/List;)V

    .line 655
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->removeFootViewAndAddIntervalFootWhenNotHasNextPage()V

    .line 656
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mAdapter:Lcom/youku/gamecenter/adapter/PresentListAdapter;

    invoke-virtual {v1}, Lcom/youku/gamecenter/adapter/PresentListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private setTitle2Content(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Landroid/widget/TextView;

    .prologue
    .line 207
    invoke-static {p1}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setUIDatas(Ljava/util/List;)V
    .locals 7
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
    .local p1, "presentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/present/PresentInfo;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 354
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mContentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mSizeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->game_size_detail:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v4, v4, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mPresentCountView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->game_present_count:I

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/youku/gamecenter/GamePresentListActivity;->totalPresentNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mDownloadCountView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->game_download_count_detail:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v4, v4, Lcom/youku/gamecenter/data/GameInfo;->total_downloads:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentListActivity;->setDownloadState(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 366
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-virtual {v1}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayGameIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 368
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mPresentInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 369
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mAdapter:Lcom/youku/gamecenter/adapter/PresentListAdapter;

    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mPresentInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/adapter/PresentListAdapter;->setData(Ljava/util/List;)V

    .line 370
    iget v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mEndPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mEndPage:I

    .line 372
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v0, v0, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentListActivity;->setTitlePageName(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method private showFailed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 345
    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 347
    :cond_0
    iput-boolean v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->isLoaddingDatas:Z

    .line 348
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 349
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mNoResultImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mNoResultTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private unRegisterReceivers()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/DelayNotifyHandler;->removeListener(I)V

    .line 135
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->unRegisterReceiver(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    const-string/jumbo v0, "\u67d0\u4e2a\u6e38\u620f\u793c\u5305\u5217\u8868\u9875"

    return-object v0
.end method

.method public isGameOnBoard(Lcom/youku/gamecenter/data/GameInfo;)Z
    .locals 3
    .param p1, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v0, 0x0

    .line 330
    if-nez p1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v0

    .line 334
    :cond_1
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->on_board:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->on_board:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mFootView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 542
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->loadDatas()V

    .line 546
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 428
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 429
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->getSimpleClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> onConfigurationChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentListActivity;->setDownloadStateDelay(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 431
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    iput-object p0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mContext:Landroid/content/Context;

    .line 118
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->initViews()V

    .line 120
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->loadDatas()V

    .line 122
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->initListener()V

    .line 124
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->registerReceivers()V

    .line 125
    return-void
.end method

.method public onDelayNotify()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentListActivity;->setDownloadState(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 480
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 470
    invoke-super {p0}, Lcom/youku/gamecenter/GameBaseActivity;->onDestroy()V

    .line 472
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->removeOnGameInfoChangedListener(Lcom/youku/gamecenter/OnGameInfoChangedListener;)V

    .line 473
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->unRegisterReceivers()V

    .line 474
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mPresentHelper:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->removeOnPresentStatusChangedListener(Lcom/youku/gamecenter/present/PresentButtonHelper$onPresentStatusChangedListener;)V

    .line 475
    return-void
.end method

.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 0
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->showFailed()V

    .line 551
    return-void
.end method

.method public onGameInfoProgressChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0, p1, v0}, Lcom/youku/gamecenter/GamePresentListActivity;->isNeedRefresh(Ljava/lang/String;Lcom/youku/gamecenter/data/GameInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/DelayNotifyHandler;->sendSimpleMessage(Lcom/youku/gamecenter/DelayNotifyHandler;I)V

    goto :goto_0
.end method

.method public onGameInfoStatusChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 435
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onGameInfoStatusChanged(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0, p1, v0}, Lcom/youku/gamecenter/GamePresentListActivity;->isNeedRefresh(Ljava/lang/String;Lcom/youku/gamecenter/data/GameInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentListActivity;->setDownloadState(Lcom/youku/gamecenter/data/GameInfo;)V

    goto :goto_0
.end method

.method public onPresentButtonClick(Lcom/youku/gamecenter/present/PresentInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/youku/gamecenter/present/PresentInfo;

    .prologue
    .line 608
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mAdapter:Lcom/youku/gamecenter/adapter/PresentListAdapter;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/adapter/PresentListAdapter;->refreshButtonStatus(Lcom/youku/gamecenter/present/PresentInfo;)V

    .line 609
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 535
    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mIsLoadNew:Z

    .line 537
    return-void

    .line 535
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 519
    if-eqz p2, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-boolean v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mIsLoadNew:Z

    if-eqz v0, :cond_0

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mIsLoadNew:Z

    .line 528
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->loadNewPage()V

    goto :goto_0
.end method

.method public onSuccess(Lcom/youku/gamecenter/present/PresentListInfo;)V
    .locals 1
    .param p1, "presentListInfo"    # Lcom/youku/gamecenter/present/PresentListInfo;

    .prologue
    .line 556
    invoke-virtual {p1}, Lcom/youku/gamecenter/present/PresentListInfo;->getPageCount()I

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mPagecount:I

    .line 558
    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    if-nez v0, :cond_1

    .line 562
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GamePresentListActivity;->getGameInfo(Lcom/youku/gamecenter/present/PresentListInfo;)V

    goto :goto_0

    .line 566
    :cond_1
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GamePresentListActivity;->setSuccess(Lcom/youku/gamecenter/present/PresentListInfo;)V

    goto :goto_0
.end method

.method public setDownloadState(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 4
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 389
    if-nez p1, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mDownloadIcon:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v2, v2, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 395
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mDownloadText:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v2, v2, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageTitleId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 396
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mDownloadText:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v2, v2, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageBottomBtnTxtColorId:I

    invoke-direct {p0, v2}, Lcom/youku/gamecenter/GamePresentListActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 399
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v1, v1, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageDownloadProgressBarColorId:I

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GamePresentListActivity;->getThemeBackground(I)I

    move-result v0

    .line 400
    .local v0, "backgroundColor":I
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mDownloadProgress:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 401
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mInnerProgressView:Lcom/youku/gamecenter/widgets/InnerProgressView;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v2, v2, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageBottomBtnBgId:I

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/widgets/InnerProgressView;->setBackgroundResource(I)V

    .line 404
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v1, v2, :cond_2

    .line 405
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mDownloadText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mInnerProgressView:Lcom/youku/gamecenter/widgets/InnerProgressView;

    iget v2, p1, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/widgets/InnerProgressView;->setProgressDelay(I)V

    goto :goto_0

    .line 409
    :cond_2
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PAUSE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v1, v2, :cond_3

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_STOP:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v1, v2, :cond_4

    .line 411
    :cond_3
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mDownloadText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mInnerProgressView:Lcom/youku/gamecenter/widgets/InnerProgressView;

    iget v2, p1, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/widgets/InnerProgressView;->setProgressDelay(I)V

    goto/16 :goto_0

    .line 415
    :cond_4
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_DONE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v1, v2, :cond_5

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_NEW:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v1, v2, :cond_5

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_UPDATEABLE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v1, v2, :cond_6

    .line 418
    :cond_5
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mInnerProgressView:Lcom/youku/gamecenter/widgets/InnerProgressView;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/widgets/InnerProgressView;->setProgressDelay(I)V

    goto/16 :goto_0

    .line 421
    :cond_6
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_INSTALLED:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v1, v2, :cond_0

    .line 422
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mInnerProgressView:Lcom/youku/gamecenter/widgets/InnerProgressView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/widgets/InnerProgressView;->setProgressDelay(I)V

    goto/16 :goto_0
.end method

.method public setDownloadStateDelay(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 4
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 377
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/youku/gamecenter/GamePresentListActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/youku/gamecenter/GamePresentListActivity$2;-><init>(Lcom/youku/gamecenter/GamePresentListActivity;Lcom/youku/gamecenter/data/GameInfo;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 385
    return-void
.end method

.method public setLayout()V
    .locals 1

    .prologue
    .line 508
    sget v0, Lcom/youku/gamecenter/R$layout;->activity_game_present_list:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentListActivity;->setContentView(I)V

    .line 509
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/youku/gamecenter/GamePresentListActivity;->mUrl:Ljava/lang/String;

    .line 571
    return-void
.end method

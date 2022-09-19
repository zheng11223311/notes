.class public Lcom/youku/gamecenter/fragment/PresentListFragment;
.super Lcom/youku/gamecenter/fragment/GameRequestFragment;
.source "PresentListFragment.java"

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
.field private mAdapter:Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;

.field private mFootView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0xa

    sput v0, Lcom/youku/gamecenter/fragment/PresentListFragment;->PRESENT_TOTAL:I

    .line 43
    const/16 v0, 0xb

    sput v0, Lcom/youku/gamecenter/fragment/PresentListFragment;->PRESENT_LIST:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mPresentList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/fragment/PresentListFragment;)Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/fragment/PresentListFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mAdapter:Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;

    return-object v0
.end method

.method private addHeaderView()V
    .locals 2

    .prologue
    .line 156
    iget v0, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mEndPage:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/PresentListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/youku/gamecenter/fragment/PresentListFragment;->addHeader(Landroid/widget/ListView;Landroid/view/LayoutInflater;)V

    goto :goto_0
.end method

.method private addIntervalFoot()V
    .locals 4

    .prologue
    .line 294
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$layout;->layout_game_rank_header:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 295
    .local v0, "foot":Landroid/view/View;
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 296
    return-void
.end method

.method private initFootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 249
    sget v1, Lcom/youku/gamecenter/R$layout;->widget_game_loadding:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 251
    .local v0, "footView":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    return-object v0
.end method

.method private removeFootViewAndAddIntervalFootWhenNotHasNextPage()V
    .locals 2

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/PresentListFragment;->hasNextPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mFootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 290
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/PresentListFragment;->addIntervalFoot()V

    goto :goto_0
.end method

.method private setFootViewFaildTitle()V
    .locals 4

    .prologue
    .line 269
    iget v2, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mEndPage:I

    if-nez v2, :cond_0

    .line 280
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mFootView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 275
    .local v0, "title":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "title":Landroid/view/View;
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/PresentListFragment;->isNetWorkAvaliable()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/youku/gamecenter/fragment/PresentListFragment;->getFootViewFaildTitleResId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 279
    .local v1, "title2":Landroid/view/View;
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "title2":Landroid/view/View;
    invoke-direct {p0, v2, v1}, Lcom/youku/gamecenter/fragment/PresentListFragment;->setTitle2Content(Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private setFootViewLoaddingTitle()V
    .locals 4

    .prologue
    .line 257
    iget v2, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mEndPage:I

    if-nez v2, :cond_0

    .line 266
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 262
    .local v0, "title":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "title":Landroid/view/View;
    sget v2, Lcom/youku/gamecenter/R$string;->game_center_tips_loadding:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 264
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 265
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
    .line 299
    invoke-static {p1}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    :goto_0
    return-void

    .line 304
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDatas(Lcom/youku/gamecenter/present/PresentListInfo;)V
    .locals 6
    .param p1, "presentListInfo"    # Lcom/youku/gamecenter/present/PresentListInfo;

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->updateDatas(Lcom/youku/gamecenter/data/IResponseable;)V

    .line 167
    invoke-virtual {p1}, Lcom/youku/gamecenter/present/PresentListInfo;->getAllPresents()Ljava/util/List;

    move-result-object v0

    .line 169
    .local v0, "presentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/present/PresentInfo;>;"
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mPresentList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mAdapter:Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;

    iget-object v2, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mPresentList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;->setData(Ljava/util/List;)V

    .line 174
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/youku/gamecenter/fragment/PresentListFragment$1;

    invoke-direct {v2, p0}, Lcom/youku/gamecenter/fragment/PresentListFragment$1;-><init>(Lcom/youku/gamecenter/fragment/PresentListFragment;)V

    const-wide/16 v4, 0x28

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    return-void
.end method


# virtual methods
.method protected addHeader(Landroid/widget/ListView;Landroid/view/LayoutInflater;)V
    .locals 3
    .param p1, "listview"    # Landroid/widget/ListView;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 75
    sget v1, Lcom/youku/gamecenter/R$layout;->layout_game_rank_header:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "header":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method protected doRequest(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 69
    new-instance v0, Lcom/youku/gamecenter/services/GetPresentListService;

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-direct {v0, v1}, Lcom/youku/gamecenter/services/GetPresentListService;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, "service":Lcom/youku/gamecenter/services/GetPresentListService;
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/fragment/PresentListFragment;->getURL(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/services/GetPresentListService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    .line 71
    return-void
.end method

.method protected getPageCount(Lcom/youku/gamecenter/data/IResponseable;)I
    .locals 2
    .param p1, "data"    # Lcom/youku/gamecenter/data/IResponseable;

    .prologue
    .line 190
    move-object v0, p1

    check-cast v0, Lcom/youku/gamecenter/present/PresentListInfo;

    .line 191
    .local v0, "presentListInfo":Lcom/youku/gamecenter/present/PresentListInfo;
    iget v1, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mEndPage:I

    if-nez v1, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/youku/gamecenter/present/PresentListInfo;->getPageCount()I

    move-result v1

    .line 195
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mPageCount:I

    goto :goto_0
.end method

.method protected getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTabId()I
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x14

    return v0
.end method

.method protected getURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 64
    invoke-static {p1}, Lcom/youku/gamecenter/services/URLContainer;->getGamePresentTotalUrlByPage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initViews(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 91
    sget v1, Lcom/youku/gamecenter/R$layout;->fragment_game_present_total:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 94
    .local v0, "view":Landroid/view/ViewGroup;
    new-instance v1, Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;

    iget-object v2, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v3, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mPresentHelper:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-direct {v1, v2, v3}, Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;-><init>(Landroid/content/Context;Lcom/youku/gamecenter/present/PresentButtonHelper;)V

    iput-object v1, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mAdapter:Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;

    .line 96
    sget v1, Lcom/youku/gamecenter/R$id;->gamecenter_group:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 98
    sget v1, Lcom/youku/gamecenter/R$id;->scrollcontainer:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mListView:Landroid/widget/ListView;

    .line 100
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/youku/gamecenter/fragment/PresentListFragment;->initFootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mFootView:Landroid/view/View;

    .line 101
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 102
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mFootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 105
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mAdapter:Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    invoke-super {p0, v0, v0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->initBaseViews(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 109
    sget v1, Lcom/youku/gamecenter/R$id;->tv_no_result:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/youku/gamecenter/R$string;->game_presents_empty:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 111
    return-object v0
.end method

.method protected isGamesValid()Z
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mEndPage:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->onClick(Landroid/view/View;)V

    .line 206
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mFootView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/PresentListFragment;->loadDatas()V

    .line 211
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {}, Lcom/youku/gamecenter/present/PresentButtonHelper;->getInstance()Lcom/youku/gamecenter/present/PresentButtonHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mPresentHelper:Lcom/youku/gamecenter/present/PresentButtonHelper;

    .line 49
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mPresentHelper:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->addOnPresentStatusChangedListener(Lcom/youku/gamecenter/present/PresentButtonHelper$onPresentStatusChangedListener;)V

    .line 50
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->onDestroy()V

    .line 127
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/PresentListFragment;->removeListener()V

    .line 128
    return-void
.end method

.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 2
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/PresentListFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/PresentListFragment;->trackPageLoad()V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailed,\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;->errorDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/fragment/PresentListFragment;->dumpLogs(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/PresentListFragment;->setLoadingFailedDatas()V

    .line 244
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/PresentListFragment;->setLoadingFailedView()V

    goto :goto_0
.end method

.method public onPresentButtonClick(Lcom/youku/gamecenter/present/PresentInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/youku/gamecenter/present/PresentInfo;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mAdapter:Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;->refreshButtonStatus(Lcom/youku/gamecenter/present/PresentInfo;)V

    .line 310
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 231
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 216
    if-eqz p2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/PresentListFragment;->loadDatas()V

    goto :goto_0
.end method

.method public onSuccess(Lcom/youku/gamecenter/present/PresentListInfo;)V
    .locals 1
    .param p1, "presentListInfo"    # Lcom/youku/gamecenter/present/PresentListInfo;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/PresentListFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/PresentListFragment;->trackPageLoad()V

    .line 137
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/fragment/PresentListFragment;->updateDatas(Lcom/youku/gamecenter/present/PresentListInfo;)V

    .line 139
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/PresentListFragment;->updateUI()V

    goto :goto_0
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mPresentHelper:Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->removeOnPresentStatusChangedListener(Lcom/youku/gamecenter/present/PresentButtonHelper$onPresentStatusChangedListener;)V

    .line 314
    return-void
.end method

.method protected setLoadingFailedView()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->setLoadingFailedView()V

    .line 116
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/PresentListFragment;->setFootViewFaildTitle()V

    .line 117
    return-void
.end method

.method protected setLoadingView(Z)V
    .locals 0
    .param p1, "showLoading"    # Z

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->setLoadingView(Z)V

    .line 121
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/PresentListFragment;->setFootViewLoaddingTitle()V

    .line 122
    return-void
.end method

.method protected trackPageLoad()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method protected updateUI()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->updateUI()V

    .line 146
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/PresentListFragment;->addHeaderView()V

    .line 148
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/PresentListFragment;->removeFootViewAndAddIntervalFootWhenNotHasNextPage()V

    .line 150
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/PresentListFragment;->mAdapter:Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/PresentTotalListAdapter;->notifyDataSetChanged()V

    .line 152
    return-void
.end method

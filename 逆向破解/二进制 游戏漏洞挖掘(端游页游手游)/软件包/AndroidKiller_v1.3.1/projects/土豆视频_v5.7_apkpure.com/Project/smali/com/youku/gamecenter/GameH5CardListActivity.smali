.class public Lcom/youku/gamecenter/GameH5CardListActivity;
.super Lcom/youku/gamecenter/GameBaseActivity;
.source "GameH5CardListActivity.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetH5CardListService$OnGetH5CardListListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardInfo;,
        Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardListInfo;
    }
.end annotation


# static fields
.field public static GAME_ACTIVITIES_LIST_TYPE:I

.field public static GAME_SUBJECTS_LIST_TYPE:I


# instance fields
.field private isAllListItemShowInOnePage:Z

.field private isLoadingData:Z

.field private mAdapter:Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;

.field private mEndPage:I

.field private mFootView:Landroid/view/View;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

.field private mNoResultView:Landroid/widget/RelativeLayout;

.field private mPageCount:I

.field private mPageName:Ljava/lang/String;

.field private mParentLayout:Landroid/widget/RelativeLayout;

.field private mShortFootView:Landroid/view/View;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/youku/gamecenter/GameH5CardListActivity;->GAME_SUBJECTS_LIST_TYPE:I

    .line 35
    const/4 v0, 0x1

    sput v0, Lcom/youku/gamecenter/GameH5CardListActivity;->GAME_ACTIVITIES_LIST_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mType:I

    .line 47
    iput v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mEndPage:I

    .line 48
    iput v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mPageCount:I

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mPageName:Ljava/lang/String;

    .line 52
    iput-boolean v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->isLoadingData:Z

    .line 53
    iput-boolean v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->isAllListItemShowInOnePage:Z

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mList:Ljava/util/List;

    .line 332
    return-void
.end method

.method private addIntervalFoot()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mShortFootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mShortFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 208
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$layout;->layout_game_rank_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mShortFootView:Landroid/view/View;

    .line 210
    iget-object v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mShortFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 211
    return-void
.end method

.method public static getFootViewFaildTitleResId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    invoke-static {p0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$string;->game_center_tips_no_network_retry:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
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
    .locals 2

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->isAllListItemShowInOnePage:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameH5CardListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$string;->tab_last_page_prompt:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameH5CardListActivity;->showNetTips(Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method private hasNextPage()Z
    .locals 2

    .prologue
    .line 316
    iget v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mEndPage:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mPageCount:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameH5CardListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mType:I

    .line 91
    iget v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mType:I

    sget v2, Lcom/youku/gamecenter/GameH5CardListActivity;->GAME_SUBJECTS_LIST_TYPE:I

    if-ne v1, v2, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameH5CardListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->game_subjects_list:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mPageName:Ljava/lang/String;

    .line 95
    :cond_0
    iget v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mType:I

    sget v2, Lcom/youku/gamecenter/GameH5CardListActivity;->GAME_ACTIVITIES_LIST_TYPE:I

    if-ne v1, v2, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameH5CardListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->game_activities_list:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mPageName:Ljava/lang/String;

    .line 98
    :cond_1
    return-void
.end method

.method private initFootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 320
    sget v1, Lcom/youku/gamecenter/R$layout;->widget_game_loadding:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 322
    .local v0, "footView":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    return-object v0
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 66
    sget v1, Lcom/youku/gamecenter/R$id;->gamecenter_group:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameH5CardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 68
    sget v1, Lcom/youku/gamecenter/R$id;->game_activity_no_result_layout:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameH5CardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    .line 69
    iget-object v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget v1, Lcom/youku/gamecenter/R$id;->tv_no_result:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameH5CardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    .local v0, "noResultTv":Landroid/widget/TextView;
    sget v1, Lcom/youku/gamecenter/R$string;->game_activities_no_result_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    new-instance v1, Lcom/youku/gamecenter/widgets/LoadingView;

    iget-object v2, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/youku/gamecenter/GameBaseActivity;->isYoukuApp()Z

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/youku/gamecenter/widgets/LoadingView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    .line 74
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/youku/gamecenter/GameH5CardListActivity;->initFootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mFootView:Landroid/view/View;

    .line 76
    sget v1, Lcom/youku/gamecenter/R$id;->scrollcontainer:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameH5CardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mListView:Landroid/widget/ListView;

    .line 77
    iget-object v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 78
    iget-object v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mFootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 81
    new-instance v1, Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;

    iget v2, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mType:I

    invoke-direct {v1, p0, v2}, Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mAdapter:Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;

    .line 82
    iget-object v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mAdapter:Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    iget-object v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mPageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameH5CardListActivity;->setTitlePageName(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private isLastPage()Z
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mEndPage:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mEndPage:I

    iget v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mPageCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadNewPage()V
    .locals 3

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/youku/gamecenter/GameH5CardListActivity;->isLastPage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/youku/gamecenter/GameH5CardListActivity;->handleLastPageRefresh()V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-boolean v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->isLoadingData:Z

    if-nez v1, :cond_0

    .line 111
    invoke-static {p0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GameH5CardListActivity;->setFailedUI(Z)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-direct {p0}, Lcom/youku/gamecenter/GameH5CardListActivity;->showLoadingUI()V

    .line 120
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->isLoadingData:Z

    .line 123
    new-instance v0, Lcom/youku/gamecenter/services/GetH5CardListService;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/services/GetH5CardListService;-><init>(Landroid/content/Context;)V

    .line 124
    .local v0, "service":Lcom/youku/gamecenter/services/GetH5CardListService;
    iget v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mType:I

    iget v2, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mEndPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/youku/gamecenter/services/URLContainer;->getH5CardListUrl(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/services/GetH5CardListService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    goto :goto_0
.end method

.method private setFailedUI(Z)V
    .locals 5
    .param p1, "loadSuccess"    # Z

    .prologue
    const/4 v4, 0x0

    .line 140
    if-nez p1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameH5CardListActivity;->showNetTipsAutomatic()V

    .line 144
    :cond_0
    iget v2, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mEndPage:I

    if-nez v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v2}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 146
    iget-object v2, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mListView:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 147
    iget-object v2, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 159
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mFootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v2, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, "title":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "title":Landroid/view/View;
    invoke-static {p0}, Lcom/youku/gamecenter/GameH5CardListActivity;->getFootViewFaildTitleResId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v2, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 157
    .local v1, "title2":Landroid/view/View;
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "title2":Landroid/view/View;
    invoke-direct {p0, p0, v1}, Lcom/youku/gamecenter/GameH5CardListActivity;->setTitle2Content(Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private setFootViewLoaddingTitle()V
    .locals 4

    .prologue
    .line 193
    iget v2, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mEndPage:I

    if-nez v2, :cond_0

    .line 202
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, "title":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "title":Landroid/view/View;
    sget v2, Lcom/youku/gamecenter/R$string;->game_center_tips_loadding:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 200
    iget-object v2, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 201
    .local v1, "title2":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSuccessUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 217
    invoke-direct {p0}, Lcom/youku/gamecenter/GameH5CardListActivity;->hasNextPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 224
    :goto_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mAdapter:Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;

    iget-object v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;->setData(Ljava/util/List;)V

    .line 228
    iget-object v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mAdapter:Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/GameH5CardListAdapter;->notifyDataSetChanged()V

    .line 229
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 221
    invoke-direct {p0}, Lcom/youku/gamecenter/GameH5CardListActivity;->addIntervalFoot()V

    goto :goto_0
.end method

.method private setTitle2Content(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Landroid/widget/TextView;

    .prologue
    .line 162
    invoke-static {p1}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showLoadingUI()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 185
    iget v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mEndPage:I

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->startAnimation()V

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/youku/gamecenter/GameH5CardListActivity;->setFootViewLoaddingTitle()V

    .line 190
    return-void
.end method


# virtual methods
.method getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mPageName:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mFootView:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 305
    invoke-direct {p0}, Lcom/youku/gamecenter/GameH5CardListActivity;->loadNewPage()V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mNoResultView:Landroid/widget/RelativeLayout;

    if-ne v0, p1, :cond_0

    .line 310
    invoke-direct {p0}, Lcom/youku/gamecenter/GameH5CardListActivity;->loadNewPage()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-direct {p0}, Lcom/youku/gamecenter/GameH5CardListActivity;->initData()V

    .line 61
    invoke-direct {p0}, Lcom/youku/gamecenter/GameH5CardListActivity;->initView()V

    .line 62
    invoke-direct {p0}, Lcom/youku/gamecenter/GameH5CardListActivity;->loadNewPage()V

    .line 63
    return-void
.end method

.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 2
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    const/4 v1, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameH5CardListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 272
    :cond_0
    iput-boolean v1, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->isLoadingData:Z

    .line 274
    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GameH5CardListActivity;->setFailedUI(Z)V

    goto :goto_0
.end method

.method public onNetworkAvailable()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 294
    if-eq p3, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->isAllListItemShowInOnePage:Z

    .line 295
    return-void

    .line 294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 280
    if-eqz p2, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 287
    invoke-direct {p0}, Lcom/youku/gamecenter/GameH5CardListActivity;->loadNewPage()V

    goto :goto_0
.end method

.method public onSuccess(Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardListInfo;)V
    .locals 2
    .param p1, "gameH5CardListInfo"    # Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardListInfo;

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameH5CardListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 248
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->isLoadingData:Z

    .line 251
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardListInfo;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 252
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameH5CardListActivity;->setFailedUI(Z)V

    goto :goto_0

    .line 256
    :cond_2
    iget v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mPageCount:I

    if-nez v0, :cond_3

    .line 257
    iget v0, p1, Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardListInfo;->pageCount:I

    iput v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mPageCount:I

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mList:Ljava/util/List;

    iget-object v1, p1, Lcom/youku/gamecenter/GameH5CardListActivity$GameH5CardListInfo;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 261
    iget v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mEndPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youku/gamecenter/GameH5CardListActivity;->mEndPage:I

    .line 263
    invoke-direct {p0}, Lcom/youku/gamecenter/GameH5CardListActivity;->setSuccessUI()V

    goto :goto_0
.end method

.method public setLayout()V
    .locals 1

    .prologue
    .line 233
    sget v0, Lcom/youku/gamecenter/R$layout;->activity_game_rank:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameH5CardListActivity;->setContentView(I)V

    .line 234
    return-void
.end method

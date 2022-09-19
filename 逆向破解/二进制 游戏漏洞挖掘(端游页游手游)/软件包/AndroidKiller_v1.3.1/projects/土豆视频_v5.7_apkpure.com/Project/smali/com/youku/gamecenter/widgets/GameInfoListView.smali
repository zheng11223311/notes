.class public Lcom/youku/gamecenter/widgets/GameInfoListView;
.super Ljava/lang/Object;
.source "GameInfoListView.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetGameListService$OnGameListServiceListener;
.implements Lcom/youku/gamecenter/OnGameInfoChangedListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;
.implements Lcom/youku/gamecenter/DelayNotifyHandler$OnDelayNotifyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/widgets/GameInfoListView$GameActionClickListener;
    }
.end annotation


# instance fields
.field private isAllListItemShowInOnePage:Z

.field private isFirstSearch:Z

.field private isLoaddingDatas:Z

.field private isScrolling:Z

.field private mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

.field private mCardViewTop:Landroid/view/View;

.field private mCategoryId:I

.field private mContext:Lcom/youku/gamecenter/GameBaseActivity;

.field private mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

.field public mEndPage:I

.field private mFootView:Landroid/view/View;

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

.field private mHander:Landroid/os/Handler;

.field private mId:I

.field private mIsAutoLoad:Z

.field private mIsForTablet:Z

.field private mIsLoadNew:Z

.field private mListView:Landroid/widget/ListView;

.field public mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

.field private mNoResultTextView:Landroid/widget/TextView;

.field private mNoResultView:Landroid/widget/RelativeLayout;

.field private mPagecount:I

.field private mParentLayout:Landroid/widget/RelativeLayout;

.field private mSearchWord:Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field private mSplitFooterView:Landroid/view/View;

.field private mSplitHeaderView:Landroid/view/View;

.field private mStartTime:J

.field private mTabId:I

.field private mTagCardView:Landroid/view/View;

.field private mTagGames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTagId:Ljava/lang/String;

.field private mTagName:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;Z)V
    .locals 4
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "tabId"    # I
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "addHeader"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getInstance()Lcom/youku/gamecenter/GameCenterModel;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    .line 64
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mHander:Landroid/os/Handler;

    .line 75
    iput-boolean v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->isFirstSearch:Z

    .line 77
    iput-boolean v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->isLoaddingDatas:Z

    .line 80
    iput-boolean v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->isAllListItemShowInOnePage:Z

    .line 82
    iput-boolean v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mIsLoadNew:Z

    .line 84
    iput-boolean v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mIsAutoLoad:Z

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mGameList:Ljava/util/List;

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagGames:Ljava/util/List;

    .line 109
    iput-boolean v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->isScrolling:Z

    .line 111
    invoke-static {}, Lcom/youku/gamecenter/DelayNotifyHandler;->getInstance()Lcom/youku/gamecenter/DelayNotifyHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    .line 116
    invoke-virtual {p0, p1, p2, p3}, Lcom/youku/gamecenter/widgets/GameInfoListView;->initAdapter(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 117
    iput-object p3, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSource:Ljava/lang/String;

    .line 118
    iput p2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTabId:I

    .line 119
    sget v1, Lcom/youku/gamecenter/R$id;->gamecenter_group:I

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 121
    sget v1, Lcom/youku/gamecenter/R$id;->scrollcontainer:I

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mListView:Landroid/widget/ListView;

    .line 122
    sget v1, Lcom/youku/gamecenter/R$id;->game_activity_no_result_layout:I

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mNoResultView:Landroid/widget/RelativeLayout;

    .line 124
    sget v1, Lcom/youku/gamecenter/R$id;->tv_no_result:I

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mNoResultTextView:Landroid/widget/TextView;

    .line 125
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/youku/gamecenter/widgets/GameInfoListView;->initFootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mFootView:Landroid/view/View;

    .line 126
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 127
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mFootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 129
    if-eqz p4, :cond_0

    .line 130
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/widgets/GameInfoListView;->initHeader(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    .line 131
    .local v0, "header":Landroid/view/View;
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 133
    .end local v0    # "header":Landroid/view/View;
    :cond_0
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/widgets/GameInfoListView;->initPullToRefresh(I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;ILjava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "parentView"    # Landroid/view/View;
    .param p3, "tabId"    # I
    .param p4, "source"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getInstance()Lcom/youku/gamecenter/GameCenterModel;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    .line 64
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mHander:Landroid/os/Handler;

    .line 75
    iput-boolean v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->isFirstSearch:Z

    .line 77
    iput-boolean v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->isLoaddingDatas:Z

    .line 80
    iput-boolean v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->isAllListItemShowInOnePage:Z

    .line 82
    iput-boolean v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mIsLoadNew:Z

    .line 84
    iput-boolean v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mIsAutoLoad:Z

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mGameList:Ljava/util/List;

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagGames:Ljava/util/List;

    .line 109
    iput-boolean v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->isScrolling:Z

    .line 111
    invoke-static {}, Lcom/youku/gamecenter/DelayNotifyHandler;->getInstance()Lcom/youku/gamecenter/DelayNotifyHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    .line 139
    invoke-virtual {p0, p1, p3, p4}, Lcom/youku/gamecenter/widgets/GameInfoListView;->initAdapter(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 140
    iput-object p4, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSource:Ljava/lang/String;

    .line 141
    iput p3, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTabId:I

    .line 142
    sget v1, Lcom/youku/gamecenter/R$id;->gamecenter_group:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 144
    new-instance v3, Lcom/youku/gamecenter/widgets/LoadingView;

    iget-object v4, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mParentLayout:Landroid/widget/RelativeLayout;

    move-object v1, p1

    check-cast v1, Lcom/youku/gamecenter/GameCenterHomeActivity;

    sget v1, Lcom/youku/gamecenter/GameCenterHomeActivity;->mThemeType:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v3, p1, v4, v1}, Lcom/youku/gamecenter/widgets/LoadingView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Z)V

    iput-object v3, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    .line 148
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/youku/gamecenter/widgets/GameInfoListView;->initFootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mFootView:Landroid/view/View;

    .line 149
    sget v1, Lcom/youku/gamecenter/R$id;->scrollcontainer:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mListView:Landroid/widget/ListView;

    .line 150
    sget v1, Lcom/youku/gamecenter/R$id;->game_activity_no_result_layout:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mNoResultView:Landroid/widget/RelativeLayout;

    .line 152
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 153
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mFootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 155
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/widgets/GameInfoListView;->initHeader(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    .line 156
    .local v0, "header":Landroid/view/View;
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 157
    invoke-direct {p0, p3}, Lcom/youku/gamecenter/widgets/GameInfoListView;->initPullToRefresh(I)V

    .line 159
    return-void

    .end local v0    # "header":Landroid/view/View;
    :cond_0
    move v1, v2

    .line 144
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/widgets/GameInfoListView;)Lcom/youku/gamecenter/GameBaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/widgets/GameInfoListView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/widgets/GameInfoListView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/widgets/GameInfoListView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method private addIntervalFoot()V
    .locals 3

    .prologue
    .line 762
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$layout;->layout_game_rank_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSplitFooterView:Landroid/view/View;

    .line 764
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSplitFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 765
    return-void
.end method

.method private clearViews()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 602
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mListView:Landroid/widget/ListView;

    if-nez v2, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagCardView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 606
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagCardView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 607
    iput-object v4, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagCardView:Landroid/view/View;

    .line 609
    :cond_2
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSplitHeaderView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 610
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSplitHeaderView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 611
    iput-object v4, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSplitHeaderView:Landroid/view/View;

    .line 613
    :cond_3
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSplitFooterView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 614
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSplitFooterView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 615
    iput-object v4, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSplitFooterView:Landroid/view/View;

    .line 618
    :cond_4
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mFootView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 619
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 621
    .local v0, "title":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 623
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 625
    .local v1, "title2":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private fetchResponseDelay()V
    .locals 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mHander:Landroid/os/Handler;

    new-instance v1, Lcom/youku/gamecenter/widgets/GameInfoListView$2;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/widgets/GameInfoListView$2;-><init>(Lcom/youku/gamecenter/widgets/GameInfoListView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    return-void
.end method

.method public static getFootViewFaildTitleResId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 736
    invoke-static {p0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$string;->game_center_tips_no_network_retry:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 741
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

.method private getGameInfoByPositon(Ljava/util/List;I)Lcom/youku/gamecenter/data/GameInfo;
    .locals 2
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;I)",
            "Lcom/youku/gamecenter/data/GameInfo;"
        }
    .end annotation

    .prologue
    .local p1, "games":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    const/4 v0, 0x0

    .line 672
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-object v0

    .line 675
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 678
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfo;

    goto :goto_0
.end method

.method private getHeaderTagCardView()Landroid/view/View;
    .locals 3

    .prologue
    .line 757
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$layout;->layout_game_search_result_tag_games_card:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getNewValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 414
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, p1

    goto :goto_0
.end method

.method private handleLastPageRefresh()V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v1}, Lcom/youku/gamecenter/GameBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->tab_last_page_prompt:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/GameBaseActivity;->showNetTips(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method private hasNextPage()Z
    .locals 2

    .prologue
    .line 801
    iget v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mEndPage:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mPagecount:I

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
    .line 705
    sget v1, Lcom/youku/gamecenter/R$layout;->widget_game_loadding:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 707
    .local v0, "footView":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 709
    return-object v0
.end method

.method private initHeader(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 162
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_rank_header:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initPullToRefresh(I)V
    .locals 2
    .param p1, "tabId"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mNoResultView:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/youku/gamecenter/widgets/GameInfoListView$1;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/widgets/GameInfoListView$1;-><init>(Lcom/youku/gamecenter/widgets/GameInfoListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    return-void
.end method

.method private isTagGamesContains(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 367
    iget-object v3, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagGames:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagGames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 381
    :cond_0
    :goto_0
    return v2

    .line 370
    :cond_1
    iget-object v3, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagCardView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 373
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 376
    iget-object v3, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagGames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfo;

    .line 377
    .local v0, "game":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 378
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private loadNewPage(I)V
    .locals 5
    .param p1, "tabId"    # I

    .prologue
    const/4 v4, 0x1

    .line 196
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mIsAutoLoad:Z

    .line 198
    iget v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mEndPage:I

    iget v3, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mPagecount:I

    if-ne v2, v3, :cond_1

    .line 199
    iget v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mPagecount:I

    if-eq v2, v4, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->handleLastPageRefresh()V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v2}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, "url":Ljava/lang/String;
    iget v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mEndPage:I

    add-int/lit8 v0, v2, 0x1

    .line 208
    .local v0, "page":I
    packed-switch p1, :pswitch_data_0

    .line 224
    :goto_1
    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/widgets/GameInfoListView;->setUrl(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->fetchGameList()V

    goto :goto_0

    .line 210
    :pswitch_0
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSearchWord:Ljava/lang/String;

    const/16 v3, 0x28

    invoke-static {v2, v0, v3}, Lcom/youku/gamecenter/services/URLContainer;->getSearcResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 211
    goto :goto_1

    .line 214
    :pswitch_1
    iget v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mCategoryId:I

    invoke-static {v2, v0}, Lcom/youku/gamecenter/services/URLContainer;->getGameSubCategoryUrlByPage(II)Ljava/lang/String;

    move-result-object v1

    .line 216
    goto :goto_1

    .line 218
    :pswitch_2
    invoke-static {v0}, Lcom/youku/gamecenter/services/URLContainer;->getGameRankUrlByPage(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    goto :goto_1

    .line 227
    .end local v0    # "page":I
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    iput-boolean v4, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mIsAutoLoad:Z

    .line 228
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->setFootViewFaildTitle()V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private removeFootViewAndAddIntervalFootWhenNotHasNextPage()V
    .locals 2

    .prologue
    .line 747
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->hasNextPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mFootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 754
    :goto_0
    return-void

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 753
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->addIntervalFoot()V

    goto :goto_0
.end method

.method private sendSesrchResultTrack(Ljava/lang/String;I)V
    .locals 4
    .param p1, "searchWord"    # Ljava/lang/String;
    .param p2, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 443
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v2}, Lcom/youku/gamecenter/GameBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/youku/gamecenter/services/URLContainer;->GAME_SEARCH_STATISTICS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/youku/gamecenter/statistics/GameTrack;->setBaseParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&keyword="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "utf-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 447
    new-instance v0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v2}, Lcom/youku/gamecenter/GameBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 449
    .local v0, "statistics":Lcom/youku/gamecenter/statistics/GameStatisticsTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 450
    return-void
.end method

.method private setFootViewFaildTitle()V
    .locals 4

    .prologue
    .line 713
    iget v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mEndPage:I

    if-nez v2, :cond_0

    .line 723
    :goto_0
    return-void

    .line 717
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mFootView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 718
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 719
    .local v0, "title":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "title":Landroid/view/View;
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v2}, Lcom/youku/gamecenter/widgets/GameInfoListView;->getFootViewFaildTitleResId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 722
    .local v1, "title2":Landroid/view/View;
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "title2":Landroid/view/View;
    invoke-direct {p0, v2, v1}, Lcom/youku/gamecenter/widgets/GameInfoListView;->setTitle2Content(Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private setFootViewLoaddingTitle()V
    .locals 4

    .prologue
    .line 286
    iget v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mEndPage:I

    if-nez v2, :cond_0

    .line 295
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 291
    .local v0, "title":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "title":Landroid/view/View;
    sget v2, Lcom/youku/gamecenter/R$string;->game_center_tips_loadding:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 293
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 294
    .local v1, "title2":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTagCardGames(Landroid/view/View;Ljava/util/List;Z)V
    .locals 12
    .param p1, "tagCard"    # Landroid/view/View;
    .param p3, "onlyUpdatePart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, "tagGames":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 516
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    const/4 v8, 0x0

    invoke-direct {p0, p2, v8}, Lcom/youku/gamecenter/widgets/GameInfoListView;->getGameInfoByPositon(Ljava/util/List;I)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    .line 521
    .local v0, "game1":Lcom/youku/gamecenter/data/GameInfo;
    invoke-direct {p0, p2, v9}, Lcom/youku/gamecenter/widgets/GameInfoListView;->getGameInfoByPositon(Ljava/util/List;I)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v1

    .line 522
    .local v1, "game2":Lcom/youku/gamecenter/data/GameInfo;
    invoke-direct {p0, p2, v10}, Lcom/youku/gamecenter/widgets/GameInfoListView;->getGameInfoByPositon(Ljava/util/List;I)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v2

    .line 523
    .local v2, "game3":Lcom/youku/gamecenter/data/GameInfo;
    invoke-direct {p0, p2, v11}, Lcom/youku/gamecenter/widgets/GameInfoListView;->getGameInfoByPositon(Ljava/util/List;I)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v3

    .line 525
    .local v3, "game4":Lcom/youku/gamecenter/data/GameInfo;
    sget v8, Lcom/youku/gamecenter/R$id;->game_card_item_1:I

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 526
    .local v4, "item1":Landroid/view/View;
    sget v8, Lcom/youku/gamecenter/R$id;->game_card_item_2:I

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 527
    .local v5, "item2":Landroid/view/View;
    sget v8, Lcom/youku/gamecenter/R$id;->game_card_item_3:I

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 528
    .local v6, "item3":Landroid/view/View;
    sget v8, Lcom/youku/gamecenter/R$id;->game_card_item_4:I

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 530
    .local v7, "item4":Landroid/view/View;
    invoke-direct {p0, v0, v4, p3, v9}, Lcom/youku/gamecenter/widgets/GameInfoListView;->setTagCardItem(Lcom/youku/gamecenter/data/GameInfo;Landroid/view/View;ZI)V

    .line 531
    invoke-direct {p0, v1, v5, p3, v10}, Lcom/youku/gamecenter/widgets/GameInfoListView;->setTagCardItem(Lcom/youku/gamecenter/data/GameInfo;Landroid/view/View;ZI)V

    .line 532
    invoke-direct {p0, v2, v6, p3, v11}, Lcom/youku/gamecenter/widgets/GameInfoListView;->setTagCardItem(Lcom/youku/gamecenter/data/GameInfo;Landroid/view/View;ZI)V

    .line 533
    const/4 v8, 0x4

    invoke-direct {p0, v3, v7, p3, v8}, Lcom/youku/gamecenter/widgets/GameInfoListView;->setTagCardItem(Lcom/youku/gamecenter/data/GameInfo;Landroid/view/View;ZI)V

    goto :goto_0
.end method

.method private setTagCardItem(Lcom/youku/gamecenter/data/GameInfo;Landroid/view/View;ZI)V
    .locals 9
    .param p1, "game"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "item"    # Landroid/view/View;
    .param p3, "onlyUpdatePart"    # Z
    .param p4, "location"    # I

    .prologue
    .line 539
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 540
    :cond_0
    if-eqz p2, :cond_1

    .line 541
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 581
    :cond_1
    :goto_0
    return-void

    .line 547
    :cond_2
    sget v0, Lcom/youku/gamecenter/R$id;->game_action:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 548
    .local v6, "buttonView":Landroid/widget/TextView;
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v0, v0, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageTitleId:I

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    .line 549
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v1, v1, Lcom/youku/gamecenter/data/GameInfoStatus;->homeFragmnetButtonTextColorId:I

    invoke-static {v0, v1}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 551
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v0, v0, Lcom/youku/gamecenter/data/GameInfoStatus;->actionButtonBg:I

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 552
    if-nez p3, :cond_1

    .line 557
    sget v0, Lcom/youku/gamecenter/R$id;->game_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 558
    .local v5, "iconView":Landroid/widget/ImageView;
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayGameIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 562
    sget v0, Lcom/youku/gamecenter/R$id;->game_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 563
    .local v8, "titleView":Landroid/widget/TextView;
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    sget v0, Lcom/youku/gamecenter/R$id;->game_desc:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 567
    .local v7, "descView":Landroid/widget/TextView;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->short_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    new-instance v0, Lcom/youku/gamecenter/widgets/GameInfoListView$GameActionClickListener;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    const-string v3, "11"

    move-object v2, p1

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/youku/gamecenter/widgets/GameInfoListView$GameActionClickListener;-><init>(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILandroid/widget/ImageView;)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    new-instance v0, Lcom/youku/gamecenter/widgets/GameInfoListView$3;

    invoke-direct {v0, p0, p1}, Lcom/youku/gamecenter/widgets/GameInfoListView$3;-><init>(Lcom/youku/gamecenter/widgets/GameInfoListView;Lcom/youku/gamecenter/data/GameInfo;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private setTagCardTitleBar(Landroid/view/View;)V
    .locals 11
    .param p1, "tagCard"    # Landroid/view/View;

    .prologue
    .line 683
    sget v6, Lcom/youku/gamecenter/R$id;->card_top_title:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 685
    .local v5, "titleView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v6}, Lcom/youku/gamecenter/GameBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/youku/gamecenter/R$string;->game_search_result_tag_card_title:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 687
    .local v4, "title":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 689
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v6, -0xff5d01

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 691
    .local v0, "blueSpan":Landroid/text/style/ForegroundColorSpan;
    const-string/jumbo v6, "\u201c"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 692
    .local v3, "start":I
    iget-object v6, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v2, v6, 0x5

    .line 694
    .local v2, "end":I
    const/16 v6, 0x21

    invoke-virtual {v1, v0, v3, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 697
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    sget v6, Lcom/youku/gamecenter/R$id;->card_top_root:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mCardViewTop:Landroid/view/View;

    .line 700
    iget-object v6, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mCardViewTop:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    return-void
.end method

.method private setTagCardViewDatas(Lcom/youku/gamecenter/data/GameListInfo;)V
    .locals 3
    .param p1, "gameListInfo"    # Lcom/youku/gamecenter/data/GameListInfo;

    .prologue
    .line 497
    const-string v0, "GameCenter"

    const-string/jumbo v1, "updateUI->add headerView  mEndPage = 1"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameListInfo;->tag_games:Ljava/util/List;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagGames:Ljava/util/List;

    .line 501
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->getHeaderTagCardView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagCardView:Landroid/view/View;

    .line 503
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->initHeader(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSplitHeaderView:Landroid/view/View;

    .line 505
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagCardView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->setTagCardTitleBar(Landroid/view/View;)V

    .line 507
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagCardView:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagGames:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/youku/gamecenter/widgets/GameInfoListView;->setTagCardGames(Landroid/view/View;Ljava/util/List;Z)V

    .line 509
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagCardView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 510
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSplitHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 512
    return-void
.end method

.method private setTitle2Content(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Landroid/widget/TextView;

    .prologue
    .line 726
    invoke-static {p1}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 732
    :goto_0
    return-void

    .line 731
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private trackPageLoad()V
    .locals 9

    .prologue
    .line 421
    const/4 v2, 0x0

    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "pltype":Ljava/lang/String;
    const/4 v8, 0x0

    .line 422
    .local v8, "page":Ljava/lang/String;
    const-string v0, "10"

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    const-string/jumbo v2, "\u6392\u884c\u699c\u9875\u52a0\u8f7d"

    .line 424
    const-string v3, "gameTopLoad"

    .line 425
    const-string/jumbo v8, "\u6e38\u620f\u6392\u884c\u699c"

    .line 435
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    iget-wide v4, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static/range {v1 .. v8}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackPageLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 437
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mStartTime:J

    .line 438
    return-void

    .line 426
    :cond_1
    const-string v0, "9"

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    const-string/jumbo v2, "\u5206\u7c7b\u5217\u8868\u9875\u52a0\u8f7d"

    .line 428
    const-string v3, "gameSelectListLoad"

    .line 429
    const-string/jumbo v8, "\u6e38\u620f\u5206\u7c7b\u5217\u8868"

    goto :goto_0

    .line 430
    :cond_2
    const-string v0, "11"

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    const-string/jumbo v2, "\u641c\u7d22\u7ed3\u679c\u9875\u52a0\u8f7d"

    .line 432
    const-string v3, "gameresultLoad"

    .line 433
    const-string/jumbo v8, "\u6e38\u620f\u641c\u7d22\u7ed3\u679c"

    goto :goto_0
.end method

.method private updateUI(Lcom/youku/gamecenter/data/GameListInfo;Ljava/util/List;)V
    .locals 4
    .param p1, "gameListInfo"    # Lcom/youku/gamecenter/data/GameListInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/gamecenter/data/GameListInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "gameInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 453
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mGameList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 454
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mGameList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 455
    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameListInfo;->hasTagCard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mNoResultView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 457
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->setData(Ljava/util/List;)V

    .line 458
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-virtual {v1}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->notifyDataSetChanged()V

    .line 460
    :cond_0
    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameListInfo;->hasTagCard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    iget v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mEndPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mEndPage:I

    .line 462
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/widgets/GameInfoListView;->setTagCardViewDatas(Lcom/youku/gamecenter/data/GameListInfo;)V

    .line 465
    :cond_1
    const-string v1, "11"

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 467
    :try_start_0
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSearchWord:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/youku/gamecenter/widgets/GameInfoListView;->sendSesrchResultTrack(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :cond_2
    :goto_0
    return-void

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 474
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mNoResultView:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 476
    const-string v1, "11"

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 478
    :try_start_1
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSearchWord:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/youku/gamecenter/widgets/GameInfoListView;->sendSesrchResultTrack(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 483
    :cond_4
    :goto_1
    iget v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mEndPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mEndPage:I

    .line 484
    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameListInfo;->hasTagCard()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mEndPage:I

    if-ne v1, v3, :cond_5

    .line 485
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/widgets/GameInfoListView;->setTagCardViewDatas(Lcom/youku/gamecenter/data/GameListInfo;)V

    .line 487
    :cond_5
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameListInfo;->sort_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->setSortType(Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mGameList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->setData(Ljava/util/List;)V

    .line 491
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-virtual {v1}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 479
    :catch_1
    move-exception v0

    .line 480
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public clearDatas()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 589
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mEndPage:I

    .line 591
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagGames:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagGames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 595
    :cond_0
    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagName:Ljava/lang/String;

    .line 596
    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagId:Ljava/lang/String;

    .line 598
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->clearViews()V

    .line 599
    return-void
.end method

.method public fetchGameList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 238
    iput-boolean v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mIsAutoLoad:Z

    .line 240
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->isLoaddingDatas:Z

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mStartTime:J

    .line 246
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mNoResultView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    if-nez v0, :cond_2

    .line 250
    new-instance v0, Lcom/youku/gamecenter/widgets/LoadingView;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mParentLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {}, Lcom/youku/gamecenter/GameBaseActivity;->isYoukuApp()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/youku/gamecenter/widgets/LoadingView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Z)V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    iget-boolean v0, v0, Lcom/youku/gamecenter/widgets/LoadingView;->isAniStart:Z

    if-nez v0, :cond_0

    .line 258
    iget v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mEndPage:I

    if-nez v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->startAnimation()V

    .line 261
    :cond_3
    iput-boolean v4, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->isLoaddingDatas:Z

    .line 262
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->setFootViewLoaddingTitle()V

    .line 264
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->fetchResponseDelay()V

    goto :goto_0

    .line 266
    :cond_4
    iput-boolean v4, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mIsAutoLoad:Z

    .line 267
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->setFootViewFaildTitle()V

    .line 268
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mNoResultView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameBaseActivity;->showNetTipsAutomatic()V

    goto :goto_0
.end method

.method public getAdapter()Lcom/youku/gamecenter/adapter/GameRankAdapter;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    return-object v0
.end method

.method public initAdapter(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "tabId"    # I
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {p1}, Lcom/youku/gamecenter/util/UIUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mIsForTablet:Z

    .line 176
    check-cast p1, Lcom/youku/gamecenter/GameBaseActivity;

    .end local p1    # "context":Landroid/support/v4/app/FragmentActivity;
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    .line 177
    iput p2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mId:I

    .line 178
    new-instance v0, Lcom/youku/gamecenter/adapter/GameRankAdapter;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    iget-boolean v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mIsForTablet:Z

    iget v3, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mId:I

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/youku/gamecenter/adapter/GameRankAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;ZILjava/lang/String;)V

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    .line 179
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->isLoaddingDatas:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 806
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mFootView:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 807
    iget v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTabId:I

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->loadNewPage(I)V

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mCardViewTop:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 811
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    const-string/jumbo v1, "searchresult_page"

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagId:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameSubCategoryActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onDelayNotify()V
    .locals 2

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->isScrolling:Z

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/DelayNotifyHandler;->sendSimpleMessage(Lcom/youku/gamecenter/DelayNotifyHandler;I)V

    .line 639
    :goto_0
    return-void

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 4
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 316
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v1}, Lcom/youku/gamecenter/GameBaseActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->trackPageLoad()V

    .line 319
    iput-boolean v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->isLoaddingDatas:Z

    .line 320
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v1}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 322
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mGameList:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mGameList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 323
    :cond_2
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 324
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mNoResultView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 326
    const-string v1, "11"

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSearchWord:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/youku/gamecenter/widgets/GameInfoListView;->sendSesrchResultTrack(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->setFootViewFaildTitle()V

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 334
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 335
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mNoResultView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 336
    const-string v1, "11"

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 338
    :try_start_1
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSearchWord:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/youku/gamecenter/widgets/GameInfoListView;->sendSesrchResultTrack(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 339
    :catch_1
    move-exception v0

    .line 340
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public onGameInfoProgressChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/DelayNotifyHandler;->sendSimpleMessage(Lcom/youku/gamecenter/DelayNotifyHandler;I)V

    .line 364
    :cond_0
    return-void
.end method

.method public onGameInfoStatusChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->notifyDataSetChanged()V

    .line 353
    :cond_0
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/widgets/GameInfoListView;->isTagGamesContains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagCardView:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagGames:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/youku/gamecenter/widgets/GameInfoListView;->setTagCardGames(Landroid/view/View;Ljava/util/List;Z)V

    .line 356
    :cond_1
    return-void
.end method

.method public onNetworkAvailable()V
    .locals 2

    .prologue
    .line 820
    iget v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mEndPage:I

    iget v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mPagecount:I

    if-ne v0, v1, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    iget-boolean v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mIsAutoLoad:Z

    if-eqz v0, :cond_0

    .line 829
    iget v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTabId:I

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->loadNewPage(I)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 774
    if-eq p3, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->isAllListItemShowInOnePage:Z

    .line 775
    return-void

    .line 774
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 780
    if-eqz p2, :cond_1

    .line 781
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->isScrolling:Z

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->isScrolling:Z

    .line 788
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->isAllListItemShowInOnePage:Z

    if-eqz v0, :cond_0

    .line 791
    iget v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTabId:I

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->loadNewPage(I)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/youku/gamecenter/data/GameListInfo;)V
    .locals 5
    .param p1, "gameListInfo"    # Lcom/youku/gamecenter/data/GameListInfo;

    .prologue
    const/4 v4, 0x0

    .line 386
    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameListInfo;->getPageCount()I

    move-result v1

    iput v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mPagecount:I

    .line 387
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v1}, Lcom/youku/gamecenter/GameBaseActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->trackPageLoad()V

    .line 390
    iput-boolean v4, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->isLoaddingDatas:Z

    .line 391
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v1}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 392
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 393
    if-eqz p1, :cond_3

    .line 394
    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameListInfo;->getGameList()Ljava/util/List;

    move-result-object v0

    .line 395
    .local v0, "gameInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameListInfo;->tag_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagId:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/youku/gamecenter/widgets/GameInfoListView;->getNewValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagId:Ljava/lang/String;

    .line 396
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameListInfo;->tag_name:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/youku/gamecenter/widgets/GameInfoListView;->getNewValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTagName:Ljava/lang/String;

    .line 397
    if-eqz v0, :cond_2

    .line 398
    iget v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mTabId:I

    if-nez v1, :cond_2

    .line 399
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mNoResultTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mContext:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v2}, Lcom/youku/gamecenter/GameBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/youku/gamecenter/R$string;->str_no_search_result:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-boolean v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->isFirstSearch:Z

    if-eqz v1, :cond_2

    .line 402
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mGameList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 403
    iput-boolean v4, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->isFirstSearch:Z

    .line 407
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->updateUI(Lcom/youku/gamecenter/data/GameListInfo;Ljava/util/List;)V

    .line 409
    .end local v0    # "gameInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    :cond_3
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/GameInfoListView;->removeFootViewAndAddIntervalFootWhenNotHasNextPage()V

    .line 410
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-virtual {v1}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public registerReceivers()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->addOnGameInfoChangedListener(Lcom/youku/gamecenter/OnGameInfoChangedListener;)V

    .line 304
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->addOnNetworkStateChangeReceiver(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;)V

    .line 305
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/DelayNotifyHandler;->addListener(ILcom/youku/gamecenter/DelayNotifyHandler$OnDelayNotifyListener;)V

    .line 306
    return-void
.end method

.method public setCategoryId(I)V
    .locals 1
    .param p1, "mCategoryId"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mCategoryId:I

    .line 167
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->setCategoryId(I)V

    .line 168
    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 833
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->setCategoryName(Ljava/lang/String;)V

    .line 834
    return-void
.end method

.method public setIsFirstSearch(Z)V
    .locals 0
    .param p1, "isFirst"    # Z

    .prologue
    .line 797
    iput-boolean p1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->isFirstSearch:Z

    .line 798
    return-void
.end method

.method public setSearchWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSearchWord"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mSearchWord:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 768
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mUrl:Ljava/lang/String;

    .line 769
    return-void
.end method

.method public unRegisterReceivers()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->removeOnGameInfoChangedListener(Lcom/youku/gamecenter/OnGameInfoChangedListener;)V

    .line 310
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->removeOnNetworkStateChangeReceiver(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;)V

    .line 311
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameInfoListView;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/DelayNotifyHandler;->removeListener(I)V

    .line 312
    return-void
.end method

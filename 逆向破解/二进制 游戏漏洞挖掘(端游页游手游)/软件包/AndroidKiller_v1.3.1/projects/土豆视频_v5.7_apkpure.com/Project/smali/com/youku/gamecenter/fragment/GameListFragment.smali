.class public abstract Lcom/youku/gamecenter/fragment/GameListFragment;
.super Lcom/youku/gamecenter/fragment/GameRequestFragment;
.source "GameListFragment.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetExtendPageService$OnExtendPageServiceListener;
.implements Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase$OnGalleryHandleActionListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/youku/gamecenter/DelayNotifyHandler$OnDelayNotifyListener;


# instance fields
.field private TAG_PLAYFLOW:Ljava/lang/String;

.field private isAllListItemShowInOnePage:Z

.field private mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

.field private mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

.field mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

.field private mFootView:Landroid/view/View;

.field private mGames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mShortFooterView:Landroid/view/View;

.field private mSliderSource:Ljava/lang/String;

.field private mSlides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;-><init>()V

    .line 36
    const-string v0, "PlayFlow"

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->TAG_PLAYFLOW:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mSlides:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mGames:Ljava/util/List;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->isAllListItemShowInOnePage:Z

    .line 54
    invoke-static {}, Lcom/youku/gamecenter/DelayNotifyHandler;->getInstance()Lcom/youku/gamecenter/DelayNotifyHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    return-void
.end method

.method private addGames(Lcom/youku/gamecenter/data/ExtendPageInfo;)V
    .locals 2
    .param p1, "extendPageInfo"    # Lcom/youku/gamecenter/data/ExtendPageInfo;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mGames:Ljava/util/List;

    iget-object v1, p1, Lcom/youku/gamecenter/data/ExtendPageInfo;->games:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 235
    return-void
.end method

.method private addHeaderView()V
    .locals 4

    .prologue
    .line 269
    iget v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mEndPage:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/youku/gamecenter/fragment/GameListFragment;->addHeader(Landroid/widget/ListView;Landroid/view/LayoutInflater;)V

    .line 275
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->hasSlides()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mSlides:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->initPoints(I)V

    .line 280
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mSlides:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mSliderSource:Ljava/lang/String;

    sget v3, Lcom/youku/gamecenter/R$dimen;->card_margin_22dp:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->setAdapterData(Lcom/youku/gamecenter/fragment/GameBaseFragment;Ljava/util/List;Ljava/lang/String;I)V

    .line 281
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->setVisibility(I)V

    goto :goto_0
.end method

.method private addIntervalFoot()V
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$layout;->layout_game_rank_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mShortFooterView:Landroid/view/View;

    .line 383
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mShortFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 384
    return-void
.end method

.method private addSlides(Lcom/youku/gamecenter/data/ExtendPageInfo;)V
    .locals 1
    .param p1, "extendPageInfo"    # Lcom/youku/gamecenter/data/ExtendPageInfo;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mSlides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p1, Lcom/youku/gamecenter/data/ExtendPageInfo;->slides:Ljava/util/List;

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mSlides:Ljava/util/List;

    goto :goto_0
.end method

.method private hasSlides()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mSlides:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mSlides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

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
    .line 161
    sget v1, Lcom/youku/gamecenter/R$layout;->widget_game_loadding:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "footView":Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    return-object v0
.end method

.method private notifyAutoSlideGalleryDataChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 418
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->containsGame(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->notifyDataChanged()V

    goto :goto_0
.end method

.method private removeFootViewAndAddIntervalFootWhenNotHasNextPage()V
    .locals 2

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->hasNextPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mFootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 378
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->addIntervalFoot()V

    goto :goto_0
.end method

.method private setFootViewFaildTitle()V
    .locals 4

    .prologue
    .line 350
    iget v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mEndPage:I

    if-nez v2, :cond_0

    .line 359
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 355
    .local v0, "title":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "title":Landroid/view/View;
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->isNetWorkAvaliable()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/youku/gamecenter/fragment/GameListFragment;->getFootViewFaildTitleResId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 358
    .local v1, "title2":Landroid/view/View;
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "title2":Landroid/view/View;
    invoke-direct {p0, v2, v1}, Lcom/youku/gamecenter/fragment/GameListFragment;->setTitle2Content(Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private setFootViewLoaddingTitle()V
    .locals 4

    .prologue
    .line 149
    iget v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mEndPage:I

    if-nez v2, :cond_0

    .line 158
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, "title":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "title":Landroid/view/View;
    sget v2, Lcom/youku/gamecenter/R$string;->game_center_tips_loadding:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 156
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 157
    .local v1, "title2":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSortType(Lcom/youku/gamecenter/data/ExtendPageInfo;)V
    .locals 2
    .param p1, "extendPageInfo"    # Lcom/youku/gamecenter/data/ExtendPageInfo;

    .prologue
    .line 298
    iget-object v0, p1, Lcom/youku/gamecenter/data/ExtendPageInfo;->sort_type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    iget-object v1, p1, Lcom/youku/gamecenter/data/ExtendPageInfo;->sort_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->setSortType(Ljava/lang/String;)V

    .line 301
    :cond_0
    return-void
.end method

.method private setTitle2Content(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Landroid/widget/TextView;

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->isNetWorkAvaliable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    :goto_0
    return-void

    .line 367
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDatas(Lcom/youku/gamecenter/data/ExtendPageInfo;)V
    .locals 2
    .param p1, "extendPageInfo"    # Lcom/youku/gamecenter/data/ExtendPageInfo;

    .prologue
    .line 286
    invoke-super {p0, p1}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->updateDatas(Lcom/youku/gamecenter/data/IResponseable;)V

    .line 288
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/fragment/GameListFragment;->addSlides(Lcom/youku/gamecenter/data/ExtendPageInfo;)V

    .line 290
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/fragment/GameListFragment;->addGames(Lcom/youku/gamecenter/data/ExtendPageInfo;)V

    .line 292
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/fragment/GameListFragment;->setSortType(Lcom/youku/gamecenter/data/ExtendPageInfo;)V

    .line 294
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mGames:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->setData(Ljava/util/List;)V

    .line 295
    return-void
.end method


# virtual methods
.method protected addHeader(Landroid/widget/ListView;Landroid/view/LayoutInflater;)V
    .locals 5
    .param p1, "listview"    # Landroid/widget/ListView;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 78
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->hasSlides()Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    sget v2, Lcom/youku/gamecenter/R$layout;->layout_game_rank_header:I

    invoke-virtual {p2, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "header":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 94
    .end local v0    # "header":Landroid/view/View;
    :goto_0
    return-void

    .line 85
    :cond_0
    sget v2, Lcom/youku/gamecenter/R$layout;->layout_game_autoslidegallery:I

    invoke-virtual {p2, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    iput-object v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    .line 87
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    invoke-virtual {v2, p0}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->init(Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase$OnGalleryHandleActionListener;)V

    .line 88
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->setVisibility(I)V

    .line 90
    sget v2, Lcom/youku/gamecenter/R$layout;->layout_game_extendpage_gallery_bottom:I

    invoke-virtual {p2, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, "splitView":Landroid/view/View;
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 92
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected clearCurrentDatas()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 448
    iput v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mEndPage:I

    .line 449
    iput v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mPageCount:I

    .line 451
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mGames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 453
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mGames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfo;

    .line 172
    .local v0, "game":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v2, v0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    const/4 v2, 0x1

    .line 176
    .end local v0    # "game":Lcom/youku/gamecenter/data/GameInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected doRequest(I)V
    .locals 3
    .param p1, "page"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/fragment/GameListFragment;->getURL(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/gamecenter/services/GetExtendPageService;

    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/youku/gamecenter/services/GetExtendPageService;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "service":Lcom/youku/gamecenter/services/GetExtendPageService;
    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/services/GetExtendPageService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    .line 73
    return-void
.end method

.method public getFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    const-string v0, "extent_fragment"

    return-object v0
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 102
    sget v0, Lcom/youku/gamecenter/R$layout;->fragment_game_extendpage:I

    return v0
.end method

.method protected getPageCount(Lcom/youku/gamecenter/data/IResponseable;)I
    .locals 2
    .param p1, "data"    # Lcom/youku/gamecenter/data/IResponseable;

    .prologue
    .line 304
    move-object v0, p1

    check-cast v0, Lcom/youku/gamecenter/data/ExtendPageInfo;

    .line 305
    .local v0, "extendPageInfo":Lcom/youku/gamecenter/data/ExtendPageInfo;
    iget v1, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mEndPage:I

    if-nez v1, :cond_0

    .line 306
    iget v1, v0, Lcom/youku/gamecenter/data/ExtendPageInfo;->page_count:I

    .line 309
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mPageCount:I

    goto :goto_0
.end method

.method protected initViews(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->getLayout()I

    move-result v2

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, "v":Landroid/view/View;
    sget v2, Lcom/youku/gamecenter/R$id;->gamecenter_group_for_pad:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 111
    .local v0, "parentLayout":Landroid/widget/RelativeLayout;
    sget v2, Lcom/youku/gamecenter/R$id;->scrollcontainer:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mListView:Landroid/widget/ListView;

    .line 113
    invoke-direct {p0, p1, v7}, Lcom/youku/gamecenter/fragment/GameListFragment;->initFootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mFootView:Landroid/view/View;

    .line 115
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 117
    new-instance v2, Lcom/youku/gamecenter/adapter/GameRankAdapter;

    iget-object v3, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->getTabId()I

    move-result v4

    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/youku/gamecenter/adapter/GameRankAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;ZILjava/lang/String;)V

    iput-object v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    .line 118
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mFootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 119
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 122
    invoke-virtual {p0, v1, v0}, Lcom/youku/gamecenter/fragment/GameListFragment;->initBaseViews(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 124
    return-object v1
.end method

.method protected isGamesValid()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mGames:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mGames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadDatas()V
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mEndPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/fragment/GameListFragment;->fetchGameListByPage(I)V

    .line 99
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 405
    invoke-super {p0, p1}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->onClick(Landroid/view/View;)V

    .line 406
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mFootView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->loadDatas()V

    .line 410
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/DelayNotifyHandler;->addListener(ILcom/youku/gamecenter/DelayNotifyHandler$OnDelayNotifyListener;)V

    .line 60
    return-void
.end method

.method public onDelayNotify()V
    .locals 2

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->isFragmentVisibleToUser:Z

    if-nez v0, :cond_0

    .line 465
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->isScrolling:Z

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/DelayNotifyHandler;->sendSimpleMessage(Lcom/youku/gamecenter/DelayNotifyHandler;I)V

    goto :goto_0

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->onDestroy()V

    .line 65
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/DelayNotifyHandler;->removeListener(I)V

    .line 66
    return-void
.end method

.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 2
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->trackPageLoad()V

    .line 319
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

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/fragment/GameListFragment;->dumpLogs(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->setLoadingFailedDatas()V

    .line 323
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->setLoadingFailedView()V

    goto :goto_0
.end method

.method public onGameInfoProgressChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/fragment/GameListFragment;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/DelayNotifyHandler;->sendSimpleMessage(Lcom/youku/gamecenter/DelayNotifyHandler;I)V

    .line 341
    :cond_0
    return-void
.end method

.method public onGameInfoStatusChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/fragment/GameListFragment;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->notifyDataSetChanged()V

    .line 333
    :cond_0
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/fragment/GameListFragment;->notifyAutoSlideGalleryDataChanged(Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mSlides:Ljava/util/List;

    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mSlides:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int v2, p3, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfo;

    .line 209
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->slider_h5_activity:Ljava/util/Map;

    const-string v2, "extent_fragment"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->slider_h5_activity:Ljava/util/Map;

    const-string v3, "extent_fragment"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;->url:Ljava/lang/String;

    const-string v3, "39"

    invoke-static {v2, v1, v0, v3}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchWebActivityWithGameInfo(Landroid/content/Context;Ljava/lang/String;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mSliderSource:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleSliderClickAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    invoke-virtual {v0, p3}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->handleItemSelected(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->cancelAutoSlide()V

    .line 186
    :cond_0
    invoke-super {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->onPause()V

    .line 187
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->startAutoSlide()V

    .line 196
    :cond_0
    invoke-super {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->onResume()V

    .line 197
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 346
    if-eq p3, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->isAllListItemShowInOnePage:Z

    .line 347
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 389
    if-eqz p2, :cond_1

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->isScrolling:Z

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->isScrolling:Z

    .line 397
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->isAllListItemShowInOnePage:Z

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->loadDatas()V

    goto :goto_0
.end method

.method public onSuccess(Lcom/youku/gamecenter/data/ExtendPageInfo;)V
    .locals 1
    .param p1, "extendPageInfo"    # Lcom/youku/gamecenter/data/ExtendPageInfo;

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->trackPageLoad()V

    .line 251
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/fragment/GameListFragment;->updateDatas(Lcom/youku/gamecenter/data/ExtendPageInfo;)V

    .line 253
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->updateUI()V

    goto :goto_0
.end method

.method protected setLoadingFailedView()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->setLoadingFailedView()V

    .line 133
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->setFootViewFaildTitle()V

    .line 134
    return-void
.end method

.method protected setLoadingView(Z)V
    .locals 0
    .param p1, "showLoading"    # Z

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->setLoadingView(Z)V

    .line 138
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->setFootViewLoaddingTitle()V

    .line 139
    return-void
.end method

.method protected setSliderSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mSliderSource:Ljava/lang/String;

    .line 432
    return-void
.end method

.method protected updateFooterView()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mShortFooterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mShortFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 440
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mFootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 443
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->notifyDataSetChanged()V

    .line 444
    return-void
.end method

.method protected updateUI()V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->updateUI()V

    .line 259
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->addHeaderView()V

    .line 261
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameListFragment;->removeFootViewAndAddIntervalFootWhenNotHasNextPage()V

    .line 263
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameListFragment;->mAdapter:Lcom/youku/gamecenter/adapter/GameRankAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/GameRankAdapter;->notifyDataSetChanged()V

    .line 265
    return-void
.end method

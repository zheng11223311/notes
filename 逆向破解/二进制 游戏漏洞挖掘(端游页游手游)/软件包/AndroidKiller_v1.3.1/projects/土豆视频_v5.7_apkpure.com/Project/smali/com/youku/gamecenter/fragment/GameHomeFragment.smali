.class public Lcom/youku/gamecenter/fragment/GameHomeFragment;
.super Lcom/youku/gamecenter/fragment/GameRequestFragment;
.source "GameHomeFragment.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetHomePageService$OnHomePageServiceListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase$OnGalleryHandleActionListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/youku/gamecenter/outer/InstallablePromptHelper$OnInstallablePromptGotListener;
.implements Lcom/youku/gamecenter/DelayNotifyHandler$OnDelayNotifyListener;


# static fields
.field public static scale:F


# instance fields
.field private mActivitiesEntryView:Landroid/view/View;

.field private mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

.field private mBoxAdapter:Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;

.field private mBoxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/IGameHomeCardAble;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

.field private mEntryView:Landroid/widget/LinearLayout;

.field private mFootView:Landroid/view/View;

.field private mHeaderPageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

.field private mKey:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mMyGames:Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;

.field private mNetEntryView:Landroid/view/View;

.field private mParentLayout:Landroid/widget/RelativeLayout;

.field private mPromptHelper:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

.field private mRecGames:Lcom/youku/gamecenter/data/HomePageRecomInfo;

.field private mSingleEntryView:Landroid/view/View;

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

.field private mSubjectEntryView:Landroid/view/View;

.field private mUninstallGames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoEntryView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBoxes:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mUninstallGames:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mSlides:Ljava/util/List;

    .line 95
    invoke-static {}, Lcom/youku/gamecenter/DelayNotifyHandler;->getInstance()Lcom/youku/gamecenter/DelayNotifyHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    return-void
.end method

.method private addHeaderView()V
    .locals 4

    .prologue
    .line 251
    iget v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mEndPage:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->addHeader(Landroid/widget/ListView;Landroid/view/LayoutInflater;)V

    .line 257
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->hasSlides()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mSlides:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->initPoints(I)V

    .line 262
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mSlides:Ljava/util/List;

    const-string v2, "8"

    sget v3, Lcom/youku/gamecenter/R$dimen;->card_margin_32dp:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->setAdapterData(Lcom/youku/gamecenter/fragment/GameBaseFragment;Ljava/util/List;Ljava/lang/String;I)V

    .line 263
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->setVisibility(I)V

    goto :goto_0
.end method

.method private addIntervalFoot()V
    .locals 4

    .prologue
    .line 735
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$layout;->layout_game_rank_header:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 736
    .local v0, "foot":Landroid/view/View;
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 737
    return-void
.end method

.method private combineDatas()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/IGameHomeCardAble;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBoxes:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBoxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 150
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    :goto_0
    return-object v0

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBoxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, 0x2

    .line 155
    .local v1, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/IGameHomeCardAble;>;"
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mMyGames:Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;

    if-eqz v2, :cond_2

    .line 158
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mMyGames:Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mRecGames:Lcom/youku/gamecenter/data/HomePageRecomInfo;

    if-eqz v2, :cond_3

    .line 161
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mRecGames:Lcom/youku/gamecenter/data/HomePageRecomInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_3
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBoxes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private computeDownloadDatas(Lcom/youku/gamecenter/data/HomePageRecomInfo;)V
    .locals 8
    .param p1, "data"    # Lcom/youku/gamecenter/data/HomePageRecomInfo;

    .prologue
    .line 309
    iget-object v6, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v6}, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->queryHomeRecomNextShow(Landroid/content/Context;)Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;

    move-result-object v3

    .line 312
    .local v3, "pair":Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;
    if-nez v3, :cond_0

    .line 313
    iget-object v6, p1, Lcom/youku/gamecenter/data/HomePageRecomInfo;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 339
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v6, v3, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;->game_showtimes:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->parseIntValue(Ljava/lang/String;)I

    move-result v5

    .line 319
    .local v5, "showtimes":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v4, "removedList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;>;"
    iget-object v6, p1, Lcom/youku/gamecenter/data/HomePageRecomInfo;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;

    .line 322
    .local v1, "item":Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;
    iget-object v6, v1, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;->detail:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v6, v6, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    iget-object v7, v3, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;->game_packagename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 325
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 328
    .end local v1    # "item":Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;

    .line 329
    .restart local v1    # "item":Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;
    iget-object v6, p1, Lcom/youku/gamecenter/data/HomePageRecomInfo;->list:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 332
    .end local v1    # "item":Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 334
    add-int/lit8 v6, v5, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "newTimes":Ljava/lang/String;
    iget-object v6, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v7, v3, Lcom/youku/gamecenter/providers/GameCenterProviderHelper$GameExtraPair;->id:Ljava/lang/String;

    invoke-static {v6, v7, v2}, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->markHomeRecomGameShowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private computeMyGames(Ljava/lang/String;)Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;
    .locals 6
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->computeUninstallGames(Ljava/lang/String;)V

    .line 445
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v3, "removedList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    iget-object v4, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mUninstallGames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 448
    .local v1, "game":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v4, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v5, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_DONE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v4, v5, :cond_0

    iget-object v4, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v5, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_INSTALLED:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v4, v5, :cond_0

    .line 452
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 455
    .end local v1    # "game":Lcom/youku/gamecenter/data/GameInfo;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 456
    .restart local v1    # "game":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v4, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mUninstallGames:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 459
    .end local v1    # "game":Lcom/youku/gamecenter/data/GameInfo;
    :cond_2
    iget-object v4, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mUninstallGames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 460
    const/4 v0, 0x0

    .line 466
    :goto_2
    return-object v0

    .line 463
    :cond_3
    new-instance v0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;

    invoke-direct {v0}, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;-><init>()V

    .line 464
    .local v0, "data":Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;
    const-string/jumbo v4, "\u6211\u7684\u6e38\u620f"

    iput-object v4, v0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->card_title:Ljava/lang/String;

    .line 465
    iget-object v4, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mUninstallGames:Ljava/util/List;

    iput-object v4, v0, Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;->list:Ljava/util/List;

    goto :goto_2
.end method

.method private computeRecomGames()Lcom/youku/gamecenter/data/HomePageRecomInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 278
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->isValidDatas()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 304
    :goto_0
    return-object v0

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mHeaderPageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/data/HomePageInfo;->editor_recs:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/HomePageRecomInfo;

    .line 286
    .local v0, "homePageRecomInfo":Lcom/youku/gamecenter/data/HomePageRecomInfo;
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->isNewDownloadList(Lcom/youku/gamecenter/data/HomePageRecomInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->deleteDownloadingRecord()V

    .line 292
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->saveResultDatas(Lcom/youku/gamecenter/data/HomePageRecomInfo;)V

    .line 295
    :cond_1
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->inflateRecomDatas(Lcom/youku/gamecenter/data/HomePageRecomInfo;)V

    .line 297
    iget-object v2, v0, Lcom/youku/gamecenter/data/HomePageRecomInfo;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    .line 298
    goto :goto_0

    .line 302
    :cond_2
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->computeDownloadDatas(Lcom/youku/gamecenter/data/HomePageRecomInfo;)V

    goto :goto_0
.end method

.method private computeUninstallGames(Ljava/lang/String;)V
    .locals 3
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 471
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    invoke-static {p1}, Lcom/youku/gamecenter/GameCenterModel;->getGameInfoByPackageName(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    .line 477
    .local v0, "changedGame":Lcom/youku/gamecenter/data/GameInfo;
    if-eqz v0, :cond_0

    .line 481
    iget-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_NEW:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v1, v2, :cond_0

    .line 483
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getInstance()Lcom/youku/gamecenter/GameCenterModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/gamecenter/GameCenterModel;->getGameHomePromptData()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mUninstallGames:Ljava/util/List;

    goto :goto_0
.end method

.method private deleteDownloadingRecord()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->deleteHomeRecomDownloadlist(Landroid/content/Context;)V

    .line 353
    return-void
.end method

.method private getPackageNames(Lcom/youku/gamecenter/data/HomePageRecomInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "data"    # Lcom/youku/gamecenter/data/HomePageRecomInfo;

    .prologue
    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p1, Lcom/youku/gamecenter/data/HomePageRecomInfo;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 388
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 390
    iget-object v5, p1, Lcom/youku/gamecenter/data/HomePageRecomInfo;->list:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;

    .line 391
    .local v1, "item":Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;
    iget-object v5, v1, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;->detail:Lcom/youku/gamecenter/data/GameInfo;

    if-nez v5, :cond_0

    .line 388
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    :cond_0
    iget-object v5, v1, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;->detail:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v5, v5, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    add-int/lit8 v5, v3, -0x1

    if-ne v0, v5, :cond_1

    const-string v4, ""

    .line 399
    .local v4, "split":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 397
    .end local v4    # "split":Ljava/lang/String;
    :cond_1
    const-string v4, ","

    goto :goto_2

    .line 403
    .end local v1    # "item":Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private handleGameChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->computeMyGames(Ljava/lang/String;)Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mMyGames:Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;

    .line 173
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBoxAdapter:Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;

    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->combineDatas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->setData(Ljava/util/List;)V

    .line 175
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBoxAdapter:Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->notifyDataSetChanged()V

    .line 177
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->notifyAutoSlideGalleryDataChanged(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method private hasSlides()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mSlides:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mSlides:Ljava/util/List;

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

.method private inflateRecomDatas(Lcom/youku/gamecenter/data/HomePageRecomInfo;)V
    .locals 5
    .param p1, "homePageRecomInfo"    # Lcom/youku/gamecenter/data/HomePageRecomInfo;

    .prologue
    .line 417
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/youku/gamecenter/data/HomePageRecomInfo;->list:Ljava/util/List;

    if-nez v3, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v2, "removedList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;>;"
    iget-object v3, p1, Lcom/youku/gamecenter/data/HomePageRecomInfo;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;

    .line 423
    .local v1, "item":Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;
    iget-object v3, v1, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;->detail:Lcom/youku/gamecenter/data/GameInfo;

    if-nez v3, :cond_3

    .line 424
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 427
    :cond_3
    iget-object v3, v1, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;->detail:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v4, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_NEW:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v3, v4, :cond_2

    .line 428
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 433
    .end local v1    # "item":Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;

    .line 434
    .restart local v1    # "item":Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;
    iget-object v3, p1, Lcom/youku/gamecenter/data/HomePageRecomInfo;->list:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 435
    iget-object v3, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v4, v1, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;->detail:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v4, v4, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->deleteHomeRecomDownloadItem(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 438
    .end local v1    # "item":Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private inflateRootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 663
    sget v0, Lcom/youku/gamecenter/R$layout;->fragment_game_homepage_new:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initAutoSlideoGallery()Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;
    .locals 5

    .prologue
    .line 696
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$layout;->layout_game_autoslidegallery:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    .line 699
    .local v0, "autoSlideGallery":Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;
    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->init(Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase$OnGalleryHandleActionListener;)V

    .line 700
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->setVisibility(I)V

    .line 702
    return-object v0
.end method

.method private initConfigs()V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->scale:F

    .line 107
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mPromptHelper:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    .line 108
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mPromptHelper:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->addListener(Lcom/youku/gamecenter/outer/InstallablePromptHelper$OnInstallablePromptGotListener;)V

    .line 109
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/DelayNotifyHandler;->addListener(ILcom/youku/gamecenter/DelayNotifyHandler$OnDelayNotifyListener;)V

    .line 110
    return-void
.end method

.method private initDatas()V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getInstance()Lcom/youku/gamecenter/GameCenterModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameCenterModel;->getGameHomePromptData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mUninstallGames:Ljava/util/List;

    .line 114
    new-instance v0, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-direct {v0, v1}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBoxAdapter:Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;

    .line 115
    return-void
.end method

.method private initEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/widget/LinearLayout;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 706
    sget v1, Lcom/youku/gamecenter/R$layout;->layout_gamecenter_homepage_entry:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 708
    .local v0, "entryView":Landroid/widget/LinearLayout;
    sget v1, Lcom/youku/gamecenter/R$id;->game_homepage_entry_single:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mSingleEntryView:Landroid/view/View;

    .line 709
    sget v1, Lcom/youku/gamecenter/R$id;->game_homepage_entry_net:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mNetEntryView:Landroid/view/View;

    .line 710
    sget v1, Lcom/youku/gamecenter/R$id;->game_homepage_entry_activities:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mActivitiesEntryView:Landroid/view/View;

    .line 711
    sget v1, Lcom/youku/gamecenter/R$id;->game_homepage_entry_subject:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mSubjectEntryView:Landroid/view/View;

    .line 712
    sget v1, Lcom/youku/gamecenter/R$id;->game_homepage_entry_video:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mVideoEntryView:Landroid/view/View;

    .line 714
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mSingleEntryView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 715
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mNetEntryView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mActivitiesEntryView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mSubjectEntryView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mVideoEntryView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    return-object v0
.end method

.method private initFootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 673
    sget v1, Lcom/youku/gamecenter/R$layout;->widget_game_loadding:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 675
    .local v0, "footView":Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 676
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    return-object v0
.end method

.method private initListView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/widget/ListView;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 682
    sget v1, Lcom/youku/gamecenter/R$id;->scrollcontainer:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 685
    .local v0, "listview":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 687
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 689
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBoxAdapter:Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 690
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 692
    return-object v0
.end method

.method private initParentView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p1, "rootview"    # Landroid/view/View;

    .prologue
    .line 668
    sget v0, Lcom/youku/gamecenter/R$id;->gamecenter_group_for_pad:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static insertExistRecomGames(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "game_id"    # Ljava/lang/String;
    .param p3, "game_package"    # Ljava/lang/String;
    .param p4, "game_showtimes"    # Ljava/lang/String;

    .prologue
    .line 377
    invoke-static {p0, p1, p2, p3, p4}, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->insertHomeRecomGames(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method private isNewDownloadList(Lcom/youku/gamecenter/data/HomePageRecomInfo;)Z
    .locals 3
    .param p1, "data"    # Lcom/youku/gamecenter/data/HomePageRecomInfo;

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->getPackageNames(Lcom/youku/gamecenter/data/HomePageRecomInfo;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "newKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v2}, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->getHomeDialogDownloadListKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "oldKey":Ljava/lang/String;
    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mKey:Ljava/lang/String;

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    const/4 v2, 0x0

    .line 348
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isValidDatas()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 407
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mHeaderPageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    if-nez v1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return v0

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mHeaderPageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/HomePageInfo;->editor_recs:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mHeaderPageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/HomePageInfo;->editor_recs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyAutoSlideGalleryDataChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 786
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->containsGame(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->notifyDataChanged()V

    goto :goto_0
.end method

.method private parseIntValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "times"    # Ljava/lang/String;

    .prologue
    .line 357
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 361
    :goto_0
    return v1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 361
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private removeFootViewAndAddIntervalFootWhenNotHasNextPage()V
    .locals 2

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->hasNextPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mFootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 732
    :goto_0
    return-void

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 731
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->addIntervalFoot()V

    goto :goto_0
.end method

.method private saveResultDatas(Lcom/youku/gamecenter/data/HomePageRecomInfo;)V
    .locals 8
    .param p1, "homePageRecomInfo"    # Lcom/youku/gamecenter/data/HomePageRecomInfo;

    .prologue
    .line 365
    iget-object v2, p1, Lcom/youku/gamecenter/data/HomePageRecomInfo;->list:Ljava/util/List;

    .line 366
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;

    .line 367
    .local v1, "item":Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;->detail:Lcom/youku/gamecenter/data/GameInfo;

    if-eqz v3, :cond_0

    .line 370
    iget-object v3, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v4, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mKey:Ljava/lang/String;

    iget-object v5, v1, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;->detail:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v5, v5, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    iget-object v6, v1, Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;->detail:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v6, v6, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    const-string v7, "0"

    invoke-static {v3, v4, v5, v6, v7}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->insertExistRecomGames(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 373
    .end local v1    # "item":Lcom/youku/gamecenter/data/HomePageRecomInfo$GameEdiorRecs;
    :cond_1
    return-void
.end method

.method private sendClickTrack(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/youku/gamecenter/services/URLContainer;->GAME_PAGE_STATISTICS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/youku/gamecenter/statistics/GameTrack;->setBaseParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 813
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&location_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 814
    new-instance v0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;

    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 816
    .local v0, "statistics":Lcom/youku/gamecenter/statistics/GameStatisticsTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 817
    return-void
.end method

.method private setFootViewFaildTitle()V
    .locals 4

    .prologue
    .line 740
    iget v2, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mEndPage:I

    if-nez v2, :cond_0

    .line 749
    :goto_0
    return-void

    .line 744
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 745
    .local v0, "title":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "title":Landroid/view/View;
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->isNetWorkAvaliable()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->getFootViewFaildTitleResId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 748
    .local v1, "title2":Landroid/view/View;
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "title2":Landroid/view/View;
    invoke-direct {p0, v2, v1}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->setTitle2Content(Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private setFootViewLoaddingTitle()V
    .locals 4

    .prologue
    .line 761
    iget v2, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mEndPage:I

    if-nez v2, :cond_0

    .line 770
    :goto_0
    return-void

    .line 765
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 766
    .local v0, "title":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "title":Landroid/view/View;
    sget v2, Lcom/youku/gamecenter/R$string;->game_center_tips_loadding:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 768
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mFootView:Landroid/view/View;

    sget v3, Lcom/youku/gamecenter/R$id;->widget_game_loadding_title2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 769
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
    .line 752
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->isNetWorkAvaliable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 758
    :goto_0
    return-void

    .line 757
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private trackPosterClick(ILjava/lang/String;)V
    .locals 5
    .param p1, "location"    # I
    .param p2, "appname"    # Ljava/lang/String;

    .prologue
    .line 551
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 552
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "gamename"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gc_home|posterGame|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u8f6e\u64ad\u56fe"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u70b9\u51fb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u6e38\u620f\u9996\u9875"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackCustomClick(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method private updateDatas(Lcom/youku/gamecenter/data/HomePageInfo;)V
    .locals 2
    .param p1, "homePageInfo"    # Lcom/youku/gamecenter/data/HomePageInfo;

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->updateDatas(Lcom/youku/gamecenter/data/IResponseable;)V

    .line 218
    iget v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mEndPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 220
    iput-object p1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mHeaderPageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    .line 222
    iget-object v0, p1, Lcom/youku/gamecenter/data/HomePageInfo;->slides:Ljava/util/List;

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mSlides:Ljava/util/List;

    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->computeMyGames(Ljava/lang/String;)Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mMyGames:Lcom/youku/gamecenter/data/HomePageBoxLocalInfo;

    .line 225
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->computeRecomGames()Lcom/youku/gamecenter/data/HomePageRecomInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mRecGames:Lcom/youku/gamecenter/data/HomePageRecomInfo;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBoxes:Ljava/util/List;

    iget-object v1, p1, Lcom/youku/gamecenter/data/HomePageInfo;->boxes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    return-void
.end method


# virtual methods
.method protected addHeader(Landroid/widget/ListView;Landroid/view/LayoutInflater;)V
    .locals 1
    .param p1, "listview"    # Landroid/widget/ListView;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 612
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 613
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mEntryView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 614
    return-void
.end method

.method protected contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 659
    const/4 v0, 0x0

    return v0
.end method

.method protected doRequest(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 143
    new-instance v0, Lcom/youku/gamecenter/services/GetHomePageService;

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-direct {v0, v1}, Lcom/youku/gamecenter/services/GetHomePageService;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, "service":Lcom/youku/gamecenter/services/GetHomePageService;
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->getURL(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/services/GetHomePageService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    .line 145
    return-void
.end method

.method public getFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 782
    const-string v0, "home_fragment"

    return-object v0
.end method

.method protected getPageCount(Lcom/youku/gamecenter/data/IResponseable;)I
    .locals 2
    .param p1, "data"    # Lcom/youku/gamecenter/data/IResponseable;

    .prologue
    .line 622
    move-object v0, p1

    check-cast v0, Lcom/youku/gamecenter/data/HomePageInfo;

    .line 623
    .local v0, "homePageInfo":Lcom/youku/gamecenter/data/HomePageInfo;
    iget v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mEndPage:I

    if-nez v1, :cond_0

    .line 624
    iget v1, v0, Lcom/youku/gamecenter/data/HomePageInfo;->page_count:I

    .line 626
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mPageCount:I

    goto :goto_0
.end method

.method protected getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTabId()I
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x1

    return v0
.end method

.method protected getURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 607
    invoke-static {p1}, Lcom/youku/gamecenter/services/URLContainer;->getGameHomePageUrlByPage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initViews(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 632
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->inflateRootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 634
    .local v0, "rootview":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->initParentView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 636
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->initAutoSlideoGallery()Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    .line 638
    invoke-direct {p0, p1, v2}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->initFootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mFootView:Landroid/view/View;

    .line 640
    invoke-direct {p0, p1, v0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->initListView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mListView:Landroid/widget/ListView;

    .line 642
    invoke-direct {p0, p1, v2}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->initEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mEntryView:Landroid/widget/LinearLayout;

    .line 644
    invoke-super {p0, v0, p2}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->initBaseViews(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 646
    return-object v0
.end method

.method protected isGamesValid()Z
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mHeaderPageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mHeaderPageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    iget-object v0, v0, Lcom/youku/gamecenter/data/HomePageInfo;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 652
    :cond_0
    const/4 v0, 0x0

    .line 654
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 560
    invoke-super {p0, p1}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->onClick(Landroid/view/View;)V

    .line 562
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mFootView:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 563
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->loadDatas()V

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mSingleEntryView:Landroid/view/View;

    if-ne v0, p1, :cond_2

    .line 568
    const-string v0, "5"

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->sendClickTrack(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    const-string v1, "44"

    invoke-static {v0, v1}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameRankActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mNetEntryView:Landroid/view/View;

    if-ne v0, p1, :cond_3

    .line 573
    const-string v0, "6"

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->sendClickTrack(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameNetActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 577
    :cond_3
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mActivitiesEntryView:Landroid/view/View;

    if-ne v0, p1, :cond_4

    .line 578
    const-string v0, "8"

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->sendClickTrack(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    sget v1, Lcom/youku/gamecenter/GameH5CardListActivity;->GAME_ACTIVITIES_LIST_TYPE:I

    invoke-static {v0, v1}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameH5CardListActivity(Landroid/content/Context;I)V

    goto :goto_0

    .line 582
    :cond_4
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mSubjectEntryView:Landroid/view/View;

    if-ne v0, p1, :cond_5

    .line 583
    const-string v0, "7"

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->sendClickTrack(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    sget v1, Lcom/youku/gamecenter/GameH5CardListActivity;->GAME_SUBJECTS_LIST_TYPE:I

    invoke-static {v0, v1}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameH5CardListActivity(Landroid/content/Context;I)V

    goto :goto_0

    .line 587
    :cond_5
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mVideoEntryView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 588
    const-string v0, "9"

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->sendClickTrack(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameVideoListActivity(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->initConfigs()V

    .line 101
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->initDatas()V

    .line 102
    return-void
.end method

.method public onDelayNotify()V
    .locals 2

    .prologue
    .line 800
    iget-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->isFragmentVisibleToUser:Z

    if-nez v0, :cond_0

    .line 808
    :goto_0
    return-void

    .line 803
    :cond_0
    iget-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->isScrolling:Z

    if-eqz v0, :cond_1

    .line 804
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/DelayNotifyHandler;->sendSimpleMessage(Lcom/youku/gamecenter/DelayNotifyHandler;I)V

    goto :goto_0

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBoxAdapter:Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->onDestroy()V

    .line 132
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mPromptHelper:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->removeListener(Lcom/youku/gamecenter/outer/InstallablePromptHelper$OnInstallablePromptGotListener;)V

    .line 133
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/DelayNotifyHandler;->removeListener(I)V

    .line 134
    return-void
.end method

.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 2
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->trackPageLoad()V

    .line 188
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

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->dumpLogs(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->setLoadingFailedDatas()V

    .line 192
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->setLoadingFailedView()V

    goto :goto_0
.end method

.method public onGameInfoProgressChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/DelayNotifyHandler;->sendSimpleMessage(Lcom/youku/gamecenter/DelayNotifyHandler;I)V

    .line 529
    return-void
.end method

.method public onGameInfoStatusChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 523
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->handleGameChanged(Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method public onInstallablePromptGot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "prompt"    # Ljava/lang/String;

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    :goto_0
    return-void

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBoxAdapter:Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 534
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 548
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mSlides:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int v1, p3, v2

    .line 538
    .local v1, "location":I
    iget-object v2, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mSlides:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfo;

    .line 539
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    add-int/lit8 v2, v1, 0x1

    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->trackPosterClick(ILjava/lang/String;)V

    .line 541
    iget-object v2, v0, Lcom/youku/gamecenter/data/GameInfo;->slider_h5_activity:Ljava/util/Map;

    const-string v3, "home_fragment"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 542
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v2, v0, Lcom/youku/gamecenter/data/GameInfo;->slider_h5_activity:Ljava/util/Map;

    const-string v4, "home_fragment"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;->url:Ljava/lang/String;

    const-string v4, "39"

    invoke-static {v3, v2, v0, v4}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchWebActivityWithGameInfo(Landroid/content/Context;Ljava/lang/String;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_1
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "8"

    invoke-static {v2, v0, v3}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleSliderClickAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V

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
    .line 513
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    invoke-virtual {v0, p3}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->handleItemSelected(I)V

    .line 514
    return-void
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
    .line 519
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->cancelAutoSlide()V

    .line 120
    invoke-super {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->onPause()V

    .line 121
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mAutoSlideGallery:Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->startAutoSlide()V

    .line 126
    invoke-super {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->onResume()V

    .line 127
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 490
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 495
    if-eqz p2, :cond_1

    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->isScrolling:Z

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->isScrolling:Z

    .line 503
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->loadDatas()V

    goto :goto_0
.end method

.method public onSuccess(Lcom/youku/gamecenter/data/HomePageInfo;)V
    .locals 1
    .param p1, "homePageInfo"    # Lcom/youku/gamecenter/data/HomePageInfo;

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->trackPageLoad()V

    .line 208
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->updateDatas(Lcom/youku/gamecenter/data/HomePageInfo;)V

    .line 210
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->updateUI()V

    goto :goto_0
.end method

.method protected setLoadingFailedView()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->setLoadingFailedView()V

    .line 197
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->setFootViewFaildTitle()V

    .line 198
    return-void
.end method

.method protected setLoadingView(Z)V
    .locals 0
    .param p1, "showLoading"    # Z

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->setLoadingView(Z)V

    .line 138
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->setFootViewLoaddingTitle()V

    .line 139
    return-void
.end method

.method public setOfflineDataEndPage(I)V
    .locals 0
    .param p1, "endPage"    # I

    .prologue
    .line 233
    iput p1, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mEndPage:I

    .line 234
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->removeFootViewAndAddIntervalFootWhenNotHasNextPage()V

    .line 235
    return-void
.end method

.method protected trackPageLoad()V
    .locals 9

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "\u6e38\u620f\u9996\u9875\u52a0\u8f7d"

    const-string v3, "gc_homeLoad"

    iget-wide v4, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v8, "\u6e38\u620f\u9996\u9875"

    invoke-static/range {v1 .. v8}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackPageLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 274
    return-void
.end method

.method protected updateUI()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->updateUI()V

    .line 240
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->addHeaderView()V

    .line 242
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->removeFootViewAndAddIntervalFootWhenNotHasNextPage()V

    .line 244
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBoxAdapter:Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;

    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->combineDatas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->setData(Ljava/util/List;)V

    .line 245
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameHomeFragment;->mBoxAdapter:Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/GameHomeBoxAdapter;->notifyDataSetChanged()V

    .line 247
    return-void
.end method

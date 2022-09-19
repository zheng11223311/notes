.class public Lcom/youku/gamecenter/GameDetailsActivity;
.super Lcom/youku/gamecenter/GameBaseActivity;
.source "GameDetailsActivity.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetDetailPageService$OnDetailPageServiceListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/youku/gamecenter/DelayNotifyHandler$OnDelayNotifyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/GameDetailsActivity$GameWebviewErrorOnClickListener;,
        Lcom/youku/gamecenter/GameDetailsActivity$GameActionOnClickListener;,
        Lcom/youku/gamecenter/GameDetailsActivity$GameDetailOnClickListener;,
        Lcom/youku/gamecenter/GameDetailsActivity$OnGetGameVideosListener;,
        Lcom/youku/gamecenter/GameDetailsActivity$DownloadListener;,
        Lcom/youku/gamecenter/GameDetailsActivity$GameWebViewClient;
    }
.end annotation


# static fields
.field private static final DOWNLOADING_DONE:I = 0x64

.field public static final SLIDE_PIC_TYPE_HORIZONTAL:I = 0x0

.field public static final SLIDE_PIC_TYPE_PORTRAIT:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private activities_item_1:Landroid/view/View;

.field private activities_item_2:Landroid/view/View;

.field private activities_parent:Landroid/widget/LinearLayout;

.field private activities_splite:Landroid/view/View;

.field private mActionTitle:Landroid/widget/TextView;

.field private mAppId:Ljava/lang/String;

.field private mContentContainer:Landroid/widget/LinearLayout;

.field private mContentLayout:Landroid/widget/RelativeLayout;

.field private mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

.field private mDetailData:Lcom/youku/gamecenter/data/GameDetailInfo;

.field private mDownloadIcon:Landroid/widget/ImageView;

.field private mDownloadLayout:Landroid/widget/RelativeLayout;

.field private mDownloadProgress:Landroid/view/View;

.field private mDownloadText:Landroid/widget/TextView;

.field private mDownloadTimeView:Landroid/widget/TextView;

.field private mElasticTextArea:Lcom/youku/gamecenter/widgets/ElasticTextArea;

.field private mFromAppId:Z

.field private mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

.field private mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

.field private mGameVideoCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/widgets/GameCardView;",
            ">;"
        }
    .end annotation
.end field

.field private mGoToHomePage:Z

.field private mHandler:Landroid/os/Handler;

.field private mIconView:Landroid/widget/ImageView;

.field private mImageBackground:Landroid/view/View;

.field private mImagesGallery:Lcom/youku/gamecenter/widgets/ImagesGallery;

.field private mInnerProgressView:Lcom/youku/gamecenter/widgets/InnerProgressView;

.field private mIsFailed:Z

.field private mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

.field private mLocationid:I

.field private mNoResultImageView:Landroid/widget/ImageView;

.field private mNoResultTextView:Landroid/widget/TextView;

.field private mParentLayout:Landroid/widget/RelativeLayout;

.field private mPresentListInfo:Lcom/youku/gamecenter/present/PresentListInfo;

.field private mRatingBar:Landroid/widget/RatingBar;

.field private mRecomGamesView:Landroid/view/View;

.field private mSelectedWebView:Landroid/webkit/WebView;

.field private mSizeView:Landroid/widget/TextView;

.field private mSource:Ljava/lang/String;

.field private mStartTime:J

.field private mStatistics:Ljava/lang/String;

.field private mTagGridView:Landroid/widget/GridView;

.field private mTitleView:Landroid/widget/TextView;

.field private mTypeView:Landroid/widget/TextView;

.field private mUpdateTimeView:Landroid/widget/TextView;

.field private mVerionView:Landroid/widget/TextView;

.field private mVideoContainer:Landroid/widget/LinearLayout;

.field private mVideoLayout:Landroid/view/View;

.field private mWebViewNoResultImageView:Landroid/widget/ImageView;

.field private mWebViewNoResultLayout:Landroid/widget/RelativeLayout;

.field private mWebViewProgress:Landroid/widget/ProgressBar;

.field private present_item_1:Landroid/view/View;

.field private present_item_2:Landroid/view/View;

.field private present_more:Landroid/widget/TextView;

.field private present_parent:Landroid/widget/LinearLayout;

.field private present_splite:Landroid/view/View;

.field private presnet_more_img:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;-><init>()V

    .line 76
    const-string v0, "GameCenter"

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->TAG:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameVideoCards:Ljava/util/List;

    .line 153
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mHandler:Landroid/os/Handler;

    .line 166
    iput-boolean v2, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mIsFailed:Z

    .line 168
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getInstance()Lcom/youku/gamecenter/GameCenterModel;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    .line 170
    invoke-static {}, Lcom/youku/gamecenter/DelayNotifyHandler;->getInstance()Lcom/youku/gamecenter/DelayNotifyHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mLocationid:I

    .line 178
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mStartTime:J

    .line 182
    iput-boolean v2, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGoToHomePage:Z

    .line 1736
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/GameDetailsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameDetailsActivity;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->showGameInfoView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/youku/gamecenter/GameDetailsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameDetailsActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/youku/gamecenter/GameDetailsActivity;Lcom/youku/gamecenter/present/PresentListInfo;)Lcom/youku/gamecenter/present/PresentListInfo;
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameDetailsActivity;
    .param p1, "x1"    # Lcom/youku/gamecenter/present/PresentListInfo;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mPresentListInfo:Lcom/youku/gamecenter/present/PresentListInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/youku/gamecenter/GameDetailsActivity;Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/data/GameVideosInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameDetailsActivity;
    .param p1, "x1"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "x2"    # Lcom/youku/gamecenter/data/GameVideosInfo;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/GameDetailsActivity;->parseGameVideoInfo(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/data/GameVideosInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/youku/gamecenter/GameDetailsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameDetailsActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mVideoLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/youku/gamecenter/GameDetailsActivity;I)Lcom/youku/gamecenter/widgets/GameCardView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameDetailsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->getNextGameCardView(I)Lcom/youku/gamecenter/widgets/GameCardView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/gamecenter/GameDetailsActivity;Lcom/youku/gamecenter/present/PresentListInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameDetailsActivity;
    .param p1, "x1"    # Lcom/youku/gamecenter/present/PresentListInfo;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->checkAndPostDelaySetUI(Lcom/youku/gamecenter/present/PresentListInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/youku/gamecenter/GameDetailsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameDetailsActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/gamecenter/GameDetailsActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameDetailsActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mWebViewProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/gamecenter/GameDetailsActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameDetailsActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mSelectedWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/gamecenter/GameDetailsActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameDetailsActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mWebViewNoResultLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/youku/gamecenter/GameDetailsActivity;)Lcom/youku/gamecenter/data/GameInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameDetailsActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/youku/gamecenter/GameDetailsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameDetailsActivity;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->sendSelectedCardTrack()V

    return-void
.end method

.method private addCardItem(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 897
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 898
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 899
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 901
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 902
    return-void
.end method

.method private addCardItems(Ljava/util/HashMap;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 775
    .local p1, "orderMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 776
    :cond_0
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->initDefaultOrder()Ljava/util/HashMap;

    move-result-object p1

    .line 780
    :cond_1
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->addCardItemsByOrder(Ljava/util/HashMap;)V

    .line 781
    return-void
.end method

.method private addCardItemsByOrder(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 839
    .local p1, "orderMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->getOrderKeyList(Ljava/util/HashMap;)[Ljava/lang/Integer;

    move-result-object v4

    .line 841
    .local v4, "orders":[Ljava/lang/Integer;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/Integer;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_9

    aget-object v2, v0, v1

    .line 842
    .local v2, "key":Ljava/lang/Integer;
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 843
    .local v5, "type":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 841
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 846
    :cond_1
    const-string v6, "package"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 847
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->checkAndAddCardItemPresent()V

    goto :goto_1

    .line 850
    :cond_2
    const-string/jumbo v6, "screenshot"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 851
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->checkAndAddCardItemScreenshot()V

    goto :goto_1

    .line 854
    :cond_3
    const-string/jumbo v6, "synopsis"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 855
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->checkAndAddCardItemDesc()V

    goto :goto_1

    .line 858
    :cond_4
    const-string/jumbo v6, "video"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 859
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->checkAndAddCardItemVideos()V

    goto :goto_1

    .line 862
    :cond_5
    const-string/jumbo v6, "tag"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 863
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->checkAndAddCardItemTags()V

    goto :goto_1

    .line 866
    :cond_6
    const-string/jumbo v6, "related_games"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 867
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->checkAndAddCardItemOtherGames()V

    goto :goto_1

    .line 870
    :cond_7
    const-string v6, "activities"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 871
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->checkAndAddCardItemActivities()V

    goto :goto_1

    .line 874
    :cond_8
    const-string/jumbo v6, "selected_card"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 875
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->checkAndAddCardItemSelectedCard()V

    goto :goto_1

    .line 879
    .end local v2    # "key":Ljava/lang/Integer;
    .end local v5    # "type":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method private addMarginView(Landroid/content/Context;)V
    .locals 5
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1487
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1488
    .local v1, "view":Landroid/view/View;
    sget v0, Lcom/youku/gamecenter/R$dimen;->detail_gameinfo_padding:I

    .line 1489
    .local v0, "resId":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 1490
    .local v2, "width":I
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/16 v4, 0x14

    invoke-direct {v3, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1491
    iget-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mVideoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1492
    return-void
.end method

.method private addSplitLine(Landroid/content/Context;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1495
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1496
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/youku/gamecenter/R$dimen;->game_details_video_item_split_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 1498
    .local v1, "width":I
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/16 v3, 0x14

    invoke-direct {v2, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1499
    iget-object v2, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mVideoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1500
    return-void
.end method

.method private callSetUILater(Lcom/youku/gamecenter/present/PresentListInfo;)V
    .locals 4
    .param p1, "presentListInfo"    # Lcom/youku/gamecenter/present/PresentListInfo;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/gamecenter/GameDetailsActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity$2;-><init>(Lcom/youku/gamecenter/GameDetailsActivity;Lcom/youku/gamecenter/present/PresentListInfo;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 534
    return-void
.end method

.method private checkAndAddCardItemActivities()V
    .locals 1

    .prologue
    .line 1593
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->hasActivities()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1597
    :goto_0
    return-void

    .line 1596
    :cond_0
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_details_activities:I

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->addCardItem(I)V

    goto :goto_0
.end method

.method private checkAndAddCardItemDesc()V
    .locals 1

    .prologue
    .line 1572
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->hasDesc()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1576
    :goto_0
    return-void

    .line 1575
    :cond_0
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_details_desc:I

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->addCardItem(I)V

    goto :goto_0
.end method

.method private checkAndAddCardItemOtherGames()V
    .locals 1

    .prologue
    .line 1558
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->hasOtherGames()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1562
    :goto_0
    return-void

    .line 1561
    :cond_0
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_details_othergames:I

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->addCardItem(I)V

    goto :goto_0
.end method

.method private checkAndAddCardItemPresent()V
    .locals 1

    .prologue
    .line 1586
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->hasPresents()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1590
    :goto_0
    return-void

    .line 1589
    :cond_0
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_details_present:I

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->addCardItem(I)V

    goto :goto_0
.end method

.method private checkAndAddCardItemScreenshot()V
    .locals 1

    .prologue
    .line 1579
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->hasScreenshots()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1583
    :goto_0
    return-void

    .line 1582
    :cond_0
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_details_scrrenshot:I

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->addCardItem(I)V

    goto :goto_0
.end method

.method private checkAndAddCardItemSelectedCard()V
    .locals 1

    .prologue
    .line 1600
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->hasSelectedCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1604
    :goto_0
    return-void

    .line 1603
    :cond_0
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_details_selected_card:I

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->addCardItem(I)V

    goto :goto_0
.end method

.method private checkAndAddCardItemTags()V
    .locals 1

    .prologue
    .line 1551
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->hasTags()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1555
    :goto_0
    return-void

    .line 1554
    :cond_0
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_details_tags:I

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->addCardItem(I)V

    goto :goto_0
.end method

.method private checkAndAddCardItemVideos()V
    .locals 1

    .prologue
    .line 1565
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->hasVideos()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1569
    :goto_0
    return-void

    .line 1568
    :cond_0
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_details_videos:I

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->addCardItem(I)V

    goto :goto_0
.end method

.method private checkAndPostDelaySetUI(Lcom/youku/gamecenter/present/PresentListInfo;)V
    .locals 1
    .param p1, "presentListInfo"    # Lcom/youku/gamecenter/present/PresentListInfo;

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    iget-boolean v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mIsFailed:Z

    if-nez v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->present_item_1:Landroid/view/View;

    if-nez v0, :cond_2

    .line 473
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->callSetUILater(Lcom/youku/gamecenter/present/PresentListInfo;)V

    goto :goto_0

    .line 477
    :cond_2
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->setPresentUI(Lcom/youku/gamecenter/present/PresentListInfo;)V

    goto :goto_0
.end method

.method private fetchGameInfoById(Ljava/lang/String;)V
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    .line 405
    iget-object v2, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mContentLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 406
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    iget-object v2, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mNoResultImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    iget-object v2, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mNoResultTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    iget-object v2, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v2}, Lcom/youku/gamecenter/widgets/LoadingView;->startAnimation()V

    .line 410
    invoke-static {p0, p1}, Lcom/youku/gamecenter/services/URLContainer;->getDetailPageUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "detailPageUrl":Ljava/lang/String;
    new-instance v1, Lcom/youku/gamecenter/services/GetDetailPageService;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/services/GetDetailPageService;-><init>(Landroid/content/Context;)V

    .line 413
    .local v1, "service":Lcom/youku/gamecenter/services/GetDetailPageService;
    invoke-virtual {v1, v0, p0}, Lcom/youku/gamecenter/services/GetDetailPageService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    .line 419
    .end local v0    # "detailPageUrl":Ljava/lang/String;
    .end local v1    # "service":Lcom/youku/gamecenter/services/GetDetailPageService;
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->showFailed()V

    .line 416
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->showNetTipsAutomatic()V

    goto :goto_0
.end method

.method private fetchPresentInfoById(Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 425
    new-instance v0, Lcom/youku/gamecenter/services/GetPresentListService;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/services/GetPresentListService;-><init>(Landroid/content/Context;)V

    .line 427
    .local v0, "getPresentListService":Lcom/youku/gamecenter/services/GetPresentListService;
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/youku/gamecenter/services/URLContainer;->getPresentListByAppIdUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lcom/youku/gamecenter/GameDetailsActivity$1;

    invoke-direct {v2, p0}, Lcom/youku/gamecenter/GameDetailsActivity$1;-><init>(Lcom/youku/gamecenter/GameDetailsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/services/GetPresentListService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    .line 444
    return-void
.end method

.method private getAppIdPara(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 282
    if-nez p1, :cond_1

    .line 283
    const-string v0, "0"

    .line 298
    :cond_0
    :goto_0
    return-object v0

    .line 285
    :cond_1
    const-string v2, "appId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "appId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 291
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_2

    .line 292
    const-string v0, "0"

    goto :goto_0

    .line 294
    :cond_2
    const-string v2, "appId"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    const-string v0, "0"

    goto :goto_0
.end method

.method private getAppSourcePara(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 303
    if-nez p1, :cond_1

    .line 304
    const-string v0, "0"

    .line 319
    :cond_0
    :goto_0
    return-object v0

    .line 306
    :cond_1
    const-string/jumbo v2, "source"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "source":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 312
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_2

    .line 313
    const-string v0, "0"

    goto :goto_0

    .line 315
    :cond_2
    const-string/jumbo v2, "source"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    const-string v0, "0"

    goto :goto_0
.end method

.method private getColor(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1396
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private getGameTagPara(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 375
    if-nez p1, :cond_0

    .line 376
    const-string v0, ""

    .line 381
    :goto_0
    return-object v0

    .line 378
    :cond_0
    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameInfo;->getGameTags()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    const-string v0, ""

    goto :goto_0

    .line 381
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&gametag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-virtual {v1}, Lcom/youku/gamecenter/data/GameInfo;->getGameTags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getGameTypeName(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 365
    if-nez p1, :cond_0

    .line 366
    const-string v0, ""

    .line 371
    :goto_0
    return-object v0

    .line 368
    :cond_0
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    const-string v0, ""

    goto :goto_0

    .line 371
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&gametypename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->type:Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/gamecenter/services/URLContainer;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getLaoutIdByPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1103
    if-nez p1, :cond_0

    .line 1104
    sget v0, Lcom/youku/gamecenter/R$id;->other_game_1:I

    .line 1115
    :goto_0
    return v0

    .line 1106
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1107
    sget v0, Lcom/youku/gamecenter/R$id;->other_game_2:I

    goto :goto_0

    .line 1109
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1110
    sget v0, Lcom/youku/gamecenter/R$id;->other_game_3:I

    goto :goto_0

    .line 1112
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 1113
    sget v0, Lcom/youku/gamecenter/R$id;->other_game_4:I

    goto :goto_0

    .line 1115
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getNextGameCardView(I)Lcom/youku/gamecenter/widgets/GameCardView;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameVideoCards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/widgets/GameCardView;

    return-object v0
.end method

.method private getOrderKeyList(Ljava/util/HashMap;)[Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 785
    .local p1, "orderMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->initArrays(Ljava/util/HashMap;)[Ljava/lang/Integer;

    move-result-object v0

    .line 787
    .local v0, "orders":[Ljava/lang/Integer;
    const-string v1, "initArrays"

    invoke-direct {p0, v0, v1}, Lcom/youku/gamecenter/GameDetailsActivity;->printLogs([Ljava/lang/Integer;Ljava/lang/String;)V

    .line 789
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->sortOders([Ljava/lang/Integer;)V

    .line 791
    const-string/jumbo v1, "sortOders"

    invoke-direct {p0, v0, v1}, Lcom/youku/gamecenter/GameDetailsActivity;->printLogs([Ljava/lang/Integer;Ljava/lang/String;)V

    .line 793
    return-object v0
.end method

.method private getThemeBackground(I)I
    .locals 4
    .param p1, "styleColorId"    # I

    .prologue
    .line 730
    sget v2, Lcom/youku/gamecenter/R$color;->downloading_backgroud:I

    invoke-direct {p0, v2}, Lcom/youku/gamecenter/GameDetailsActivity;->getColor(I)I

    move-result v1

    .line 732
    .local v1, "color":I
    :try_start_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme:[I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 734
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/youku/gamecenter/R$color;->downloading_backgroud:I

    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 735
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    return v1

    .line 736
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getVidsFromGameInfo(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 929
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 930
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->vidsInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 931
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 932
    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->vidsInfo:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/gamecenter/data/VidItemInfo;

    iget-object v3, v4, Lcom/youku/gamecenter/data/VidItemInfo;->vid:Ljava/lang/String;

    .line 933
    .local v3, "vid":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 934
    add-int/lit8 v4, v2, -0x1

    if-ne v0, v4, :cond_0

    const-string v4, ""

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 931
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 934
    :cond_0
    const-string v4, ","

    goto :goto_1

    .line 937
    .end local v3    # "vid":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private hasActivities()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1620
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    if-nez v1, :cond_1

    .line 1629
    :cond_0
    :goto_0
    return v0

    .line 1623
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->h5_activities:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1626
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->h5_activities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1629
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hasDesc()Z
    .locals 1

    .prologue
    .line 1672
    const/4 v0, 0x1

    return v0
.end method

.method private hasOtherGames()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1646
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDetailData:Lcom/youku/gamecenter/data/GameDetailInfo;

    if-nez v1, :cond_1

    .line 1655
    :cond_0
    :goto_0
    return v0

    .line 1649
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDetailData:Lcom/youku/gamecenter/data/GameDetailInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameDetailInfo;->rec_games:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1652
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDetailData:Lcom/youku/gamecenter/data/GameDetailInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameDetailInfo;->rec_games:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1655
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hasPresents()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1689
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mPresentListInfo:Lcom/youku/gamecenter/present/PresentListInfo;

    if-nez v1, :cond_1

    .line 1698
    :cond_0
    :goto_0
    return v0

    .line 1692
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mPresentListInfo:Lcom/youku/gamecenter/present/PresentListInfo;

    invoke-virtual {v1}, Lcom/youku/gamecenter/present/PresentListInfo;->getAllPresents()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1695
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mPresentListInfo:Lcom/youku/gamecenter/present/PresentListInfo;

    invoke-virtual {v1}, Lcom/youku/gamecenter/present/PresentListInfo;->getAllPresents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1698
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hasScreenshots()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1676
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    if-nez v1, :cond_1

    .line 1685
    :cond_0
    :goto_0
    return v0

    .line 1679
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->screenshot:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1682
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->screenshot:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1685
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hasSelectedCard()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1633
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    if-nez v1, :cond_1

    .line 1642
    :cond_0
    :goto_0
    return v0

    .line 1636
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->selected_card_url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1639
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->selected_card_url:Ljava/lang/String;

    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1642
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hasSourcePara(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    if-nez p1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v2

    .line 266
    :cond_1
    const-string/jumbo v4, "source"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 267
    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 270
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 273
    const-string/jumbo v4, "source"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "source":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 277
    goto :goto_0
.end method

.method private hasTags()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1607
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    if-nez v1, :cond_1

    .line 1616
    :cond_0
    :goto_0
    return v0

    .line 1610
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->tags:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1613
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->tags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1616
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hasVideos()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1659
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    if-nez v1, :cond_1

    .line 1668
    :cond_0
    :goto_0
    return v0

    .line 1662
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->vidsInfo:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1665
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->vidsInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1668
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initArrays(Ljava/util/HashMap;)[Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 811
    .local p1, "orderMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/Integer;

    .line 813
    .local v2, "orders":[Ljava/lang/Integer;
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 816
    .local v1, "iter":Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 817
    .local v0, "index":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 818
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    aput-object v3, v2, v0

    .line 819
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 822
    :cond_0
    return-object v2
.end method

.method private initCardViews()V
    .locals 1

    .prologue
    .line 628
    sget v0, Lcom/youku/gamecenter/R$id;->elasticTextArea:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/widgets/ElasticTextArea;

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mElasticTextArea:Lcom/youku/gamecenter/widgets/ElasticTextArea;

    .line 629
    sget v0, Lcom/youku/gamecenter/R$id;->images_gallery:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/widgets/ImagesGallery;

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mImagesGallery:Lcom/youku/gamecenter/widgets/ImagesGallery;

    .line 630
    sget v0, Lcom/youku/gamecenter/R$id;->game_icon:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mIconView:Landroid/widget/ImageView;

    .line 631
    sget v0, Lcom/youku/gamecenter/R$id;->game_version:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mVerionView:Landroid/widget/TextView;

    .line 632
    sget v0, Lcom/youku/gamecenter/R$id;->game_update_time:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mUpdateTimeView:Landroid/widget/TextView;

    .line 633
    sget v0, Lcom/youku/gamecenter/R$id;->game_category:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mTypeView:Landroid/widget/TextView;

    .line 635
    sget v0, Lcom/youku/gamecenter/R$id;->video_card_container:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mVideoContainer:Landroid/widget/LinearLayout;

    .line 637
    sget v0, Lcom/youku/gamecenter/R$id;->game_videos_layout:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mVideoLayout:Landroid/view/View;

    .line 639
    sget v0, Lcom/youku/gamecenter/R$id;->game_image_card_bg:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mImageBackground:Landroid/view/View;

    .line 641
    sget v0, Lcom/youku/gamecenter/R$id;->present_item_1:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->present_item_1:Landroid/view/View;

    .line 642
    sget v0, Lcom/youku/gamecenter/R$id;->present_item_2:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->present_item_2:Landroid/view/View;

    .line 643
    sget v0, Lcom/youku/gamecenter/R$id;->present_splite:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->present_splite:Landroid/view/View;

    .line 644
    sget v0, Lcom/youku/gamecenter/R$id;->game_present_parent:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->present_parent:Landroid/widget/LinearLayout;

    .line 645
    sget v0, Lcom/youku/gamecenter/R$id;->game_present_more:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->present_more:Landroid/widget/TextView;

    .line 646
    sget v0, Lcom/youku/gamecenter/R$id;->present_more:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->presnet_more_img:Landroid/widget/ImageView;

    .line 648
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    sget v0, Lcom/youku/gamecenter/R$id;->game_activities_parent:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->activities_parent:Landroid/widget/LinearLayout;

    .line 650
    sget v0, Lcom/youku/gamecenter/R$id;->activities_item_1:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->activities_item_1:Landroid/view/View;

    .line 651
    sget v0, Lcom/youku/gamecenter/R$id;->activities_item_2:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->activities_item_2:Landroid/view/View;

    .line 652
    sget v0, Lcom/youku/gamecenter/R$id;->activities_splite:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->activities_splite:Landroid/view/View;

    .line 655
    :cond_0
    sget v0, Lcom/youku/gamecenter/R$id;->gridview:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mTagGridView:Landroid/widget/GridView;

    .line 657
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->present_more:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->present_more:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->presnet_more_img:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    :cond_1
    sget v0, Lcom/youku/gamecenter/R$id;->game_details_othergame_container:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mRecomGamesView:Landroid/view/View;

    .line 664
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->hasSelectedCard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 665
    sget v0, Lcom/youku/gamecenter/R$id;->game_detail_webView:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mSelectedWebView:Landroid/webkit/WebView;

    .line 666
    sget v0, Lcom/youku/gamecenter/R$id;->game_detail_webView_progress:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mWebViewProgress:Landroid/widget/ProgressBar;

    .line 667
    sget v0, Lcom/youku/gamecenter/R$id;->rl_no_result:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mWebViewNoResultLayout:Landroid/widget/RelativeLayout;

    .line 668
    sget v0, Lcom/youku/gamecenter/R$id;->iv_no_result:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mWebViewNoResultImageView:Landroid/widget/ImageView;

    .line 671
    :cond_2
    return-void
.end method

.method private initDefaultOrder()Ljava/util/HashMap;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 884
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 885
    .local v0, "orderMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "selected_card"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "package"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "screenshot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "synopsis"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "tag"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "related_games"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "activities"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    return-object v0
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mActionTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/youku/gamecenter/GameDetailsActivity$DownloadListener;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/GameDetailsActivity$DownloadListener;-><init>(Lcom/youku/gamecenter/GameDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mInnerProgressView:Lcom/youku/gamecenter/widgets/InnerProgressView;

    new-instance v1, Lcom/youku/gamecenter/GameDetailsActivity$DownloadListener;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/GameDetailsActivity$DownloadListener;-><init>(Lcom/youku/gamecenter/GameDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/InnerProgressView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->addOnGameInfoChangedListener(Lcom/youku/gamecenter/OnGameInfoChangedListener;)V

    .line 726
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mNoResultImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    return-void
.end method

.method private initTagViewDatas(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 6
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 1119
    if-nez p1, :cond_1

    .line 1140
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    iget-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mTagGridView:Landroid/widget/GridView;

    if-eqz v3, :cond_0

    .line 1127
    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->tags:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->tags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1130
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->tags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1132
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;>;"
    new-instance v3, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->category_map_type_id:Ljava/lang/String;

    iget-object v5, p1, Lcom/youku/gamecenter/data/GameInfo;->category_map_type:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->tags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1135
    iget-object v3, p1, Lcom/youku/gamecenter/data/GameInfo;->tags:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1138
    :cond_2
    new-instance v0, Lcom/youku/gamecenter/adapter/AppTagAdapter;

    invoke-direct {v0, p0, v2}, Lcom/youku/gamecenter/adapter/AppTagAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 1139
    .local v0, "adapter":Lcom/youku/gamecenter/adapter/AppTagAdapter;
    iget-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mTagGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private initVideoCards(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 7
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 1143
    if-nez p1, :cond_1

    .line 1174
    :cond_0
    return-void

    .line 1146
    :cond_1
    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->vidsInfo:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 1149
    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->vidsInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1153
    iget-object v4, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mVideoContainer:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 1157
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->vidsInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1158
    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->vidsInfo:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/gamecenter/data/VidItemInfo;

    iget-object v3, v4, Lcom/youku/gamecenter/data/VidItemInfo;->vid:Ljava/lang/String;

    .line 1159
    .local v3, "vid":Ljava/lang/String;
    invoke-static {v3}, Lcom/youku/gamecenter/util/CommonUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1160
    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->vidsInfo:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1157
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1164
    .end local v3    # "vid":Ljava/lang/String;
    :cond_3
    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->vidsInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 1165
    .local v2, "size":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 1166
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/youku/gamecenter/R$layout;->gamecenter_game_details_video_card_item1:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/widgets/GameCardView;

    .line 1169
    .local v0, "gameCardView":Lcom/youku/gamecenter/widgets/GameCardView;
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p1, Lcom/youku/gamecenter/data/GameInfo;->vidsInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v4, v0, v1, v5}, Lcom/youku/gamecenter/GameDetailsActivity;->addGalleryView(Landroid/content/Context;Landroid/view/View;II)V

    .line 1171
    iget-object v4, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameVideoCards:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1165
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initViews()V
    .locals 6

    .prologue
    .line 591
    const/4 v2, 0x0

    .line 592
    .local v2, "mThemeType":I
    const/4 v1, 0x6

    .line 594
    .local v1, "mProductId":I
    :try_start_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme:[I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 596
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gameCenterThemeType:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 599
    sget v3, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gameCenterProductId:I

    const/4 v4, 0x6

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 602
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    sput v1, Lcom/youku/gamecenter/services/URLContainer;->PRODUCT_ID:I

    .line 607
    sget v3, Lcom/youku/gamecenter/R$id;->detail_parent:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 608
    sget v3, Lcom/youku/gamecenter/R$id;->content_layout:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mContentLayout:Landroid/widget/RelativeLayout;

    .line 609
    sget v3, Lcom/youku/gamecenter/R$id;->content_container:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mContentContainer:Landroid/widget/LinearLayout;

    .line 610
    sget v3, Lcom/youku/gamecenter/R$id;->game_name:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mTitleView:Landroid/widget/TextView;

    .line 611
    sget v3, Lcom/youku/gamecenter/R$id;->game_size:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mSizeView:Landroid/widget/TextView;

    .line 612
    sget v3, Lcom/youku/gamecenter/R$id;->game_download_count:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDownloadTimeView:Landroid/widget/TextView;

    .line 613
    sget v3, Lcom/youku/gamecenter/R$id;->game_detail_ratingbar:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    iput-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mRatingBar:Landroid/widget/RatingBar;

    .line 614
    sget v3, Lcom/youku/gamecenter/R$id;->action_button_title:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mActionTitle:Landroid/widget/TextView;

    .line 615
    sget v3, Lcom/youku/gamecenter/R$id;->rl_download:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDownloadLayout:Landroid/widget/RelativeLayout;

    .line 616
    sget v3, Lcom/youku/gamecenter/R$id;->innerProgressView:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/youku/gamecenter/widgets/InnerProgressView;

    iput-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mInnerProgressView:Lcom/youku/gamecenter/widgets/InnerProgressView;

    .line 617
    sget v3, Lcom/youku/gamecenter/R$id;->download_icon:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDownloadIcon:Landroid/widget/ImageView;

    .line 618
    sget v3, Lcom/youku/gamecenter/R$id;->download_text:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDownloadText:Landroid/widget/TextView;

    .line 619
    sget v3, Lcom/youku/gamecenter/R$id;->download_progress:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDownloadProgress:Landroid/view/View;

    .line 620
    new-instance v3, Lcom/youku/gamecenter/widgets/LoadingView;

    iget-object v4, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/youku/gamecenter/GameBaseActivity;->isYoukuApp()Z

    move-result v5

    invoke-direct {v3, p0, v4, v5}, Lcom/youku/gamecenter/widgets/LoadingView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Z)V

    iput-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    .line 622
    sget v3, Lcom/youku/gamecenter/R$id;->iv_no_result:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mNoResultImageView:Landroid/widget/ImageView;

    .line 623
    sget v3, Lcom/youku/gamecenter/R$id;->tv_no_result:I

    invoke-virtual {p0, v3}, Lcom/youku/gamecenter/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mNoResultTextView:Landroid/widget/TextView;

    .line 624
    return-void

    .line 603
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method private isFromAppId(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 245
    if-nez p1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v2

    .line 248
    :cond_1
    const-string v4, "appId"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 249
    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 252
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 255
    const-string v4, "appId"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "appId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 259
    goto :goto_0
.end method

.method private isGotoHomePage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 323
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mSource:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v0

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mSource:Ljava/lang/String;

    const-string v2, "16"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isNeedAddGameTag(Ljava/lang/String;)Z
    .locals 2
    .param p1, "statistics"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 385
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return v0

    .line 388
    :cond_1
    const-string v1, "gametag"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedAddGameTypeName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "statistics"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 395
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    :cond_0
    :goto_0
    return v0

    .line 398
    :cond_1
    const-string v1, "&gametypename="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedRefresh(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1312
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->isRecomGameIn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1318
    :cond_0
    :goto_0
    return v0

    .line 1315
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1318
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRecomGameIn(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1322
    iget-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDetailData:Lcom/youku/gamecenter/data/GameDetailInfo;

    if-nez v3, :cond_1

    .line 1336
    :cond_0
    :goto_0
    return v2

    .line 1325
    :cond_1
    iget-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDetailData:Lcom/youku/gamecenter/data/GameDetailInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/data/GameDetailInfo;->rec_games:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 1328
    iget-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDetailData:Lcom/youku/gamecenter/data/GameDetailInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/data/GameDetailInfo;->rec_games:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1331
    iget-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDetailData:Lcom/youku/gamecenter/data/GameDetailInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/data/GameDetailInfo;->rec_games:Ljava/util/List;

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

    .line 1332
    .local v0, "game":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1333
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private loadDatas()V
    .locals 4

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "locationid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const-string v1, "locationid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mLocationid:I

    .line 224
    :cond_0
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->hasSourcePara(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->getAppSourcePara(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mSource:Ljava/lang/String;

    .line 226
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->isGotoHomePage()Z

    move-result v1

    iput-boolean v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGoToHomePage:Z

    .line 228
    :cond_1
    const-string/jumbo v1, "statistics"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    const-string/jumbo v1, "statistics"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mStatistics:Ljava/lang/String;

    .line 232
    :cond_2
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->isFromAppId(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mFromAppId:Z

    .line 233
    iget-boolean v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mFromAppId:Z

    if-eqz v1, :cond_3

    .line 234
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->getAppIdPara(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mAppId:Ljava/lang/String;

    .line 235
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , source= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mSource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mAppId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GameDetailsActivity;->fetchGameInfoById(Ljava/lang/String;)V

    .line 237
    return-void

    .line 240
    :cond_3
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "Launch GameDetailsActivity the intent need putExtra appId !"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadGameVideos(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 2
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 911
    if-nez p1, :cond_1

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->vidsInfo:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 918
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->vidsInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 922
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->getVidsFromGameInfo(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;

    move-result-object v0

    .line 924
    .local v0, "vids":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->loadGamesVideo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadGamesVideo(Ljava/lang/String;)V
    .locals 4
    .param p1, "vids"    # Ljava/lang/String;

    .prologue
    .line 941
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 951
    :goto_0
    return-void

    .line 945
    :cond_0
    new-instance v1, Lcom/youku/gamecenter/services/GetGameVideosService;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/services/GetGameVideosService;-><init>(Landroid/content/Context;)V

    .line 947
    .local v1, "videoService":Lcom/youku/gamecenter/services/GetGameVideosService;
    invoke-static {p1}, Lcom/youku/gamecenter/services/URLContainer;->getTudouGamesVideoNewUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, "url":Ljava/lang/String;
    new-instance v2, Lcom/youku/gamecenter/GameDetailsActivity$OnGetGameVideosListener;

    invoke-direct {v2, p0}, Lcom/youku/gamecenter/GameDetailsActivity$OnGetGameVideosListener;-><init>(Lcom/youku/gamecenter/GameDetailsActivity;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/youku/gamecenter/services/GetGameVideosService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;Z)V

    goto :goto_0
.end method

.method private loadScreenShot(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1229
    .local p1, "imageViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    iget-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    if-nez v3, :cond_1

    .line 1261
    :cond_0
    return-void

    .line 1232
    :cond_1
    iget-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget v3, v3, Lcom/youku/gamecenter/data/GameInfo;->slide_pic_type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1233
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->setScreenShotParamsPortrait(Ljava/util/List;)V

    .line 1236
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1237
    move v2, v0

    .line 1238
    .local v2, "position":I
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1240
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v4

    iget-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/data/GameInfo;->screenshot:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3, v1}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayListenerImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1243
    new-instance v3, Lcom/youku/gamecenter/GameDetailsActivity$6;

    invoke-direct {v3, p0, v2}, Lcom/youku/gamecenter/GameDetailsActivity$6;-><init>(Lcom/youku/gamecenter/GameDetailsActivity;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseGameVideoInfo(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/data/GameVideosInfo;)V
    .locals 7
    .param p1, "game"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "gameVideosInfo"    # Lcom/youku/gamecenter/data/GameVideosInfo;

    .prologue
    .line 1450
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p1, Lcom/youku/gamecenter/data/GameInfo;->vidsInfo:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 1451
    iget-object v6, p1, Lcom/youku/gamecenter/data/GameInfo;->vidsInfo:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/gamecenter/data/VidItemInfo;

    .line 1452
    .local v3, "item":Lcom/youku/gamecenter/data/VidItemInfo;
    iget-object v6, p2, Lcom/youku/gamecenter/data/GameVideosInfo;->list:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/data/GameVideoInfo;

    .line 1453
    .local v2, "info":Lcom/youku/gamecenter/data/GameVideoInfo;
    iget-object v4, v3, Lcom/youku/gamecenter/data/VidItemInfo;->title:Ljava/lang/String;

    .line 1454
    .local v4, "title":Ljava/lang/String;
    iget-object v1, v3, Lcom/youku/gamecenter/data/VidItemInfo;->url:Ljava/lang/String;

    .line 1455
    .local v1, "img_url":Ljava/lang/String;
    iget v5, v3, Lcom/youku/gamecenter/data/VidItemInfo;->type:I

    .line 1456
    .local v5, "type":I
    invoke-static {v4}, Lcom/youku/gamecenter/util/CommonUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1457
    iput-object v4, v2, Lcom/youku/gamecenter/data/GameVideoInfo;->title:Ljava/lang/String;

    .line 1459
    :cond_0
    invoke-static {v1}, Lcom/youku/gamecenter/util/CommonUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1460
    iput-object v1, v2, Lcom/youku/gamecenter/data/GameVideoInfo;->img_hd:Ljava/lang/String;

    .line 1462
    :cond_1
    if-eqz v5, :cond_2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1463
    :cond_2
    iget v6, v3, Lcom/youku/gamecenter/data/VidItemInfo;->type:I

    iput v6, v2, Lcom/youku/gamecenter/data/GameVideoInfo;->type:I

    .line 1450
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1466
    .end local v1    # "img_url":Ljava/lang/String;
    .end local v2    # "info":Lcom/youku/gamecenter/data/GameVideoInfo;
    .end local v3    # "item":Lcom/youku/gamecenter/data/VidItemInfo;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "type":I
    :cond_4
    return-void
.end method

.method private printLogs([Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 8
    .param p1, "orders"    # [Ljava/lang/Integer;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 826
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 830
    .local v4, "sb":Ljava/lang/StringBuffer;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Integer;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 831
    .local v2, "item":Ljava/lang/Integer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 830
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 833
    .end local v2    # "item":Ljava/lang/Integer;
    :cond_2
    const-string v5, "PlayFlow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GameDetailsActivity-> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerReceivers()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->registerReceiver(Landroid/content/Context;)V

    .line 207
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/DelayNotifyHandler;->addListener(ILcom/youku/gamecenter/DelayNotifyHandler$OnDelayNotifyListener;)V

    .line 208
    return-void
.end method

.method private sendSelectedCardTrack()V
    .locals 4

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/youku/gamecenter/services/URLContainer;->GAME_PAGE_STATISTICS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/youku/gamecenter/statistics/GameTrack;->setBaseParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&location_type=4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    new-instance v0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 361
    .local v0, "statistics":Lcom/youku/gamecenter/statistics/GameStatisticsTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 362
    return-void
.end method

.method private sendTrackByAppId()V
    .locals 4

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/youku/gamecenter/services/URLContainer;->GAME_DETAILS_STATISTICS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/youku/gamecenter/statistics/GameTrack;->setBaseParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&gameid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    iget v2, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mLocationid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&locationid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mLocationid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 338
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mSource:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mSource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    :cond_1
    iget-object v2, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mStatistics:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mStatistics:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 343
    :cond_2
    iget-object v2, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mStatistics:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/youku/gamecenter/GameDetailsActivity;->isNeedAddGameTypeName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0, v3}, Lcom/youku/gamecenter/GameDetailsActivity;->getGameTypeName(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    :cond_3
    iget-object v2, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mStatistics:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/youku/gamecenter/GameDetailsActivity;->isNeedAddGameTag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0, v3}, Lcom/youku/gamecenter/GameDetailsActivity;->getGameTagPara(Lcom/youku/gamecenter/data/GameInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    :cond_4
    new-instance v0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 352
    .local v0, "statistics":Lcom/youku/gamecenter/statistics/GameStatisticsTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 353
    return-void
.end method

.method private setActivitiesData(Landroid/view/View;Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;
    .param p3, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 555
    if-nez p1, :cond_0

    .line 570
    :goto_0
    return-void

    .line 558
    :cond_0
    sget v1, Lcom/youku/gamecenter/R$id;->details_activities_name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 560
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p2, Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    new-instance v1, Lcom/youku/gamecenter/GameDetailsActivity$4;

    invoke-direct {v1, p0, p2, p3}, Lcom/youku/gamecenter/GameDetailsActivity$4;-><init>(Lcom/youku/gamecenter/GameDetailsActivity;Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;Lcom/youku/gamecenter/data/GameInfo;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setActivitiesUI(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 4
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v3, 0x0

    .line 496
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->h5_activities:Ljava/util/List;

    .line 498
    .local v0, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;>;"
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->activities_parent:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u6d3b\u52a8\u5361\u7247\u7684view\u4e3a\u7a7a"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :goto_0
    return-void

    .line 503
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 504
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u6ca1\u6709\u6d3b\u52a8\u6570\u636e"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_1
    iget-object v2, p0, Lcom/youku/gamecenter/GameDetailsActivity;->activities_item_1:Landroid/view/View;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;

    invoke-direct {p0, v2, v1, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->setActivitiesData(Landroid/view/View;Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;Lcom/youku/gamecenter/data/GameInfo;)V

    .line 508
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 509
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->activities_splite:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 510
    iget-object v2, p0, Lcom/youku/gamecenter/GameDetailsActivity;->activities_item_2:Landroid/view/View;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;

    invoke-direct {p0, v2, v1, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->setActivitiesData(Landroid/view/View;Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;Lcom/youku/gamecenter/data/GameInfo;)V

    .line 514
    :goto_1
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->activities_parent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 512
    :cond_2
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->activities_item_2:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setImageBackgroundParamsVertical(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1506
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/youku/gamecenter/R$integer;->game_details_pic_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x9

    mul-int/lit8 v0, v2, 0x10

    .line 1508
    .local v0, "mHeight":I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1510
    .local v1, "params_image_bg":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mImageBackground:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1511
    return-void
.end method

.method private setPresentDatas(Landroid/view/View;Lcom/youku/gamecenter/present/PresentInfo;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/youku/gamecenter/present/PresentInfo;

    .prologue
    .line 537
    if-nez p1, :cond_0

    .line 551
    :goto_0
    return-void

    .line 540
    :cond_0
    sget v1, Lcom/youku/gamecenter/R$id;->details_presnt_name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 542
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p2, Lcom/youku/gamecenter/present/PresentInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    new-instance v1, Lcom/youku/gamecenter/GameDetailsActivity$3;

    invoke-direct {v1, p0, p2}, Lcom/youku/gamecenter/GameDetailsActivity$3;-><init>(Lcom/youku/gamecenter/GameDetailsActivity;Lcom/youku/gamecenter/present/PresentInfo;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setPresentUI(Lcom/youku/gamecenter/present/PresentListInfo;)V
    .locals 4
    .param p1, "presentListInfo"    # Lcom/youku/gamecenter/present/PresentListInfo;

    .prologue
    const/4 v3, 0x0

    .line 481
    invoke-virtual {p1}, Lcom/youku/gamecenter/present/PresentListInfo;->getAllPresents()Ljava/util/List;

    move-result-object v0

    .line 482
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/present/PresentInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 493
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/GameDetailsActivity;->present_item_1:Landroid/view/View;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/present/PresentInfo;

    invoke-direct {p0, v2, v1}, Lcom/youku/gamecenter/GameDetailsActivity;->setPresentDatas(Landroid/view/View;Lcom/youku/gamecenter/present/PresentInfo;)V

    .line 486
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 487
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->present_splite:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 488
    iget-object v2, p0, Lcom/youku/gamecenter/GameDetailsActivity;->present_item_2:Landroid/view/View;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/present/PresentInfo;

    invoke-direct {p0, v2, v1}, Lcom/youku/gamecenter/GameDetailsActivity;->setPresentDatas(Landroid/view/View;Lcom/youku/gamecenter/present/PresentInfo;)V

    .line 492
    :goto_1
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->present_parent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 490
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->present_item_2:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setRecomGames()V
    .locals 11

    .prologue
    .line 1059
    iget-object v9, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mRecomGamesView:Landroid/view/View;

    if-nez v9, :cond_1

    .line 1100
    :cond_0
    return-void

    .line 1063
    :cond_1
    iget-object v9, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDetailData:Lcom/youku/gamecenter/data/GameDetailInfo;

    iget-object v6, v9, Lcom/youku/gamecenter/data/GameDetailInfo;->rec_games:Ljava/util/List;

    .line 1065
    .local v6, "rec_games":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 1067
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/data/GameInfo;

    .line 1068
    .local v2, "game":Lcom/youku/gamecenter/data/GameInfo;
    if-nez v2, :cond_3

    .line 1065
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1072
    :cond_3
    invoke-direct {p0, v3}, Lcom/youku/gamecenter/GameDetailsActivity;->getLaoutIdByPosition(I)I

    move-result v5

    .line 1073
    .local v5, "layoutId":I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_2

    .line 1077
    new-instance v1, Lcom/youku/gamecenter/GameDetailsActivity$GameDetailOnClickListener;

    invoke-direct {v1, p0, v2}, Lcom/youku/gamecenter/GameDetailsActivity$GameDetailOnClickListener;-><init>(Lcom/youku/gamecenter/GameDetailsActivity;Lcom/youku/gamecenter/data/GameInfo;)V

    .line 1080
    .local v1, "detailListener":Lcom/youku/gamecenter/GameDetailsActivity$GameDetailOnClickListener;
    iget-object v9, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mRecomGamesView:Landroid/view/View;

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1082
    .local v8, "v":Landroid/view/View;
    sget v9, Lcom/youku/gamecenter/R$id;->other_game_icon:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1083
    .local v4, "icon":Landroid/widget/ImageView;
    sget v9, Lcom/youku/gamecenter/R$id;->other_game_title:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1084
    .local v7, "title":Landroid/widget/TextView;
    sget v9, Lcom/youku/gamecenter/R$id;->other_game_action:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1086
    .local v0, "action":Landroid/widget/TextView;
    iget-object v9, v2, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1088
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1089
    iget-object v9, v2, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v9, v9, Lcom/youku/gamecenter/data/GameInfoStatus;->homeFragmnetButtonTextColorId:I

    invoke-static {p0, v9}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByTheme(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1091
    iget-object v9, v2, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v9, v9, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageTitleId:I

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    .line 1092
    iget-object v9, v2, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v9, v9, Lcom/youku/gamecenter/data/GameInfoStatus;->actionButtonBg:I

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1093
    new-instance v9, Lcom/youku/gamecenter/GameDetailsActivity$GameActionOnClickListener;

    invoke-direct {v9, p0, v2, v4}, Lcom/youku/gamecenter/GameDetailsActivity$GameActionOnClickListener;-><init>(Lcom/youku/gamecenter/GameDetailsActivity;Lcom/youku/gamecenter/data/GameInfo;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1095
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v9

    invoke-virtual {v2}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayGameIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1
.end method

.method private setScreenShotParamsPortrait(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "imageViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    const/4 v7, 0x0

    .line 1271
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/youku/gamecenter/R$integer;->game_details_pic_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1273
    .local v4, "width":I
    div-int/lit8 v5, v4, 0x9

    mul-int/lit8 v0, v5, 0x10

    .line 1274
    .local v0, "height":I
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1275
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/youku/gamecenter/R$dimen;->detail_screenshot_images_gallery_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 1277
    .local v2, "margin":F
    float-to-int v5, v2

    float-to-int v6, v2

    invoke-virtual {v3, v5, v7, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1278
    invoke-direct {p0, p0}, Lcom/youku/gamecenter/GameDetailsActivity;->setImageBackgroundParamsVertical(Landroid/content/Context;)V

    .line 1279
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1280
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1282
    :cond_0
    return-void
.end method

.method private setSelectedCardData(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 5
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v4, 0x0

    .line 573
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mSelectedWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->hasSelectedCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    new-instance v0, Lcom/youku/gamecenter/GameDetailsActivity$GameWebviewErrorOnClickListener;

    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {v0, p0, v1}, Lcom/youku/gamecenter/GameDetailsActivity$GameWebviewErrorOnClickListener;-><init>(Lcom/youku/gamecenter/GameDetailsActivity;Lcom/youku/gamecenter/data/GameInfo;)V

    .line 582
    .local v0, "listener":Lcom/youku/gamecenter/GameDetailsActivity$GameWebviewErrorOnClickListener;
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mWebViewNoResultImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mSelectedWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/youku/gamecenter/GameDetailsActivity$GameWebViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/youku/gamecenter/GameDetailsActivity$GameWebViewClient;-><init>(Lcom/youku/gamecenter/GameDetailsActivity;Lcom/youku/gamecenter/GameDetailsActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 584
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mSelectedWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 585
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mWebViewProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 586
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mSelectedWebView:Landroid/webkit/WebView;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->selected_card_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSelectedCardUI(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 2
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 518
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mSelectedWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u7cbe\u9009\u5361\u7247\u7684view\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :goto_0
    return-void

    .line 522
    :cond_0
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->setSelectedCardData(Lcom/youku/gamecenter/data/GameInfo;)V

    goto :goto_0
.end method

.method private setUIDatas(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 7
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 1008
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mSizeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/youku/gamecenter/R$string;->game_size_detail:I

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDownloadTimeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/youku/gamecenter/R$string;->game_download_count_detail:I

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/youku/gamecenter/data/GameInfo;->total_downloads:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1015
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mRatingBar:Landroid/widget/RatingBar;

    iget-wide v2, p1, Lcom/youku/gamecenter/data/GameInfo;->score:D

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1017
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mActionTitle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v2, v2, Lcom/youku/gamecenter/data/GameInfoStatus;->homeFragmnetButtonTextColorId:I

    invoke-static {p0, v2}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1019
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mActionTitle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v2, v2, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageTitleId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1020
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mActionTitle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v2, v2, Lcom/youku/gamecenter/data/GameInfoStatus;->actionButtonBg:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1022
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mElasticTextArea:Lcom/youku/gamecenter/widgets/ElasticTextArea;

    if-eqz v1, :cond_0

    .line 1023
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mVerionView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/youku/gamecenter/R$string;->game_version:I

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/youku/gamecenter/data/GameInfo;->version:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mUpdateTimeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/youku/gamecenter/R$string;->game_update_time:I

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/youku/gamecenter/data/GameInfo;->update_time:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mTypeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/youku/gamecenter/R$string;->game_category:I

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/youku/gamecenter/data/GameInfo;->type:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mElasticTextArea:Lcom/youku/gamecenter/widgets/ElasticTextArea;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/widgets/ElasticTextArea;->init(Ljava/lang/String;)V

    .line 1032
    :cond_0
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mImagesGallery:Lcom/youku/gamecenter/widgets/ImagesGallery;

    if-eqz v1, :cond_1

    .line 1033
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->screenshot:Ljava/util/List;

    if-nez v1, :cond_2

    .line 1035
    .local v0, "imagesize":I
    :goto_0
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mImagesGallery:Lcom/youku/gamecenter/widgets/ImagesGallery;

    invoke-virtual {v1, v0}, Lcom/youku/gamecenter/widgets/ImagesGallery;->init(I)V

    .line 1036
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mImagesGallery:Lcom/youku/gamecenter/widgets/ImagesGallery;

    invoke-virtual {v1}, Lcom/youku/gamecenter/widgets/ImagesGallery;->getImageViews()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GameDetailsActivity;->loadScreenShot(Ljava/util/List;)V

    .line 1037
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mImagesGallery:Lcom/youku/gamecenter/widgets/ImagesGallery;

    invoke-virtual {v1, p0}, Lcom/youku/gamecenter/widgets/ImagesGallery;->addMarginView(Landroid/content/Context;)V

    .line 1040
    .end local v0    # "imagesize":I
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameDetailsActivity;->setDownloadState(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 1041
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayGameIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1044
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->initVideoCards(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 1046
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->initTagViewDatas(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 1048
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameDetailsActivity;->setTitlePageName(Ljava/lang/String;)V

    .line 1050
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->setRecomGames()V

    .line 1052
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->setActivitiesUI(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 1054
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->setSelectedCardUI(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 1056
    return-void

    .line 1033
    :cond_2
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->screenshot:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private showFailed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 989
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    :goto_0
    return-void

    .line 991
    :cond_0
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->trackPageLoad()V

    .line 992
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 993
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mNoResultImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 994
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mNoResultTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showFailed(I)V
    .locals 2
    .param p1, "stringResId"    # I

    .prologue
    .line 998
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    :goto_0
    return-void

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 1001
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mNoResultTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1002
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mNoResultTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showGameInfoView()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 449
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mContentLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDetailData:Lcom/youku/gamecenter/data/GameDetailInfo;

    iget-object v0, v0, Lcom/youku/gamecenter/data/GameDetailInfo;->field_seqs:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->addCardItems(Ljava/util/HashMap;)V

    .line 453
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->initCardViews()V

    .line 455
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->updateGameInfoFromCached()V

    .line 457
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->setUIDatas(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 459
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->loadGameVideos(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 460
    return-void
.end method

.method private sortOders([Ljava/lang/Integer;)V
    .locals 5
    .param p1, "orders"    # [Ljava/lang/Integer;

    .prologue
    .line 798
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 799
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 800
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 801
    aget-object v2, p1, v0

    .line 802
    .local v2, "temp":Ljava/lang/Integer;
    aget-object v3, p1, v1

    aput-object v3, p1, v0

    .line 803
    aput-object v2, p1, v1

    .line 799
    .end local v2    # "temp":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 798
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 807
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method private trackPageLoad()V
    .locals 9

    .prologue
    .line 905
    const-string/jumbo v2, "\u6e38\u620f\u8be6\u60c5\u9875\u52a0\u8f7d"

    const-string v3, "gamedetailLoad"

    iget-wide v4, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v8, "\u6e38\u620f\u8be6\u60c5"

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackPageLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 907
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mStartTime:J

    .line 908
    return-void
.end method

.method private unRegisterReceivers()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/DelayNotifyHandler;->removeListener(I)V

    .line 212
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->unRegisterReceiver(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private updateGameInfoFromCached()V
    .locals 3

    .prologue
    .line 973
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/gamecenter/GameCenterModel;->getGameInfoByPackageName(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    .line 975
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    if-nez v0, :cond_0

    .line 980
    :goto_0
    return-void

    .line 978
    :cond_0
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v2, v0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iput-object v2, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    .line 979
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget v2, v0, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    iput v2, v1, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    goto :goto_0
.end method


# virtual methods
.method public addGalleryView(Landroid/content/Context;Landroid/view/View;II)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "totalSize"    # I

    .prologue
    .line 1471
    if-nez p3, :cond_0

    .line 1472
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->addMarginView(Landroid/content/Context;)V

    .line 1475
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mVideoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1477
    add-int/lit8 v0, p4, -0x1

    if-eq p3, v0, :cond_1

    .line 1478
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->addSplitLine(Landroid/content/Context;)V

    .line 1481
    :cond_1
    add-int/lit8 v0, p4, -0x1

    if-ne p3, v0, :cond_2

    .line 1482
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->addMarginView(Landroid/content/Context;)V

    .line 1484
    :cond_2
    return-void
.end method

.method public checkAndGotoHomePage()V
    .locals 1

    .prologue
    .line 1543
    iget-boolean v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGoToHomePage:Z

    if-nez v0, :cond_0

    .line 1548
    :goto_0
    return-void

    .line 1546
    :cond_0
    const-string v0, "1"

    invoke-static {p0, v0}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameCenterHomeActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1445
    const-string/jumbo v0, "\u6e38\u620f\u8be6\u60c5"

    return-object v0
.end method

.method protected handleBackButtonPressed()V
    .locals 0

    .prologue
    .line 1534
    invoke-super {p0}, Lcom/youku/gamecenter/GameBaseActivity;->handleBackButtonPressed()V

    .line 1535
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->checkAndGotoHomePage()V

    .line 1536
    return-void
.end method

.method public isGameOnBoard(Lcom/youku/gamecenter/data/GameDetailInfo;)Z
    .locals 3
    .param p1, "info"    # Lcom/youku/gamecenter/data/GameDetailInfo;

    .prologue
    const/4 v0, 0x0

    .line 954
    if-nez p1, :cond_1

    .line 969
    :cond_0
    :goto_0
    return v0

    .line 958
    :cond_1
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameDetailInfo;->app:Lcom/youku/gamecenter/data/GameInfo;

    if-eqz v1, :cond_0

    .line 962
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameDetailInfo;->app:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->on_board:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 966
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameDetailInfo;->app:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->on_board:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1529
    invoke-super {p0}, Lcom/youku/gamecenter/GameBaseActivity;->onBackPressed()V

    .line 1530
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->checkAndGotoHomePage()V

    .line 1531
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->present_more:Landroid/widget/TextView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->presnet_more_img:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 1516
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mAppId:Ljava/lang/String;

    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGamePresentListActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mNoResultImageView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 1521
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mAppId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->fetchGameInfoById(Ljava/lang/String;)V

    .line 1525
    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1265
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1266
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->getSimpleClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> onConfigurationChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->setDownloadStateDelay(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 1268
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mStartTime:J

    .line 190
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->initViews()V

    .line 192
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->loadDatas()V

    .line 194
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->initListener()V

    .line 196
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->registerReceivers()V

    .line 198
    return-void
.end method

.method public onDelayNotify()V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->setDownloadState(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 676
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1341
    invoke-super {p0}, Lcom/youku/gamecenter/GameBaseActivity;->onDestroy()V

    .line 1343
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->removeOnGameInfoChangedListener(Lcom/youku/gamecenter/OnGameInfoChangedListener;)V

    .line 1344
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->unRegisterReceivers()V

    .line 1345
    return-void
.end method

.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 984
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mIsFailed:Z

    .line 985
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->showFailed()V

    .line 986
    return-void
.end method

.method public onGameInfoProgressChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 1299
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onGameInfoProgressChanged(Ljava/lang/String;)V

    .line 1300
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->isNeedRefresh(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1309
    :cond_0
    :goto_0
    return-void

    .line 1303
    :cond_1
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->isRecomGameIn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/DelayNotifyHandler;->sendSimpleMessage(Lcom/youku/gamecenter/DelayNotifyHandler;I)V

    goto :goto_0
.end method

.method public onGameInfoStatusChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 1286
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onGameInfoStatusChanged(Ljava/lang/String;)V

    .line 1287
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->isNeedRefresh(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1295
    :goto_0
    return-void

    .line 1292
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->setRecomGamesDownloadState()V

    .line 1293
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->setDownloadState(Lcom/youku/gamecenter/data/GameInfo;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Lcom/youku/gamecenter/GameBaseActivity;->onResume()V

    .line 203
    return-void
.end method

.method public onSuccess(Lcom/youku/gamecenter/data/GameDetailInfo;)V
    .locals 3
    .param p1, "data"    # Lcom/youku/gamecenter/data/GameDetailInfo;

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->trackPageLoad()V

    .line 746
    :cond_0
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity;->isGameOnBoard(Lcom/youku/gamecenter/data/GameDetailInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 747
    sget v0, Lcom/youku/gamecenter/R$string;->on_no_board:I

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->showFailed(I)V

    .line 770
    :goto_0
    return-void

    .line 751
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mIsFailed:Z

    .line 753
    iput-object p1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDetailData:Lcom/youku/gamecenter/data/GameDetailInfo;

    .line 755
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameDetailInfo;->app:Lcom/youku/gamecenter/data/GameInfo;

    iput-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    .line 757
    const-string v0, "PlayFlow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIRELESS-33181:gamedetail slide_pic_type\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget v2, v2, Lcom/youku/gamecenter/data/GameInfo;->slide_pic_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v0, "PlayFlow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIRELESS-33181:gamedetail update_time\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/data/GameInfo;->update_time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v0, "PlayFlow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIRELESS-33181:gamedetail desc\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/data/GameInfo;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-boolean v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mFromAppId:Z

    if-eqz v0, :cond_2

    .line 766
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDetailsActivity;->sendTrackByAppId()V

    .line 769
    :cond_2
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mAppId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->fetchPresentInfoById(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDownloadState(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 4
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 1189
    if-nez p1, :cond_1

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1194
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDownloadIcon:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v2, v2, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1195
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDownloadText:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v2, v2, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageTitleId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1196
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDownloadText:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v2, v2, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageBottomBtnTxtColorId:I

    invoke-direct {p0, v2}, Lcom/youku/gamecenter/GameDetailsActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1199
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mActionTitle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v2, v2, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageTitleId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1201
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mActionTitle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v2, v2, Lcom/youku/gamecenter/data/GameInfoStatus;->homeFragmnetButtonTextColorId:I

    invoke-static {p0, v2}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1204
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mActionTitle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v2, v2, Lcom/youku/gamecenter/data/GameInfoStatus;->actionButtonBg:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1206
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v1, v1, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageDownloadProgressBarColorId:I

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GameDetailsActivity;->getThemeBackground(I)I

    move-result v0

    .line 1207
    .local v0, "backgroundColor":I
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDownloadProgress:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1208
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mInnerProgressView:Lcom/youku/gamecenter/widgets/InnerProgressView;

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v2, v2, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageBottomBtnBgId:I

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/widgets/InnerProgressView;->setBackgroundResource(I)V

    .line 1211
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v1, v2, :cond_2

    .line 1212
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDownloadText:Landroid/widget/TextView;

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

    .line 1213
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mInnerProgressView:Lcom/youku/gamecenter/widgets/InnerProgressView;

    iget v2, p1, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/widgets/InnerProgressView;->setProgressDelay(I)V

    goto :goto_0

    .line 1214
    :cond_2
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PAUSE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v1, v2, :cond_3

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_STOP:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v1, v2, :cond_4

    .line 1216
    :cond_3
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDownloadText:Landroid/widget/TextView;

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

    .line 1217
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mInnerProgressView:Lcom/youku/gamecenter/widgets/InnerProgressView;

    iget v2, p1, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/widgets/InnerProgressView;->setProgressDelay(I)V

    goto/16 :goto_0

    .line 1218
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

    .line 1221
    :cond_5
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mInnerProgressView:Lcom/youku/gamecenter/widgets/InnerProgressView;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/widgets/InnerProgressView;->setProgressDelay(I)V

    goto/16 :goto_0

    .line 1222
    :cond_6
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_INSTALLED:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v1, v2, :cond_0

    .line 1223
    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mInnerProgressView:Lcom/youku/gamecenter/widgets/InnerProgressView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/widgets/InnerProgressView;->setProgressDelay(I)V

    goto/16 :goto_0
.end method

.method public setDownloadStateDelay(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 4
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 1177
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/youku/gamecenter/GameDetailsActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/youku/gamecenter/GameDetailsActivity$5;-><init>(Lcom/youku/gamecenter/GameDetailsActivity;Lcom/youku/gamecenter/data/GameInfo;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1185
    return-void
.end method

.method public setLayout()V
    .locals 1

    .prologue
    .line 1401
    sget v0, Lcom/youku/gamecenter/R$layout;->activity_game_details:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameDetailsActivity;->setContentView(I)V

    .line 1402
    return-void
.end method

.method protected setRecomGamesDownloadState()V
    .locals 7

    .prologue
    .line 1348
    iget-object v6, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mRecomGamesView:Landroid/view/View;

    if-nez v6, :cond_1

    .line 1377
    :cond_0
    return-void

    .line 1352
    :cond_1
    iget-object v6, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mDetailData:Lcom/youku/gamecenter/data/GameDetailInfo;

    iget-object v4, v6, Lcom/youku/gamecenter/data/GameDetailInfo;->rec_games:Ljava/util/List;

    .line 1354
    .local v4, "rec_games":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 1356
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 1357
    .local v1, "game":Lcom/youku/gamecenter/data/GameInfo;
    if-nez v1, :cond_3

    .line 1354
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1361
    :cond_3
    invoke-direct {p0, v2}, Lcom/youku/gamecenter/GameDetailsActivity;->getLaoutIdByPosition(I)I

    move-result v3

    .line 1362
    .local v3, "layoutId":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    .line 1366
    iget-object v6, p0, Lcom/youku/gamecenter/GameDetailsActivity;->mRecomGamesView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1368
    .local v5, "v":Landroid/view/View;
    sget v6, Lcom/youku/gamecenter/R$id;->other_game_action:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1370
    .local v0, "action":Landroid/widget/TextView;
    iget-object v6, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v6, v6, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageTitleId:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1371
    iget-object v6, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v6, v6, Lcom/youku/gamecenter/data/GameInfoStatus;->homeFragmnetButtonTextColorId:I

    invoke-static {p0, v6}, Lcom/youku/gamecenter/util/CommonUtils;->getColorByTheme(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1374
    iget-object v6, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget v6, v6, Lcom/youku/gamecenter/data/GameInfoStatus;->actionButtonBg:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1
.end method

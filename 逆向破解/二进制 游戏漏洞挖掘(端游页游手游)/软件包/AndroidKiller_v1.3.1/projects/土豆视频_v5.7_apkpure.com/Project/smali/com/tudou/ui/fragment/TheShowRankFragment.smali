.class public Lcom/tudou/ui/fragment/TheShowRankFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "TheShowRankFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/tudou/ui/fragment/GiftFragment$GiftFragmentAnimationCallBack;


# static fields
.field private static final FAILED:I = 0x2

.field public static final HISTORY:I = 0x3

.field public static final LIVE:I = 0x1

.field private static final LOCAL_FAILED:I = 0x5

.field private static final LOCAL_SUCCESS:I = 0x4

.field public static final ONDEMAND:I = 0x2

.field private static final SUCCESS:I = 0x1

.field private static final TIMER:I = 0x3

.field public static mNeedRefresh:Z


# instance fields
.field giftClickListener:Landroid/view/View$OnClickListener;

.field private mAdapter:Lcom/tudou/adapter/TheShowRankAdapter;

.field private mBack:Landroid/view/View;

.field private mDate:Landroid/widget/TextView;

.field private mGiftFragment:Lcom/tudou/ui/fragment/GiftFragment;

.field private mGiftFragmentBackground:Landroid/view/View;

.field private mGiftFragmentContainer:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderItemCode:Ljava/lang/String;

.field private mHeaderView:Landroid/view/View;

.field private mHintView:Lcom/youku/widget/HintView;

.field private mHistory:Landroid/widget/TextView;

.field public mHistoryDate:Landroid/widget/TextView;

.field private mIsLocalData:Z

.field private mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mLoadComplete:Landroid/view/View;

.field private mLocalResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TheShowRankResults$TheShowRankResult;",
            ">;"
        }
    .end annotation
.end field

.field public mMiddle:Landroid/view/View;

.field private mNextTime:Landroid/widget/TextView;

.field private mNum:I

.field private mResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TheShowRankResults$TheShowRankResult;",
            ">;"
        }
    .end annotation
.end field

.field private mResults:Lcom/youku/vo/TheShowRankResults;

.field private mRightText:Landroid/widget/TextView;

.field private mRoomId:Ljava/lang/String;

.field private mTimer:I

.field private mTitle:Landroid/widget/TextView;

.field private mType:I

.field private mView:Landroid/view/View;

.field private mWNO:Landroid/widget/TextView;

.field private mYear:I

.field private mZBPic:Ljava/lang/String;

.field refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2",
            "<",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation
.end field

.field ruleClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mNeedRefresh:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 55
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mIsLocalData:Z

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mTimer:I

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mZBPic:Ljava/lang/String;

    .line 84
    iput v1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mYear:I

    .line 85
    iput v1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mNum:I

    .line 86
    const-string v0, "159"

    iput-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mRoomId:Ljava/lang/String;

    .line 97
    new-instance v0, Lcom/tudou/ui/fragment/TheShowRankFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/TheShowRankFragment$1;-><init>(Lcom/tudou/ui/fragment/TheShowRankFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHandler:Landroid/os/Handler;

    .line 351
    new-instance v0, Lcom/tudou/ui/fragment/TheShowRankFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/TheShowRankFragment$3;-><init>(Lcom/tudou/ui/fragment/TheShowRankFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 488
    new-instance v0, Lcom/tudou/ui/fragment/TheShowRankFragment$6;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/TheShowRankFragment$6;-><init>(Lcom/tudou/ui/fragment/TheShowRankFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->giftClickListener:Landroid/view/View$OnClickListener;

    .line 513
    new-instance v0, Lcom/tudou/ui/fragment/TheShowRankFragment$7;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/TheShowRankFragment$7;-><init>(Lcom/tudou/ui/fragment/TheShowRankFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->ruleClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/TheShowRankFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/TheShowRankFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;

    .prologue
    .line 55
    iget v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mTimer:I

    return v0
.end method

.method static synthetic access$1010(Lcom/tudou/ui/fragment/TheShowRankFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;

    .prologue
    .line 55
    iget v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mTimer:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mTimer:I

    return v0
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/TheShowRankFragment;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/TheShowRankFragment;->getTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/TheShowRankFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mNextTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tudou/ui/fragment/TheShowRankFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mLocalResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tudou/ui/fragment/TheShowRankFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;

    .prologue
    .line 55
    iget v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mYear:I

    return v0
.end method

.method static synthetic access$1500(Lcom/tudou/ui/fragment/TheShowRankFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;

    .prologue
    .line 55
    iget v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mNum:I

    return v0
.end method

.method static synthetic access$1600(Lcom/tudou/ui/fragment/TheShowRankFragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/TheShowRankFragment;->getTheShowRank(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/tudou/ui/fragment/TheShowRankFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mRoomId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/tudou/ui/fragment/TheShowRankFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;

    .prologue
    .line 55
    iget v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mType:I

    return v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/youku/vo/TheShowRankResults;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mResults:Lcom/youku/vo/TheShowRankResults;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tudou/ui/fragment/TheShowRankFragment;Lcom/youku/vo/TheShowRankResults;)Lcom/youku/vo/TheShowRankResults;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;
    .param p1, "x1"    # Lcom/youku/vo/TheShowRankResults;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mResults:Lcom/youku/vo/TheShowRankResults;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/tudou/ui/fragment/TheShowRankFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHeaderItemCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/TheShowRankFragment;Lcom/youku/vo/TheShowRankResults;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;
    .param p1, "x1"    # Lcom/youku/vo/TheShowRankResults;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/TheShowRankFragment;->setInitData(Lcom/youku/vo/TheShowRankResults;)V

    return-void
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/TheShowRankFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/TheShowRankFragment;Landroid/view/View;Lcom/youku/vo/TheShowRankResults$TheShowRankResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/youku/vo/TheShowRankResults$TheShowRankResult;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/TheShowRankFragment;->setListViewHeader(Landroid/view/View;Lcom/youku/vo/TheShowRankResults$TheShowRankResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/TheShowRankFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mLoadComplete:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/tudou/adapter/TheShowRankAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mAdapter:Lcom/tudou/adapter/TheShowRankAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/TheShowRankFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRankFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createAnimation(Z)Landroid/view/animation/TranslateAnimation;
    .locals 9
    .param p1, "b"    # Z

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 599
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_1

    move v6, v8

    :goto_0
    if-eqz p1, :cond_0

    move v8, v2

    :cond_0
    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 604
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 605
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 606
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 607
    return-object v0

    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_1
    move v6, v2

    .line 599
    goto :goto_0
.end method

.method private getTheShowRank(II)V
    .locals 9
    .param p1, "year"    # I
    .param p2, "number"    # I

    .prologue
    const/4 v8, 0x1

    .line 279
    invoke-static {p1, p2}, Lcom/youku/http/TudouURLContainer;->getTheShowRankUrl(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, "mFormatUri":Ljava/lang/String;
    iget-object v6, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v7, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mLoadComplete:Landroid/view/View;

    invoke-virtual {v6, v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z

    .line 283
    iget-boolean v6, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mIsLocalData:Z

    if-eqz v6, :cond_0

    .line 284
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mIsLocalData:Z

    .line 285
    invoke-static {v4}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 287
    :try_start_0
    invoke-static {v4}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "mCacheDataStr":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 289
    new-instance v6, Lcom/youku/vo/TheShowRankResults;

    invoke-direct {v6}, Lcom/youku/vo/TheShowRankResults;-><init>()V

    invoke-static {v3, v6}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/TheShowRankResults;

    .line 291
    .local v5, "mLocalList":Lcom/youku/vo/TheShowRankResults;
    iget-object v6, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mLocalResult:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 292
    iget-object v6, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mLocalResult:Ljava/util/ArrayList;

    iget-object v7, v5, Lcom/youku/vo/TheShowRankResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 293
    iget-object v6, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v3    # "mCacheDataStr":Ljava/lang/String;
    .end local v5    # "mLocalList":Lcom/youku/vo/TheShowRankResults;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v6

    if-nez v6, :cond_2

    .line 302
    const v6, 0x7f0d02c3

    invoke-static {v6}, Lcom/youku/util/Util;->showTips(I)V

    .line 303
    iget-object v6, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 304
    iget-object v6, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 306
    :cond_1
    iget-object v6, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 336
    :goto_1
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 296
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 310
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v1, Lcom/youku/network/HttpIntent;

    invoke-static {p1, p2}, Lcom/youku/http/TudouURLContainer;->getTheShowRankUrl(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v8}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 311
    .local v1, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v6, Lcom/youku/network/IHttpRequest;

    invoke-static {v6, v8}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/network/IHttpRequest;

    .line 313
    .local v2, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v6, Lcom/tudou/ui/fragment/TheShowRankFragment$2;

    invoke-direct {v6, p0}, Lcom/tudou/ui/fragment/TheShowRankFragment$2;-><init>(Lcom/tudou/ui/fragment/TheShowRankFragment;)V

    invoke-interface {v2, v1, v6}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_1
.end method

.method private getTime(I)Ljava/lang/String;
    .locals 5
    .param p1, "timer"    # I

    .prologue
    const/16 v4, 0xa

    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, "minute":I
    const/4 v2, 0x0

    .line 528
    .local v2, "seconds":I
    const-string v1, ""

    .line 530
    .local v1, "result":Ljava/lang/String;
    div-int/lit8 v0, p1, 0x3c

    .line 531
    mul-int/lit8 v3, v0, 0x3c

    sub-int v2, p1, v3

    .line 532
    if-ne v4, v0, :cond_1

    .line 533
    if-le v4, v2, :cond_0

    .line 534
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 546
    :goto_0
    return-object v1

    .line 536
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 539
    :cond_1
    if-le v4, v2, :cond_2

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 542
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private hideGiftFragment()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 592
    iget-object v1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mGiftFragmentContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 593
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 594
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, v2, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 595
    iget-object v1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mGiftFragment:Lcom/tudou/ui/fragment/GiftFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 596
    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 240
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->getIntentData()Z

    .line 241
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mView:Landroid/view/View;

    const v3, 0x7f0c0635

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mGiftFragmentBackground:Landroid/view/View;

    .line 242
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mGiftFragmentBackground:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mView:Landroid/view/View;

    const v3, 0x7f0c0636

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mGiftFragmentContainer:Landroid/view/View;

    .line 244
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mView:Landroid/view/View;

    const v3, 0x7f0c00df

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mTitle:Landroid/widget/TextView;

    .line 245
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mView:Landroid/view/View;

    const v3, 0x7f0c00a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mBack:Landroid/view/View;

    .line 246
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mBack:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mView:Landroid/view/View;

    const v3, 0x7f0c012f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mRightText:Landroid/widget/TextView;

    .line 248
    const/4 v2, -0x1

    iget v3, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mYear:I

    if-eq v2, v3, :cond_0

    .line 249
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mRightText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mTitle:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u7b2c "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u671f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :goto_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mRightText:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mView:Landroid/view/View;

    const v3, 0x7f0c0634

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 257
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 258
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 259
    new-instance v2, Lcom/tudou/adapter/TheShowRankAdapter;

    iget-object v3, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v4, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mResult:Ljava/util/ArrayList;

    iget v5, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mType:I

    invoke-direct {v2, v3, v4, v5}, Lcom/tudou/adapter/TheShowRankAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mAdapter:Lcom/tudou/adapter/TheShowRankAdapter;

    .line 260
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mAdapter:Lcom/tudou/adapter/TheShowRankAdapter;

    invoke-virtual {v2, p0}, Lcom/tudou/adapter/TheShowRankAdapter;->setFragment(Lcom/tudou/ui/fragment/TheShowRankFragment;)V

    .line 261
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v3, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/tudou/ui/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 262
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0301c2

    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHeaderView:Landroid/view/View;

    .line 263
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHeaderView:Landroid/view/View;

    const v3, 0x7f0c083d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mWNO:Landroid/widget/TextView;

    .line 264
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHeaderView:Landroid/view/View;

    const v3, 0x7f0c083e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mDate:Landroid/widget/TextView;

    .line 265
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHeaderView:Landroid/view/View;

    const v3, 0x7f0c083f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mMiddle:Landroid/view/View;

    .line 266
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHeaderView:Landroid/view/View;

    const v3, 0x7f0c0849

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHistoryDate:Landroid/widget/TextView;

    .line 267
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mAdapter:Lcom/tudou/adapter/TheShowRankAdapter;

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 270
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHeaderView:Landroid/view/View;

    const v3, 0x7f0c0841

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mNextTime:Landroid/widget/TextView;

    .line 271
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mView:Landroid/view/View;

    const v3, 0x7f0c00dd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/HintView;

    iput-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHintView:Lcom/youku/widget/HintView;

    .line 272
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030214

    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mLoadComplete:Landroid/view/View;

    .line 274
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mView:Landroid/view/View;

    const v3, 0x7f0c0094

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 275
    .local v1, "statusBarView":Landroid/view/View;
    invoke-static {v1}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 276
    return-void

    .line 252
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "statusBarView":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mRightText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mTitle:Landroid/widget/TextView;

    const-string v3, "THE SHOW \u97e9\u79c0\u699c"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private setInitData(Lcom/youku/vo/TheShowRankResults;)V
    .locals 8
    .param p1, "results"    # Lcom/youku/vo/TheShowRankResults;

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x4

    const/4 v5, 0x3

    .line 550
    iget-object v2, p1, Lcom/youku/vo/TheShowRankResults;->zb_picUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mZBPic:Ljava/lang/String;

    .line 551
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mWNO:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u7b2c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/youku/vo/TheShowRankResults;->wno:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u671f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/youku/vo/TheShowRankResults;->startTime:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 553
    .local v1, "sBuilderStart":Ljava/lang/StringBuilder;
    const-string v2, "."

    invoke-virtual {v1, v6, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    const-string v2, "."

    invoke-virtual {v1, v7, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/youku/vo/TheShowRankResults;->endTime:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 556
    .local v0, "sBuilderEnd":Ljava/lang/StringBuilder;
    const-string v2, "."

    invoke-virtual {v0, v6, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string v2, "."

    invoke-virtual {v0, v7, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mDate:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHistoryDate:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mResults:Lcom/youku/vo/TheShowRankResults;

    iget v2, v2, Lcom/youku/vo/TheShowRankResults;->resttime:I

    iput v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mTimer:I

    .line 561
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mResults:Lcom/youku/vo/TheShowRankResults;

    iget-object v2, v2, Lcom/youku/vo/TheShowRankResults;->roomId:Ljava/lang/String;

    iput-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mRoomId:Ljava/lang/String;

    .line 562
    const/4 v2, -0x1

    iget v3, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mYear:I

    if-eq v2, v3, :cond_1

    .line 563
    iput v5, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mType:I

    .line 564
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mWNO:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u7b2c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u671f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    :goto_0
    iget v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mTimer:I

    if-eqz v2, :cond_0

    .line 571
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 573
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mAdapter:Lcom/tudou/adapter/TheShowRankAdapter;

    iget v3, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mType:I

    invoke-virtual {v2, v3}, Lcom/tudou/adapter/TheShowRankAdapter;->setType(I)V

    .line 574
    return-void

    .line 565
    :cond_1
    iget-object v2, p1, Lcom/youku/vo/TheShowRankResults;->zb_picUrl:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, ""

    iget-object v3, p1, Lcom/youku/vo/TheShowRankResults;->zb_picUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 566
    const/4 v2, 0x1

    iput v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mType:I

    goto :goto_0

    .line 568
    :cond_2
    const/4 v2, 0x2

    iput v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mType:I

    goto :goto_0
.end method

.method private setListViewHeader(Landroid/view/View;Lcom/youku/vo/TheShowRankResults$TheShowRankResult;)V
    .locals 25
    .param p1, "headerView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/youku/vo/TheShowRankResults$TheShowRankResult;

    .prologue
    .line 364
    const v21, 0x7f0c083b

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 365
    .local v12, "number":Landroid/view/View;
    const v21, 0x7f0c0848

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 366
    .local v9, "history":Landroid/view/View;
    const v21, 0x7f0c080f

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 367
    .local v7, "background":Landroid/widget/ImageView;
    const v21, 0x7f0c0834

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 368
    .local v18, "score":Landroid/widget/TextView;
    const v21, 0x7f0c0837

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 369
    .local v6, "addScore":Landroid/widget/TextView;
    const v21, 0x7f0c0836

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 370
    .local v5, "addIcon":Landroid/widget/ImageView;
    const v21, 0x7f0c0229

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 371
    .local v13, "pic":Landroid/widget/ImageView;
    const v21, 0x7f0c082e

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 372
    .local v20, "videoName":Landroid/widget/TextView;
    const v21, 0x7f0c082f

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 373
    .local v15, "playerName":Landroid/widget/TextView;
    const v21, 0x7f0c0830

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 374
    .local v14, "playCount":Landroid/widget/TextView;
    const v21, 0x7f0c0839

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 375
    .local v8, "gift":Landroid/widget/ImageView;
    const v21, 0x7f0c012f

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 376
    .local v17, "rightText":Landroid/widget/TextView;
    const v21, 0x7f0c0843

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 377
    .local v10, "liveLayout":Landroid/view/View;
    const v21, 0x7f0c0845

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 378
    .local v11, "livePic":Landroid/widget/ImageView;
    const v21, 0x7f0c0838

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 380
    .local v16, "popularity":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 381
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 382
    new-instance v21, Lcom/tudou/ui/fragment/TheShowRankFragment$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tudou/ui/fragment/TheShowRankFragment$4;-><init>(Lcom/tudou/ui/fragment/TheShowRankFragment;)V

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mZBPic:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mZBPic:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 394
    :cond_0
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 395
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 396
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 416
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/TheShowRankFragment;->ruleClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->xc_mv_picUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v21

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->xc_mv_picUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 421
    :cond_1
    new-instance v21, Lcom/tudou/ui/fragment/TheShowRankFragment$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/tudou/ui/fragment/TheShowRankFragment$5;-><init>(Lcom/tudou/ui/fragment/TheShowRankFragment;Lcom/youku/vo/TheShowRankResults$TheShowRankResult;)V

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->title:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->description:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "\u64ad\u653e\uff1a"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p2

    iget v0, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->playTime:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/youku/util/Util;->newFormatNumber(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "\u4eba\u6c14\uff1a"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p2

    iget v0, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->vote:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/youku/util/Util;->newFormatNumber(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    new-instance v19, Landroid/text/SpannableString;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->formatTopRank:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 449
    .local v19, "sp":Landroid/text/SpannableString;
    new-instance v21, Landroid/text/style/AbsoluteSizeSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/tudou/ui/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a02e8

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->formatTopRank:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->formatTopRank:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 451
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    move-object/from16 v0, p2

    iget v0, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->changeFlag:I

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 454
    const v21, 0x7f02036a

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 455
    const-string v21, "0.00"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    const/16 v21, 0x99

    const/16 v22, 0x99

    const/16 v23, 0x99

    invoke-static/range {v21 .. v23}, Landroid/graphics/Color;->rgb(III)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 458
    :cond_2
    const/16 v21, 0x1

    move-object/from16 v0, p2

    iget v0, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->changeFlag:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 459
    const v21, 0x7f02036b

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 460
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->formatChange:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    const/16 v21, 0xff

    const/16 v22, 0x61

    const/16 v23, 0x2a

    invoke-static/range {v21 .. v23}, Landroid/graphics/Color;->rgb(III)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 463
    :cond_3
    const/16 v21, -0x1

    move-object/from16 v0, p2

    iget v0, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->changeFlag:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 464
    const v21, 0x7f020367

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 465
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->formatChange:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    const/16 v21, 0x45

    const/16 v22, 0xb0

    const/16 v23, 0x4e

    invoke-static/range {v21 .. v23}, Landroid/graphics/Color;->rgb(III)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 468
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mType:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 469
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    const v21, 0x7f0208d7

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/TheShowRankFragment;->giftClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->itemCode:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHeaderItemCode:Ljava/lang/String;

    .line 486
    :goto_1
    return-void

    .line 397
    .end local v19    # "sp":Landroid/text/SpannableString;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mType:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 398
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 399
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mTimer:I

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mMiddle:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 404
    :goto_2
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 405
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 402
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mMiddle:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 408
    :cond_7
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 409
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mMiddle:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 411
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 412
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 474
    .restart local v19    # "sp":Landroid/text/SpannableString;
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 475
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    const v21, 0x7f0208d7

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/TheShowRankFragment;->giftClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/youku/vo/TheShowRankResults$TheShowRankResult;->itemCode:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHeaderItemCode:Ljava/lang/String;

    goto/16 :goto_1

    .line 481
    :cond_9
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 482
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    const v21, 0x7f020360

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 484
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public getIntentData()Z
    .locals 3

    .prologue
    .line 339
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 340
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 342
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 343
    const-string/jumbo v2, "year"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mYear:I

    .line 344
    const-string/jumbo v2, "wno"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mNum:I

    .line 345
    const/4 v2, 0x1

    .line 348
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onAnimationEnd(Z)V
    .locals 3
    .param p1, "isOut"    # Z

    .prologue
    const/4 v2, 0x0

    .line 612
    if-eqz p1, :cond_0

    .line 613
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mGiftFragmentBackground:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mGiftFragment:Lcom/tudou/ui/fragment/GiftFragment;

    invoke-virtual {v0, v2}, Lcom/tudou/ui/fragment/GiftFragment;->setAnimationCallBack(Lcom/tudou/ui/fragment/GiftFragment$GiftFragmentAnimationCallBack;)V

    .line 615
    iput-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mGiftFragment:Lcom/tudou/ui/fragment/GiftFragment;

    .line 617
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mGiftFragment:Lcom/tudou/ui/fragment/GiftFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mGiftFragment:Lcom/tudou/ui/fragment/GiftFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/GiftFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    invoke-direct {p0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->hideGiftFragment()V

    .line 622
    const/4 v0, 0x1

    .line 624
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 203
    :sswitch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x3

    iget v3, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mType:I

    if-ne v2, v3, :cond_2

    .line 206
    const-string v2, "list"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_1
    :goto_1
    const-string/jumbo v2, "t1.find_theshow.histroy"

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 213
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 214
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const-class v3, Lcom/tudou/ui/activity/TheShowRankHistoryActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 215
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v2, v1}, Lcom/tudou/ui/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 208
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mResults:Lcom/youku/vo/TheShowRankResults;

    if-eqz v2, :cond_1

    .line 209
    const-string v2, "list"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mResults:Lcom/youku/vo/TheShowRankResults;

    iget v4, v4, Lcom/youku/vo/TheShowRankResults;->wno:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 218
    .end local v0    # "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_1
    invoke-direct {p0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->hideGiftFragment()V

    goto :goto_0

    .line 221
    :sswitch_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    goto :goto_0

    .line 224
    :sswitch_3
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_3

    .line 225
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 228
    :cond_3
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mHintView:Lcom/youku/widget/HintView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 229
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 230
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto/16 :goto_0

    .line 201
    :sswitch_data_0
    .sparse-switch
        0x7f0c00a7 -> :sswitch_2
        0x7f0c00dd -> :sswitch_3
        0x7f0c012f -> :sswitch_0
        0x7f0c0635 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mResult:Ljava/util/ArrayList;

    .line 180
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mNeedRefresh:Z

    .line 181
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 185
    const v0, 0x7f030148

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mView:Landroid/view/View;

    .line 186
    invoke-direct {p0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->initView()V

    .line 187
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mNeedRefresh:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 195
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mNeedRefresh:Z

    .line 196
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 197
    return-void
.end method

.method public showGiftFragment(Ljava/lang/String;)V
    .locals 6
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 577
    new-instance v3, Lcom/tudou/ui/fragment/GiftFragment;

    invoke-direct {v3}, Lcom/tudou/ui/fragment/GiftFragment;-><init>()V

    iput-object v3, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mGiftFragment:Lcom/tudou/ui/fragment/GiftFragment;

    .line 578
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 579
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "item_code"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v3, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mGiftFragment:Lcom/tudou/ui/fragment/GiftFragment;

    invoke-virtual {v3, v1}, Lcom/tudou/ui/fragment/GiftFragment;->setArguments(Landroid/os/Bundle;)V

    .line 581
    iget-object v3, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mGiftFragment:Lcom/tudou/ui/fragment/GiftFragment;

    invoke-virtual {v3, p0}, Lcom/tudou/ui/fragment/GiftFragment;->setAnimationCallBack(Lcom/tudou/ui/fragment/GiftFragment$GiftFragmentAnimationCallBack;)V

    .line 582
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 583
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    const v3, 0x7f0c0636

    iget-object v4, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mGiftFragment:Lcom/tudou/ui/fragment/GiftFragment;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 584
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/tudou/ui/fragment/TheShowRankFragment;->createAnimation(Z)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    .line 585
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    iget-object v3, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mGiftFragmentContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 586
    iget-object v3, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mGiftFragmentContainer:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 587
    iget-object v3, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mGiftFragmentContainer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 588
    iget-object v3, p0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mGiftFragmentBackground:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 589
    return-void
.end method

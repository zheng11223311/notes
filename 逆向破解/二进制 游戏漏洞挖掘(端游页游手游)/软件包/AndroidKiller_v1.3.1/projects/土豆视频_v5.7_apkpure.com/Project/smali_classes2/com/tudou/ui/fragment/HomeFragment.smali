.class public Lcom/tudou/ui/fragment/HomeFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/HomeFragment$MyTimerTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_HOME_LOAD_TIME:I = 0x2710

.field private static final DURATION:I = 0x12c

.field public static final GUESS_FAILED:I = 0x2

.field public static final GUESS_SUCESS:I = 0x1

.field public static final INDEX_FAILED:Ljava/lang/String; = "index_failed"

.field public static final INDEX_SUCESS:Ljava/lang/String; = "index_sucess"

.field public static final LOCAL_NOT_EXIST:I = 0x3

.field public static final NOTIFY_FAIL:I = 0xfa1

.field public static final NOTIFY_GUESS_FAILED:Ljava/lang/String; = "guess_failed"

.field public static final NOTIFY_GUESS_SUCESS:Ljava/lang/String; = "guess_sucess"

.field public static final NOTIFY_SUCESS:I = 0xfa0

.field public static isShowCaiDan:Z

.field private static mGuessAdd:Z

.field private static mGuessCardInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/CardInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mHasSlide:Z

.field public static mIndexPageData:Lcom/youku/vo/IndexPageData;

.field public static mNotifyItem:Lcom/youku/vo/IndexPageItem;

.field public static mTargetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/IndexPageItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adResult:Lcom/youku/vo/AdResult;

.field private isAdShow:Z

.field private isGoBack:Z

.field private mAdView:Landroid/view/View;

.field private mCurPosition:I

.field private mHandler:Landroid/os/Handler;

.field private mHeaderView:Lcom/tudou/adapter/SlideItemView;

.field private mHomeFragment:Landroid/view/View;

.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mImgClassify:Landroid/widget/ImageView;

.field private mImgGame:Landroid/widget/ImageView;

.field private mImgHistory:Landroid/widget/ImageView;

.field private mImgIndexHistory:Landroid/widget/ImageView;

.field private mImgMain:Landroid/widget/ImageView;

.field private mImgRecommend:Landroid/widget/ImageView;

.field private mImgSearch:Landroid/widget/ImageView;

.field private mIndexPageAdaper:Lcom/tudou/adapter/IndexPageAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsExist:Z

.field private mIsHeadAdd:Z

.field private mIsToolbarsNetValue:Z

.field private mLastPaperSize:I

.field mLoadListener:Lcom/youku/widget/TudouModuleH5$LoadListener;

.field private mLocalLayout:Landroid/widget/LinearLayout;

.field private mNeedRestartPaper:Z

.field private mNetLayout:Landroid/widget/LinearLayout;

.field private mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener",
            "<",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation
.end field

.field private mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mTimer:Ljava/util/Timer;

.field private mTitle:Landroid/view/View;

.field private mTitle1:Landroid/view/View;

.field private mTitle2:Landroid/view/View;

.field private mTxtIndexSearch:Landroid/widget/TextView;

.field private receiver:Landroid/content/BroadcastReceiver;

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

.field private toolbars_inf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/Initial$ToolbarsItem;",
            ">;"
        }
    .end annotation
.end field

.field private videoInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 101
    sput-boolean v0, Lcom/tudou/ui/fragment/HomeFragment;->mGuessAdd:Z

    .line 138
    sput-boolean v0, Lcom/tudou/ui/fragment/HomeFragment;->mHasSlide:Z

    .line 140
    sput-boolean v0, Lcom/tudou/ui/fragment/HomeFragment;->isShowCaiDan:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 88
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mIsExist:Z

    .line 146
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 543
    new-instance v0, Lcom/tudou/ui/fragment/HomeFragment$7;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/HomeFragment$7;-><init>(Lcom/tudou/ui/fragment/HomeFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 582
    new-instance v0, Lcom/tudou/ui/fragment/HomeFragment$8;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/HomeFragment$8;-><init>(Lcom/tudou/ui/fragment/HomeFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHandler:Landroid/os/Handler;

    .line 1624
    new-instance v0, Lcom/tudou/ui/fragment/HomeFragment$12;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/HomeFragment$12;-><init>(Lcom/tudou/ui/fragment/HomeFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 1655
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->isAdShow:Z

    .line 1761
    new-instance v0, Lcom/tudou/ui/fragment/HomeFragment$15;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/HomeFragment$15;-><init>(Lcom/tudou/ui/fragment/HomeFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mLoadListener:Lcom/youku/widget/TudouModuleH5$LoadListener;

    .line 1849
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->isGoBack:Z

    .line 1906
    new-instance v0, Lcom/tudou/ui/fragment/HomeFragment$17;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/HomeFragment$17;-><init>(Lcom/tudou/ui/fragment/HomeFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;

    .line 1926
    iput v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mCurPosition:I

    .line 1927
    iput v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mLastPaperSize:I

    .line 1928
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mNeedRestartPaper:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/HomeFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/tudou/adapter/IndexPageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageAdaper:Lcom/tudou/adapter/IndexPageAdapter;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/tudou/ui/fragment/HomeFragment;Lcom/tudou/adapter/IndexPageAdapter;)Lcom/tudou/adapter/IndexPageAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;
    .param p1, "x1"    # Lcom/tudou/adapter/IndexPageAdapter;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageAdaper:Lcom/tudou/adapter/IndexPageAdapter;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/HomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HomeFragment;->getAdData()V

    return-void
.end method

.method static synthetic access$1300(Lcom/tudou/ui/fragment/HomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HomeFragment;->getLocalData()V

    return-void
.end method

.method static synthetic access$1400()Ljava/util/List;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/tudou/ui/fragment/HomeFragment;->mGuessCardInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/tudou/ui/fragment/HomeFragment;->addSeprater(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/tudou/ui/fragment/HomeFragment;Lcom/youku/vo/Notifications;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;
    .param p1, "x1"    # Lcom/youku/vo/Notifications;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/HomeFragment;->onNotifyGeted(Lcom/youku/vo/Notifications;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/tudou/ui/fragment/HomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HomeFragment;->onNotifyGetfail()V

    return-void
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/tudou/ui/fragment/HomeFragment;->getGuessLocal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/tudou/ui/fragment/HomeFragment;->getIndexLocal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/HomeFragment;Landroid/os/Handler;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/HomeFragment;->getFirstNet(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/youku/vo/AdResult;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->adResult:Lcom/youku/vo/AdResult;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/tudou/ui/fragment/HomeFragment;Lcom/youku/vo/AdResult;)Lcom/youku/vo/AdResult;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;
    .param p1, "x1"    # Lcom/youku/vo/AdResult;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment;->adResult:Lcom/youku/vo/AdResult;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/tudou/ui/fragment/HomeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->isAdShow:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/tudou/ui/fragment/HomeFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mAdView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/tudou/ui/fragment/HomeFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mAdView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/tudou/ui/fragment/HomeFragment;Ljava/lang/String;)Lcom/youku/vo/SkipInfo;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/HomeFragment;->getAdSkipInfo(Ljava/lang/String;)Lcom/youku/vo/SkipInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/tudou/ui/fragment/HomeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->isGoBack:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/tudou/ui/fragment/HomeFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/HomeFragment;->isGoBack:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/tudou/ui/fragment/HomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HomeFragment;->startTimeTask()V

    return-void
.end method

.method static synthetic access$2700(Lcom/tudou/ui/fragment/HomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HomeFragment;->stopTimeTask()V

    return-void
.end method

.method static synthetic access$2800(Lcom/tudou/ui/fragment/HomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HomeFragment;->closeAd()V

    return-void
.end method

.method static synthetic access$2900(Lcom/tudou/ui/fragment/HomeFragment;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/tudou/ui/fragment/HomeFragment;->mGuessAdd:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/tudou/ui/fragment/HomeFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;

    .prologue
    .line 86
    iget v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mCurPosition:I

    return v0
.end method

.method static synthetic access$3002(Lcom/tudou/ui/fragment/HomeFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mCurPosition:I

    return p1
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 86
    sput-boolean p0, Lcom/tudou/ui/fragment/HomeFragment;->mGuessAdd:Z

    return p0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/HomeFragment;Landroid/os/Handler;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/HomeFragment;->getGuessInfo(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/HomeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mIsExist:Z

    return v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/HomeFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTxtIndexSearch:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/HomeFragment;Landroid/widget/TextView;Lcom/youku/vo/SearchArea;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Lcom/youku/vo/SearchArea;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/HomeFragment;->setSearchTxt(Landroid/widget/TextView;Lcom/youku/vo/SearchArea;)V

    return-void
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/HomeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mIsHeadAdd:Z

    return v0
.end method

.method static synthetic access$802(Lcom/tudou/ui/fragment/HomeFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mIsHeadAdd:Z

    return p1
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/tudou/adapter/SlideItemView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHeaderView:Lcom/tudou/adapter/SlideItemView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/tudou/ui/fragment/HomeFragment;Lcom/tudou/adapter/SlideItemView;)Lcom/tudou/adapter/SlideItemView;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HomeFragment;
    .param p1, "x1"    # Lcom/tudou/adapter/SlideItemView;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHeaderView:Lcom/tudou/adapter/SlideItemView;

    return-object p1
.end method

.method private addNetPress(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "aImageView"    # Landroid/widget/ImageView;
    .param p2, "defImg"    # Ljava/lang/String;
    .param p3, "pressImg"    # Ljava/lang/String;

    .prologue
    .line 486
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    new-instance v1, Lcom/tudou/ui/fragment/HomeFragment$6;

    invoke-direct {v1, p0, p1, p3}, Lcom/tudou/ui/fragment/HomeFragment$6;-><init>(Lcom/tudou/ui/fragment/HomeFragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p1, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 530
    return-void
.end method

.method private static addSeprater(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/IndexPageItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 876
    .local p0, "aTargetList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/IndexPageItem;>;"
    new-instance v0, Lcom/youku/vo/IndexPageItem;

    invoke-direct {v0}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 877
    .local v0, "sepraterItem":Lcom/youku/vo/IndexPageItem;
    const/16 v1, 0xf

    iput v1, v0, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 878
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    return-void
.end method

.method private buildNotifyItem(ILcom/youku/vo/HistoryVideo;Lcom/youku/vo/Notifications;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "historyVideo"    # Lcom/youku/vo/HistoryVideo;
    .param p3, "aNotify"    # Lcom/youku/vo/Notifications;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 847
    new-instance v1, Lcom/youku/vo/IndexPageItem;

    invoke-direct {v1}, Lcom/youku/vo/IndexPageItem;-><init>()V

    sput-object v1, Lcom/tudou/ui/fragment/HomeFragment;->mNotifyItem:Lcom/youku/vo/IndexPageItem;

    .line 848
    sget-object v1, Lcom/tudou/ui/fragment/HomeFragment;->mNotifyItem:Lcom/youku/vo/IndexPageItem;

    iput v3, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 849
    sget-object v1, Lcom/tudou/ui/fragment/HomeFragment;->mNotifyItem:Lcom/youku/vo/IndexPageItem;

    iput p1, v1, Lcom/youku/vo/IndexPageItem;->notifyType:I

    .line 850
    sget-object v1, Lcom/tudou/ui/fragment/HomeFragment;->mNotifyItem:Lcom/youku/vo/IndexPageItem;

    iput-object p2, v1, Lcom/youku/vo/IndexPageItem;->historyVideo:Lcom/youku/vo/HistoryVideo;

    .line 851
    sget-object v1, Lcom/tudou/ui/fragment/HomeFragment;->mNotifyItem:Lcom/youku/vo/IndexPageItem;

    iput-object p3, v1, Lcom/youku/vo/IndexPageItem;->mNotify:Lcom/youku/vo/Notifications;

    .line 852
    sget-object v1, Lcom/tudou/ui/fragment/HomeFragment;->mNotifyItem:Lcom/youku/vo/IndexPageItem;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/youku/vo/IndexPageItem;->hasAnimation:Z

    .line 853
    sget-object v1, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageAdaper:Lcom/tudou/adapter/IndexPageAdapter;

    if-eqz v1, :cond_1

    .line 854
    sget-boolean v1, Lcom/tudou/ui/fragment/HomeFragment;->mHasSlide:Z

    if-eqz v1, :cond_2

    .line 855
    sget-object v1, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v4, :cond_0

    .line 856
    sget-object v1, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/IndexPageItem;

    .line 857
    .local v0, "item":Lcom/youku/vo/IndexPageItem;
    iget v1, v0, Lcom/youku/vo/IndexPageItem;->itemType:I

    if-eq v1, v3, :cond_0

    .line 858
    sget-object v1, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    sget-object v2, Lcom/tudou/ui/fragment/HomeFragment;->mNotifyItem:Lcom/youku/vo/IndexPageItem;

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 869
    .end local v0    # "item":Lcom/youku/vo/IndexPageItem;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageAdaper:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/IndexPageAdapter;->notifyDataSetChanged()V

    .line 872
    :cond_1
    return-void

    .line 862
    :cond_2
    sget-object v1, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 863
    sget-object v1, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/IndexPageItem;

    .line 864
    .restart local v0    # "item":Lcom/youku/vo/IndexPageItem;
    iget v1, v0, Lcom/youku/vo/IndexPageItem;->itemType:I

    if-eq v1, v3, :cond_0

    .line 865
    sget-object v1, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    sget-object v2, Lcom/tudou/ui/fragment/HomeFragment;->mNotifyItem:Lcom/youku/vo/IndexPageItem;

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private closeAd()V
    .locals 2

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageAdaper:Lcom/tudou/adapter/IndexPageAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHeaderView:Lcom/tudou/adapter/SlideItemView;

    if-eqz v0, :cond_1

    .line 1832
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHeaderView:Lcom/tudou/adapter/SlideItemView;

    iget-object v0, v0, Lcom/tudou/adapter/SlideItemView;->mAdRootView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1834
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHeaderView:Lcom/tudou/adapter/SlideItemView;

    iget-object v0, v0, Lcom/tudou/adapter/SlideItemView;->mAdView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1835
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mAdView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1837
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->isGoBack:Z

    .line 1838
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mAdView:Landroid/view/View;

    check-cast v0, Lcom/youku/widget/TudouModuleH5;

    invoke-virtual {v0}, Lcom/youku/widget/TudouModuleH5;->goBack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1840
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mAdView:Landroid/view/View;

    .line 1842
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->isAdShow:Z

    .line 1844
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HomeFragment;->startAutoSlide()V

    .line 1845
    const-string v0, "AD"

    const-string v1, "closeAd"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    :cond_1
    return-void

    .line 1839
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private excuteNotify()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 730
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 732
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getNotify()Ljava/lang/String;

    move-result-object v2

    .line 733
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, v2, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 734
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/ui/fragment/HomeFragment$9;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/HomeFragment$9;-><init>(Lcom/tudou/ui/fragment/HomeFragment;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 791
    return-void
.end method

.method private getAdData()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1662
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HomeFragment;->closeAd()V

    .line 1664
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "openudid_prefs"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1665
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string v5, "openudid"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1667
    .local v3, "ouid":Ljava/lang/String;
    invoke-static {v3}, Lcom/youku/http/URLContainer;->getHomeADUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1668
    .local v0, "adUrl":Ljava/lang/String;
    const-string v5, "AD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAdData adUrl = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    new-instance v1, Lcom/youku/network/HttpIntent;

    invoke-direct {v1, v0, v8}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 1670
    .local v1, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v5, Lcom/youku/network/IHttpRequest;

    invoke-static {v5, v8}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/network/IHttpRequest;

    .line 1671
    .local v2, "mHttpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v5, Lcom/tudou/ui/fragment/HomeFragment$14;

    invoke-direct {v5, p0}, Lcom/tudou/ui/fragment/HomeFragment$14;-><init>(Lcom/tudou/ui/fragment/HomeFragment;)V

    invoke-interface {v2, v1, v5}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 1745
    return-void
.end method

.method private getAdSkipInfo(Ljava/lang/String;)Lcom/youku/vo/SkipInfo;
    .locals 2
    .param p1, "loadUrl"    # Ljava/lang/String;

    .prologue
    .line 1750
    new-instance v0, Lcom/youku/vo/SkipInfo;

    invoke-direct {v0}, Lcom/youku/vo/SkipInfo;-><init>()V

    .line 1751
    .local v0, "skipInfo":Lcom/youku/vo/SkipInfo;
    const-string v1, "1080"

    iput-object v1, v0, Lcom/youku/vo/SkipInfo;->the_width:Ljava/lang/String;

    .line 1752
    const-string v1, "ad\u5e7f\u544a\u6d4b\u8bd5"

    iput-object v1, v0, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    .line 1753
    const-string v1, "html"

    iput-object v1, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    .line 1754
    iput-object p1, v0, Lcom/youku/vo/SkipInfo;->skip_url:Ljava/lang/String;

    .line 1755
    const-string v1, "549"

    iput-object v1, v0, Lcom/youku/vo/SkipInfo;->the_height:Ljava/lang/String;

    .line 1756
    return-object v0
.end method

.method private getFirstNet(Landroid/os/Handler;)V
    .locals 4
    .param p1, "aHandler"    # Landroid/os/Handler;

    .prologue
    .line 240
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getHomeV5()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 242
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 244
    .local v1, "mHttpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v2, Lcom/tudou/ui/fragment/HomeFragment$2;

    invoke-direct {v2, p0, p1}, Lcom/tudou/ui/fragment/HomeFragment$2;-><init>(Lcom/tudou/ui/fragment/HomeFragment;Landroid/os/Handler;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 261
    return-void
.end method

.method private getGuessInfo(Landroid/os/Handler;)V
    .locals 4
    .param p1, "aHandler"    # Landroid/os/Handler;

    .prologue
    .line 264
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getIndexGuess()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 266
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 268
    .local v1, "mHttpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v2, Lcom/tudou/ui/fragment/HomeFragment$3;

    invoke-direct {v2, p0, p1}, Lcom/tudou/ui/fragment/HomeFragment$3;-><init>(Lcom/tudou/ui/fragment/HomeFragment;Landroid/os/Handler;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 286
    return-void
.end method

.method private static getGuessLocal()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1530
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getIndexGuess()Ljava/lang/String;

    move-result-object v4

    .line 1531
    .local v4, "tagetUrl":Ljava/lang/String;
    invoke-static {v4}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1532
    .local v3, "formatUri":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1533
    .local v0, "cacheDataStr":Ljava/lang/String;
    invoke-static {v3}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1535
    :try_start_0
    invoke-static {v3}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 1543
    .end local v0    # "cacheDataStr":Ljava/lang/String;
    .local v1, "cacheDataStr":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1537
    .end local v1    # "cacheDataStr":Ljava/lang/String;
    .restart local v0    # "cacheDataStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v1, v0

    .line 1538
    .end local v0    # "cacheDataStr":Ljava/lang/String;
    .restart local v1    # "cacheDataStr":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "cacheDataStr":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cacheDataStr":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .line 1543
    .end local v0    # "cacheDataStr":Ljava/lang/String;
    .restart local v1    # "cacheDataStr":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getIndexLocal()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1512
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getHomeV5()Ljava/lang/String;

    move-result-object v4

    .line 1513
    .local v4, "tagetUrl":Ljava/lang/String;
    invoke-static {v4}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1514
    .local v3, "formatUri":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1515
    .local v0, "cacheDataStr":Ljava/lang/String;
    invoke-static {v3}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1517
    :try_start_0
    invoke-static {v3}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 1525
    .end local v0    # "cacheDataStr":Ljava/lang/String;
    .local v1, "cacheDataStr":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1519
    .end local v1    # "cacheDataStr":Ljava/lang/String;
    .restart local v0    # "cacheDataStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v1, v0

    .line 1520
    .end local v0    # "cacheDataStr":Ljava/lang/String;
    .restart local v1    # "cacheDataStr":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "cacheDataStr":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cacheDataStr":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .line 1525
    .end local v0    # "cacheDataStr":Ljava/lang/String;
    .restart local v1    # "cacheDataStr":Ljava/lang/String;
    goto :goto_0
.end method

.method private getLocalData()V
    .locals 2

    .prologue
    .line 1548
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tudou/ui/fragment/HomeFragment$10;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/HomeFragment$10;-><init>(Lcom/tudou/ui/fragment/HomeFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1569
    return-void
.end method

.method public static getTargetDetailList(Lcom/youku/vo/IndexPageData;)Ljava/util/List;
    .locals 37
    .param p0, "aIndexPageData"    # Lcom/youku/vo/IndexPageData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/vo/IndexPageData;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/IndexPageItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 888
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 890
    .local v33, "targetList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/IndexPageItem;>;"
    new-instance v32, Lcom/youku/vo/IndexPageItem;

    invoke-direct/range {v32 .. v32}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 891
    .local v32, "solideItem":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v32

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/vo/IndexPageData;->top_slide_area:Lcom/youku/vo/IndexPageTopSlideArea;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/youku/vo/IndexPageTopSlideArea;->cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/youku/vo/IndexPageItem;->slide_cards_inf:Ljava/util/List;

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/vo/IndexPageData;->search_area:Lcom/youku/vo/SearchArea;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/youku/vo/IndexPageItem;->search_area:Lcom/youku/vo/SearchArea;

    .line 894
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/youku/vo/IndexPageItem;->slide_cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    if-eqz v35, :cond_0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/youku/vo/IndexPageItem;->slide_cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v35

    if-lez v35, :cond_0

    .line 896
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    :cond_0
    const/16 v35, 0x0

    sput-boolean v35, Lcom/tudou/ui/fragment/HomeFragment;->mHasSlide:Z

    .line 902
    new-instance v7, Lcom/youku/vo/IndexPageItem;

    invoke-direct {v7}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 903
    .local v7, "channelItem":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0x1

    move/from16 v0, v35

    iput v0, v7, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/vo/IndexPageData;->channel_list_area:Lcom/youku/vo/ChannelListArea;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iput-object v0, v7, Lcom/youku/vo/IndexPageItem;->channel_list_area:Lcom/youku/vo/ChannelListArea;

    .line 905
    move-object/from16 v0, v33

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    invoke-static/range {v33 .. v33}, Lcom/tudou/ui/fragment/HomeFragment;->addSeprater(Ljava/util/List;)V

    .line 912
    sget-object v35, Lcom/tudou/ui/fragment/HomeFragment;->mNotifyItem:Lcom/youku/vo/IndexPageItem;

    if-eqz v35, :cond_1

    .line 913
    sget-object v35, Lcom/tudou/ui/fragment/HomeFragment;->mNotifyItem:Lcom/youku/vo/IndexPageItem;

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/youku/vo/IndexPageItem;->hasAnimation:Z

    .line 914
    sget-object v35, Lcom/tudou/ui/fragment/HomeFragment;->mNotifyItem:Lcom/youku/vo/IndexPageItem;

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/vo/IndexPageData;->index_page_modules:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_31

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/youku/vo/IndexPageModuleInfo;

    .line 922
    .local v19, "info":Lcom/youku/vo/IndexPageModuleInfo;
    const-string v35, "today_hot"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->sub_type:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_9

    .line 925
    new-instance v15, Lcom/youku/vo/IndexPageItem;

    invoke-direct {v15}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 926
    .local v15, "hotTitle":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0x3

    move/from16 v0, v35

    iput v0, v15, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 927
    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 930
    new-instance v21, Lcom/youku/vo/IndexPageItem;

    invoke-direct/range {v21 .. v21}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 931
    .local v21, "item1":Lcom/youku/vo/IndexPageItem;
    new-instance v22, Lcom/youku/vo/IndexPageItem;

    invoke-direct/range {v22 .. v22}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 933
    .local v22, "item2":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, v21

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->changeType:I

    .line 934
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, v22

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->changeType:I

    .line 936
    move-object/from16 v0, v19

    iget v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->image_state:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_5

    .line 937
    const/16 v35, 0x4

    move/from16 v0, v35

    move-object/from16 v1, v21

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 938
    const/16 v35, 0x4

    move/from16 v0, v35

    move-object/from16 v1, v22

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 944
    :goto_1
    new-instance v35, Lcom/youku/vo/IndexPageModuleInfo;

    invoke-direct/range {v35 .. v35}, Lcom/youku/vo/IndexPageModuleInfo;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 945
    new-instance v35, Lcom/youku/vo/IndexPageModuleInfo;

    invoke-direct/range {v35 .. v35}, Lcom/youku/vo/IndexPageModuleInfo;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 947
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    .line 948
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    .line 951
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v26

    .line 952
    .local v26, "len":I
    rem-int/lit8 v35, v26, 0x4

    if-eqz v35, :cond_3

    .line 953
    rem-int/lit8 v35, v26, 0x4

    sub-int v26, v26, v35

    .line 957
    :cond_3
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    .line 958
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/CardInfo;

    .line 959
    .local v5, "cardInfo":Lcom/youku/vo/CardInfo;
    add-int/lit8 v35, v17, 0x1

    move/from16 v0, v35

    iput v0, v5, Lcom/youku/vo/CardInfo;->contentIndex:I

    .line 960
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->title:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iput-object v0, v5, Lcom/youku/vo/CardInfo;->channelTitle:Ljava/lang/String;

    .line 961
    rem-int/lit8 v35, v17, 0x4

    if-eqz v35, :cond_4

    rem-int/lit8 v35, v17, 0x4

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_6

    .line 962
    :cond_4
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 957
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 940
    .end local v5    # "cardInfo":Lcom/youku/vo/CardInfo;
    .end local v17    # "i":I
    .end local v26    # "len":I
    :cond_5
    const/16 v35, 0x8

    move/from16 v0, v35

    move-object/from16 v1, v21

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 941
    const/16 v35, 0x8

    move/from16 v0, v35

    move-object/from16 v1, v22

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    goto/16 :goto_1

    .line 964
    .restart local v5    # "cardInfo":Lcom/youku/vo/CardInfo;
    .restart local v17    # "i":I
    .restart local v26    # "len":I
    :cond_6
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 970
    .end local v5    # "cardInfo":Lcom/youku/vo/CardInfo;
    :cond_7
    move-object/from16 v0, v33

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    if-lez v26, :cond_8

    .line 972
    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 978
    :cond_8
    invoke-static/range {v33 .. v33}, Lcom/tudou/ui/fragment/HomeFragment;->addSeprater(Ljava/util/List;)V

    goto/16 :goto_0

    .line 979
    .end local v15    # "hotTitle":Lcom/youku/vo/IndexPageItem;
    .end local v17    # "i":I
    .end local v21    # "item1":Lcom/youku/vo/IndexPageItem;
    .end local v22    # "item2":Lcom/youku/vo/IndexPageItem;
    .end local v26    # "len":I
    :cond_9
    const-string v35, "the_html5"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->sub_type:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_a

    .line 980
    new-instance v16, Lcom/youku/vo/IndexPageItem;

    invoke-direct/range {v16 .. v16}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 981
    .local v16, "html5":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0x12

    move/from16 v0, v35

    move-object/from16 v1, v16

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 982
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 983
    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    invoke-static/range {v33 .. v33}, Lcom/tudou/ui/fragment/HomeFragment;->addSeprater(Ljava/util/List;)V

    goto/16 :goto_0

    .line 987
    .end local v16    # "html5":Lcom/youku/vo/IndexPageItem;
    :cond_a
    const-string v35, "special_topic"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->sub_type:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_b

    .line 989
    new-instance v34, Lcom/youku/vo/IndexPageItem;

    invoke-direct/range {v34 .. v34}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 990
    .local v34, "topicTitle":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0x5

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 991
    move-object/from16 v0, v19

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 994
    new-instance v21, Lcom/youku/vo/IndexPageItem;

    invoke-direct/range {v21 .. v21}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 995
    .restart local v21    # "item1":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0x11

    move/from16 v0, v35

    move-object/from16 v1, v21

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 996
    new-instance v35, Lcom/youku/vo/IndexPageModuleInfo;

    invoke-direct/range {v35 .. v35}, Lcom/youku/vo/IndexPageModuleInfo;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 997
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    .line 998
    new-instance v5, Lcom/youku/vo/CardInfo;

    invoke-direct {v5}, Lcom/youku/vo/CardInfo;-><init>()V

    .line 999
    .restart local v5    # "cardInfo":Lcom/youku/vo/CardInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cover_image:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iput-object v0, v5, Lcom/youku/vo/CardInfo;->image_720_366:Ljava/lang/String;

    .line 1000
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iput-object v0, v5, Lcom/youku/vo/CardInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 1001
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    invoke-interface/range {v33 .. v34}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    invoke-static/range {v33 .. v33}, Lcom/tudou/ui/fragment/HomeFragment;->addSeprater(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1009
    .end local v5    # "cardInfo":Lcom/youku/vo/CardInfo;
    .end local v21    # "item1":Lcom/youku/vo/IndexPageItem;
    .end local v34    # "topicTitle":Lcom/youku/vo/IndexPageItem;
    :cond_b
    const-string v35, "normal_tab"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->sub_type:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_c

    const-string v35, "laifeng"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->sub_type:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_23

    .line 1011
    :cond_c
    new-instance v28, Lcom/youku/vo/IndexPageItem;

    invoke-direct/range {v28 .. v28}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 1012
    .local v28, "normalTitle":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0x7

    move/from16 v0, v35

    move-object/from16 v1, v28

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 1013
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 1015
    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    const/4 v13, 0x0

    .line 1019
    .local v13, "hasBigImg":Z
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    if-eqz v35, :cond_d

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v35

    if-lez v35, :cond_d

    .line 1020
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-interface/range {v35 .. v36}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/youku/vo/CardInfo;

    .line 1021
    .local v10, "fistCard":Lcom/youku/vo/CardInfo;
    iget v0, v10, Lcom/youku/vo/CardInfo;->is_big_image:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_d

    .line 1022
    const/16 v35, 0x1

    move/from16 v0, v35

    iput v0, v10, Lcom/youku/vo/CardInfo;->contentIndex:I

    .line 1023
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->title:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iput-object v0, v10, Lcom/youku/vo/CardInfo;->channelTitle:Ljava/lang/String;

    .line 1025
    new-instance v29, Lcom/youku/vo/IndexPageItem;

    invoke-direct/range {v29 .. v29}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 1026
    .local v29, "paperItem":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0x6

    move/from16 v0, v35

    move-object/from16 v1, v29

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 1027
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 1028
    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1029
    const/4 v13, 0x1

    .line 1035
    .end local v10    # "fistCard":Lcom/youku/vo/CardInfo;
    .end local v29    # "paperItem":Lcom/youku/vo/IndexPageItem;
    :cond_d
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v26

    .line 1036
    .restart local v26    # "len":I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->image_state:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_e

    const/16 v20, 0x1

    .line 1037
    .local v20, "isHor":Z
    :goto_4
    if-eqz v13, :cond_16

    .line 1038
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    .local v6, "cardInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    const/16 v17, 0x1

    .restart local v17    # "i":I
    :goto_5
    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_f

    .line 1040
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/CardInfo;

    .line 1042
    .restart local v5    # "cardInfo":Lcom/youku/vo/CardInfo;
    add-int/lit8 v35, v17, 0x1

    move/from16 v0, v35

    iput v0, v5, Lcom/youku/vo/CardInfo;->contentIndex:I

    .line 1043
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->title:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iput-object v0, v5, Lcom/youku/vo/CardInfo;->channelTitle:Ljava/lang/String;

    .line 1044
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 1036
    .end local v5    # "cardInfo":Lcom/youku/vo/CardInfo;
    .end local v6    # "cardInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    .end local v17    # "i":I
    .end local v20    # "isHor":Z
    :cond_e
    const/16 v20, 0x0

    goto :goto_4

    .line 1046
    .restart local v6    # "cardInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    .restart local v17    # "i":I
    .restart local v20    # "isHor":Z
    :cond_f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v30

    .line 1047
    .local v30, "restLen":I
    if-eqz v20, :cond_12

    .line 1048
    rem-int/lit8 v35, v30, 0x2

    if-eqz v35, :cond_10

    .line 1049
    add-int/lit8 v30, v30, -0x1

    .line 1051
    :cond_10
    const/16 v23, 0x0

    .line 1052
    .local v23, "itemHor":Lcom/youku/vo/IndexPageItem;
    const/4 v8, 0x0

    .line 1053
    .local v8, "dataHor":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    const/16 v17, 0x0

    :goto_6
    move/from16 v0, v17

    move/from16 v1, v30

    if-ge v0, v1, :cond_1d

    .line 1054
    rem-int/lit8 v35, v17, 0x2

    if-nez v35, :cond_11

    .line 1055
    new-instance v23, Lcom/youku/vo/IndexPageItem;

    .end local v23    # "itemHor":Lcom/youku/vo/IndexPageItem;
    invoke-direct/range {v23 .. v23}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 1056
    .restart local v23    # "itemHor":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0x4

    move/from16 v0, v35

    move-object/from16 v1, v23

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 1057
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "dataHor":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    .restart local v8    # "dataHor":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    move/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    :goto_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 1060
    :cond_11
    move/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    new-instance v35, Lcom/youku/vo/IndexPageModuleInfo;

    invoke-direct/range {v35 .. v35}, Lcom/youku/vo/IndexPageModuleInfo;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 1062
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iput-object v8, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    .line 1063
    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1069
    .end local v8    # "dataHor":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    .end local v23    # "itemHor":Lcom/youku/vo/IndexPageItem;
    :cond_12
    rem-int/lit8 v35, v30, 0x3

    if-eqz v35, :cond_13

    .line 1070
    rem-int/lit8 v35, v30, 0x3

    sub-int v30, v30, v35

    .line 1072
    :cond_13
    const/16 v24, 0x0

    .line 1073
    .local v24, "itemVer":Lcom/youku/vo/IndexPageItem;
    const/4 v9, 0x0

    .line 1074
    .local v9, "dataVer":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    const/16 v17, 0x0

    :goto_8
    move/from16 v0, v17

    move/from16 v1, v30

    if-ge v0, v1, :cond_1d

    .line 1075
    rem-int/lit8 v35, v17, 0x3

    if-nez v35, :cond_14

    .line 1076
    new-instance v24, Lcom/youku/vo/IndexPageItem;

    .end local v24    # "itemVer":Lcom/youku/vo/IndexPageItem;
    invoke-direct/range {v24 .. v24}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 1077
    .restart local v24    # "itemVer":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0x8

    move/from16 v0, v35

    move-object/from16 v1, v24

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 1078
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "dataVer":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1079
    .restart local v9    # "dataVer":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    move/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    :goto_9
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 1080
    :cond_14
    rem-int/lit8 v35, v17, 0x3

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_15

    .line 1081
    move/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1083
    :cond_15
    move/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1084
    new-instance v35, Lcom/youku/vo/IndexPageModuleInfo;

    invoke-direct/range {v35 .. v35}, Lcom/youku/vo/IndexPageModuleInfo;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 1085
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iput-object v9, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    .line 1086
    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1091
    .end local v6    # "cardInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    .end local v9    # "dataVer":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    .end local v17    # "i":I
    .end local v24    # "itemVer":Lcom/youku/vo/IndexPageItem;
    .end local v30    # "restLen":I
    :cond_16
    if-eqz v20, :cond_19

    .line 1092
    rem-int/lit8 v35, v26, 0x2

    if-eqz v35, :cond_17

    .line 1093
    add-int/lit8 v26, v26, -0x1

    .line 1095
    :cond_17
    const/16 v23, 0x0

    .line 1096
    .restart local v23    # "itemHor":Lcom/youku/vo/IndexPageItem;
    const/4 v8, 0x0

    .line 1097
    .restart local v8    # "dataHor":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_a
    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_1d

    .line 1098
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/CardInfo;

    .line 1099
    .restart local v5    # "cardInfo":Lcom/youku/vo/CardInfo;
    add-int/lit8 v35, v17, 0x1

    move/from16 v0, v35

    iput v0, v5, Lcom/youku/vo/CardInfo;->contentIndex:I

    .line 1100
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->title:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iput-object v0, v5, Lcom/youku/vo/CardInfo;->channelTitle:Ljava/lang/String;

    .line 1101
    rem-int/lit8 v35, v17, 0x2

    if-nez v35, :cond_18

    .line 1102
    new-instance v23, Lcom/youku/vo/IndexPageItem;

    .end local v23    # "itemHor":Lcom/youku/vo/IndexPageItem;
    invoke-direct/range {v23 .. v23}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 1103
    .restart local v23    # "itemHor":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0x4

    move/from16 v0, v35

    move-object/from16 v1, v23

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 1104
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "dataHor":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1105
    .restart local v8    # "dataHor":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    :goto_b
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 1107
    :cond_18
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    new-instance v35, Lcom/youku/vo/IndexPageModuleInfo;

    invoke-direct/range {v35 .. v35}, Lcom/youku/vo/IndexPageModuleInfo;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 1109
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iput-object v8, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    .line 1110
    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1116
    .end local v5    # "cardInfo":Lcom/youku/vo/CardInfo;
    .end local v8    # "dataHor":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    .end local v17    # "i":I
    .end local v23    # "itemHor":Lcom/youku/vo/IndexPageItem;
    :cond_19
    rem-int/lit8 v35, v26, 0x3

    if-eqz v35, :cond_1a

    .line 1117
    rem-int/lit8 v35, v26, 0x3

    sub-int v26, v26, v35

    .line 1119
    :cond_1a
    const/16 v24, 0x0

    .line 1120
    .restart local v24    # "itemVer":Lcom/youku/vo/IndexPageItem;
    const/4 v9, 0x0

    .line 1121
    .restart local v9    # "dataVer":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_c
    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_1d

    .line 1122
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/CardInfo;

    .line 1123
    .restart local v5    # "cardInfo":Lcom/youku/vo/CardInfo;
    add-int/lit8 v35, v17, 0x1

    move/from16 v0, v35

    iput v0, v5, Lcom/youku/vo/CardInfo;->contentIndex:I

    .line 1124
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->title:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iput-object v0, v5, Lcom/youku/vo/CardInfo;->channelTitle:Ljava/lang/String;

    .line 1125
    rem-int/lit8 v35, v17, 0x3

    if-nez v35, :cond_1b

    .line 1126
    new-instance v24, Lcom/youku/vo/IndexPageItem;

    .end local v24    # "itemVer":Lcom/youku/vo/IndexPageItem;
    invoke-direct/range {v24 .. v24}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 1127
    .restart local v24    # "itemVer":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0x8

    move/from16 v0, v35

    move-object/from16 v1, v24

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 1128
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "dataVer":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1129
    .restart local v9    # "dataVer":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    :goto_d
    add-int/lit8 v17, v17, 0x1

    goto :goto_c

    .line 1130
    :cond_1b
    rem-int/lit8 v35, v17, 0x3

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1c

    .line 1131
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1133
    :cond_1c
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    new-instance v35, Lcom/youku/vo/IndexPageModuleInfo;

    invoke-direct/range {v35 .. v35}, Lcom/youku/vo/IndexPageModuleInfo;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 1135
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iput-object v9, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    .line 1136
    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1142
    .end local v5    # "cardInfo":Lcom/youku/vo/CardInfo;
    .end local v9    # "dataVer":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardInfo;>;"
    .end local v24    # "itemVer":Lcom/youku/vo/IndexPageItem;
    :cond_1d
    const-string v35, "normal"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->bottom_label_type:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_21

    .line 1143
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->module_bottom_labels:Ljava/util/List;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1e

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->module_bottom_labels:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v35

    if-lez v35, :cond_1e

    .line 1144
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->module_bottom_labels:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v35

    const/16 v36, 0x5

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_20

    .line 1145
    new-instance v2, Lcom/youku/vo/IndexPageItem;

    invoke-direct {v2}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 1146
    .local v2, "bottomLable":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0x10

    move/from16 v0, v35

    iput v0, v2, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 1147
    move-object/from16 v0, v19

    iput-object v0, v2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 1148
    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1183
    .end local v2    # "bottomLable":Lcom/youku/vo/IndexPageItem;
    :cond_1e
    :goto_e
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->module_more_pos:Ljava/util/List;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1f

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->module_more_pos:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v35

    if-lez v35, :cond_1f

    .line 1184
    new-instance v3, Lcom/youku/vo/IndexPageItem;

    invoke-direct {v3}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 1185
    .local v3, "bottomSkip":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0xa

    move/from16 v0, v35

    iput v0, v3, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 1186
    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 1187
    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    .end local v3    # "bottomSkip":Lcom/youku/vo/IndexPageItem;
    :cond_1f
    invoke-static/range {v33 .. v33}, Lcom/tudou/ui/fragment/HomeFragment;->addSeprater(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1150
    :cond_20
    new-instance v2, Lcom/youku/vo/IndexPageItem;

    invoke-direct {v2}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 1151
    .restart local v2    # "bottomLable":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0xb

    move/from16 v0, v35

    iput v0, v2, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 1152
    move-object/from16 v0, v19

    iput-object v0, v2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 1153
    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1157
    .end local v2    # "bottomLable":Lcom/youku/vo/IndexPageItem;
    :cond_21
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->week_schedule_labels:Lcom/youku/vo/WeekScheduleLabels;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1e

    .line 1158
    new-instance v4, Lcom/youku/vo/IndexPageItem;

    invoke-direct {v4}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 1159
    .local v4, "bottomWeek":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0x9

    move/from16 v0, v35

    iput v0, v4, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 1160
    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 1161
    iget-object v0, v4, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->week_schedule_labels:Lcom/youku/vo/WeekScheduleLabels;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/youku/vo/WeekScheduleLabels;->item:Ljava/util/List;

    move-object/from16 v35, v0

    if-eqz v35, :cond_22

    .line 1163
    new-instance v25, Lcom/youku/vo/WeekScheduleItem;

    invoke-direct/range {v25 .. v25}, Lcom/youku/vo/WeekScheduleItem;-><init>()V

    .line 1164
    .local v25, "lastItem":Lcom/youku/vo/WeekScheduleItem;
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, v25

    iput v0, v1, Lcom/youku/vo/WeekScheduleItem;->itemType:I

    .line 1165
    iget-object v0, v4, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->week_schedule_labels:Lcom/youku/vo/WeekScheduleLabels;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/youku/vo/WeekScheduleLabels;->skip_inf:Lcom/youku/vo/SkipInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/youku/vo/WeekScheduleItem;->title:Ljava/lang/String;

    .line 1166
    iget-object v0, v4, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->week_schedule_labels:Lcom/youku/vo/WeekScheduleLabels;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/youku/vo/WeekScheduleLabels;->skip_inf:Lcom/youku/vo/SkipInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/youku/vo/SkipInfo;->channel_id:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/youku/vo/WeekScheduleItem;->channel_id:Ljava/lang/String;

    .line 1167
    iget-object v0, v4, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->week_schedule_labels:Lcom/youku/vo/WeekScheduleLabels;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/youku/vo/WeekScheduleLabels;->item:Ljava/util/List;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1179
    .end local v25    # "lastItem":Lcom/youku/vo/WeekScheduleItem;
    :cond_22
    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 1193
    .end local v4    # "bottomWeek":Lcom/youku/vo/IndexPageItem;
    .end local v13    # "hasBigImg":Z
    .end local v17    # "i":I
    .end local v20    # "isHor":Z
    .end local v26    # "len":I
    .end local v28    # "normalTitle":Lcom/youku/vo/IndexPageItem;
    :cond_23
    const-string v35, "selectness_tab"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->sub_type:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_25

    .line 1194
    new-instance v31, Lcom/youku/vo/IndexPageItem;

    invoke-direct/range {v31 .. v31}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 1195
    .local v31, "selectnessItem":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0xc

    move/from16 v0, v35

    move-object/from16 v1, v31

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 1197
    new-instance v14, Lcom/youku/vo/CardInfo;

    invoke-direct {v14}, Lcom/youku/vo/CardInfo;-><init>()V

    .line 1198
    .local v14, "headCard":Lcom/youku/vo/CardInfo;
    const/16 v35, 0x1

    move/from16 v0, v35

    iput v0, v14, Lcom/youku/vo/CardInfo;->cardType:I

    .line 1199
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->sub_title:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iput-object v0, v14, Lcom/youku/vo/CardInfo;->title:Ljava/lang/String;

    .line 1200
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    if-nez v35, :cond_24

    .line 1201
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    .line 1203
    :cond_24
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-interface {v0, v1, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1209
    move-object/from16 v0, v19

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 1210
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1211
    .end local v14    # "headCard":Lcom/youku/vo/CardInfo;
    .end local v31    # "selectnessItem":Lcom/youku/vo/IndexPageItem;
    :cond_25
    const-string v35, "podcast_tab"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->sub_type:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2c

    .line 1213
    new-instance v27, Lcom/youku/vo/IndexPageItem;

    invoke-direct/range {v27 .. v27}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 1214
    .local v27, "normalTile":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0x3

    move/from16 v0, v35

    move-object/from16 v1, v27

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 1215
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 1216
    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v26

    .line 1219
    .restart local v26    # "len":I
    rem-int/lit8 v35, v26, 0x4

    if-eqz v35, :cond_26

    .line 1220
    rem-int/lit8 v35, v26, 0x4

    sub-int v26, v26, v35

    .line 1227
    :cond_26
    new-instance v21, Lcom/youku/vo/IndexPageItem;

    invoke-direct/range {v21 .. v21}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 1228
    .restart local v21    # "item1":Lcom/youku/vo/IndexPageItem;
    new-instance v22, Lcom/youku/vo/IndexPageItem;

    invoke-direct/range {v22 .. v22}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 1230
    .restart local v22    # "item2":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0xd

    move/from16 v0, v35

    move-object/from16 v1, v21

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 1231
    const/16 v35, 0xd

    move/from16 v0, v35

    move-object/from16 v1, v22

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 1233
    new-instance v35, Lcom/youku/vo/IndexPageModuleInfo;

    invoke-direct/range {v35 .. v35}, Lcom/youku/vo/IndexPageModuleInfo;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 1234
    new-instance v35, Lcom/youku/vo/IndexPageModuleInfo;

    invoke-direct/range {v35 .. v35}, Lcom/youku/vo/IndexPageModuleInfo;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 1236
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    .line 1237
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    .line 1238
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_f
    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_29

    .line 1239
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/CardInfo;

    .line 1240
    .restart local v5    # "cardInfo":Lcom/youku/vo/CardInfo;
    add-int/lit8 v35, v17, 0x1

    move/from16 v0, v35

    iput v0, v5, Lcom/youku/vo/CardInfo;->contentIndex:I

    .line 1241
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->title:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iput-object v0, v5, Lcom/youku/vo/CardInfo;->channelTitle:Ljava/lang/String;

    .line 1242
    rem-int/lit8 v35, v17, 0x4

    if-eqz v35, :cond_27

    rem-int/lit8 v35, v17, 0x4

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_28

    .line 1243
    :cond_27
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1238
    :goto_10
    add-int/lit8 v17, v17, 0x1

    goto :goto_f

    .line 1245
    :cond_28
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1249
    .end local v5    # "cardInfo":Lcom/youku/vo/CardInfo;
    :cond_29
    if-lez v26, :cond_2a

    .line 1250
    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1270
    :cond_2a
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->module_more_pos:Ljava/util/List;

    move-object/from16 v35, v0

    if-eqz v35, :cond_2b

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->module_more_pos:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v35

    if-lez v35, :cond_2b

    .line 1271
    new-instance v3, Lcom/youku/vo/IndexPageItem;

    invoke-direct {v3}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 1272
    .restart local v3    # "bottomSkip":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0xa

    move/from16 v0, v35

    iput v0, v3, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 1273
    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 1274
    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1278
    .end local v3    # "bottomSkip":Lcom/youku/vo/IndexPageItem;
    :cond_2b
    invoke-static/range {v33 .. v33}, Lcom/tudou/ui/fragment/HomeFragment;->addSeprater(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1280
    .end local v17    # "i":I
    .end local v21    # "item1":Lcom/youku/vo/IndexPageItem;
    .end local v22    # "item2":Lcom/youku/vo/IndexPageItem;
    .end local v26    # "len":I
    .end local v27    # "normalTile":Lcom/youku/vo/IndexPageItem;
    :cond_2c
    const-string v35, "guess_tab"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->sub_type:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2

    sget-object v35, Lcom/tudou/ui/fragment/HomeFragment;->mGuessCardInfo:Ljava/util/List;

    if-eqz v35, :cond_2

    sget-object v35, Lcom/tudou/ui/fragment/HomeFragment;->mGuessCardInfo:Ljava/util/List;

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v35

    if-lez v35, :cond_2

    .line 1282
    new-instance v12, Lcom/youku/vo/IndexPageItem;

    invoke-direct {v12}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 1283
    .local v12, "guessTitle":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0x3

    move/from16 v0, v35

    iput v0, v12, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 1284
    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 1285
    iget-object v0, v12, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    sget-object v36, Lcom/tudou/ui/fragment/HomeFragment;->mGuessCardInfo:Ljava/util/List;

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    .line 1289
    new-instance v21, Lcom/youku/vo/IndexPageItem;

    invoke-direct/range {v21 .. v21}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 1290
    .restart local v21    # "item1":Lcom/youku/vo/IndexPageItem;
    new-instance v22, Lcom/youku/vo/IndexPageItem;

    invoke-direct/range {v22 .. v22}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 1292
    .restart local v22    # "item2":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0x2

    move/from16 v0, v35

    move-object/from16 v1, v21

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->changeType:I

    .line 1293
    const/16 v35, 0x2

    move/from16 v0, v35

    move-object/from16 v1, v22

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->changeType:I

    .line 1295
    move-object/from16 v0, v19

    iget v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->image_state:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2e

    .line 1296
    const/16 v35, 0x4

    move/from16 v0, v35

    move-object/from16 v1, v21

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 1297
    const/16 v35, 0x4

    move/from16 v0, v35

    move-object/from16 v1, v22

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 1303
    :goto_11
    new-instance v35, Lcom/youku/vo/IndexPageModuleInfo;

    invoke-direct/range {v35 .. v35}, Lcom/youku/vo/IndexPageModuleInfo;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 1304
    new-instance v35, Lcom/youku/vo/IndexPageModuleInfo;

    invoke-direct/range {v35 .. v35}, Lcom/youku/vo/IndexPageModuleInfo;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    .line 1306
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    .line 1307
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    .line 1308
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_12
    sget-object v35, Lcom/tudou/ui/fragment/HomeFragment;->mGuessCardInfo:Ljava/util/List;

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v35

    move/from16 v0, v17

    move/from16 v1, v35

    if-ge v0, v1, :cond_30

    .line 1309
    sget-object v35, Lcom/tudou/ui/fragment/HomeFragment;->mGuessCardInfo:Ljava/util/List;

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/CardInfo;

    .line 1310
    .restart local v5    # "cardInfo":Lcom/youku/vo/CardInfo;
    add-int/lit8 v35, v17, 0x1

    move/from16 v0, v35

    iput v0, v5, Lcom/youku/vo/CardInfo;->contentIndex:I

    .line 1311
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->title:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iput-object v0, v5, Lcom/youku/vo/CardInfo;->channelTitle:Ljava/lang/String;

    .line 1312
    rem-int/lit8 v35, v17, 0x4

    if-eqz v35, :cond_2d

    rem-int/lit8 v35, v17, 0x4

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2f

    .line 1313
    :cond_2d
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1308
    :goto_13
    add-int/lit8 v17, v17, 0x1

    goto :goto_12

    .line 1299
    .end local v5    # "cardInfo":Lcom/youku/vo/CardInfo;
    .end local v17    # "i":I
    :cond_2e
    const/16 v35, 0x8

    move/from16 v0, v35

    move-object/from16 v1, v21

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 1300
    const/16 v35, 0x8

    move/from16 v0, v35

    move-object/from16 v1, v22

    iput v0, v1, Lcom/youku/vo/IndexPageItem;->itemType:I

    goto/16 :goto_11

    .line 1315
    .restart local v5    # "cardInfo":Lcom/youku/vo/CardInfo;
    .restart local v17    # "i":I
    :cond_2f
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/youku/vo/IndexPageModuleInfo;->cards_inf:Ljava/util/List;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 1321
    .end local v5    # "cardInfo":Lcom/youku/vo/CardInfo;
    :cond_30
    move-object/from16 v0, v33

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1322
    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1323
    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1326
    invoke-static/range {v33 .. v33}, Lcom/tudou/ui/fragment/HomeFragment;->addSeprater(Ljava/util/List;)V

    .line 1327
    const/16 v35, 0x1

    sput-boolean v35, Lcom/tudou/ui/fragment/HomeFragment;->mGuessAdd:Z

    goto/16 :goto_0

    .line 1335
    .end local v12    # "guessTitle":Lcom/youku/vo/IndexPageItem;
    .end local v17    # "i":I
    .end local v19    # "info":Lcom/youku/vo/IndexPageModuleInfo;
    .end local v21    # "item1":Lcom/youku/vo/IndexPageItem;
    .end local v22    # "item2":Lcom/youku/vo/IndexPageItem;
    :cond_31
    new-instance v11, Lcom/youku/vo/IndexPageItem;

    invoke-direct {v11}, Lcom/youku/vo/IndexPageItem;-><init>()V

    .line 1336
    .local v11, "footItem":Lcom/youku/vo/IndexPageItem;
    const/16 v35, 0xe

    move/from16 v0, v35

    iput v0, v11, Lcom/youku/vo/IndexPageItem;->itemType:I

    .line 1337
    move-object/from16 v0, v33

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1339
    return-object v33
.end method

.method private initTitle()V
    .locals 13

    .prologue
    const v12, 0x7f0c072f

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 380
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/HomePageActivity;

    .line 381
    .local v0, "activity":Lcom/tudou/ui/activity/HomePageActivity;
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHomeFragment:Landroid/view/View;

    const v8, 0x7f0c0753

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle1:Landroid/view/View;

    .line 382
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHomeFragment:Landroid/view/View;

    const v8, 0x7f0c0754

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle2:Landroid/view/View;

    .line 384
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHomeFragment:Landroid/view/View;

    const v8, 0x7f0c00f2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle:Landroid/view/View;

    .line 386
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle2:Landroid/view/View;

    const v8, 0x7f0c0750

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mLocalLayout:Landroid/widget/LinearLayout;

    .line 387
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle2:Landroid/view/View;

    const v8, 0x7f0c0752

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mNetLayout:Landroid/widget/LinearLayout;

    .line 388
    iget-boolean v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mIsToolbarsNetValue:Z

    if-eqz v7, :cond_0

    .line 389
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mLocalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 390
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mNetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 392
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a02ea

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    .line 393
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a02e9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .line 394
    .local v3, "imgWidth":I
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->toolbars_inf:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/Initial$ToolbarsItem;

    .line 396
    .local v4, "item":Lcom/youku/vo/Initial$ToolbarsItem;
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 397
    .local v5, "layout":Landroid/widget/LinearLayout;
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v6, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 400
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 401
    .local v2, "imageView":Landroid/widget/ImageView;
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 403
    iget-object v7, v4, Lcom/youku/vo/Initial$ToolbarsItem;->icon_for_phone:Ljava/lang/String;

    iget-object v8, v4, Lcom/youku/vo/Initial$ToolbarsItem;->selected_icon_for_phone:Ljava/lang/String;

    invoke-direct {p0, v2, v7, v8}, Lcom/tudou/ui/fragment/HomeFragment;->addNetPress(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    new-instance v7, Lcom/tudou/ui/fragment/HomeFragment$4;

    invoke-direct {v7, p0, v4}, Lcom/tudou/ui/fragment/HomeFragment$4;-><init>(Lcom/tudou/ui/fragment/HomeFragment;Lcom/youku/vo/Initial$ToolbarsItem;)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 424
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mNetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 428
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "imgWidth":I
    .end local v4    # "item":Lcom/youku/vo/Initial$ToolbarsItem;
    .end local v5    # "layout":Landroid/widget/LinearLayout;
    .end local v6    # "width":I
    :cond_0
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mLocalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 429
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mNetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 432
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle2:Landroid/view/View;

    const v8, 0x7f0c072c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgRecommend:Landroid/widget/ImageView;

    .line 433
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle2:Landroid/view/View;

    const v8, 0x7f0c072d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgGame:Landroid/widget/ImageView;

    .line 434
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HomeFragment;->setImageResource()V

    .line 435
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle2:Landroid/view/View;

    const v8, 0x7f0c0730

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgSearch:Landroid/widget/ImageView;

    .line 436
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle2:Landroid/view/View;

    const v8, 0x7f0c0751

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgClassify:Landroid/widget/ImageView;

    .line 437
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle2:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgHistory:Landroid/widget/ImageView;

    .line 439
    sget-boolean v7, Lcom/tudou/android/Youku;->isApp_market_control:Z

    if-eqz v7, :cond_3

    .line 440
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgRecommend:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 444
    :goto_1
    const-string v7, "test1"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initTitle isGame_Show = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/tudou/android/Youku;->isGame_Show:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    sget-boolean v7, Lcom/tudou/android/Youku;->isGame_Show:Z

    if-eqz v7, :cond_4

    .line 446
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgGame:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 451
    :goto_2
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgRecommend:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgGame:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgSearch:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgClassify:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgHistory:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    :cond_1
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle1:Landroid/view/View;

    const v8, 0x7f0c0755

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTxtIndexSearch:Landroid/widget/TextView;

    .line 461
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle1:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgIndexHistory:Landroid/widget/ImageView;

    .line 463
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTxtIndexSearch:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgIndexHistory:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    sget-object v7, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    if-eqz v7, :cond_2

    sget-object v7, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v7, v7, Lcom/youku/vo/Initial;->tudou_logo:Lcom/youku/vo/Initial$TudouLogo;

    if-eqz v7, :cond_2

    sget-object v7, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v7, v7, Lcom/youku/vo/Initial;->tudou_logo:Lcom/youku/vo/Initial$TudouLogo;

    iget-object v7, v7, Lcom/youku/vo/Initial$TudouLogo;->logo:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 466
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle2:Landroid/view/View;

    const v8, 0x7f0c0729

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgMain:Landroid/widget/ImageView;

    .line 467
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    sget-object v8, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v8, v8, Lcom/youku/vo/Initial;->tudou_logo:Lcom/youku/vo/Initial$TudouLogo;

    iget-object v8, v8, Lcom/youku/vo/Initial$TudouLogo;->logo:Ljava/lang/String;

    iget-object v9, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgMain:Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 468
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgMain:Landroid/widget/ImageView;

    new-instance v8, Lcom/tudou/ui/fragment/HomeFragment$5;

    invoke-direct {v8, p0}, Lcom/tudou/ui/fragment/HomeFragment$5;-><init>(Lcom/tudou/ui/fragment/HomeFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    :cond_2
    return-void

    .line 442
    :cond_3
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgRecommend:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 448
    :cond_4
    iget-object v7, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgGame:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private initView(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 365
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030123

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHomeFragment:Landroid/view/View;

    .line 368
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHomeFragment:Landroid/view/View;

    const v2, 0x7f0c0094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 369
    .local v0, "statusBarView":Landroid/view/View;
    invoke-static {v0}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 371
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHomeFragment:Landroid/view/View;

    const v2, 0x7f0c050e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 374
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 375
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment;->mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnPullEventListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;)V

    .line 377
    return-void
.end method

.method private onNotifyGeted(Lcom/youku/vo/Notifications;)V
    .locals 0
    .param p1, "notify"    # Lcom/youku/vo/Notifications;

    .prologue
    .line 795
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/HomeFragment;->setHistoryVisible(Lcom/youku/vo/Notifications;)V

    .line 796
    return-void
.end method

.method private onNotifyGetfail()V
    .locals 1

    .prologue
    .line 799
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getLocalPlayHistory()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/vo/HistoryVideo;->parseLocalPlayHistory(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->videoInfos:Ljava/util/ArrayList;

    .line 801
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HomeFragment;->setHistoryVisible()V

    .line 802
    return-void
.end method

.method private onTabSelect()V
    .locals 3

    .prologue
    .line 1572
    invoke-static {}, Lcom/tudou/ui/fragment/HomeFragment;->getIndexLocal()Ljava/lang/String;

    move-result-object v0

    .line 1573
    .local v0, "fistLocal":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1574
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgressNoListener()V

    .line 1575
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tudou/ui/fragment/HomeFragment$11;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/fragment/HomeFragment$11;-><init>(Lcom/tudou/ui/fragment/HomeFragment;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1594
    :goto_0
    return-void

    .line 1591
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto :goto_0
.end method

.method public static parseGuessList(Ljava/lang/String;)Z
    .locals 9
    .param p0, "aGuessJson"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 295
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v7

    .line 298
    :cond_1
    invoke-static {p0}, Lcom/youku/util/JsonUtils;->loadJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 299
    .local v3, "guessJson":Lorg/json/JSONObject;
    const-string v8, "msg"

    invoke-static {v3, v8}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, "msg":Ljava/lang/String;
    const-string v8, "success"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 303
    const-string v8, "results"

    invoke-static {v3, v8}, Lcom/youku/util/JsonUtils;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 304
    .local v0, "guessArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 307
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lcom/tudou/ui/fragment/HomeFragment;->mGuessCardInfo:Ljava/util/List;

    .line 308
    const/4 v1, 0x0

    .line 309
    .local v1, "guessCard":Lcom/youku/vo/CardInfo;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 310
    invoke-static {v0, v5}, Lcom/youku/util/JsonUtils;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 311
    .local v2, "guessItem":Lorg/json/JSONObject;
    new-instance v1, Lcom/youku/vo/CardInfo;

    .end local v1    # "guessCard":Lcom/youku/vo/CardInfo;
    invoke-direct {v1}, Lcom/youku/vo/CardInfo;-><init>()V

    .line 312
    .restart local v1    # "guessCard":Lcom/youku/vo/CardInfo;
    const-string v7, "title"

    invoke-static {v2, v7}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/youku/vo/CardInfo;->title:Ljava/lang/String;

    .line 313
    const-string v7, "image_r_title"

    invoke-static {v2, v7}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/youku/vo/CardInfo;->image_b_r_title:Ljava/lang/String;

    .line 314
    const-string v7, "sub_title"

    invoke-static {v2, v7}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/youku/vo/CardInfo;->sub_title:Ljava/lang/String;

    .line 317
    new-instance v4, Lcom/youku/vo/SkipInfo;

    invoke-direct {v4}, Lcom/youku/vo/SkipInfo;-><init>()V

    .line 318
    .local v4, "guessSkip":Lcom/youku/vo/SkipInfo;
    const-string v7, "video"

    iput-object v7, v4, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    .line 319
    const-string v7, "item_code"

    invoke-static {v2, v7}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    .line 320
    iput-object v4, v1, Lcom/youku/vo/CardInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 322
    const-string v7, "pic_url"

    invoke-static {v2, v7}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/youku/vo/CardInfo;->image_448_252:Ljava/lang/String;

    .line 323
    sget-object v7, Lcom/tudou/ui/fragment/HomeFragment;->mGuessCardInfo:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 326
    .end local v2    # "guessItem":Lorg/json/JSONObject;
    .end local v4    # "guessSkip":Lcom/youku/vo/SkipInfo;
    :cond_2
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private setAdvanceLoadData()V
    .locals 3

    .prologue
    .line 1598
    sget-boolean v1, Lcom/tudou/ui/activity/WelcomeActivity;->isLoadIndexAdvance:Z

    if-eqz v1, :cond_2

    .line 1599
    sget-boolean v1, Lcom/tudou/ui/activity/WelcomeActivity;->isHomeDataReturn:Z

    if-eqz v1, :cond_1

    .line 1600
    sget-object v1, Lcom/tudou/ui/fragment/HomeFragment;->mTargetList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1601
    const-string v1, "TAG_TUDOU"

    const-string v2, "\u9996\u9875\u6570\u636e====\u6210\u529f"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x385

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1617
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tudou/ui/activity/WelcomeActivity;->isLoadIndexAdvance:Z

    .line 1621
    :goto_1
    return-void

    .line 1604
    :cond_0
    const-string v1, "TAG_TUDOU"

    const-string v2, "\u9996\u9875\u6570\u636e====\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x384

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1608
    :cond_1
    const-string v1, "TAG_TUDOU"

    const-string v2, "\u9996\u9875\u6570\u636e====\u52a0\u8f7d\u4e2d"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgressNoListener()V

    .line 1612
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1613
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "index_sucess"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1614
    const-string v1, "index_failed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1615
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 1619
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HomeFragment;->onTabSelect()V

    goto :goto_1
.end method

.method private setHistoryVisible()V
    .locals 5

    .prologue
    .line 822
    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment;->videoInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 823
    const/4 v1, 0x0

    .line 824
    .local v1, "sum":I
    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment;->videoInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 825
    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment;->videoInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/HistoryVideo;

    invoke-virtual {v2}, Lcom/youku/vo/HistoryVideo;->getHomeIsPaint()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment;->videoInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/HistoryVideo;

    invoke-virtual {v2}, Lcom/youku/vo/HistoryVideo;->getIsPlaytEnd()Z

    move-result v2

    if-nez v2, :cond_0

    .line 827
    add-int/lit8 v1, v1, 0x1

    .line 824
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 829
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment;->videoInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 832
    :cond_1
    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    .line 833
    const-string v2, "test1"

    const-string v3, "setHistoryVisible local"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment;->videoInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 839
    const/4 v3, 0x2

    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment;->videoInfos:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/HistoryVideo;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, v4}, Lcom/tudou/ui/fragment/HomeFragment;->buildNotifyItem(ILcom/youku/vo/HistoryVideo;Lcom/youku/vo/Notifications;)V

    .line 843
    .end local v0    # "i":I
    .end local v1    # "sum":I
    :cond_2
    return-void
.end method

.method private setHistoryVisible(Lcom/youku/vo/Notifications;)V
    .locals 5
    .param p1, "notify"    # Lcom/youku/vo/Notifications;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 805
    if-eqz p1, :cond_2

    .line 806
    iget-object v0, p1, Lcom/youku/vo/Notifications;->subupdates:Lcom/youku/vo/Notifications$Sub_updates;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/youku/vo/Notifications;->sysnotify:Lcom/youku/vo/Notifications$Sys_notify;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/youku/vo/Notifications;->playhistory:Lcom/youku/vo/Notifications$View_record;

    if-eqz v0, :cond_2

    .line 808
    :cond_0
    const-string v3, "test1"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHistoryVisible notify.subupdates = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Lcom/youku/vo/Notifications;->subupdates:Lcom/youku/vo/Notifications$Sub_updates;

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "notify.sysnotify = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Lcom/youku/vo/Notifications;->sysnotify:Lcom/youku/vo/Notifications$Sys_notify;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "notify.playhistory = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lcom/youku/vo/Notifications;->playhistory:Lcom/youku/vo/Notifications$View_record;

    if-nez v4, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/tudou/ui/fragment/HomeFragment;->buildNotifyItem(ILcom/youku/vo/HistoryVideo;Lcom/youku/vo/Notifications;)V

    .line 819
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 808
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private setSearchTxt(Landroid/widget/TextView;Lcom/youku/vo/SearchArea;)V
    .locals 1
    .param p1, "aSearchTxt"    # Landroid/widget/TextView;
    .param p2, "aSearchArea"    # Lcom/youku/vo/SearchArea;

    .prologue
    .line 1641
    iget-object v0, p2, Lcom/youku/vo/SearchArea;->search_content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1642
    new-instance v0, Lcom/tudou/ui/fragment/HomeFragment$13;

    invoke-direct {v0, p0, p2}, Lcom/tudou/ui/fragment/HomeFragment$13;-><init>(Lcom/tudou/ui/fragment/HomeFragment;Lcom/youku/vo/SearchArea;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1652
    return-void
.end method

.method public static showExposure(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/AdResult$AdHTML$SusResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1855
    .local p0, "sus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/AdResult$AdHTML$SusResult;>;"
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1856
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1857
    .local v2, "susLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1858
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/AdResult$AdHTML$SusResult;

    iget-object v1, v3, Lcom/youku/vo/AdResult$AdHTML$SusResult;->SDK:Ljava/lang/String;

    .line 1859
    .local v1, "sdk":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1860
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v4

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/AdResult$AdHTML$SusResult;

    iget-object v3, v3, Lcom/youku/vo/AdResult$AdHTML$SusResult;->U:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcn/com/mma/mobile/tracking/api/Countly;->onExpose(Ljava/lang/String;)V

    .line 1857
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1862
    :cond_0
    new-instance v4, Lcom/youku/network/ExposureAdHttpTask;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/AdResult$AdHTML$SusResult;

    iget-object v3, v3, Lcom/youku/vo/AdResult$AdHTML$SusResult;->U:Ljava/lang/String;

    const-string v5, "home_ad_cookic"

    invoke-direct {v4, v3, v5}, Lcom/youku/network/ExposureAdHttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/youku/network/ExposureAdHttpTask;->start()V

    goto :goto_1

    .line 1864
    .end local v1    # "sdk":Ljava/lang/String;
    :cond_1
    const-string v3, "AD"

    const-string v4, "\u524d\u66dd\u5149 showSUS"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    .end local v0    # "i":I
    .end local v2    # "susLength":I
    :cond_2
    return-void
.end method

.method private startTimeTask()V
    .locals 4

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1876
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1877
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTimer:Ljava/util/Timer;

    .line 1878
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/tudou/ui/fragment/HomeFragment$MyTimerTask;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/HomeFragment$MyTimerTask;-><init>(Lcom/tudou/ui/fragment/HomeFragment;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1879
    const-string v0, "AD"

    const-string v1, "startTimeTask mTimer.schedule"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    return-void
.end method

.method private stopTimeTask()V
    .locals 2

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 1890
    :goto_0
    return-void

    .line 1888
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1889
    const-string v0, "AD"

    const-string v1, "stopTimeTask"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private title1HideAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1483
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1485
    .local v0, "an":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1486
    return-object v0
.end method

.method private title1ShowAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1497
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1499
    .local v0, "an":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1500
    return-object v0
.end method

.method private title2HideAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1504
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1506
    .local v0, "an":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1507
    return-object v0
.end method

.method private title2ShowAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1490
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1492
    .local v0, "an":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1493
    return-object v0
.end method

.method private trackToolBarShow()V
    .locals 8

    .prologue
    .line 220
    iget-boolean v5, p0, Lcom/tudou/ui/fragment/HomeFragment;->mIsToolbarsNetValue:Z

    if-nez v5, :cond_0

    .line 235
    :goto_0
    return-void

    .line 221
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "actiontype"

    const-string v6, "navigateshow"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v4, "sBuilder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/tudou/ui/fragment/HomeFragment;->toolbars_inf:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 225
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 226
    iget-object v5, p0, Lcom/tudou/ui/fragment/HomeFragment;->toolbars_inf:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/Initial$ToolbarsItem;

    .line 227
    .local v2, "item":Lcom/youku/vo/Initial$ToolbarsItem;
    add-int/lit8 v5, v3, -0x1

    if-eq v1, v5, :cond_1

    .line 228
    iget-object v5, v2, Lcom/youku/vo/Initial$ToolbarsItem;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v5, v5, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 230
    :cond_1
    iget-object v5, v2, Lcom/youku/vo/Initial$ToolbarsItem;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v5, v5, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 233
    .end local v2    # "item":Lcom/youku/vo/Initial$ToolbarsItem;
    :cond_2
    const-string v5, "cmstype"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v5, "\u663e\u793a\u5de5\u5177\u680f"

    const-string v6, "\u663e\u793a\u5de5\u5177\u680f"

    const-string v7, ""

    invoke-static {v5, v6, v7, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method


# virtual methods
.method public initSlide(Lcom/tudou/adapter/SlideItemView;Lcom/youku/vo/IndexPageItem;Landroid/app/Activity;)Lcom/tudou/adapter/SlideItemView;
    .locals 10
    .param p1, "aSolideItem"    # Lcom/tudou/adapter/SlideItemView;
    .param p2, "aIndexPageItem"    # Lcom/youku/vo/IndexPageItem;
    .param p3, "aActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1934
    iget-object v0, p2, Lcom/youku/vo/IndexPageItem;->slide_cards_inf:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2051
    :goto_0
    return-object p1

    .line 1938
    :cond_0
    iget-object v0, p2, Lcom/youku/vo/IndexPageItem;->slide_cards_inf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1940
    .local v2, "pointCount":I
    iget v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mLastPaperSize:I

    if-eq v0, v2, :cond_1

    .line 1941
    iput v4, p0, Lcom/tudou/ui/fragment/HomeFragment;->mCurPosition:I

    .line 1942
    iput v2, p0, Lcom/tudou/ui/fragment/HomeFragment;->mLastPaperSize:I

    .line 1943
    iput-boolean v5, p0, Lcom/tudou/ui/fragment/HomeFragment;->mNeedRestartPaper:Z

    .line 1947
    :cond_1
    iget-object v0, p1, Lcom/tudou/adapter/SlideItemView;->mYoukuGallery:Lcom/youku/widget/YoukuGallery;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v6

    check-cast v6, Lcom/tudou/adapter/SlideAdapter;

    .line 1948
    .local v6, "adapter":Lcom/tudou/adapter/SlideAdapter;
    if-eqz v6, :cond_2

    iget-boolean v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mNeedRestartPaper:Z

    if-eqz v0, :cond_4

    .line 1949
    :cond_2
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mNeedRestartPaper:Z

    if-eqz v0, :cond_3

    .line 1950
    iput-boolean v4, p0, Lcom/tudou/ui/fragment/HomeFragment;->mNeedRestartPaper:Z

    .line 1952
    :cond_3
    new-instance v6, Lcom/tudou/adapter/SlideAdapter;

    .end local v6    # "adapter":Lcom/tudou/adapter/SlideAdapter;
    iget-object v0, p2, Lcom/youku/vo/IndexPageItem;->slide_cards_inf:Ljava/util/List;

    invoke-direct {v6, v0}, Lcom/tudou/adapter/SlideAdapter;-><init>(Ljava/util/List;)V

    .line 1953
    .restart local v6    # "adapter":Lcom/tudou/adapter/SlideAdapter;
    iget-object v0, p1, Lcom/tudou/adapter/SlideItemView;->mYoukuGallery:Lcom/youku/widget/YoukuGallery;

    invoke-virtual {v0, v6}, Lcom/youku/widget/YoukuGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1957
    :goto_1
    iget-object v0, p1, Lcom/tudou/adapter/SlideItemView;->mYoukuGallery:Lcom/youku/widget/YoukuGallery;

    new-instance v1, Lcom/tudou/ui/fragment/HomeFragment$18;

    invoke-direct {v1, p0, p2, p3}, Lcom/tudou/ui/fragment/HomeFragment$18;-><init>(Lcom/tudou/ui/fragment/HomeFragment;Lcom/youku/vo/IndexPageItem;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/YoukuGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1975
    new-array v3, v2, [Landroid/widget/ImageView;

    .line 1976
    .local v3, "pointImageViews":[Landroid/widget/ImageView;
    iget-object v0, p1, Lcom/tudou/adapter/SlideItemView;->mPointContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1978
    if-ne v2, v5, :cond_5

    .line 1979
    iget-object v0, p1, Lcom/tudou/adapter/SlideItemView;->mYoukuGallery:Lcom/youku/widget/YoukuGallery;

    invoke-virtual {v0, v4}, Lcom/youku/widget/YoukuGallery;->setCanScroll(Z)V

    goto :goto_0

    .line 1955
    .end local v3    # "pointImageViews":[Landroid/widget/ImageView;
    :cond_4
    iget-object v0, p2, Lcom/youku/vo/IndexPageItem;->slide_cards_inf:Ljava/util/List;

    invoke-virtual {v6, v0}, Lcom/tudou/adapter/SlideAdapter;->setData(Ljava/util/List;)V

    goto :goto_1

    .line 1983
    .restart local v3    # "pointImageViews":[Landroid/widget/ImageView;
    :cond_5
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v2, :cond_6

    .line 1984
    new-instance v0, Landroid/widget/ImageView;

    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v0, v3, v8

    .line 1985
    aget-object v0, v3, v8

    const v1, 0x7f0206eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1987
    iget-object v0, p1, Lcom/tudou/adapter/SlideItemView;->mPointContainer:Landroid/widget/LinearLayout;

    aget-object v1, v3, v8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1983
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1990
    :cond_6
    :try_start_0
    iget v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mCurPosition:I

    aget-object v0, v3, v0

    if-eqz v0, :cond_7

    .line 1991
    iget v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mCurPosition:I

    aget-object v0, v3, v0

    const v1, 0x7f0206ed

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1993
    iget-object v1, p1, Lcom/tudou/adapter/SlideItemView;->mTxtTitle:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/youku/vo/IndexPageItem;->slide_cards_inf:Ljava/util/List;

    iget v4, p0, Lcom/tudou/ui/fragment/HomeFragment;->mCurPosition:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardInfo;

    iget-object v0, v0, Lcom/youku/vo/CardInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1994
    iget-object v1, p1, Lcom/tudou/adapter/SlideItemView;->mSubTitle:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/youku/vo/IndexPageItem;->slide_cards_inf:Ljava/util/List;

    iget v4, p0, Lcom/tudou/ui/fragment/HomeFragment;->mCurPosition:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardInfo;

    iget-object v0, v0, Lcom/youku/vo/CardInfo;->sub_title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2000
    :cond_7
    :goto_3
    iget-object v9, p1, Lcom/tudou/adapter/SlideItemView;->mYoukuGallery:Lcom/youku/widget/YoukuGallery;

    new-instance v0, Lcom/tudou/ui/fragment/HomeFragment$19;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/tudou/ui/fragment/HomeFragment$19;-><init>(Lcom/tudou/ui/fragment/HomeFragment;I[Landroid/widget/ImageView;Lcom/tudou/adapter/SlideItemView;Lcom/youku/vo/IndexPageItem;)V

    invoke-virtual {v9, v0}, Lcom/youku/widget/YoukuGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2050
    iget-object v0, p1, Lcom/tudou/adapter/SlideItemView;->mYoukuGallery:Lcom/youku/widget/YoukuGallery;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuGallery;->startAutoSlide()V

    goto/16 :goto_0

    .line 1996
    :catch_0
    move-exception v7

    .line 1997
    .local v7, "e1":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 331
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 332
    const-string v0, "TAG_TUDOU"

    const-string v1, "HomeFragment===onActivityCreated"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x1f4

    .line 1344
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgRecommend:Landroid/widget/ImageView;

    if-ne p1, v4, :cond_2

    .line 1349
    const-string v4, "recommend"

    invoke-static {v4, v6, v7}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1425
    :cond_0
    :goto_0
    return-void

    .line 1353
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/tudou/android/TudouApi;->goAppExchangeActivity(Landroid/content/Context;)V

    .line 1355
    const-string v4, "t1.home_navigate.shop"

    invoke-static {v4, v8}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 1356
    :cond_2
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgGame:Landroid/widget/ImageView;

    if-ne p1, v4, :cond_4

    .line 1362
    const-string v4, "game"

    invoke-static {v4, v6, v7}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1365
    sget-boolean v4, Lcom/tudou/ui/activity/HomePageActivity;->mHasGameCenterClicked:Z

    if-nez v4, :cond_3

    .line 1366
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgGame:Landroid/widget/ImageView;

    const v5, 0x7f02039a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1367
    const/4 v4, 0x1

    sput-boolean v4, Lcom/tudou/ui/activity/HomePageActivity;->mHasGameCenterClicked:Z

    .line 1370
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1371
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/youku/gamecenter/GameCenterHomeActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1372
    const-string v4, "source"

    const-string v5, "6"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1373
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1375
    const-string v4, "t1.home_navigate.gamecenter"

    invoke-static {v4, v8}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 1376
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgSearch:Landroid/widget/ImageView;

    if-eq p1, v4, :cond_5

    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTxtIndexSearch:Landroid/widget/TextView;

    if-ne p1, v4, :cond_8

    .line 1380
    :cond_5
    const-string v4, "search"

    invoke-static {v4, v6, v7}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1383
    new-instance v2, Lcom/youku/vo/SkipInfo;

    invoke-direct {v2}, Lcom/youku/vo/SkipInfo;-><init>()V

    .line 1384
    .local v2, "info":Lcom/youku/vo/SkipInfo;
    const-string v4, "the_search"

    iput-object v4, v2, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    .line 1385
    sget-object v4, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageData:Lcom/youku/vo/IndexPageData;

    if-eqz v4, :cond_6

    .line 1386
    sget-object v4, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageData:Lcom/youku/vo/IndexPageData;

    iget-object v4, v4, Lcom/youku/vo/IndexPageData;->search_area:Lcom/youku/vo/SearchArea;

    iget-object v4, v4, Lcom/youku/vo/SearchArea;->search_word:Ljava/lang/String;

    iput-object v4, v2, Lcom/youku/vo/SkipInfo;->search_word:Ljava/lang/String;

    .line 1387
    sget-object v4, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageData:Lcom/youku/vo/IndexPageData;

    iget-object v4, v4, Lcom/youku/vo/IndexPageData;->search_area:Lcom/youku/vo/SearchArea;

    iget-object v4, v4, Lcom/youku/vo/SearchArea;->search_adv:Ljava/lang/String;

    iput-object v4, v2, Lcom/youku/vo/SkipInfo;->search_adv:Ljava/lang/String;

    .line 1389
    :cond_6
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v2, v4}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 1391
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1392
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgSearch:Landroid/widget/ImageView;

    if-ne p1, v4, :cond_7

    .line 1393
    const-string v4, "type"

    const-string v5, "\u641c\u7d22\u955c"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    :goto_1
    const-string v4, "t1.home_navigate.search"

    invoke-static {v4, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 1395
    :cond_7
    const-string v4, "type"

    const-string v5, "\u641c\u7d22\u6846"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1402
    .end local v0    # "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "info":Lcom/youku/vo/SkipInfo;
    :cond_8
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgClassify:Landroid/widget/ImageView;

    if-ne p1, v4, :cond_9

    .line 1403
    const-string v4, "classify"

    invoke-static {v4, v6, v7}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1406
    invoke-static {}, Lcom/tudou/service/classify/ClassifyManager;->getInstance()Lcom/tudou/service/classify/Classify;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/HomeFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-interface {v4, v5}, Lcom/tudou/service/classify/Classify;->goClassifyHome(Landroid/content/Context;)V

    .line 1408
    const-string v4, "t1.home_navigate.category"

    invoke-static {v4, v8}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 1409
    :cond_9
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgHistory:Landroid/widget/ImageView;

    if-eq p1, v4, :cond_a

    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgIndexHistory:Landroid/widget/ImageView;

    if-ne p1, v4, :cond_0

    .line 1410
    :cond_a
    const-string v4, "history"

    invoke-static {v4, v6, v7}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1413
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1414
    .local v1, "gohistory":Landroid/content/Intent;
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const-class v5, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1415
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1417
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1418
    .restart local v0    # "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgHistory:Landroid/widget/ImageView;

    if-ne p1, v4, :cond_b

    .line 1419
    const-string v4, "type"

    const-string v5, "\u5de5\u5177\u680f\u64ad\u653e\u5386\u53f2"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    :goto_2
    const-string v4, "t1.home_navigate.history"

    invoke-static {v4, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 1421
    :cond_b
    const-string v4, "type"

    const-string v5, "\u9876\u90e8\u64ad\u653e\u5386\u53f2"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 154
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mIsExist:Z

    .line 155
    sput-boolean v1, Lcom/tudou/ui/fragment/HomeFragment;->isShowCaiDan:Z

    .line 156
    sget-object v0, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->toolbars_inf:Ljava/util/List;

    iput-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->toolbars_inf:Ljava/util/List;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->toolbars_inf:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->toolbars_inf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 159
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mIsToolbarsNetValue:Z

    .line 163
    :goto_0
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HomeFragment===onCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/tudou/ui/activity/HomePageActivity;->mIsFistInApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-boolean v0, Lcom/tudou/ui/activity/HomePageActivity;->mIsFistInApp:Z

    if-eqz v0, :cond_1

    .line 165
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HomeFragment;->excuteNotify()V

    .line 167
    :cond_1
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 168
    return-void

    .line 161
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mIsToolbarsNetValue:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 188
    invoke-direct {p0, p2}, Lcom/tudou/ui/fragment/HomeFragment;->initView(Landroid/view/ViewGroup;)V

    .line 189
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HomeFragment;->setAdvanceLoadData()V

    .line 190
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HomeFragment;->initTitle()V

    .line 193
    const-string v0, "TAG_TUDOU"

    const-string v1, "HomeFragment===onCreateView"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/tudou/ui/fragment/HomeFragment$1;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/HomeFragment$1;-><init>(Lcom/tudou/ui/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 215
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHomeFragment:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    const-string v0, "TAG_TUDOU"

    const-string v1, "HomeFragment===onDestroy"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iput-boolean v2, p0, Lcom/tudou/ui/fragment/HomeFragment;->mIsExist:Z

    .line 175
    sput-boolean v2, Lcom/tudou/ui/fragment/HomeFragment;->isShowCaiDan:Z

    .line 176
    iput v2, p0, Lcom/tudou/ui/fragment/HomeFragment;->mCurPosition:I

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHeaderView:Lcom/tudou/adapter/SlideItemView;

    .line 178
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 179
    return-void
.end method

.method public onPageSelected()V
    .locals 2

    .prologue
    .line 573
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPageSelected()V

    .line 574
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->smoothScrollToPossion(I)V

    .line 575
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 349
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tudou/ui/fragment/HomeFragment;->isShowCaiDan:Z

    .line 350
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HomeFragment;->stopAutoSlide()V

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mAdView:Landroid/view/View;

    check-cast v1, Lcom/youku/widget/TudouModuleH5;

    invoke-virtual {v1}, Lcom/youku/widget/TudouModuleH5;->homeAdReset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPause()V

    .line 357
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 337
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/HomeFragment;->isShowCaiDan:Z

    .line 338
    sget-boolean v0, Lcom/tudou/ui/activity/HomePageActivity;->mIsFistInApp:Z

    if-eqz v0, :cond_0

    .line 340
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/activity/HomePageActivity;->mIsFistInApp:Z

    .line 342
    :cond_0
    const-string v0, "TAG2"

    const-string v1, "HomeFragment===onResume"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HomeFragment;->startAutoSlide()V

    .line 344
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 345
    return-void
.end method

.method public setImageResource()V
    .locals 2

    .prologue
    .line 533
    sget-boolean v0, Lcom/tudou/ui/activity/HomePageActivity;->mHasGameCenterClicked:Z

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgGame:Landroid/widget/ImageView;

    const v1, 0x7f02039a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 539
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mImgGame:Landroid/widget/ImageView;

    const v1, 0x7f02039b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setSecondVisible(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1428
    if-eqz p1, :cond_2

    .line 1429
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle2:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1464
    :cond_0
    :goto_0
    return-void

    .line 1432
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1433
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1435
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle2:Landroid/view/View;

    invoke-direct {p0}, Lcom/tudou/ui/fragment/HomeFragment;->title2ShowAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1436
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle1:Landroid/view/View;

    invoke-direct {p0}, Lcom/tudou/ui/fragment/HomeFragment;->title1HideAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1439
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle1:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1443
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1445
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle1:Landroid/view/View;

    invoke-direct {p0}, Lcom/tudou/ui/fragment/HomeFragment;->title1ShowAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1446
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mTitle2:Landroid/view/View;

    invoke-direct {p0}, Lcom/tudou/ui/fragment/HomeFragment;->title2HideAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public showAD()V
    .locals 4

    .prologue
    .line 1799
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageAdaper:Lcom/tudou/adapter/IndexPageAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHeaderView:Lcom/tudou/adapter/SlideItemView;

    if-eqz v1, :cond_0

    .line 1802
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHeaderView:Lcom/tudou/adapter/SlideItemView;

    iget-object v1, v1, Lcom/tudou/adapter/SlideItemView;->mAdView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment;->mAdView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1804
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHeaderView:Lcom/tudou/adapter/SlideItemView;

    iget-object v1, v1, Lcom/tudou/adapter/SlideItemView;->mAdRootView:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1806
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHeaderView:Lcom/tudou/adapter/SlideItemView;

    iget-object v1, v1, Lcom/tudou/adapter/SlideItemView;->mCloseAdView:Landroid/view/View;

    new-instance v2, Lcom/tudou/ui/fragment/HomeFragment$16;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/HomeFragment$16;-><init>(Lcom/tudou/ui/fragment/HomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1812
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->isAdShow:Z

    .line 1814
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->adResult:Lcom/youku/vo/AdResult;

    iget-object v1, v1, Lcom/youku/vo/AdResult;->is_pellucid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->adResult:Lcom/youku/vo/AdResult;

    iget-object v1, v1, Lcom/youku/vo/AdResult;->is_pellucid:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1815
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHeaderView:Lcom/tudou/adapter/SlideItemView;

    iget-object v1, v1, Lcom/tudou/adapter/SlideItemView;->mCloseAdIcon:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1816
    const-string v1, "AD"

    const-string v2, "show close icon"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    :goto_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HomeFragment;->stopAutoSlide()V

    .line 1823
    const-string v1, "AD"

    const-string v2, "showAD"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    :cond_0
    :goto_1
    return-void

    .line 1818
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHeaderView:Lcom/tudou/adapter/SlideItemView;

    iget-object v1, v1, Lcom/tudou/adapter/SlideItemView;->mCloseAdIcon:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1819
    const-string v1, "AD"

    const-string v2, "gone close icon"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1824
    :catch_0
    move-exception v0

    .line 1825
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showAD Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public startAutoSlide()V
    .locals 1

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHeaderView:Lcom/tudou/adapter/SlideItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHeaderView:Lcom/tudou/adapter/SlideItemView;

    iget-object v0, v0, Lcom/tudou/adapter/SlideItemView;->mYoukuGallery:Lcom/youku/widget/YoukuGallery;

    iget-boolean v0, v0, Lcom/youku/widget/YoukuGallery;->mIsAutoSlide:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mIsHeadAdd:Z

    if-eqz v0, :cond_0

    .line 2057
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHeaderView:Lcom/tudou/adapter/SlideItemView;

    iget-object v0, v0, Lcom/tudou/adapter/SlideItemView;->mYoukuGallery:Lcom/youku/widget/YoukuGallery;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuGallery;->startAutoSlide()V

    .line 2059
    :cond_0
    return-void
.end method

.method public stopAutoSlide()V
    .locals 1

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHeaderView:Lcom/tudou/adapter/SlideItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHeaderView:Lcom/tudou/adapter/SlideItemView;

    iget-object v0, v0, Lcom/tudou/adapter/SlideItemView;->mYoukuGallery:Lcom/youku/widget/YoukuGallery;

    iget-boolean v0, v0, Lcom/youku/widget/YoukuGallery;->mIsAutoSlide:Z

    if-eqz v0, :cond_0

    .line 2063
    iget-object v0, p0, Lcom/tudou/ui/fragment/HomeFragment;->mHeaderView:Lcom/tudou/adapter/SlideItemView;

    iget-object v0, v0, Lcom/tudou/adapter/SlideItemView;->mYoukuGallery:Lcom/youku/widget/YoukuGallery;

    invoke-virtual {v0}, Lcom/youku/widget/YoukuGallery;->cancelAutoSlide()V

    .line 2065
    :cond_0
    return-void
.end method

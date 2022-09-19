.class public Lcom/tudou/ui/fragment/UploadingFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "UploadingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/youku/util/IAlertPositive;


# static fields
.field public static final TAG_NOTIFY:Ljava/lang/String; = "tag_notify"

.field public static final UPLOADING_TIME:Ljava/lang/String; = "uploading_time"

.field public static mCurrentSelectUploadInfo:Lcom/tudou/upload/UploadInfo;

.field public static mMainListRefreshKey:Z

.field public static sFragment:Lcom/tudou/ui/fragment/UploadingFragment;


# instance fields
.field private load_complete:Landroid/view/View;

.field private mBottomLayout:Landroid/widget/LinearLayout;

.field private mBtnDelete:Landroid/widget/TextView;

.field private mBtnSelAll:Landroid/widget/TextView;

.field private mBtnVideoPick:Landroid/view/View;

.field private mBtnVideoShot:Landroid/view/View;

.field private mCheckingCountHandler:Landroid/os/Handler;

.field private mCheckingLen:I

.field private mCheckingListHandler:Landroid/os/Handler;

.field private mEditListInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tudou/upload/UploadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEdtOldMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field private mHasAjust:Z

.field private mHintView:Lcom/youku/widget/HintView;

.field private mInflater:Landroid/view/LayoutInflater;

.field public mIsEdit:Z

.field private mIsFootviewAdd:Z

.field private mIsGetCount:Z

.field private mIsGetList:Z

.field private mIsPulling:Z

.field private mIsRefresh:Z

.field private mIsSelAll:Z

.field private mLeftView:Landroid/widget/ImageView;

.field private mManager:Landroid/app/NotificationManager;

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

.field private mPage:Lcom/youku/vo/Page;

.field private mStateTextView:Landroid/widget/TextView;

.field private mTotalListCount:I

.field private mUpLoadingAdapter:Lcom/tudou/adapter/UpLoadingAdapter;

.field private mUploadedInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tudou/upload/UploadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadedSize:I

.field private mUploading:Landroid/view/View;

.field private mUploadingInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tudou/upload/UploadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadingItem:Lcom/tudou/upload/UploadInfo;

.field public mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mVideoButtons:Landroid/view/View;

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

.field private uploadReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/UploadingFragment;->mMainListRefreshKey:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadedInfos:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    .line 94
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsSelAll:Z

    .line 103
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsRefresh:Z

    .line 107
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsPulling:Z

    .line 108
    iput v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mCheckingLen:I

    .line 109
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mHasAjust:Z

    .line 111
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsGetCount:Z

    .line 112
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsGetList:Z

    .line 117
    iput v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadedSize:I

    .line 118
    iput v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mTotalListCount:I

    .line 122
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEdtOldMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 708
    new-instance v0, Lcom/tudou/ui/fragment/UploadingFragment$5;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/UploadingFragment$5;-><init>(Lcom/tudou/ui/fragment/UploadingFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mCheckingCountHandler:Landroid/os/Handler;

    .line 771
    new-instance v0, Lcom/tudou/ui/fragment/UploadingFragment$6;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/UploadingFragment$6;-><init>(Lcom/tudou/ui/fragment/UploadingFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 806
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsFootviewAdd:Z

    .line 838
    new-instance v0, Lcom/tudou/ui/fragment/UploadingFragment$7;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/UploadingFragment$7;-><init>(Lcom/tudou/ui/fragment/UploadingFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;

    .line 970
    new-instance v0, Lcom/tudou/ui/fragment/UploadingFragment$8;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/UploadingFragment$8;-><init>(Lcom/tudou/ui/fragment/UploadingFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mCheckingListHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/UploadingFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/UploadingFragment;)Lcom/tudou/adapter/UpLoadingAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUpLoadingAdapter:Lcom/tudou/adapter/UpLoadingAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/UploadingFragment;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;
    .param p1, "x1"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/UploadingFragment;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/UploadingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->getEditList()V

    return-void
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/UploadingFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBottomLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tudou/ui/fragment/UploadingFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mVideoButtons:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tudou/ui/fragment/UploadingFragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/UploadingFragment;->parseCheckedCount(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/tudou/ui/fragment/UploadingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsGetList:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/tudou/ui/fragment/UploadingFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsGetList:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/tudou/ui/fragment/UploadingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->setListData()V

    return-void
.end method

.method static synthetic access$1700(Lcom/tudou/ui/fragment/UploadingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->ajustData()V

    return-void
.end method

.method static synthetic access$1800(Lcom/tudou/ui/fragment/UploadingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsGetCount:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/tudou/ui/fragment/UploadingFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsGetCount:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/tudou/ui/fragment/UploadingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->setRightLayoutShow()V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/UploadingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->setDeleteText()V

    return-void
.end method

.method static synthetic access$2000(Lcom/tudou/ui/fragment/UploadingFragment;)Lcom/youku/vo/Page;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mPage:Lcom/youku/vo/Page;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/tudou/ui/fragment/UploadingFragment;Lcom/youku/vo/Page;)Lcom/youku/vo/Page;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;
    .param p1, "x1"    # Lcom/youku/vo/Page;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mPage:Lcom/youku/vo/Page;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/tudou/ui/fragment/UploadingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->getUploadedList()V

    return-void
.end method

.method static synthetic access$2200(Lcom/tudou/ui/fragment/UploadingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->getCheckedCount()V

    return-void
.end method

.method static synthetic access$2300(Lcom/tudou/ui/fragment/UploadingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->pullToAdd()V

    return-void
.end method

.method static synthetic access$2400(Lcom/tudou/ui/fragment/UploadingFragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/UploadingFragment;->parseUploadedList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2502(Lcom/tudou/ui/fragment/UploadingFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsPulling:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/tudou/ui/fragment/UploadingFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/tudou/ui/fragment/UploadingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->onLoginClick()V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/UploadingFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/UploadingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->setItemClick()V

    return-void
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/UploadingFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/UploadingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->getEditReturn()V

    return-void
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/UploadingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsRefresh:Z

    return v0
.end method

.method static synthetic access$702(Lcom/tudou/ui/fragment/UploadingFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsRefresh:Z

    return p1
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/UploadingFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mStateTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/tudou/ui/fragment/UploadingFragment;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadingFragment;
    .param p1, "x1"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEdtOldMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    return-object p1
.end method

.method private addCheckedItem()V
    .locals 3

    .prologue
    .line 957
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->hasCheckedItem()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 959
    new-instance v1, Lcom/tudou/upload/UploadInfo;

    invoke-direct {v1}, Lcom/tudou/upload/UploadInfo;-><init>()V

    .line 960
    .local v1, "uploadedTitle":Lcom/tudou/upload/UploadInfo;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tudou/upload/UploadInfo;->setUiType(I)V

    .line 961
    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    new-instance v0, Lcom/tudou/upload/UploadInfo;

    invoke-direct {v0}, Lcom/tudou/upload/UploadInfo;-><init>()V

    .line 963
    .local v0, "uploadedItem":Lcom/tudou/upload/UploadInfo;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/tudou/upload/UploadInfo;->setUiType(I)V

    .line 964
    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    .end local v0    # "uploadedItem":Lcom/tudou/upload/UploadInfo;
    .end local v1    # "uploadedTitle":Lcom/tudou/upload/UploadInfo;
    :cond_0
    return-void
.end method

.method private addFootView()V
    .locals 2

    .prologue
    .line 1582
    iget v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadedSize:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadedSize:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadedSize:I

    iget v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mTotalListCount:I

    if-lt v0, v1, :cond_1

    .line 1583
    :cond_0
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/UploadingFragment;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 1585
    :cond_1
    return-void
.end method

.method private addLocalData()V
    .locals 6

    .prologue
    .line 934
    iget-object v3, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 935
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->addCheckedItem()V

    .line 936
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->setUploadingCount()V

    .line 938
    invoke-static {}, Lcom/tudou/upload/UploadProcessor;->getTasks()Ljava/util/List;

    move-result-object v2

    .line 939
    .local v2, "mLocalInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/UploadInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 941
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/upload/UploadInfo;

    .line 942
    .local v1, "info":Lcom/tudou/upload/UploadInfo;
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/tudou/upload/UploadInfo;->setUiType(I)V

    goto :goto_0

    .line 945
    .end local v1    # "info":Lcom/tudou/upload/UploadInfo;
    :cond_0
    new-instance v1, Lcom/tudou/upload/UploadInfo;

    invoke-direct {v1}, Lcom/tudou/upload/UploadInfo;-><init>()V

    .line 946
    .restart local v1    # "info":Lcom/tudou/upload/UploadInfo;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/tudou/upload/UploadInfo;->setUiType(I)V

    .line 947
    iget-object v3, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    iget-object v3, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 950
    const-string v3, "TAG_TUDOU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u6dfb\u52a0\u672c\u5730\u6570\u636e==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/tudou/upload/UploadInfo;
    :goto_1
    return-void

    .line 952
    :cond_1
    const-string v3, "TAG_TUDOU"

    const-string/jumbo v4, "\u6dfb\u52a0\u672c\u5730\u6570\u636e===0"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized ajustData()V
    .locals 3

    .prologue
    .line 1028
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mHasAjust:Z

    .line 1029
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsEdit:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsEdit:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 1032
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mHintView:Lcom/youku/widget/HintView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 1033
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsEdit:Z

    if-eqz v0, :cond_3

    .line 1034
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUpLoadingAdapter:Lcom/tudou/adapter/UpLoadingAdapter;

    if-nez v0, :cond_2

    .line 1035
    new-instance v0, Lcom/tudou/adapter/UpLoadingAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/tudou/adapter/UpLoadingAdapter;-><init>(Lcom/tudou/ui/activity/BaseActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUpLoadingAdapter:Lcom/tudou/adapter/UpLoadingAdapter;

    .line 1037
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUpLoadingAdapter:Lcom/tudou/adapter/UpLoadingAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1060
    :goto_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->setRightLayoutShow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    monitor-exit p0

    return-void

    .line 1039
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUpLoadingAdapter:Lcom/tudou/adapter/UpLoadingAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/UpLoadingAdapter;->setData(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1028
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1042
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUpLoadingAdapter:Lcom/tudou/adapter/UpLoadingAdapter;

    if-nez v0, :cond_4

    .line 1043
    new-instance v0, Lcom/tudou/adapter/UpLoadingAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/tudou/adapter/UpLoadingAdapter;-><init>(Lcom/tudou/ui/activity/BaseActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUpLoadingAdapter:Lcom/tudou/adapter/UpLoadingAdapter;

    .line 1045
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUpLoadingAdapter:Lcom/tudou/adapter/UpLoadingAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1047
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUpLoadingAdapter:Lcom/tudou/adapter/UpLoadingAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/UpLoadingAdapter;->setData(Ljava/util/List;)V

    goto :goto_0

    .line 1051
    :cond_5
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUpLoadingAdapter:Lcom/tudou/adapter/UpLoadingAdapter;

    if-nez v0, :cond_6

    .line 1052
    new-instance v0, Lcom/tudou/adapter/UpLoadingAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/tudou/adapter/UpLoadingAdapter;-><init>(Lcom/tudou/ui/activity/BaseActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUpLoadingAdapter:Lcom/tudou/adapter/UpLoadingAdapter;

    .line 1054
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUpLoadingAdapter:Lcom/tudou/adapter/UpLoadingAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1058
    :goto_1
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->setNoneText()V

    goto :goto_0

    .line 1056
    :cond_6
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUpLoadingAdapter:Lcom/tudou/adapter/UpLoadingAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/UpLoadingAdapter;->setData(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized ajustUploadedItem(Lcom/tudou/upload/UploadInfo;Lcom/tudou/upload/UploadInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/tudou/upload/UploadInfo;
    .param p2, "tem"    # Lcom/tudou/upload/UploadInfo;

    .prologue
    const/4 v3, 0x1

    .line 1214
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsEdit:Z

    if-eqz v1, :cond_0

    .line 1215
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1216
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1217
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1218
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->getEditReturn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1241
    :goto_0
    monitor-exit p0

    return-void

    .line 1222
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1223
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->getUploadingCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1224
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->hasCheckedItem()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1225
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/upload/UploadInfo;

    .line 1226
    .local v0, "uploadingTitle":Lcom/tudou/upload/UploadInfo;
    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->getUiType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1227
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1238
    .end local v0    # "uploadingTitle":Lcom/tudou/upload/UploadInfo;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->setDeleteText()V

    .line 1239
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->setUploadingCount()V

    .line 1240
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->ajustData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1214
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1230
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/upload/UploadInfo;

    .line 1231
    .restart local v0    # "uploadingTitle":Lcom/tudou/upload/UploadInfo;
    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->getUiType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1232
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static autoStartUpload()V
    .locals 7

    .prologue
    .line 1375
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1411
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/UploadInfo;>;"
    :cond_0
    :goto_0
    return-void

    .line 1378
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/UploadInfo;>;"
    :cond_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1381
    invoke-static {}, Lcom/tudou/upload/UploadProcessor;->isUploading()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1384
    invoke-static {}, Lcom/tudou/upload/UploadProcessor;->getTasks()Ljava/util/List;

    move-result-object v3

    .line 1386
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/UploadInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1387
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1388
    .local v4, "size":I
    const/4 v2, 0x0

    .line 1389
    .local v2, "isUploadStart":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 1390
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/upload/UploadInfo;

    .line 1391
    .local v1, "info":Lcom/tudou/upload/UploadInfo;
    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v5

    .line 1392
    .local v5, "state":I
    if-nez v5, :cond_4

    .line 1393
    new-instance v6, Lcom/tudou/upload/UploadProcessor;

    invoke-direct {v6, v1}, Lcom/tudou/upload/UploadProcessor;-><init>(Lcom/tudou/upload/UploadInfo;)V

    invoke-virtual {v6}, Lcom/tudou/upload/UploadProcessor;->start()V

    .line 1394
    const/4 v2, 0x1

    .line 1398
    .end local v1    # "info":Lcom/tudou/upload/UploadInfo;
    .end local v5    # "state":I
    :cond_2
    if-nez v2, :cond_0

    .line 1399
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_0

    .line 1400
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/upload/UploadInfo;

    .line 1401
    .restart local v1    # "info":Lcom/tudou/upload/UploadInfo;
    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v5

    .line 1402
    .restart local v5    # "state":I
    if-eqz v5, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 1405
    :cond_3
    new-instance v6, Lcom/tudou/upload/UploadProcessor;

    invoke-direct {v6, v1}, Lcom/tudou/upload/UploadProcessor;-><init>(Lcom/tudou/upload/UploadInfo;)V

    invoke-virtual {v6}, Lcom/tudou/upload/UploadProcessor;->start()V

    goto :goto_0

    .line 1389
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1399
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private cancelUploadTask(I)V
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 528
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 532
    :cond_0
    return-void
.end method

.method private delete(Lcom/tudou/upload/UploadInfo;)V
    .locals 3
    .param p1, "aUploadInfo"    # Lcom/tudou/upload/UploadInfo;

    .prologue
    .line 510
    invoke-static {p1}, Lcom/tudou/upload/UploadProcessor;->isUploadingTask(Lcom/tudou/upload/UploadInfo;)Z

    move-result v0

    .line 511
    .local v0, "isUploading":Z
    const/16 v2, 0x1ae8

    invoke-direct {p0, v2}, Lcom/tudou/ui/fragment/UploadingFragment;->cancelUploadTask(I)V

    .line 512
    invoke-virtual {p1}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tudou/upload/UploadDB;->delete(Ljava/lang/String;)Z

    .line 513
    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 514
    if-eqz v0, :cond_0

    .line 515
    invoke-static {}, Lcom/tudou/upload/UploadProcessor;->getUploadingTask()Lcom/tudou/upload/UploadInfo;

    move-result-object v1

    .line 521
    .local v1, "sync_info":Lcom/tudou/upload/UploadInfo;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    .line 525
    .end local v1    # "sync_info":Lcom/tudou/upload/UploadInfo;
    :cond_0
    return-void
.end method

.method private deleteCheckedItem()V
    .locals 6

    .prologue
    .line 477
    iget-object v4, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 478
    .local v3, "len":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 479
    iget-object v4, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/upload/UploadInfo;

    .line 480
    .local v1, "info":Lcom/tudou/upload/UploadInfo;
    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 481
    invoke-static {v1}, Lcom/tudou/upload/UploadProcessor;->isUploadingTask(Lcom/tudou/upload/UploadInfo;)Z

    move-result v2

    .line 482
    .local v2, "isUploading":Z
    if-eqz v2, :cond_1

    .line 483
    iput-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingItem:Lcom/tudou/upload/UploadInfo;

    .line 478
    .end local v2    # "isUploading":Z
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 485
    .restart local v2    # "isUploading":Z
    :cond_1
    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/UploadingFragment;->delete(Lcom/tudou/upload/UploadInfo;)V

    goto :goto_1

    .line 490
    .end local v1    # "info":Lcom/tudou/upload/UploadInfo;
    .end local v2    # "isUploading":Z
    :cond_2
    iget-object v4, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingItem:Lcom/tudou/upload/UploadInfo;

    if-eqz v4, :cond_3

    .line 491
    iget-object v4, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingItem:Lcom/tudou/upload/UploadInfo;

    invoke-direct {p0, v4}, Lcom/tudou/ui/fragment/UploadingFragment;->delete(Lcom/tudou/upload/UploadInfo;)V

    .line 493
    :cond_3
    iget-object v4, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 494
    iget-object v4, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 495
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->getEditReturn()V

    .line 501
    :goto_2
    return-void

    .line 498
    :cond_4
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->setDeleteText()V

    .line 499
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->setUploadingCount()V

    .line 500
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->ajustData()V

    goto :goto_2
.end method

.method private getCheckedCount()V
    .locals 3

    .prologue
    .line 702
    new-instance v0, Lcom/youku/vo/Page;

    invoke-direct {v0}, Lcom/youku/vo/Page;-><init>()V

    .line 703
    .local v0, "page":Lcom/youku/vo/Page;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/vo/Page;->setPageSize(I)V

    .line 704
    invoke-static {v0}, Lcom/youku/http/TudouURLContainer;->getCheckingUrl(Lcom/youku/vo/Page;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mCheckingCountHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/tudou/android/TudouApi;->connectHttpRequest(Ljava/lang/String;Landroid/os/Handler;)V

    .line 706
    return-void
.end method

.method private getCheckedSize()I
    .locals 4

    .prologue
    .line 656
    iget-object v3, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 657
    :cond_0
    const/4 v0, 0x0

    .line 665
    :cond_1
    return v0

    .line 659
    :cond_2
    const/4 v0, 0x0

    .line 660
    .local v0, "checkedSize":I
    iget-object v3, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/upload/UploadInfo;

    .line 661
    .local v2, "info":Lcom/tudou/upload/UploadInfo;
    invoke-virtual {v2}, Lcom/tudou/upload/UploadInfo;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 662
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getEditList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1267
    iget-object v3, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1269
    invoke-static {}, Lcom/tudou/upload/UploadProcessor;->getTasks()Ljava/util/List;

    move-result-object v2

    .line 1270
    .local v2, "mLocalInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/UploadInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1272
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/upload/UploadInfo;

    .line 1273
    .local v1, "info":Lcom/tudou/upload/UploadInfo;
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/tudou/upload/UploadInfo;->setUiType(I)V

    .line 1274
    invoke-virtual {v1, v4}, Lcom/tudou/upload/UploadInfo;->setEdit(Z)V

    goto :goto_0

    .line 1277
    .end local v1    # "info":Lcom/tudou/upload/UploadInfo;
    :cond_0
    new-instance v1, Lcom/tudou/upload/UploadInfo;

    invoke-direct {v1}, Lcom/tudou/upload/UploadInfo;-><init>()V

    .line 1278
    .restart local v1    # "info":Lcom/tudou/upload/UploadInfo;
    invoke-virtual {v1, v4}, Lcom/tudou/upload/UploadInfo;->setUiType(I)V

    .line 1279
    iget-object v3, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1280
    iget-object v3, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1281
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->ajustData()V

    .line 1283
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/tudou/upload/UploadInfo;
    :cond_1
    return-void
.end method

.method private getEditReturn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1289
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1290
    iput-boolean v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsEdit:Z

    .line 1291
    iput-boolean v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsSelAll:Z

    .line 1292
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnSelAll:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5168\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1294
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mStateTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1296
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEdtOldMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/UploadingFragment;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 1314
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->addLocalData()V

    .line 1317
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadedInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadedInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadedInfos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1325
    :cond_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->ajustData()V

    .line 1326
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBottomLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1327
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mVideoButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1328
    return-void
.end method

.method private getUploadedList()V
    .locals 2

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mPage:Lcom/youku/vo/Page;

    invoke-static {v0}, Lcom/youku/http/TudouURLContainer;->getUploadedUrl(Lcom/youku/vo/Page;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mCheckingListHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/tudou/android/TudouApi;->connectHttpRequest(Ljava/lang/String;Landroid/os/Handler;)V

    .line 1579
    return-void
.end method

.method private initTitle()V
    .locals 4

    .prologue
    .line 250
    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploading:Landroid/view/View;

    const v3, 0x7f0c0094

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 251
    .local v0, "statusBarView":Landroid/view/View;
    invoke-static {v0}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 253
    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploading:Landroid/view/View;

    const v3, 0x7f0c06b1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 254
    .local v1, "title":Landroid/widget/TextView;
    const v2, 0x7f0d029b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 255
    new-instance v2, Lcom/tudou/ui/fragment/UploadingFragment$2;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/UploadingFragment$2;-><init>(Lcom/tudou/ui/fragment/UploadingFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploading:Landroid/view/View;

    const v3, 0x7f0c024f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mLeftView:Landroid/widget/ImageView;

    .line 263
    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mLeftView:Landroid/widget/ImageView;

    const v3, 0x7f0208de

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 264
    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mLeftView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mLeftView:Landroid/widget/ImageView;

    new-instance v3, Lcom/tudou/ui/fragment/UploadingFragment$3;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/UploadingFragment$3;-><init>(Lcom/tudou/ui/fragment/UploadingFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploading:Landroid/view/View;

    const v3, 0x7f0c0223

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mStateTextView:Landroid/widget/TextView;

    .line 279
    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mStateTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "\u7f16\u8f91"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->setRightLayoutShow()V

    .line 283
    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mStateTextView:Landroid/widget/TextView;

    new-instance v3, Lcom/tudou/ui/fragment/UploadingFragment$4;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/UploadingFragment$4;-><init>(Lcom/tudou/ui/fragment/UploadingFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploading:Landroid/view/View;

    const v1, 0x7f0c0651

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnVideoPick:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploading:Landroid/view/View;

    const v1, 0x7f0c0650

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnVideoShot:Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploading:Landroid/view/View;

    const v1, 0x7f0c0d88

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mVideoButtons:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploading:Landroid/view/View;

    const v1, 0x7f0c0d89

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 177
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploading:Landroid/view/View;

    const v1, 0x7f0c0d8a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnSelAll:Landroid/widget/TextView;

    .line 178
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploading:Landroid/view/View;

    const v1, 0x7f0c0d8b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnDelete:Landroid/widget/TextView;

    .line 181
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploading:Landroid/view/View;

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/HintView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mHintView:Lcom/youku/widget/HintView;

    .line 182
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030214

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->load_complete:Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnVideoPick:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnVideoShot:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnSelAll:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnDelete:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploading:Landroid/view/View;

    const v1, 0x7f0c0d87

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 194
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 195
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnPullEventListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;)V

    .line 197
    new-instance v0, Lcom/tudou/adapter/UpLoadingAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/tudou/adapter/UpLoadingAdapter;-><init>(Lcom/tudou/ui/activity/BaseActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUpLoadingAdapter:Lcom/tudou/adapter/UpLoadingAdapter;

    .line 198
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUpLoadingAdapter:Lcom/tudou/adapter/UpLoadingAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/tudou/ui/fragment/UploadingFragment$1;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/UploadingFragment$1;-><init>(Lcom/tudou/ui/fragment/UploadingFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 245
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->initTitle()V

    .line 246
    return-void
.end method

.method public static noNetStateChange()V
    .locals 14

    .prologue
    const v13, 0x7f0d0113

    const/4 v12, 0x2

    const/4 v11, -0x1

    const/4 v10, 0x3

    .line 1421
    invoke-static {}, Lcom/tudou/android/Youku;->getCurrentNetState()Lcom/tudou/android/Youku$NetState;

    move-result-object v8

    sput-object v8, Lcom/tudou/android/Youku;->mCurrentNetState:Lcom/tudou/android/Youku$NetState;

    .line 1422
    invoke-static {}, Lcom/tudou/upload/UploadProcessor;->getTasks()Ljava/util/List;

    move-result-object v1

    .line 1424
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/UploadInfo;>;"
    sget-object v8, Lcom/tudou/android/Youku;->mCurrentNetState:Lcom/tudou/android/Youku$NetState;

    sget-object v9, Lcom/tudou/android/Youku$NetState;->NONE:Lcom/tudou/android/Youku$NetState;

    if-ne v8, v9, :cond_5

    .line 1425
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1426
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 1427
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 1428
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tudou/upload/UploadInfo;

    .line 1429
    .local v7, "ui":Lcom/tudou/upload/UploadInfo;
    invoke-virtual {v7}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v5

    .line 1430
    .local v5, "state":I
    if-eq v5, v11, :cond_0

    if-eqz v5, :cond_0

    if-eq v5, v10, :cond_0

    if-ne v5, v12, :cond_4

    .line 1434
    :cond_0
    invoke-static {}, Lcom/tudou/upload/UploadProcessor;->getUploadingTask()Lcom/tudou/upload/UploadInfo;

    move-result-object v6

    .line 1436
    .local v6, "sync_info":Lcom/tudou/upload/UploadInfo;
    if-eqz v6, :cond_1

    .line 1437
    invoke-virtual {v6, v10}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    .line 1439
    :cond_1
    const v8, 0x7f0d02c3

    invoke-static {v8}, Lcom/youku/util/Util;->showTips(I)V

    .line 1503
    .end local v0    # "i":I
    .end local v4    # "size":I
    .end local v5    # "state":I
    .end local v6    # "sync_info":Lcom/tudou/upload/UploadInfo;
    .end local v7    # "ui":Lcom/tudou/upload/UploadInfo;
    :cond_2
    :goto_1
    sget-object v8, Lcom/tudou/android/Youku;->mCurrentNetState:Lcom/tudou/android/Youku$NetState;

    sput-object v8, Lcom/tudou/android/Youku;->mHistoryNetState:Lcom/tudou/android/Youku$NetState;

    .line 1505
    :cond_3
    :goto_2
    return-void

    .line 1427
    .restart local v0    # "i":I
    .restart local v4    # "size":I
    .restart local v5    # "state":I
    .restart local v7    # "ui":Lcom/tudou/upload/UploadInfo;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1444
    .end local v0    # "i":I
    .end local v4    # "size":I
    .end local v5    # "state":I
    .end local v7    # "ui":Lcom/tudou/upload/UploadInfo;
    :cond_5
    sget-object v8, Lcom/tudou/android/Youku;->mCurrentNetState:Lcom/tudou/android/Youku$NetState;

    sget-object v9, Lcom/tudou/android/Youku$NetState;->ThreeG:Lcom/tudou/android/Youku$NetState;

    if-ne v8, v9, :cond_d

    .line 1445
    invoke-static {}, Lcom/tudou/upload/UploadConfig;->getUploadSetting()Z

    move-result v3

    .line 1446
    .local v3, "setting":Z
    if-eqz v3, :cond_9

    .line 1447
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1448
    sget-object v8, Lcom/tudou/android/Youku;->mHistoryNetState:Lcom/tudou/android/Youku$NetState;

    sget-object v9, Lcom/tudou/android/Youku$NetState;->WiFi:Lcom/tudou/android/Youku$NetState;

    if-ne v8, v9, :cond_6

    .line 1449
    invoke-static {}, Lcom/tudou/ui/fragment/UploadingFragment;->reStartTask()Z

    move-result v2

    .line 1450
    .local v2, "reOk":Z
    if-eqz v2, :cond_6

    .line 1451
    invoke-static {v13}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_2

    .line 1455
    .end local v2    # "reOk":Z
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 1456
    .restart local v4    # "size":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v4, :cond_2

    .line 1457
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tudou/upload/UploadInfo;

    .line 1458
    .restart local v7    # "ui":Lcom/tudou/upload/UploadInfo;
    invoke-virtual {v7}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v5

    .line 1459
    .restart local v5    # "state":I
    if-eq v5, v11, :cond_7

    if-eqz v5, :cond_7

    if-eq v5, v10, :cond_7

    if-ne v5, v12, :cond_8

    .line 1463
    :cond_7
    invoke-static {v13}, Lcom/youku/util/Util;->showTips(I)V

    .line 1464
    invoke-static {}, Lcom/tudou/ui/fragment/UploadingFragment;->autoStartUpload()V

    .line 1456
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1473
    .end local v0    # "i":I
    .end local v4    # "size":I
    .end local v5    # "state":I
    .end local v7    # "ui":Lcom/tudou/upload/UploadInfo;
    :cond_9
    invoke-static {}, Lcom/tudou/upload/UploadProcessor;->getUploadingTask()Lcom/tudou/upload/UploadInfo;

    move-result-object v6

    .line 1474
    .restart local v6    # "sync_info":Lcom/tudou/upload/UploadInfo;
    if-eqz v6, :cond_a

    .line 1475
    invoke-static {v13}, Lcom/youku/util/Util;->showTips(I)V

    .line 1476
    invoke-virtual {v6, v10}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    goto :goto_2

    .line 1479
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 1480
    .restart local v4    # "size":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    if-ge v0, v4, :cond_2

    .line 1481
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tudou/upload/UploadInfo;

    .line 1482
    .restart local v7    # "ui":Lcom/tudou/upload/UploadInfo;
    invoke-virtual {v7}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v5

    .line 1483
    .restart local v5    # "state":I
    if-eq v5, v11, :cond_b

    if-eqz v5, :cond_b

    if-eq v5, v10, :cond_b

    if-ne v5, v12, :cond_c

    .line 1487
    :cond_b
    const v8, 0x7f0d02c7

    invoke-static {v8}, Lcom/youku/util/Util;->showTips(I)V

    .line 1480
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1495
    .end local v0    # "i":I
    .end local v3    # "setting":Z
    .end local v4    # "size":I
    .end local v5    # "state":I
    .end local v6    # "sync_info":Lcom/tudou/upload/UploadInfo;
    .end local v7    # "ui":Lcom/tudou/upload/UploadInfo;
    :cond_d
    sget-object v8, Lcom/tudou/android/Youku;->mHistoryNetState:Lcom/tudou/android/Youku$NetState;

    sget-object v9, Lcom/tudou/android/Youku$NetState;->ThreeG:Lcom/tudou/android/Youku$NetState;

    if-ne v8, v9, :cond_e

    .line 1496
    invoke-static {}, Lcom/tudou/ui/fragment/UploadingFragment;->reStartTask()Z

    move-result v2

    .line 1497
    .restart local v2    # "reOk":Z
    if-nez v2, :cond_3

    .line 1501
    .end local v2    # "reOk":Z
    :cond_e
    invoke-static {}, Lcom/tudou/ui/fragment/UploadingFragment;->autoStartUpload()V

    goto/16 :goto_1
.end method

.method private onLoginClick()V
    .locals 4

    .prologue
    .line 1592
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1593
    .local v0, "goLoginIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1594
    const-string v1, "TAG"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1595
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f040005

    const v3, 0x7f040004

    invoke-static {v1, v0, v2, v3}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;II)V

    .line 1596
    return-void
.end method

.method private parseCheckedCount(Ljava/lang/String;)Z
    .locals 5
    .param p1, "sObj"    # Ljava/lang/String;

    .prologue
    .line 739
    invoke-static {p1}, Lcom/youku/util/JsonUtils;->loadJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 740
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "msg"

    invoke-static {v2, v4}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 741
    .local v3, "msg":Ljava/lang/String;
    const-string/jumbo v4, "success"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 742
    const/4 v4, 0x0

    .line 748
    :goto_0
    return v4

    .line 744
    :cond_0
    const-string v4, "data"

    invoke-static {v2, v4}, Lcom/youku/util/JsonUtils;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 745
    .local v1, "data":Lorg/json/JSONObject;
    const-string v4, "count"

    invoke-static {v1, v4}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 747
    .local v0, "count":I
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/youku/vo/UserBean;->setCheckedCount(I)V

    .line 748
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private parseUploadedList(Ljava/lang/String;)Z
    .locals 14
    .param p1, "sObj"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1522
    invoke-static {p1}, Lcom/youku/util/JsonUtils;->loadJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1523
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v12, "msg"

    invoke-static {v4, v12}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1524
    .local v6, "msg":Ljava/lang/String;
    const-string/jumbo v12, "success"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1572
    :goto_0
    return v10

    .line 1528
    :cond_0
    const-string v12, "passed_count"

    invoke-static {v4, v12}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v8

    .line 1529
    .local v8, "totalItemCount":I
    const-string v12, "processing_count"

    invoke-static {v4, v12}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    .line 1531
    .local v7, "processing_count":I
    add-int v12, v7, v8

    iput v12, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mTotalListCount:I

    .line 1532
    iget-object v12, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mPage:Lcom/youku/vo/Page;

    invoke-virtual {v12, v8}, Lcom/youku/vo/Page;->setTotalCount(I)V

    .line 1534
    const-string v12, "passed_items"

    invoke-static {v4, v12}, Lcom/youku/util/JsonUtils;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1535
    .local v5, "list":Lorg/json/JSONArray;
    const-string v12, "processing_items"

    invoke-static {v4, v12}, Lcom/youku/util/JsonUtils;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1539
    .local v1, "checkingList":Lorg/json/JSONArray;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v12

    iget v13, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mTotalListCount:I

    invoke-virtual {v12, v13}, Lcom/youku/vo/UserBean;->setUploadCount(I)V

    .line 1540
    iget-object v12, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mPage:Lcom/youku/vo/Page;

    invoke-virtual {v12}, Lcom/youku/vo/Page;->getPageNo()I

    move-result v12

    if-eq v12, v11, :cond_1

    iget-object v12, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadedInfos:Ljava/util/List;

    if-nez v12, :cond_2

    .line 1541
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadedInfos:Ljava/util/List;

    .line 1542
    iput v10, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadedSize:I

    .line 1543
    iget v10, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mTotalListCount:I

    if-lez v10, :cond_2

    .line 1544
    new-instance v3, Lcom/tudou/upload/UploadInfo;

    invoke-direct {v3}, Lcom/tudou/upload/UploadInfo;-><init>()V

    .line 1545
    .local v3, "info":Lcom/tudou/upload/UploadInfo;
    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Lcom/tudou/upload/UploadInfo;->setUiType(I)V

    .line 1546
    iget-object v10, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadedInfos:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1549
    .end local v3    # "info":Lcom/tudou/upload/UploadInfo;
    :cond_2
    if-eqz v1, :cond_3

    iget-object v10, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mPage:Lcom/youku/vo/Page;

    invoke-virtual {v10}, Lcom/youku/vo/Page;->getPageNo()I

    move-result v10

    if-ne v10, v11, :cond_3

    .line 1550
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    iput v10, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mCheckingLen:I

    .line 1552
    :cond_3
    iget v10, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadedSize:I

    iget v12, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mCheckingLen:I

    add-int/2addr v10, v12

    iput v10, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadedSize:I

    .line 1553
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 1554
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 1555
    invoke-static {v1, v2}, Lcom/youku/util/JsonUtils;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1556
    .local v0, "checkObj":Lorg/json/JSONObject;
    const-string/jumbo v10, "title"

    invoke-static {v0, v10}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1557
    .local v9, "videoTitle":Ljava/lang/String;
    new-instance v3, Lcom/tudou/upload/UploadInfo;

    invoke-direct {v3}, Lcom/tudou/upload/UploadInfo;-><init>()V

    .line 1558
    .restart local v3    # "info":Lcom/tudou/upload/UploadInfo;
    invoke-virtual {v3, v9}, Lcom/tudou/upload/UploadInfo;->setTitle(Ljava/lang/String;)V

    .line 1559
    const/4 v10, 0x6

    invoke-virtual {v3, v10}, Lcom/tudou/upload/UploadInfo;->setUiType(I)V

    .line 1560
    iget-object v10, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadedInfos:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1554
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1563
    .end local v0    # "checkObj":Lorg/json/JSONObject;
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/tudou/upload/UploadInfo;
    .end local v9    # "videoTitle":Ljava/lang/String;
    :cond_4
    iget v10, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadedSize:I

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v12

    add-int/2addr v10, v12

    iput v10, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadedSize:I

    .line 1564
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_5

    .line 1565
    iget-object v10, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadedInfos:Ljava/util/List;

    invoke-static {v5, v2}, Lcom/youku/util/JsonUtils;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/tudou/upload/UploadInfo;->getUploadedItem(Lorg/json/JSONObject;)Lcom/tudou/upload/UploadInfo;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1564
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v10, v11

    .line 1572
    goto/16 :goto_0
.end method

.method private pause()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 448
    sget-object v3, Lcom/tudou/ui/fragment/UploadingFragment;->mCurrentSelectUploadInfo:Lcom/tudou/upload/UploadInfo;

    invoke-static {v3}, Lcom/tudou/upload/UploadProcessor;->isUploadingTask(Lcom/tudou/upload/UploadInfo;)Z

    move-result v1

    .line 450
    .local v1, "isUploading":Z
    const-string v3, "TAG_TUDOU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pause()======isUploading===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    if-eqz v1, :cond_1

    .line 452
    invoke-static {}, Lcom/tudou/upload/UploadProcessor;->getUploadingTask()Lcom/tudou/upload/UploadInfo;

    move-result-object v2

    .line 453
    .local v2, "sync_info":Lcom/tudou/upload/UploadInfo;
    const-string v3, "TAG_TUDOU"

    const-string v4, "Pause==========2"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {v2, v6}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    .line 455
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/tudou/ui/fragment/UploadingFragment;->mCurrentSelectUploadInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v3}, Lcom/tudou/upload/UploadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 457
    const-string v3, "TAG_TUDOU"

    const-string v4, "Pause==========3"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    sget-object v3, Lcom/tudou/ui/fragment/UploadingFragment;->mCurrentSelectUploadInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v3, v6}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    .line 459
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->ajustData()V

    .line 460
    sget-object v3, Lcom/tudou/ui/fragment/UploadingFragment;->mCurrentSelectUploadInfo:Lcom/tudou/upload/UploadInfo;

    invoke-static {v3}, Lcom/tudou/upload/UploadDB;->update(Lcom/tudou/upload/UploadInfo;)Z

    .line 469
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "sync_info":Lcom/tudou/upload/UploadInfo;
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    const-string v3, "TAG_TUDOU"

    const-string v4, "Pause==========4"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    sget-object v3, Lcom/tudou/ui/fragment/UploadingFragment;->mCurrentSelectUploadInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v3, v6}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    .line 465
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->ajustData()V

    .line 466
    sget-object v3, Lcom/tudou/ui/fragment/UploadingFragment;->mCurrentSelectUploadInfo:Lcom/tudou/upload/UploadInfo;

    invoke-static {v3}, Lcom/tudou/upload/UploadDB;->update(Lcom/tudou/upload/UploadInfo;)Z

    goto :goto_0
.end method

.method private pullToAdd()V
    .locals 2

    .prologue
    .line 1106
    const-string/jumbo v0, "\u4e0a\u4f20\u9875\u5df2\u4e0a\u4f20\u89c6\u9891\u52a0\u8f7d\u66f4\u591a"

    const-string/jumbo v1, "\u81ea\u52a8\u52a0\u8f7d\u66f4\u591a"

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/UploadManagerActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsEdit:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mPage:Lcom/youku/vo/Page;

    if-nez v0, :cond_1

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 1129
    :goto_0
    return-void

    .line 1111
    :cond_1
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsRefresh:Z

    if-eqz v0, :cond_2

    .line 1112
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    goto :goto_0

    .line 1115
    :cond_2
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1116
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 1117
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 1120
    :cond_3
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsPulling:Z

    if-eqz v0, :cond_4

    .line 1121
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    goto :goto_0

    .line 1124
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsPulling:Z

    .line 1125
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mPage:Lcom/youku/vo/Page;

    invoke-virtual {v0}, Lcom/youku/vo/Page;->enPageNo()V

    .line 1126
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->setRightLayoutShow()V

    .line 1128
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->getUploadedList()V

    goto :goto_0
.end method

.method private static reStartTask()Z
    .locals 3

    .prologue
    .line 1508
    invoke-static {}, Lcom/tudou/upload/UploadProcessor;->getUploadingTask()Lcom/tudou/upload/UploadInfo;

    move-result-object v1

    .line 1509
    .local v1, "sync_info":Lcom/tudou/upload/UploadInfo;
    if-eqz v1, :cond_0

    .line 1510
    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tudou/upload/UploadDB;->getItem(Ljava/lang/String;)Lcom/tudou/upload/UploadInfo;

    move-result-object v0

    .line 1511
    .local v0, "dbInfo":Lcom/tudou/upload/UploadInfo;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    .line 1512
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    .line 1513
    new-instance v2, Lcom/tudou/upload/UploadProcessor;

    invoke-direct {v2, v0}, Lcom/tudou/upload/UploadProcessor;-><init>(Lcom/tudou/upload/UploadInfo;)V

    invoke-virtual {v2}, Lcom/tudou/upload/UploadProcessor;->start()V

    .line 1514
    sput-object v0, Lcom/tudou/ui/fragment/UploadingFragment;->mCurrentSelectUploadInfo:Lcom/tudou/upload/UploadInfo;

    .line 1515
    const/4 v2, 0x1

    .line 1517
    .end local v0    # "dbInfo":Lcom/tudou/upload/UploadInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private refreshEditListInfo()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 893
    invoke-static {}, Lcom/tudou/upload/UploadProcessor;->getTasks()Ljava/util/List;

    move-result-object v0

    .line 894
    .local v0, "aLocalInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/UploadInfo;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 895
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 897
    .local v6, "temInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/UploadInfo;>;"
    new-instance v5, Lcom/tudou/upload/UploadInfo;

    invoke-direct {v5}, Lcom/tudou/upload/UploadInfo;-><init>()V

    .line 898
    .local v5, "info1":Lcom/tudou/upload/UploadInfo;
    invoke-virtual {v5, v9}, Lcom/tudou/upload/UploadInfo;->setUiType(I)V

    .line 899
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tudou/upload/UploadInfo;

    .line 902
    .local v4, "info":Lcom/tudou/upload/UploadInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 903
    iget-object v7, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/upload/UploadInfo;

    .line 904
    .local v1, "editInfo":Lcom/tudou/upload/UploadInfo;
    invoke-virtual {v4}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 905
    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->isChecked()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/tudou/upload/UploadInfo;->setChecked(Z)V

    .line 902
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 908
    .end local v1    # "editInfo":Lcom/tudou/upload/UploadInfo;
    :cond_1
    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lcom/tudou/upload/UploadInfo;->setUiType(I)V

    .line 909
    invoke-virtual {v4, v9}, Lcom/tudou/upload/UploadInfo;->setEdit(Z)V

    .line 910
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 912
    .end local v2    # "i":I
    .end local v4    # "info":Lcom/tudou/upload/UploadInfo;
    :cond_2
    iget-object v7, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 913
    iget-object v7, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 918
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "info1":Lcom/tudou/upload/UploadInfo;
    .end local v6    # "temInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/UploadInfo;>;"
    :goto_2
    return-void

    .line 916
    :cond_3
    iget-object v7, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto :goto_2
.end method

.method private registBroadCastReciver()V
    .locals 3

    .prologue
    .line 1140
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->uploadReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 1151
    :goto_0
    return-void

    .line 1143
    :cond_0
    new-instance v1, Lcom/tudou/ui/fragment/UploadingFragment$11;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/UploadingFragment$11;-><init>(Lcom/tudou/ui/fragment/UploadingFragment;)V

    iput-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->uploadReceiver:Landroid/content/BroadcastReceiver;

    .line 1148
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.youku.paike.broadcast_upload_event_fragment"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1150
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->uploadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/tudou/ui/activity/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private selectAll()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 599
    iget-boolean v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsEdit:Z

    if-nez v2, :cond_0

    .line 620
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-boolean v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsSelAll:Z

    if-eqz v2, :cond_3

    .line 603
    iput-boolean v3, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsSelAll:Z

    .line 604
    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/upload/UploadInfo;

    .line 605
    .local v1, "info":Lcom/tudou/upload/UploadInfo;
    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getUiType()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 606
    invoke-virtual {v1, v3}, Lcom/tudou/upload/UploadInfo;->setChecked(Z)V

    goto :goto_1

    .line 609
    .end local v1    # "info":Lcom/tudou/upload/UploadInfo;
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnSelAll:Landroid/widget/TextView;

    const-string/jumbo v3, "\u5168\u9009"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    :goto_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUpLoadingAdapter:Lcom/tudou/adapter/UpLoadingAdapter;

    invoke-virtual {v2}, Lcom/tudou/adapter/UpLoadingAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 611
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    iput-boolean v4, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsSelAll:Z

    .line 612
    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/upload/UploadInfo;

    .line 613
    .restart local v1    # "info":Lcom/tudou/upload/UploadInfo;
    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getUiType()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 614
    invoke-virtual {v1, v4}, Lcom/tudou/upload/UploadInfo;->setChecked(Z)V

    goto :goto_3

    .line 617
    .end local v1    # "info":Lcom/tudou/upload/UploadInfo;
    :cond_5
    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnSelAll:Landroid/widget/TextView;

    const-string/jumbo v3, "\u53d6\u6d88\u5168\u9009"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private setDeleteText()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 626
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->getCheckedSize()I

    move-result v0

    .line 627
    .local v0, "checkSize":I
    if-nez v0, :cond_0

    .line 628
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnDelete:Landroid/widget/TextView;

    const-string/jumbo v2, "\u5220\u9664"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnDelete:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 630
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnDelete:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 631
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnDelete:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0e00f4

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 642
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 643
    iput-boolean v5, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsSelAll:Z

    .line 644
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnSelAll:Landroid/widget/TextView;

    const-string/jumbo v2, "\u53d6\u6d88\u5168\u9009"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    :goto_1
    return-void

    .line 635
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnDelete:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5220\u9664("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->getCheckedSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnDelete:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 637
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnDelete:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 638
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnDelete:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0e00f3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 646
    :cond_1
    iput-boolean v4, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsSelAll:Z

    .line 647
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnSelAll:Landroid/widget/TextView;

    const-string/jumbo v2, "\u5168\u9009"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setItemClick()V
    .locals 3

    .prologue
    .line 334
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setItemClick=======mCurrentSelectUploadInfo.getStatus()==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tudou/ui/fragment/UploadingFragment;->mCurrentSelectUploadInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v2}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    sget-object v0, Lcom/tudou/ui/fragment/UploadingFragment;->mCurrentSelectUploadInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 354
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 342
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tudou/ui/fragment/UploadingFragment;->alertPositive(I)V

    goto :goto_0

    .line 347
    :pswitch_2
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->startCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->start()V

    goto :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setListData()V
    .locals 3

    .prologue
    .line 882
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->addLocalData()V

    .line 883
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6dfb\u52a0\u7f51\u7edc\u6570\u636e======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadedInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadedInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadedInfos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 889
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->addFootView()V

    .line 890
    return-void
.end method

.method private setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 3
    .param p1, "aMode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 809
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 810
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne p1, v1, :cond_1

    .line 812
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->load_complete:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z

    .line 813
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsFootviewAdd:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 814
    :catch_0
    move-exception v0

    .line 815
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 818
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne p1, v1, :cond_2

    .line 820
    :try_start_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->load_complete:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z

    .line 821
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsFootviewAdd:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 822
    :catch_1
    move-exception v0

    .line 823
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 826
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne p1, v1, :cond_0

    .line 828
    iget-boolean v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsFootviewAdd:Z

    if-nez v1, :cond_0

    .line 829
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadingFragment;->load_complete:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 830
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsFootviewAdd:Z

    goto :goto_0
.end method

.method private setNoneText()V
    .locals 3

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mHintView:Lcom/youku/widget/HintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 1066
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mHintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->UPLOAD_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 1069
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mHintView:Lcom/youku/widget/HintView;

    new-instance v1, Lcom/tudou/ui/fragment/UploadingFragment$9;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/UploadingFragment$9;-><init>(Lcom/tudou/ui/fragment/UploadingFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1100
    :goto_0
    return-void

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mHintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->UPLOAD_LOGIN_HINT:Lcom/youku/widget/HintView$Type;

    new-instance v2, Lcom/tudou/ui/fragment/UploadingFragment$10;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/UploadingFragment$10;-><init>(Lcom/tudou/ui/fragment/UploadingFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;Landroid/view/View$OnClickListener;)V

    .line 1098
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setRightLayoutShow()V
    .locals 3

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->getLocalUploadingCount()I

    move-result v0

    .line 321
    .local v0, "localCount":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mStateTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mStateTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setUploadingCount()V
    .locals 2

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->getLocalUploadingCount()I

    move-result v0

    .line 930
    .local v0, "localCount":I
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/youku/vo/UserBean;->setUploadingCount(I)V

    .line 931
    return-void
.end method

.method public static setUploadingWait()V
    .locals 2

    .prologue
    .line 1365
    invoke-static {}, Lcom/tudou/upload/UploadProcessor;->getUploadingTask()Lcom/tudou/upload/UploadInfo;

    move-result-object v0

    .line 1366
    .local v0, "sync_info":Lcom/tudou/upload/UploadInfo;
    if-eqz v0, :cond_0

    .line 1367
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    .line 1369
    :cond_0
    return-void
.end method

.method private start()V
    .locals 2

    .prologue
    .line 378
    const-string/jumbo v0, "\u4e0a\u4f20\u9875\u7ee7\u7eed\u89c6\u9891\u4e0a\u4f20"

    const-string/jumbo v1, "\u7ee7\u7eed\u4e0a\u4f20"

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/UploadManagerActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    sget-object v0, Lcom/tudou/ui/fragment/UploadingFragment;->mCurrentSelectUploadInfo:Lcom/tudou/upload/UploadInfo;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadingFragment;->start(Lcom/tudou/upload/UploadInfo;)V

    .line 411
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->ajustData()V

    .line 413
    return-void
.end method

.method public static start(Lcom/tudou/upload/UploadInfo;)V
    .locals 5
    .param p0, "aInfo"    # Lcom/tudou/upload/UploadInfo;

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    .line 442
    :goto_0
    return-void

    .line 427
    :cond_0
    invoke-static {}, Lcom/tudou/upload/UploadProcessor;->getUploadingTask()Lcom/tudou/upload/UploadInfo;

    move-result-object v2

    .line 428
    .local v2, "sync_info":Lcom/tudou/upload/UploadInfo;
    invoke-static {v2}, Lcom/tudou/upload/UploadProcessor;->isUploadingTask(Lcom/tudou/upload/UploadInfo;)Z

    move-result v1

    .line 429
    .local v1, "isUploading":Z
    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 430
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    .line 431
    invoke-static {p0}, Lcom/tudou/upload/UploadDB;->update(Lcom/tudou/upload/UploadInfo;)Z

    .line 432
    new-instance v3, Lcom/tudou/upload/UploadProcessor;

    invoke-direct {v3, p0}, Lcom/tudou/upload/UploadProcessor;-><init>(Lcom/tudou/upload/UploadInfo;)V

    invoke-virtual {v3}, Lcom/tudou/upload/UploadProcessor;->start()V

    goto :goto_0

    .line 435
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 437
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    .line 439
    :cond_3
    invoke-static {p0}, Lcom/tudou/upload/UploadDB;->update(Lcom/tudou/upload/UploadInfo;)Z

    goto :goto_0
.end method

.method private startCheck()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 362
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 371
    :goto_0
    return v0

    .line 366
    :cond_0
    invoke-static {}, Lcom/tudou/upload/UploadConfig;->uploadSettingIsOk()Z

    move-result v1

    if-nez v1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v2, 0x7f0d045d

    const/4 v3, 0x5

    invoke-static {v1, v2, p0, v3}, Lcom/youku/util/Util;->alertDelete(Lcom/tudou/ui/activity/BaseActivity;ILcom/youku/util/IAlertPositive;I)V

    goto :goto_0

    .line 371
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public alertPositive(I)V
    .locals 2
    .param p1, "tag"    # I

    .prologue
    .line 536
    packed-switch p1, :pswitch_data_0

    .line 563
    :goto_0
    :pswitch_0
    return-void

    .line 540
    :pswitch_1
    const-string/jumbo v0, "\u4e0a\u4f20\u9875\u6682\u505c\u89c6\u9891\u4e0a\u4f20"

    const-string/jumbo v1, "\u6682\u505c\u4e0a\u4f20"

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/UploadManagerActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v0, "TAG_TUDOU"

    const-string v1, "================to pause video"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->pause()V

    goto :goto_0

    .line 545
    :pswitch_2
    sget-object v0, Lcom/tudou/android/Youku;->NO_WLAN_UPLOAD_FLG:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 546
    const-string v0, "TAG_TUDOU"

    const-string v1, "================to start video"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->start()V

    goto :goto_0

    .line 550
    :pswitch_3
    const-string/jumbo v0, "\u4e0a\u4f20\u9875\u89c6\u9891\u4e0a\u4f20\u5220\u9664\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v1, "\u5220\u9664"

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/UploadManagerActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->deleteCheckedItem()V

    goto :goto_0

    .line 536
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getLocalUploadingCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1334
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1342
    :cond_0
    :goto_0
    return v1

    .line 1338
    :cond_1
    invoke-static {}, Lcom/tudou/upload/UploadProcessor;->getTasks()Ljava/util/List;

    move-result-object v0

    .line 1339
    .local v0, "mLocalInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/UploadInfo;>;"
    if-eqz v0, :cond_0

    .line 1342
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getRightLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploading:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tudou/ui/fragment/UploadingFragment;->getRightLayout(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getUploadingCount()I
    .locals 5

    .prologue
    .line 1351
    const/4 v2, 0x0

    .line 1352
    .local v2, "uploadingCount":I
    iget-object v3, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1353
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1354
    iget-object v3, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/upload/UploadInfo;

    .line 1355
    .local v1, "info":Lcom/tudou/upload/UploadInfo;
    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getUiType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 1356
    add-int/lit8 v2, v2, 0x1

    .line 1353
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1360
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/tudou/upload/UploadInfo;
    :cond_1
    return v2
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1256
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsEdit:Z

    if-eqz v0, :cond_0

    .line 1257
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->getEditReturn()V

    .line 1258
    const/4 v0, 0x1

    .line 1260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v2, 0x1f4

    .line 567
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnVideoPick:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 568
    const-string/jumbo v0, "video_pick"

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    const-string/jumbo v0, "\u4e0a\u4f20\u9875\u672c\u5730\u4e0a\u4f20\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v1, "\u672c\u5730\u4e0a\u4f20"

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/UploadManagerActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadFragment;->showLocalVideo(Landroid/app/Activity;)V

    goto :goto_0

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnVideoShot:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 574
    const-string/jumbo v0, "video_shot"

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    const-string/jumbo v0, "\u4e0a\u4f20\u9875\u9a6c\u4e0a\u62cd\u6444\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v1, "\u62cd\u6444\u4e0a\u4f20"

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/UploadManagerActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadFragment;->videoShot(Landroid/app/Activity;)V

    goto :goto_0

    .line 579
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnSelAll:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    .line 580
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->selectAll()V

    .line 581
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->setDeleteText()V

    goto :goto_0

    .line 582
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mBtnDelete:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 583
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/tudou/ui/fragment/UploadingFragment;->alertPositive(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 127
    const-string v1, "TAG_TUDOU"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sput-object p0, Lcom/tudou/ui/fragment/UploadingFragment;->sFragment:Lcom/tudou/ui/fragment/UploadingFragment;

    .line 129
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 130
    sput-boolean v3, Lcom/tudou/ui/fragment/MyTudouFragment;->mIsInUpload:Z

    .line 138
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tudou/ui/fragment/UploadingFragment;->mMainListRefreshKey:Z

    .line 140
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/tudou/ui/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 142
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030320

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploading:Landroid/view/View;

    .line 144
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Lcom/tudou/ui/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mManager:Landroid/app/NotificationManager;

    .line 146
    invoke-static {}, Lcom/tudou/ui/fragment/UploadingFragment;->autoStartUpload()V

    .line 147
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->initView()V

    .line 149
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploading:Landroid/view/View;

    const v2, 0x7f0c0094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 150
    .local v0, "statusBarView":Landroid/view/View;
    invoke-static {v0}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 151
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->registBroadCastReciver()V

    .line 152
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploading:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 763
    const-string v0, "TAG_TUDOU"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/ui/fragment/UploadingFragment;->sFragment:Lcom/tudou/ui/fragment/UploadingFragment;

    .line 765
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 766
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->uploadReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment;->uploadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->uploadReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    :cond_0
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroyView()V

    .line 165
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 672
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 674
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mHintView:Lcom/youku/widget/HintView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 676
    sget-boolean v0, Lcom/tudou/ui/fragment/UploadingFragment;->mMainListRefreshKey:Z

    if-eqz v0, :cond_0

    .line 677
    sput-boolean v2, Lcom/tudou/ui/fragment/UploadingFragment;->mMainListRefreshKey:Z

    .line 678
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 698
    :goto_0
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 699
    return-void

    .line 682
    :cond_0
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsEdit:Z

    if-eqz v0, :cond_2

    .line 683
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->refreshEditListInfo()V

    .line 684
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 685
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->ajustData()V

    goto :goto_0

    .line 687
    :cond_1
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->getEditReturn()V

    goto :goto_0

    .line 690
    :cond_2
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->setListData()V

    .line 691
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->ajustData()V

    goto :goto_0

    .line 696
    :cond_3
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->setNoneText()V

    goto :goto_0
.end method

.method public receivedBroadcast(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 1168
    const-class v4, Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/tudou/upload/UploadInfo;

    .line 1170
    .local v1, "info":Lcom/tudou/upload/UploadInfo;
    iget-boolean v4, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsEdit:Z

    invoke-virtual {v1, v4}, Lcom/tudou/upload/UploadInfo;->setEdit(Z)V

    .line 1171
    invoke-virtual {v1, v7}, Lcom/tudou/upload/UploadInfo;->setUiType(I)V

    .line 1173
    const/4 v2, 0x0

    .line 1174
    .local v2, "len":I
    iget-boolean v4, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsEdit:Z

    if-eqz v4, :cond_5

    .line 1175
    iget-object v4, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 1177
    iget-object v4, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/upload/UploadInfo;

    .line 1178
    .local v3, "tem":Lcom/tudou/upload/UploadInfo;
    invoke-virtual {v3}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1179
    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v4

    if-eq v4, v6, :cond_0

    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 1181
    :cond_0
    invoke-direct {p0, v1, v3}, Lcom/tudou/ui/fragment/UploadingFragment;->ajustUploadedItem(Lcom/tudou/upload/UploadInfo;Lcom/tudou/upload/UploadInfo;)V

    .line 1211
    .end local v0    # "i":I
    .end local v3    # "tem":Lcom/tudou/upload/UploadInfo;
    :cond_1
    :goto_1
    return-void

    .line 1184
    .restart local v0    # "i":I
    .restart local v3    # "tem":Lcom/tudou/upload/UploadInfo;
    :cond_2
    invoke-virtual {v3}, Lcom/tudou/upload/UploadInfo;->isChecked()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/tudou/upload/UploadInfo;->setChecked(Z)V

    .line 1185
    iget-object v4, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mEditListInfos:Ljava/util/List;

    invoke-interface {v4, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1207
    .end local v0    # "i":I
    .end local v3    # "tem":Lcom/tudou/upload/UploadInfo;
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1208
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadingFragment;->ajustData()V

    goto :goto_1

    .line 1176
    .restart local v0    # "i":I
    .restart local v3    # "tem":Lcom/tudou/upload/UploadInfo;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1192
    .end local v0    # "i":I
    .end local v3    # "tem":Lcom/tudou/upload/UploadInfo;
    :cond_5
    iget-object v4, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 1193
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v2, :cond_3

    .line 1194
    iget-object v4, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/upload/UploadInfo;

    .line 1195
    .restart local v3    # "tem":Lcom/tudou/upload/UploadInfo;
    invoke-virtual {v3}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1196
    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v4

    if-ne v4, v6, :cond_6

    .line 1197
    invoke-direct {p0, v1, v3}, Lcom/tudou/ui/fragment/UploadingFragment;->ajustUploadedItem(Lcom/tudou/upload/UploadInfo;Lcom/tudou/upload/UploadInfo;)V

    goto :goto_1

    .line 1200
    :cond_6
    invoke-virtual {v3}, Lcom/tudou/upload/UploadInfo;->isChecked()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/tudou/upload/UploadInfo;->setChecked(Z)V

    .line 1201
    iget-object v4, p0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingInfos:Ljava/util/List;

    invoke-interface {v4, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1193
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

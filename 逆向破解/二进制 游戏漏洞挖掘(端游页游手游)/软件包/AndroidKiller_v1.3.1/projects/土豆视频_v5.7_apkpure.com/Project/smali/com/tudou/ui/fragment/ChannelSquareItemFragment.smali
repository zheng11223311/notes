.class public Lcom/tudou/ui/fragment/ChannelSquareItemFragment;
.super Lcom/youku/ui/ChannelSquareItemBaseFragment;
.source "ChannelSquareItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/ChannelSquareItemFragment$6;,
        Lcom/tudou/ui/fragment/ChannelSquareItemFragment$NoContentTips;
    }
.end annotation


# static fields
.field private static final EMPORTY:I = 0x5

.field public static final GET_CHANNELSQUARE_CLASSFYITEMS_FAILED:I = 0x186a4

.field public static final GET_CHANNELSQUARE_CLASSFYITEMS_SUCCESSFULL:I = 0x186a3

.field private static final LOCAL_FAILED:I = 0x4

.field private static final LOCAL_GET:I = 0x2

.field private static final LOCAL_SUCESS:I = 0x3

.field public static csFragment:Lcom/tudou/ui/fragment/ChannelSquareItemFragment; = null

.field private static mSaveAdapter:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tudou/adapter/ChannelSquearAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static mSaveList:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/vo/ChannalSquareTagItems;",
            ">;"
        }
    .end annotation
.end field

.field private static final pageNum:I = 0x1e


# instance fields
.field private channelSquare:Landroid/view/View;

.field private csAdapter:Lcom/tudou/adapter/ChannelSquearAdapter;

.field private csTag:Lcom/youku/vo/ChannelSquareTag;

.field private csTagItems:Lcom/youku/vo/ChannalSquareTagItems;

.field private load_complete:Landroid/view/View;

.field private mChannelChoisenListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mContext:Lcom/tudou/ui/activity/ChannelSquareActivity;

.field private mCsClassfyItemsURL:Ljava/lang/String;

.field private mCurrentIndex:I

.field private mCurrentTag:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field private mIsRefreshing:Z

.field private mLocalData:Ljava/lang/String;

.field private nextPage:I

.field private noChannel:Lcom/youku/widget/HintView;

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

.field private tempCsTagItems:Lcom/youku/vo/ChannalSquareTagItems;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mSaveList:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mSaveAdapter:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/ui/ChannelSquareItemBaseFragment;-><init>()V

    .line 56
    new-instance v0, Lcom/youku/vo/ChannalSquareTagItems;

    invoke-direct {v0}, Lcom/youku/vo/ChannalSquareTagItems;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csTagItems:Lcom/youku/vo/ChannalSquareTagItems;

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->nextPage:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mIsRefreshing:Z

    .line 176
    new-instance v0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;-><init>(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mHandler:Landroid/os/Handler;

    .line 397
    new-instance v0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$4;-><init>(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->noChannel:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment;
    .param p1, "x1"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    return-void
.end method

.method static synthetic access$1000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mSaveAdapter:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mIsRefreshing:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mIsRefreshing:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->getLocalData()V

    return-void
.end method

.method static synthetic access$1302(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mCsClassfyItemsURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannelSquareTag;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csTag:Lcom/youku/vo/ChannelSquareTag;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Lcom/youku/vo/ChannelSquareTag;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment;
    .param p1, "x1"    # Lcom/youku/vo/ChannelSquareTag;
    .param p2, "x2"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->getClassifyItemsInfo(Lcom/youku/vo/ChannelSquareTag;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mLocalData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mLocalData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    .prologue
    .line 45
    iget v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->nextPage:I

    return v0
.end method

.method static synthetic access$202(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->nextPage:I

    return p1
.end method

.method static synthetic access$204(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    .prologue
    .line 45
    iget v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->nextPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->nextPage:I

    return v0
.end method

.method static synthetic access$210(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    .prologue
    .line 45
    iget v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->nextPage:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->nextPage:I

    return v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mChannelChoisenListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csTagItems:Lcom/youku/vo/ChannalSquareTagItems;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->tempCsTagItems:Lcom/youku/vo/ChannalSquareTagItems;

    return-object v0
.end method

.method static synthetic access$502(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Lcom/youku/vo/ChannalSquareTagItems;)Lcom/youku/vo/ChannalSquareTagItems;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment;
    .param p1, "x1"    # Lcom/youku/vo/ChannalSquareTagItems;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->tempCsTagItems:Lcom/youku/vo/ChannalSquareTagItems;

    return-object p1
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mCurrentTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mSaveList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/tudou/adapter/ChannelSquearAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csAdapter:Lcom/tudou/adapter/ChannelSquearAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Lcom/tudou/adapter/ChannelSquearAdapter;)Lcom/tudou/adapter/ChannelSquearAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment;
    .param p1, "x1"    # Lcom/tudou/adapter/ChannelSquearAdapter;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csAdapter:Lcom/tudou/adapter/ChannelSquearAdapter;

    return-object p1
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/tudou/ui/activity/ChannelSquareActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mContext:Lcom/tudou/ui/activity/ChannelSquareActivity;

    return-object v0
.end method

.method private buildView()V
    .locals 3

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030214

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->load_complete:Landroid/view/View;

    .line 308
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->channelSquare:Landroid/view/View;

    const v1, 0x7f0c00de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mChannelChoisenListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 310
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mChannelChoisenListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 311
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mChannelChoisenListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 313
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->channelSquare:Landroid/view/View;

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/HintView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->noChannel:Lcom/youku/widget/HintView;

    .line 315
    return-void
.end method

.method private getClassifyItemsInfo(Lcom/youku/vo/ChannelSquareTag;Z)V
    .locals 4
    .param p1, "csTag"    # Lcom/youku/vo/ChannelSquareTag;
    .param p2, "isClear"    # Z

    .prologue
    const/4 v3, 0x1

    .line 329
    iput-boolean v3, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mIsRefreshing:Z

    .line 331
    sput-boolean v3, Lcom/tudou/ui/fragment/HistoryManagerFragment;->isNeedCache:Z

    .line 332
    new-instance v0, Lcom/youku/network/HttpIntent;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mCsClassfyItemsURL:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 334
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 336
    .local v1, "mHttpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v2, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$3;-><init>(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Lcom/youku/vo/ChannelSquareTag;Z)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 382
    return-void
.end method

.method private getLocalData()V
    .locals 2

    .prologue
    .line 542
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$5;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$5;-><init>(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 585
    return-void
.end method

.method public static onActivityResults(IILandroid/content/Intent;)V
    .locals 1
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 535
    sget-object v0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csFragment:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    if-eqz v0, :cond_0

    .line 536
    sget-object v0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csFragment:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-virtual {v0, p0, p1, p2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 538
    :cond_0
    return-void
.end method

.method private setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 3
    .param p1, "aMode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 505
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mChannelChoisenListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 506
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne p1, v1, :cond_1

    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mChannelChoisenListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->load_complete:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 513
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne p1, v1, :cond_0

    .line 516
    :try_start_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mChannelChoisenListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->load_complete:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addFooterView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 517
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected lazyLoad()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 86
    const-string v7, "TAG_TUDOU"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "channelSquear=====lazyLoad()====index=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mCurrentIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "======"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csTag:Lcom/youku/vo/ChannelSquareTag;

    invoke-virtual {v9}, Lcom/youku/vo/ChannelSquareTag;->getKeywords()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget v7, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mCurrentIndex:I

    if-ne v7, v5, :cond_5

    sget v7, Lcom/tudou/ui/fragment/ChannelSquareFragment;->sFIST_TAB_SUB_COUNT:I

    if-lez v7, :cond_5

    .line 88
    sput v6, Lcom/tudou/ui/fragment/ChannelSquareFragment;->sFIST_TAB_SUB_COUNT:I

    .line 89
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csTagItems:Lcom/youku/vo/ChannalSquareTagItems;

    iget-object v7, v7, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    .line 90
    const/4 v3, 0x0

    .line 91
    .local v3, "subChange":Z
    iget-object v7, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csTagItems:Lcom/youku/vo/ChannalSquareTagItems;

    iget-object v7, v7, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DiscoveryChannelItem;

    .line 92
    .local v1, "item":Lcom/youku/vo/DiscoveryChannelItem;
    iget v7, v1, Lcom/youku/vo/DiscoveryChannelItem;->id:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/youku/data/SQLiteManagerTudou;->isAttention(Ljava/lang/String;)Z

    move-result v2

    .line 93
    .local v2, "resu":Z
    if-eqz v2, :cond_1

    move v4, v5

    .line 94
    .local v4, "tem":I
    :goto_1
    iget v7, v1, Lcom/youku/vo/DiscoveryChannelItem;->sub_status:I

    if-eq v7, v4, :cond_0

    .line 95
    const/4 v3, 0x1

    .line 96
    iput v4, v1, Lcom/youku/vo/DiscoveryChannelItem;->sub_status:I

    goto :goto_0

    .end local v4    # "tem":I
    :cond_1
    move v4, v6

    .line 93
    goto :goto_1

    .line 100
    .end local v1    # "item":Lcom/youku/vo/DiscoveryChannelItem;
    .end local v2    # "resu":Z
    :cond_2
    iget-object v5, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csAdapter:Lcom/tudou/adapter/ChannelSquearAdapter;

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    .line 101
    iget-object v5, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csAdapter:Lcom/tudou/adapter/ChannelSquearAdapter;

    invoke-virtual {v5}, Lcom/tudou/adapter/ChannelSquearAdapter;->notifyDataSetChanged()V

    .line 126
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "subChange":Z
    :cond_3
    :goto_2
    return-void

    .line 103
    :cond_4
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 104
    iget-object v5, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mChannelChoisenListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto :goto_2

    .line 106
    :cond_5
    iget v7, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mCurrentIndex:I

    if-nez v7, :cond_3

    sget v7, Lcom/tudou/ui/fragment/ChannelSquareFragment;->sSECOND_TAB_SUB_COUNT:I

    if-lez v7, :cond_3

    .line 107
    sput v6, Lcom/tudou/ui/fragment/ChannelSquareFragment;->sSECOND_TAB_SUB_COUNT:I

    .line 108
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csTagItems:Lcom/youku/vo/ChannalSquareTagItems;

    iget-object v7, v7, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    if-eqz v7, :cond_9

    .line 109
    const/4 v3, 0x0

    .line 110
    .restart local v3    # "subChange":Z
    iget-object v7, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csTagItems:Lcom/youku/vo/ChannalSquareTagItems;

    iget-object v7, v7, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/DiscoveryChannelItem;

    .line 111
    .restart local v1    # "item":Lcom/youku/vo/DiscoveryChannelItem;
    iget v7, v1, Lcom/youku/vo/DiscoveryChannelItem;->id:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/youku/data/SQLiteManagerTudou;->isAttention(Ljava/lang/String;)Z

    move-result v2

    .line 112
    .restart local v2    # "resu":Z
    if-eqz v2, :cond_7

    move v4, v5

    .line 113
    .restart local v4    # "tem":I
    :goto_4
    iget v7, v1, Lcom/youku/vo/DiscoveryChannelItem;->sub_status:I

    if-eq v7, v4, :cond_6

    .line 114
    const/4 v3, 0x1

    .line 115
    iput v4, v1, Lcom/youku/vo/DiscoveryChannelItem;->sub_status:I

    goto :goto_3

    .end local v4    # "tem":I
    :cond_7
    move v4, v6

    .line 112
    goto :goto_4

    .line 119
    .end local v1    # "item":Lcom/youku/vo/DiscoveryChannelItem;
    .end local v2    # "resu":Z
    :cond_8
    iget-object v5, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csAdapter:Lcom/tudou/adapter/ChannelSquearAdapter;

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    .line 120
    iget-object v5, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csAdapter:Lcom/tudou/adapter/ChannelSquearAdapter;

    invoke-virtual {v5}, Lcom/tudou/adapter/ChannelSquearAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 122
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "subChange":Z
    :cond_9
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 123
    iget-object v5, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mChannelChoisenListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 464
    const/16 v5, 0xc

    if-ne p2, v5, :cond_2

    .line 465
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v5

    if-nez v5, :cond_1

    .line 466
    const v5, 0x7f0d02c3

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(I)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-direct {p0, v5}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 470
    iput v7, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->nextPage:I

    .line 471
    iget-object v5, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csTag:Lcom/youku/vo/ChannelSquareTag;

    invoke-direct {p0, v5, v7}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->getClassifyItemsInfo(Lcom/youku/vo/ChannelSquareTag;Z)V

    goto :goto_0

    .line 474
    :cond_2
    if-eqz p3, :cond_0

    .line 478
    const-string/jumbo v5, "uid"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, "id":Ljava/lang/String;
    const-string v5, "isatt"

    invoke-virtual {p3, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 480
    .local v3, "isatt":Z
    const-string v5, "TAG"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 481
    .local v4, "tag":Ljava/lang/String;
    sget-object v5, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mSaveList:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/ChannalSquareTagItems;

    .line 483
    .local v0, "csTagItemsCurrent":Lcom/youku/vo/ChannalSquareTagItems;
    if-eqz v0, :cond_0

    .line 486
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, v0, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 487
    iget-object v5, v0, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/DiscoveryChannelItem;

    iget v5, v5, Lcom/youku/vo/DiscoveryChannelItem;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 488
    if-eqz v3, :cond_4

    .line 489
    iget-object v5, v0, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/DiscoveryChannelItem;

    iput v7, v5, Lcom/youku/vo/DiscoveryChannelItem;->sub_status:I

    .line 496
    :cond_3
    :goto_2
    sget-object v5, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mSaveAdapter:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 497
    sget-object v5, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mSaveAdapter:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tudou/adapter/ChannelSquearAdapter;

    invoke-virtual {v5}, Lcom/tudou/adapter/ChannelSquearAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 491
    :cond_4
    iget-object v5, v0, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/DiscoveryChannelItem;

    iput v8, v5, Lcom/youku/vo/DiscoveryChannelItem;->sub_status:I

    goto :goto_2

    .line 486
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 282
    invoke-super {p0, p1}, Lcom/youku/ui/ChannelSquareItemBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 283
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TAG"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/ChannelSquareTag;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csTag:Lcom/youku/vo/ChannelSquareTag;

    .line 284
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mCurrentIndex:I

    .line 285
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csTag:Lcom/youku/vo/ChannelSquareTag;

    if-nez v0, :cond_0

    .line 286
    const-string/jumbo v0, "\u6570\u636e\u4f20\u8f93\u51fa\u9519"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 292
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csTag:Lcom/youku/vo/ChannelSquareTag;

    invoke-virtual {v0}, Lcom/youku/vo/ChannelSquareTag;->getKeywords()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mCurrentTag:Ljava/lang/String;

    .line 290
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/ChannelSquareActivity;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mContext:Lcom/tudou/ui/activity/ChannelSquareActivity;

    .line 291
    sput-object p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csFragment:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 298
    const v0, 0x7f030105

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->channelSquare:Landroid/view/View;

    .line 300
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->buildView()V

    .line 301
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mChannelChoisenListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 302
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->channelSquare:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 527
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csFragment:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    .line 528
    sget-object v0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mSaveList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mCurrentTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object v0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mSaveAdapter:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mCurrentTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-super {p0}, Lcom/youku/ui/ChannelSquareItemBaseFragment;->onDestroy()V

    .line 531
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 387
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channelSquear=====onResume===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->csTag:Lcom/youku/vo/ChannelSquareTag;

    invoke-virtual {v2}, Lcom/youku/vo/ChannelSquareTag;->getKeywords()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-super {p0}, Lcom/youku/ui/ChannelSquareItemBaseFragment;->onResume()V

    .line 390
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 320
    invoke-super {p0}, Lcom/youku/ui/ChannelSquareItemBaseFragment;->onStart()V

    .line 321
    return-void
.end method

.method public setNoContentTips(Lcom/tudou/ui/fragment/ChannelSquareItemFragment$NoContentTips;)V
    .locals 2
    .param p1, "noContentTips"    # Lcom/tudou/ui/fragment/ChannelSquareItemFragment$NoContentTips;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->noChannel:Lcom/youku/widget/HintView;

    invoke-virtual {v0, p1}, Lcom/youku/widget/HintView;->setTag(Ljava/lang/Object;)V

    .line 137
    sget-object v0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$6;->$SwitchMap$com$tudou$ui$fragment$ChannelSquareItemFragment$NoContentTips:[I

    invoke-virtual {p1}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$NoContentTips;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->noChannel:Lcom/youku/widget/HintView;

    new-instance v1, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$1;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$1;-><init>(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    return-void

    .line 139
    :pswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->noChannel:Lcom/youku/widget/HintView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->noChannel:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    goto :goto_0

    .line 146
    :pswitch_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->noChannel:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 147
    iget-object v0, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->noChannel:Lcom/youku/widget/HintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

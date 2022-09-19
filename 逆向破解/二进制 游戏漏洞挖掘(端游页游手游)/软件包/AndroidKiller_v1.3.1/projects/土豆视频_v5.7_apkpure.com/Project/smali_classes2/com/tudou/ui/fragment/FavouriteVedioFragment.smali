.class public Lcom/tudou/ui/fragment/FavouriteVedioFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "FavouriteVedioFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DELETE:I = 0x7d3

.field public static final DELETE_ERROR:I = 0x7d4

.field public static final TAG:Ljava/lang/String;

.field public static final UPDATE:I = 0x7d1

.field public static final UPDATE_FAIL:I = 0x7d2

.field public static isCache:Z

.field public static mRefreshKey:Z


# instance fields
.field bottom_layout:Landroid/view/View;

.field deleteCount:I

.field delete_tv:Landroid/widget/TextView;

.field private favourite:Lcom/tudou/service/favourite/IFavouriteVedio;

.field private hintView:Lcom/youku/widget/HintView;

.field isfesh:Z

.field isselectAll:Z

.field private load_complete:Landroid/view/View;

.field public mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

.field private mContext:Lcom/tudou/ui/activity/MyFavoriteActivity;

.field private mFavouriteVideoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/FavouriteVideo;",
            ">;"
        }
    .end annotation
.end field

.field public mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mFavouriteView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

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

.field private mPageNo:I

.field private oldType:I

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

.field select_tv:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/tudou/ui/activity/MyFavoriteActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->isCache:Z

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mRefreshKey:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mPageNo:I

    .line 65
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->isselectAll:Z

    .line 66
    iput v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->deleteCount:I

    .line 70
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->isfesh:Z

    .line 76
    const/4 v0, 0x3

    iput v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->oldType:I

    .line 78
    invoke-static {}, Lcom/tudou/service/favourite/FavouriteVedioManager;->getInstance()Lcom/tudou/service/favourite/IFavouriteVedio;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->favourite:Lcom/tudou/service/favourite/IFavouriteVedio;

    .line 79
    new-instance v0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;-><init>(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mHandler:Landroid/os/Handler;

    .line 288
    new-instance v0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;-><init>(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 369
    new-instance v0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment$3;-><init>(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    .prologue
    .line 39
    iget v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mPageNo:I

    return v0
.end method

.method static synthetic access$002(Lcom/tudou/ui/fragment/FavouriteVedioFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouriteVedioFragment;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mPageNo:I

    return p1
.end method

.method static synthetic access$006(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    .prologue
    .line 39
    iget v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mPageNo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mPageNo:I

    return v0
.end method

.method static synthetic access$008(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    .prologue
    .line 39
    iget v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mPageNo:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mPageNo:I

    return v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->hintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->load_complete:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tudou/ui/fragment/FavouriteVedioFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouriteVedioFragment;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->oldType:I

    return p1
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Lcom/tudou/ui/activity/MyFavoriteActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mContext:Lcom/tudou/ui/activity/MyFavoriteActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/FavouriteVedioFragment;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouriteVedioFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->initData(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Lcom/tudou/service/favourite/IFavouriteVedio;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->favourite:Lcom/tudou/service/favourite/IFavouriteVedio;

    return-object v0
.end method

.method private initData(ZZ)V
    .locals 5
    .param p1, "isloading"    # Z
    .param p2, "uselocal"    # Z

    .prologue
    .line 504
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/tudou/adapter/FavouriteVedioAdapter;->flag:Z

    .line 506
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 510
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mPageNo:I

    .line 511
    iget v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mPageNo:I

    .line 512
    .local v0, "pn":I
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->favourite:Lcom/tudou/service/favourite/IFavouriteVedio;

    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mContext:Lcom/tudou/ui/activity/MyFavoriteActivity;

    iget v3, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mPageNo:I

    new-instance v4, Lcom/tudou/ui/fragment/FavouriteVedioFragment$6;

    invoke-direct {v4, p0, v0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment$6;-><init>(Lcom/tudou/ui/fragment/FavouriteVedioFragment;I)V

    invoke-interface {v1, v2, v3, v4}, Lcom/tudou/service/favourite/IFavouriteVedio;->getFavriteList(Landroid/content/Context;ILcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;)V

    .line 544
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->changedeletNum()V

    .line 545
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->bottom_layout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 546
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 394
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteView:Landroid/view/View;

    const v1, 0x7f0c04f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 395
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 396
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030214

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->load_complete:Landroid/view/View;

    .line 397
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteView:Landroid/view/View;

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/HintView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->hintView:Lcom/youku/widget/HintView;

    .line 399
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteView:Landroid/view/View;

    const v1, 0x7f0c043a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->bottom_layout:Landroid/view/View;

    .line 401
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteView:Landroid/view/View;

    const v1, 0x7f0c04f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->select_tv:Landroid/widget/TextView;

    .line 402
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteView:Landroid/view/View;

    const v1, 0x7f0c04f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->delete_tv:Landroid/widget/TextView;

    .line 403
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->select_tv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->delete_tv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoList:Ljava/util/ArrayList;

    .line 406
    new-instance v0, Lcom/tudou/adapter/FavouriteVedioAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mContext:Lcom/tudou/ui/activity/MyFavoriteActivity;

    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/tudou/adapter/FavouriteVedioAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    .line 407
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 409
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 410
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnPullEventListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;)V

    .line 412
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment$4;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment$4;-><init>(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 442
    return-void
.end method


# virtual methods
.method public askDelete(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/FavouriteVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, "itemlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/FavouriteVideo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v3, "tmpfavlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/FavouriteVideo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/FavouriteVideo;

    .line 477
    .local v1, "item":Lcom/youku/vo/FavouriteVideo;
    iget-boolean v4, v1, Lcom/youku/vo/FavouriteVideo;->isdelete:Z

    if-eqz v4, :cond_0

    .line 478
    iget-object v4, v1, Lcom/youku/vo/FavouriteVideo;->itemCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 482
    .end local v1    # "item":Lcom/youku/vo/FavouriteVideo;
    :cond_1
    const-string v4, "\u6536\u85cf\u9875\u89c6\u9891\u5220\u9664\u70b9\u51fb"

    const-class v5, Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u5220\u9664\u6309\u94ae\u2014\u70b9\u51fb"

    invoke-static {v4, v5, v6}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v4, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->favourite:Lcom/tudou/service/favourite/IFavouriteVedio;

    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mContext:Lcom/tudou/ui/activity/MyFavoriteActivity;

    new-instance v6, Lcom/tudou/ui/fragment/FavouriteVedioFragment$5;

    invoke-direct {v6, p0, v3}, Lcom/tudou/ui/fragment/FavouriteVedioFragment$5;-><init>(Lcom/tudou/ui/fragment/FavouriteVedioFragment;Ljava/util/ArrayList;)V

    invoke-interface {v4, v5, v2, v6}, Lcom/tudou/service/favourite/IFavouriteVedio;->deleteFavrite(Landroid/content/Context;Ljava/util/ArrayList;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V

    .line 501
    return-void
.end method

.method public changedeletNum()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 446
    iget v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->deleteCount:I

    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/FavouriteVedioAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->deleteCount:I

    if-eqz v0, :cond_1

    .line 447
    iput-boolean v3, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->isselectAll:Z

    .line 448
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->select_tv:Landroid/widget/TextView;

    const-string v1, "\u53d6\u6d88\u5168\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    :goto_0
    iget v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->deleteCount:I

    if-nez v0, :cond_2

    .line 454
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->delete_tv:Landroid/widget/TextView;

    const v1, -0x555556

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 455
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->delete_tv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->delete_tv:Landroid/widget/TextView;

    const-string v1, "\u5220\u9664"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->delete_tv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 466
    :cond_0
    :goto_1
    return-void

    .line 450
    :cond_1
    iput-boolean v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->isselectAll:Z

    .line 451
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->select_tv:Landroid/widget/TextView;

    const-string v1, "\u5168\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->delete_tv:Landroid/widget/TextView;

    const v1, -0x9a00

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 461
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->delete_tv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->delete_tv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5220\u9664("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->deleteCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->delete_tv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 556
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 558
    :sswitch_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mContext:Lcom/tudou/ui/activity/MyFavoriteActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/MyFavoriteActivity;->finish()V

    goto :goto_0

    .line 561
    :sswitch_1
    iget-boolean v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->isselectAll:Z

    if-eqz v2, :cond_2

    .line 562
    iput-boolean v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->isselectAll:Z

    .line 563
    const-string v2, "\u6211\u7684\u6536\u85cf\uff08\u89c6\u9891\uff09\u53d6\u6d88\u5168\u9009\u6309\u94ae\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u6211\u7684\u6536\u85cf\uff08\u89c6\u9891\uff09\u53d6\u6d88\u5168\u9009\u6309\u94ae"

    invoke-static {v2, v3, v4}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->select_tv:Landroid/widget/TextView;

    const-string v3, "\u5168\u9009"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/FavouriteVideo;

    .line 568
    .local v1, "item":Lcom/youku/vo/FavouriteVideo;
    iput-boolean v5, v1, Lcom/youku/vo/FavouriteVideo;->isdelete:Z

    goto :goto_1

    .line 570
    .end local v1    # "item":Lcom/youku/vo/FavouriteVideo;
    :cond_1
    iput v5, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->deleteCount:I

    .line 571
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->changedeletNum()V

    .line 572
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    invoke-virtual {v2}, Lcom/tudou/adapter/FavouriteVedioAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 574
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v2, "\u6211\u7684\u6536\u85cf\uff08\u89c6\u9891\uff09\u5168\u9009\u6309\u94ae\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u6211\u7684\u6536\u85cf\uff08\u89c6\u9891\uff09\u5168\u9009\u6309\u94ae"

    invoke-static {v2, v3, v4}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iput-boolean v6, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->isselectAll:Z

    .line 577
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->select_tv:Landroid/widget/TextView;

    const-string v3, "\u53d6\u6d88\u5168\u9009"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/FavouriteVideo;

    .line 579
    .restart local v1    # "item":Lcom/youku/vo/FavouriteVideo;
    iput-boolean v6, v1, Lcom/youku/vo/FavouriteVideo;->isdelete:Z

    goto :goto_2

    .line 581
    .end local v1    # "item":Lcom/youku/vo/FavouriteVideo;
    :cond_3
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->deleteCount:I

    .line 582
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->changedeletNum()V

    .line 583
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    invoke-virtual {v2}, Lcom/tudou/adapter/FavouriteVedioAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 587
    .end local v0    # "i$":Ljava/util/Iterator;
    :sswitch_2
    iget v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->deleteCount:I

    if-eqz v2, :cond_0

    .line 588
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->askDelete(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 556
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c024f -> :sswitch_0
        0x7f0c04f3 -> :sswitch_1
        0x7f0c04f4 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 223
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/MyFavoriteActivity;

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mContext:Lcom/tudou/ui/activity/MyFavoriteActivity;

    .line 224
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoList:Ljava/util/ArrayList;

    .line 230
    const v0, 0x7f030119

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteView:Landroid/view/View;

    .line 231
    sput-boolean v2, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mRefreshKey:Z

    .line 232
    sput-boolean v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->isCache:Z

    .line 233
    invoke-direct {p0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->initView()V

    .line 234
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 238
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteView:Landroid/view/View;

    return-object v0

    .line 237
    :cond_0
    invoke-direct {p0, v1, v1}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->initData(ZZ)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mHandler:Landroid/os/Handler;

    .line 551
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 552
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onStart()V

    .line 256
    sget-boolean v0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mRefreshKey:Z

    if-eqz v0, :cond_0

    .line 257
    sput-boolean v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mRefreshKey:Z

    .line 258
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->initData(ZZ)V

    goto :goto_0
.end method

.method public setEdit(Z)V
    .locals 4
    .param p1, "isEdit"    # Z

    .prologue
    const/4 v3, 0x0

    .line 266
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    iput-boolean p1, v2, Lcom/tudou/adapter/FavouriteVedioAdapter;->isEdit:Z

    .line 267
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    iget-boolean v2, v2, Lcom/tudou/adapter/FavouriteVedioAdapter;->isEdit:Z

    if-nez v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    iput-boolean v3, v2, Lcom/tudou/adapter/FavouriteVedioAdapter;->isEdit:Z

    .line 269
    sget-object v2, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->mf:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->refreshEdit()V

    .line 270
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->bottom_layout:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 285
    :goto_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    invoke-virtual {v2}, Lcom/tudou/adapter/FavouriteVedioAdapter;->notifyDataSetChanged()V

    .line 286
    :goto_1
    return-void

    .line 273
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 274
    :cond_1
    const v2, 0x7f0d0284

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_1

    .line 277
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->bottom_layout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mFavouriteVideoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/FavouriteVideo;

    .line 279
    .local v1, "item":Lcom/youku/vo/FavouriteVideo;
    iput-boolean v3, v1, Lcom/youku/vo/FavouriteVideo;->isdelete:Z

    goto :goto_2

    .line 281
    .end local v1    # "item":Lcom/youku/vo/FavouriteVideo;
    :cond_3
    iput v3, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->deleteCount:I

    .line 282
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->changedeletNum()V

    .line 283
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/tudou/adapter/FavouriteVedioAdapter;->isEdit:Z

    goto :goto_0
.end method

.class public Lcom/tudou/ui/fragment/FavouritePlaylistFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "FavouritePlaylistFragment.java"

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

.field private favourite:Lcom/tudou/service/favourite/IFavouritePlaylist;

.field private hintView:Lcom/youku/widget/HintView;

.field isfesh:Z

.field isselectAll:Z

.field private load_complete:Landroid/view/View;

.field public mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

.field private mContext:Lcom/tudou/ui/activity/MyFavoriteActivity;

.field private mFavouritePlaylistList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/FavouritePlaylist;",
            ">;"
        }
    .end annotation
.end field

.field public mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

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

    sput-object v0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->isCache:Z

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mRefreshKey:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mPageNo:I

    .line 66
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->isselectAll:Z

    .line 67
    iput v1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->deleteCount:I

    .line 71
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->isfesh:Z

    .line 75
    const/4 v0, 0x3

    iput v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->oldType:I

    .line 77
    invoke-static {}, Lcom/tudou/service/favourite/FavouritePlaylistManager;->getInstance()Lcom/tudou/service/favourite/IFavouritePlaylist;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->favourite:Lcom/tudou/service/favourite/IFavouritePlaylist;

    .line 79
    new-instance v0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$1;-><init>(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mHandler:Landroid/os/Handler;

    .line 286
    new-instance v0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$2;-><init>(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 372
    new-instance v0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$3;-><init>(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    .prologue
    .line 39
    iget v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mPageNo:I

    return v0
.end method

.method static synthetic access$002(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouritePlaylistFragment;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mPageNo:I

    return p1
.end method

.method static synthetic access$006(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    .prologue
    .line 39
    iget v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mPageNo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mPageNo:I

    return v0
.end method

.method static synthetic access$008(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    .prologue
    .line 39
    iget v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mPageNo:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mPageNo:I

    return v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->hintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->load_complete:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouritePlaylistFragment;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->oldType:I

    return p1
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Lcom/tudou/ui/activity/MyFavoriteActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mContext:Lcom/tudou/ui/activity/MyFavoriteActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouritePlaylistFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->initData(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)Lcom/tudou/service/favourite/IFavouritePlaylist;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->favourite:Lcom/tudou/service/favourite/IFavouritePlaylist;

    return-object v0
.end method

.method private initData(ZZ)V
    .locals 5
    .param p1, "isloading"    # Z
    .param p2, "uselocal"    # Z

    .prologue
    .line 517
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/tudou/adapter/FavouritePlaylistAdapter;->flag:Z

    .line 519
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 523
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mPageNo:I

    .line 524
    iget v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mPageNo:I

    .line 525
    .local v0, "pn":I
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->favourite:Lcom/tudou/service/favourite/IFavouritePlaylist;

    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mContext:Lcom/tudou/ui/activity/MyFavoriteActivity;

    iget v3, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mPageNo:I

    new-instance v4, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$6;

    invoke-direct {v4, p0, v0}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$6;-><init>(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;I)V

    invoke-interface {v1, v2, v3, v4}, Lcom/tudou/service/favourite/IFavouritePlaylist;->getFavriteList(Landroid/content/Context;ILcom/tudou/service/favourite/IFavouritePlaylist$GetListCallBack;)V

    .line 558
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->changedeletNum()V

    .line 559
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->bottom_layout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 560
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 397
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouriteView:Landroid/view/View;

    const v1, 0x7f0c04f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 398
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouriteView:Landroid/view/View;

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/HintView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->hintView:Lcom/youku/widget/HintView;

    .line 400
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouriteView:Landroid/view/View;

    const v1, 0x7f0c043a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->bottom_layout:Landroid/view/View;

    .line 402
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouriteView:Landroid/view/View;

    const v1, 0x7f0c04f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->select_tv:Landroid/widget/TextView;

    .line 403
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouriteView:Landroid/view/View;

    const v1, 0x7f0c04f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->delete_tv:Landroid/widget/TextView;

    .line 404
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->select_tv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->delete_tv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistList:Ljava/util/ArrayList;

    .line 407
    new-instance v0, Lcom/tudou/adapter/FavouritePlaylistAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mContext:Lcom/tudou/ui/activity/MyFavoriteActivity;

    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/tudou/adapter/FavouritePlaylistAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    .line 408
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 410
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 411
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnPullEventListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;)V

    .line 412
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 413
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030214

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->load_complete:Landroid/view/View;

    .line 415
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$4;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$4;-><init>(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 455
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
            "Lcom/youku/vo/FavouritePlaylist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 487
    .local p1, "itemlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/FavouritePlaylist;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v3, "tmpfavlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/FavouritePlaylist;>;"
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

    check-cast v1, Lcom/youku/vo/FavouritePlaylist;

    .line 490
    .local v1, "item":Lcom/youku/vo/FavouritePlaylist;
    iget-boolean v4, v1, Lcom/youku/vo/FavouritePlaylist;->isdelete:Z

    if-eqz v4, :cond_0

    .line 491
    iget-object v4, v1, Lcom/youku/vo/FavouritePlaylist;->lcode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 495
    .end local v1    # "item":Lcom/youku/vo/FavouritePlaylist;
    :cond_1
    const-string v4, "\u6536\u85cf\u9875\u8c46\u5355\u5220\u9664\u70b9\u51fb"

    const-class v5, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u5220\u9664\u6309\u94ae\u2014\u70b9\u51fb"

    invoke-static {v4, v5, v6}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v4, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->favourite:Lcom/tudou/service/favourite/IFavouritePlaylist;

    iget-object v5, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mContext:Lcom/tudou/ui/activity/MyFavoriteActivity;

    new-instance v6, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$5;

    invoke-direct {v6, p0, v3}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment$5;-><init>(Lcom/tudou/ui/fragment/FavouritePlaylistFragment;Ljava/util/ArrayList;)V

    invoke-interface {v4, v5, v2, v6}, Lcom/tudou/service/favourite/IFavouritePlaylist;->deleteFavrite(Landroid/content/Context;Ljava/util/ArrayList;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V

    .line 514
    return-void
.end method

.method public changedeletNum()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 459
    iget v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->deleteCount:I

    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/FavouritePlaylistAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->deleteCount:I

    if-eqz v0, :cond_1

    .line 460
    iput-boolean v3, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->isselectAll:Z

    .line 461
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->select_tv:Landroid/widget/TextView;

    const-string v1, "\u53d6\u6d88\u5168\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    :goto_0
    iget v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->deleteCount:I

    if-nez v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->delete_tv:Landroid/widget/TextView;

    const v1, -0x555556

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 468
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->delete_tv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->delete_tv:Landroid/widget/TextView;

    const-string v1, "\u5220\u9664"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->delete_tv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 479
    :cond_0
    :goto_1
    return-void

    .line 463
    :cond_1
    iput-boolean v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->isselectAll:Z

    .line 464
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->select_tv:Landroid/widget/TextView;

    const-string v1, "\u5168\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 473
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->delete_tv:Landroid/widget/TextView;

    const v1, -0x9a00

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 474
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->delete_tv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->delete_tv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5220\u9664("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->deleteCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->delete_tv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 565
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 567
    .local v1, "id":I
    sparse-switch v1, :sswitch_data_0

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 569
    :sswitch_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mContext:Lcom/tudou/ui/activity/MyFavoriteActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/MyFavoriteActivity;->finish()V

    goto :goto_0

    .line 572
    :sswitch_1
    iget-boolean v3, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->isselectAll:Z

    if-eqz v3, :cond_2

    .line 573
    iput-boolean v6, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->isselectAll:Z

    .line 574
    const-string v3, "\u6211\u7684\u6536\u85cf\uff08\u8c46\u5355\uff09\u53d6\u6d88\u5168\u9009\u6309\u94ae\u70b9\u51fb"

    const-class v4, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u6211\u7684\u6536\u85cf\uff08\u8c46\u5355\uff09\u53d6\u6d88\u5168\u9009\u6309\u94ae"

    invoke-static {v3, v4, v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v3, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->select_tv:Landroid/widget/TextView;

    const-string v4, "\u5168\u9009"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v3, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/FavouritePlaylist;

    .line 579
    .local v2, "item":Lcom/youku/vo/FavouritePlaylist;
    iput-boolean v6, v2, Lcom/youku/vo/FavouritePlaylist;->isdelete:Z

    goto :goto_1

    .line 581
    .end local v2    # "item":Lcom/youku/vo/FavouritePlaylist;
    :cond_1
    iput v6, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->deleteCount:I

    .line 582
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->changedeletNum()V

    .line 583
    iget-object v3, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    invoke-virtual {v3}, Lcom/tudou/adapter/FavouritePlaylistAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 585
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v3, "\u6211\u7684\u6536\u85cf\uff08\u8c46\u5355\uff09\u5168\u9009\u6309\u94ae\u70b9\u51fb"

    const-class v4, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u6211\u7684\u6536\u85cf\uff08\u8c46\u5355\uff09\u5168\u9009\u6309\u94ae"

    invoke-static {v3, v4, v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iput-boolean v7, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->isselectAll:Z

    .line 589
    iget-object v3, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->select_tv:Landroid/widget/TextView;

    const-string v4, "\u53d6\u6d88\u5168\u9009"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v3, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/FavouritePlaylist;

    .line 591
    .restart local v2    # "item":Lcom/youku/vo/FavouritePlaylist;
    iput-boolean v7, v2, Lcom/youku/vo/FavouritePlaylist;->isdelete:Z

    goto :goto_2

    .line 593
    .end local v2    # "item":Lcom/youku/vo/FavouritePlaylist;
    :cond_3
    iget-object v3, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->deleteCount:I

    .line 594
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->changedeletNum()V

    .line 595
    iget-object v3, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    invoke-virtual {v3}, Lcom/tudou/adapter/FavouritePlaylistAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 599
    .end local v0    # "i$":Ljava/util/Iterator;
    :sswitch_2
    iget v3, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->deleteCount:I

    if-eqz v3, :cond_0

    .line 600
    iget-object v3, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistList:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->askDelete(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 567
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
    .line 220
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 221
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/MyFavoriteActivity;

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mContext:Lcom/tudou/ui/activity/MyFavoriteActivity;

    .line 222
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

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistList:Ljava/util/ArrayList;

    .line 228
    const v0, 0x7f030117

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouriteView:Landroid/view/View;

    .line 229
    invoke-direct {p0}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->initView()V

    .line 230
    sput-boolean v2, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mRefreshKey:Z

    .line 231
    sput-boolean v1, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->isCache:Z

    .line 232
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouriteView:Landroid/view/View;

    return-object v0

    .line 235
    :cond_0
    invoke-direct {p0, v1, v1}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->initData(ZZ)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mHandler:Landroid/os/Handler;

    .line 610
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 611
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onStart()V

    .line 254
    sget-boolean v0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mRefreshKey:Z

    if-eqz v0, :cond_0

    .line 255
    sput-boolean v1, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mRefreshKey:Z

    .line 256
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->initData(ZZ)V

    goto :goto_0
.end method

.method public setEdit(Z)V
    .locals 4
    .param p1, "isEdit"    # Z

    .prologue
    const/4 v3, 0x0

    .line 264
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    iput-boolean p1, v2, Lcom/tudou/adapter/FavouritePlaylistAdapter;->isEdit:Z

    .line 265
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    iget-boolean v2, v2, Lcom/tudou/adapter/FavouritePlaylistAdapter;->isEdit:Z

    if-nez v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    iput-boolean v3, v2, Lcom/tudou/adapter/FavouritePlaylistAdapter;->isEdit:Z

    .line 267
    sget-object v2, Lcom/tudou/adapter/MyFavouriteFragmentStatePagerAdapter;->mf:Lcom/tudou/ui/fragment/MyFavoriteFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/MyFavoriteFragment;->refreshEdit()V

    .line 268
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->bottom_layout:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 283
    :goto_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    invoke-virtual {v2}, Lcom/tudou/adapter/FavouritePlaylistAdapter;->notifyDataSetChanged()V

    .line 284
    :goto_1
    return-void

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 272
    :cond_1
    const v2, 0x7f0d0284

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_1

    .line 275
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->bottom_layout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mFavouritePlaylistList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/FavouritePlaylist;

    .line 277
    .local v1, "item":Lcom/youku/vo/FavouritePlaylist;
    iput-boolean v3, v1, Lcom/youku/vo/FavouritePlaylist;->isdelete:Z

    goto :goto_2

    .line 279
    .end local v1    # "item":Lcom/youku/vo/FavouritePlaylist;
    :cond_3
    iput v3, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->deleteCount:I

    .line 280
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->changedeletNum()V

    .line 281
    iget-object v2, p0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mAdapter:Lcom/tudou/adapter/FavouritePlaylistAdapter;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/tudou/adapter/FavouritePlaylistAdapter;->isEdit:Z

    goto :goto_0
.end method

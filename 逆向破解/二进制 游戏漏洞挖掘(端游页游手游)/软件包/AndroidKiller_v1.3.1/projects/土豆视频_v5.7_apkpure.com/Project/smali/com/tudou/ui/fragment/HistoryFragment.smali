.class public Lcom/tudou/ui/fragment/HistoryFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "HistoryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final ACCOMPLISH:Ljava/lang/String; = "\u5b8c\u6210"

.field private static final DELETE:Ljava/lang/String; = "\u5220\u9664"

.field private static final DELETE_CACHE_FAILED:I = 0x2724

.field private static final DELETE_CACHE_SUCCESS:I = 0x2723

.field private static final DELETE_DATA_FAILED:Ljava/lang/String; = "\u5220\u9664\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

.field public static final DELETE_SERVER_FAILED:I = 0x2726

.field public static final DELETE_SERVER_SUCCESS:I = 0x2725

.field public static final DELETE_SQL_FAILED:I = 0x2722

.field public static final DELETE_SQL_SUCCESS:I = 0x2721

.field private static final EDIT:Ljava/lang/String; = "\u7f16\u8f91"

.field private static final GET_CACHE_FAILED:I = 0x271e

.field private static final GET_CACHE_SUCCESS:I = 0x271d

.field private static final GET_SERVER_FAILED:I = 0x2720

.field private static final GET_SERVER_SUCCESS:I = 0x271f

.field private static final GET_SQL_FAILED:I = 0x271c

.field private static final GET_SQL_SUCCESS:I = 0x271b

.field private static final PAGE_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "HistoryFragment"

.field private static final TRUNC:Ljava/lang/String; = "\u5168\u9009"

.field private static final TRUNC_CANCEL:Ljava/lang/String; = "\u53d6\u6d88\u5168\u9009"

.field public static isChange:Z


# instance fields
.field private adapter:Lcom/tudou/adapter/HistoryAdapter;

.field private deleteBut:Landroid/widget/TextView;

.field private editLayout:Landroid/widget/LinearLayout;

.field private hintView:Lcom/youku/widget/HintView;

.field private isEdit:Z

.field private isGetCache:Z

.field private isSelectedALL:Z

.field private listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private loadComplete:Landroid/view/View;

.field private mCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;"
        }
    .end annotation
.end field

.field public mHandler:Landroid/os/Handler;

.field private mHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;"
        }
    .end annotation
.end field

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

.field private mSQList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;"
        }
    .end annotation
.end field

.field private mServerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;"
        }
    .end annotation
.end field

.field private pageNum:I

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

.field private titleBackImage:Landroid/view/View;

.field private titleEditText:Landroid/widget/TextView;

.field private totalCount:I

.field private truncBut:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/HistoryFragment;->isChange:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->totalCount:I

    .line 88
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isEdit:Z

    .line 90
    iput v2, p0, Lcom/tudou/ui/fragment/HistoryFragment;->pageNum:I

    .line 92
    iput-boolean v2, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isGetCache:Z

    .line 94
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isSelectedALL:Z

    .line 112
    new-instance v0, Lcom/tudou/ui/fragment/HistoryFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/HistoryFragment$1;-><init>(Lcom/tudou/ui/fragment/HistoryFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mHandler:Landroid/os/Handler;

    .line 470
    new-instance v0, Lcom/tudou/ui/fragment/HistoryFragment$2;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/HistoryFragment$2;-><init>(Lcom/tudou/ui/fragment/HistoryFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 531
    new-instance v0, Lcom/tudou/ui/fragment/HistoryFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/HistoryFragment$3;-><init>(Lcom/tudou/ui/fragment/HistoryFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mHistoryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mSQList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mServerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/tudou/ui/fragment/HistoryFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mServerList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/HistoryFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isSelectedALL:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/HistoryFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->totalCount:I

    return v0
.end method

.method static synthetic access$1202(Lcom/tudou/ui/fragment/HistoryFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->totalCount:I

    return p1
.end method

.method static synthetic access$1300(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tudou/ui/fragment/HistoryFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->loadComplete:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tudou/ui/fragment/HistoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->getSQLData()V

    return-void
.end method

.method static synthetic access$1600(Lcom/tudou/ui/fragment/HistoryFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/HistoryFragment;->closeLoading(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/tudou/ui/fragment/HistoryFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isGetCache:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/tudou/ui/fragment/HistoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->closeLoading()V

    return-void
.end method

.method static synthetic access$1900(Lcom/tudou/ui/fragment/HistoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->getServerData()V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/HistoryFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->titleEditText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->hintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/HistoryFragment;)Lcom/tudou/adapter/HistoryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->adapter:Lcom/tudou/adapter/HistoryAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/HistoryFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isEdit:Z

    return v0
.end method

.method static synthetic access$502(Lcom/tudou/ui/fragment/HistoryFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isEdit:Z

    return p1
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/HistoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->initTitleState()V

    return-void
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/HistoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->setButtonState()V

    return-void
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/HistoryFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mCacheList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/HistoryFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->pageNum:I

    return v0
.end method

.method static synthetic access$902(Lcom/tudou/ui/fragment/HistoryFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->pageNum:I

    return p1
.end method

.method static synthetic access$908(Lcom/tudou/ui/fragment/HistoryFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->pageNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->pageNum:I

    return v0
.end method

.method static synthetic access$910(Lcom/tudou/ui/fragment/HistoryFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->pageNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->pageNum:I

    return v0
.end method

.method private closeLoading()V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 723
    :cond_0
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 725
    :cond_1
    return-void
.end method

.method private closeLoading(Z)V
    .locals 0
    .param p1, "isClose"    # Z

    .prologue
    .line 711
    if-eqz p1, :cond_0

    .line 712
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->closeLoading()V

    .line 713
    :cond_0
    return-void
.end method

.method private deleteClick()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 362
    const-string v0, "HistoryFragmentDELETE"

    invoke-static {v0}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 368
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->adapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryAdapter;->getSelectedItemSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 370
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 371
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_2

    .line 372
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 373
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto :goto_0

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->adapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0, v1, v1}, Lcom/tudou/adapter/HistoryAdapter;->removePlayHistoryFromServer(ZI)V

    .line 378
    const-string/jumbo v0, "\u89c2\u770b\u8bb0\u5f55\u5220\u9664\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u89c2\u770b\u8bb0\u5f55-\u5220\u9664\u6309\u94ae\u70b9\u51fb"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->adapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0, v1, v1}, Lcom/tudou/adapter/HistoryAdapter;->removePlayHitoryFromLocal(ZI)V

    goto :goto_0
.end method

.method private eventView()V
    .locals 4

    .prologue
    .line 291
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->titleBackImage:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->titleEditText:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->titleEditText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 296
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 297
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 298
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mOnPullEventListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnPullEventListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;)V

    .line 299
    new-instance v0, Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mHistoryList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/tudou/adapter/HistoryAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->adapter:Lcom/tudou/adapter/HistoryAdapter;

    .line 300
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->adapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 302
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->truncBut:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->deleteBut:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->hintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, p0}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/HistoryFragment;->isChange:Z

    .line 309
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->getSQLData()V

    goto :goto_0
.end method

.method private getCacheData()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 634
    iget-boolean v5, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isGetCache:Z

    if-nez v5, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iput-boolean v7, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isGetCache:Z

    .line 640
    iget v5, p0, Lcom/tudou/ui/fragment/HistoryFragment;->pageNum:I

    const/16 v6, 0xa

    invoke-static {v5, v6, v7}, Lcom/youku/http/TudouURLContainer;->getPlayHistoryUrl(III)Ljava/lang/String;

    move-result-object v3

    .line 641
    .local v3, "historyURL":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 643
    .local v2, "formatUri":Ljava/lang/String;
    invoke-static {v2}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 645
    :try_start_0
    invoke-static {v2}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, "cacheDataStr":Ljava/lang/String;
    new-instance v5, Lcom/youku/vo/HistoryVideoResult;

    invoke-direct {v5}, Lcom/youku/vo/HistoryVideoResult;-><init>()V

    invoke-static {v0, v5}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/HistoryVideoResult;

    .line 647
    .local v4, "historyVedio":Lcom/youku/vo/HistoryVideoResult;
    iget-object v5, v4, Lcom/youku/vo/HistoryVideoResult;->multiPageResult:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;

    iget-object v5, v5, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;->results:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mCacheList:Ljava/util/ArrayList;

    .line 648
    iget-object v5, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x271d

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 649
    .end local v0    # "cacheDataStr":Ljava/lang/String;
    .end local v4    # "historyVedio":Lcom/youku/vo/HistoryVideoResult;
    :catch_0
    move-exception v1

    .line 650
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x271e

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 651
    const-string v5, "HistoryFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get cache history EXCEPTION (catch) | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSQLData()V
    .locals 5

    .prologue
    .line 661
    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 664
    :try_start_0
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getLocalPlayHistory()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/vo/HistoryVideo;->parseLocalPlayHistory(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mSQList:Ljava/util/ArrayList;

    .line 665
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 666
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 667
    const/16 v2, 0x271b

    iput v2, v1, Landroid/os/Message;->what:I

    .line 668
    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x271c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 671
    const-string v2, "HistoryFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get sql history EXCEPTION (catch) | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getServerData()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 590
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->getCacheData()V

    .line 592
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 594
    iget v3, p0, Lcom/tudou/ui/fragment/HistoryFragment;->pageNum:I

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/youku/http/TudouURLContainer;->getPlayHistoryUrl(III)Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "historyURL":Ljava/lang/String;
    const-string v3, "HistoryFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "historyURL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    new-instance v1, Lcom/youku/network/HttpIntent;

    invoke-direct {v1, v0, v6}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 598
    .local v1, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v6}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/network/IHttpRequest;

    .line 599
    .local v2, "mHttpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v3, Lcom/tudou/ui/fragment/HistoryFragment$4;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/HistoryFragment$4;-><init>(Lcom/tudou/ui/fragment/HistoryFragment;)V

    invoke-interface {v2, v1, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 627
    .end local v0    # "historyURL":Ljava/lang/String;
    .end local v1    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v2    # "mHttpRequest":Lcom/youku/network/IHttpRequest;
    :goto_0
    return-void

    .line 624
    :cond_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2720

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 625
    const-string v3, "HistoryFragment"

    const-string v4, "get server history ERROR(NO INTERNET)"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initTitleState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 425
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isEdit:Z

    if-eqz v0, :cond_0

    .line 426
    sput-boolean v2, Lcom/tudou/ui/fragment/HistoryFragment;->isChange:Z

    .line 427
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->titleEditText:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->titleEditText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    :goto_1
    return-void

    .line 429
    :cond_0
    iput-boolean v2, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isSelectedALL:Z

    .line 430
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->titleEditText:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->titleEditText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 269
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->view:Landroid/view/View;

    const v2, 0x7f0c0094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 270
    .local v0, "statusBarView":Landroid/view/View;
    invoke-static {v0}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 272
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->view:Landroid/view/View;

    const v2, 0x7f0c00a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->titleBackImage:Landroid/view/View;

    .line 273
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->view:Landroid/view/View;

    const v2, 0x7f0c0223

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->titleEditText:Landroid/widget/TextView;

    .line 275
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->view:Landroid/view/View;

    const v2, 0x7f0c070f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 277
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->view:Landroid/view/View;

    const v2, 0x7f0c0460

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->editLayout:Landroid/widget/LinearLayout;

    .line 278
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->view:Landroid/view/View;

    const v2, 0x7f0c050d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->truncBut:Landroid/widget/TextView;

    .line 279
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->view:Landroid/view/View;

    const v2, 0x7f0c0461

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->deleteBut:Landroid/widget/TextView;

    .line 281
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->view:Landroid/view/View;

    const v2, 0x7f0c00dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/HintView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->hintView:Lcom/youku/widget/HintView;

    .line 283
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030214

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->loadComplete:Landroid/view/View;

    .line 284
    return-void
.end method

.method private noResultClick()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->hintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->getHintType()Lcom/youku/widget/HintView$Type;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->HISTORY_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    if-ne v0, v1, :cond_0

    .line 357
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 350
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->hintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 352
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->getServerData()V

    goto :goto_0

    .line 355
    :cond_2
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->getSQLData()V

    goto :goto_0
.end method

.method private rightClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 410
    const-string/jumbo v0, "\u89c2\u770b\u8bb0\u5f55\u7f16\u8f91\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u89c2\u770b\u8bb0\u5f55-\u7f16\u8f91\u6309\u94ae\u70b9\u51fb"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->editLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iput-boolean v3, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isEdit:Z

    .line 413
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->titleEditText:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iput-boolean v3, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isSelectedALL:Z

    .line 420
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->adapter:Lcom/tudou/adapter/HistoryAdapter;

    iget-boolean v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isEdit:Z

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/HistoryAdapter;->setEditable(Z)V

    .line 421
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->setButtonState()V

    .line 422
    return-void

    .line 416
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isEdit:Z

    .line 417
    sput-boolean v3, Lcom/tudou/ui/fragment/HistoryFragment;->isChange:Z

    .line 418
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->titleEditText:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setButtonState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 442
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->adapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/HistoryAdapter;->getSelectedItemSize()I

    move-result v0

    .line 444
    .local v0, "deletecount":I
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->adapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/HistoryAdapter;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 445
    iput-boolean v4, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isSelectedALL:Z

    .line 446
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->truncBut:Landroid/widget/TextView;

    const-string/jumbo v2, "\u5168\u9009"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    :goto_0
    if-nez v0, :cond_2

    .line 453
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->deleteBut:Landroid/widget/TextView;

    const-string/jumbo v2, "\u5220\u9664"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->deleteBut:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 455
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->deleteBut:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v3, 0x7f0e00f4

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 462
    :goto_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->adapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/HistoryAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->adapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/HistoryAdapter;->getEditable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->editLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 467
    :goto_2
    return-void

    .line 448
    :cond_1
    iput-boolean v5, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isSelectedALL:Z

    .line 449
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->truncBut:Landroid/widget/TextView;

    const-string/jumbo v2, "\u53d6\u6d88\u5168\u9009"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 457
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->deleteBut:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5220\u9664("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->deleteBut:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 459
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->deleteBut:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v3, 0x7f0e00f3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 465
    :cond_3
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryFragment;->editLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private trunClick()V
    .locals 7

    .prologue
    .line 388
    iget-boolean v3, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isSelectedALL:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isSelectedALL:Z

    .line 390
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 391
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/HistoryVideo;

    .line 392
    .local v0, "hv":Lcom/youku/vo/HistoryVideo;
    iget-boolean v3, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isSelectedALL:Z

    iput-boolean v3, v0, Lcom/youku/vo/HistoryVideo;->isChecked:Z

    .line 393
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment;->adapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v3, v0}, Lcom/tudou/adapter/HistoryAdapter;->isContainItem(Lcom/youku/vo/HistoryVideo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 394
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment;->adapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v3, v0}, Lcom/tudou/adapter/HistoryAdapter;->addToList(Lcom/youku/vo/HistoryVideo;)V

    .line 390
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 388
    .end local v0    # "hv":Lcom/youku/vo/HistoryVideo;
    .end local v1    # "i":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 397
    .restart local v1    # "i":I
    :cond_2
    iget-boolean v3, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isSelectedALL:Z

    if-nez v3, :cond_3

    .line 398
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment;->adapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v3}, Lcom/tudou/adapter/HistoryAdapter;->clearSelectList()V

    .line 401
    :cond_3
    iget-boolean v3, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isSelectedALL:Z

    if-eqz v3, :cond_4

    const-string/jumbo v2, "\u5168\u9009"

    .line 402
    .local v2, "isTrunc":Ljava/lang/String;
    :goto_2
    const-string/jumbo v3, "\u89c2\u770b\u8bb0\u5f55\u5168\u9009\u6309\u94ae\u70b9\u51fb"

    const-class v4, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u89c2\u770b\u8bb0\u5f55-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u6309\u94ae\u70b9\u51fb"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryFragment;->adapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v3}, Lcom/tudou/adapter/HistoryAdapter;->notifyDataSetChanged()V

    .line 405
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->setButtonState()V

    .line 406
    return-void

    .line 401
    .end local v2    # "isTrunc":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, "\u53d6\u6d88"

    goto :goto_2
.end method


# virtual methods
.method public getEditable()Z
    .locals 1

    .prologue
    .line 729
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isEdit:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 335
    :goto_0
    return-void

    .line 320
    :sswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    goto :goto_0

    .line 323
    :sswitch_1
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->rightClick()V

    goto :goto_0

    .line 326
    :sswitch_2
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->trunClick()V

    goto :goto_0

    .line 329
    :sswitch_3
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->deleteClick()V

    goto :goto_0

    .line 332
    :sswitch_4
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->noResultClick()V

    goto :goto_0

    .line 318
    :sswitch_data_0
    .sparse-switch
        0x7f0c00a7 -> :sswitch_0
        0x7f0c00dd -> :sswitch_4
        0x7f0c0223 -> :sswitch_1
        0x7f0c0461 -> :sswitch_3
        0x7f0c050d -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mHistoryList:Ljava/util/ArrayList;

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mSQList:Ljava/util/ArrayList;

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mCacheList:Ljava/util/ArrayList;

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mServerList:Ljava/util/ArrayList;

    .line 252
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 253
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 257
    const v0, 0x7f03016d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->view:Landroid/view/View;

    .line 259
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->initView()V

    .line 260
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->eventView()V

    .line 261
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 678
    iget-object v4, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le p3, v4, :cond_0

    .line 708
    :goto_0
    return-void

    .line 681
    :cond_0
    add-int/lit8 p3, p3, -0x1

    .line 683
    iget-object v4, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/HistoryVideo;

    .line 684
    .local v0, "item":Lcom/youku/vo/HistoryVideo;
    const-string v4, "HistoryFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemClick = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/ui/fragment/HistoryFragment;->adapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v6}, Lcom/tudou/adapter/HistoryAdapter;->getEditable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-boolean v4, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isEdit:Z

    if-eqz v4, :cond_4

    .line 687
    iget-boolean v4, v0, Lcom/youku/vo/HistoryVideo;->isChecked:Z

    if-nez v4, :cond_2

    :goto_1
    iput-boolean v2, v0, Lcom/youku/vo/HistoryVideo;->isChecked:Z

    .line 688
    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryFragment;->adapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v2}, Lcom/tudou/adapter/HistoryAdapter;->notifyDataSetChanged()V

    .line 689
    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryFragment;->adapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v2, v0}, Lcom/tudou/adapter/HistoryAdapter;->isContainItem(Lcom/youku/vo/HistoryVideo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 690
    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryFragment;->adapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v2, v0}, Lcom/tudou/adapter/HistoryAdapter;->addToList(Lcom/youku/vo/HistoryVideo;)V

    .line 697
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->setButtonState()V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 687
    goto :goto_1

    .line 692
    :cond_3
    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryFragment;->adapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v2, v0}, Lcom/tudou/adapter/HistoryAdapter;->removeFromList(Lcom/youku/vo/HistoryVideo;)V

    .line 693
    iget-boolean v2, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isSelectedALL:Z

    if-eqz v2, :cond_1

    .line 694
    iput-boolean v3, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isSelectedALL:Z

    goto :goto_2

    .line 699
    :cond_4
    sput-boolean v2, Lcom/tudou/ui/fragment/HistoryFragment;->isChange:Z

    .line 701
    const-string/jumbo v2, "\u89c2\u770b\u8bb0\u5f55\u4e2d\u89c6\u9891\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u89c2\u770b\u8bb0\u5f55-\u89c6\u9891\u70b9\u51fb"

    invoke-static {v2, v3, v4}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    invoke-virtual {v0}, Lcom/youku/vo/HistoryVideo;->getPlaytype()I

    move-result v1

    .line 703
    .local v1, "playType":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 704
    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v3, v0, Lcom/youku/vo/HistoryVideo;->showid:Ljava/lang/String;

    iget-object v4, v0, Lcom/youku/vo/HistoryVideo;->title:Ljava/lang/String;

    iget v5, v0, Lcom/youku/vo/HistoryVideo;->stage:I

    iget-object v6, v0, Lcom/youku/vo/HistoryVideo;->playListCode:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tudou/android/TudouApi;->goPlayerWithvideoStage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 706
    :cond_5
    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v3, v0, Lcom/youku/vo/HistoryVideo;->itemCode:Ljava/lang/String;

    sget-object v4, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v5, v0, Lcom/youku/vo/HistoryVideo;->title:Ljava/lang/String;

    iget-object v6, v0, Lcom/youku/vo/HistoryVideo;->playListCode:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 560
    sget-boolean v0, Lcom/tudou/ui/fragment/HistoryFragment;->isChange:Z

    if-eqz v0, :cond_0

    .line 561
    sget-boolean v0, Lcom/tudou/ui/fragment/HistoryFragment;->isChange:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tudou/ui/fragment/HistoryFragment;->isChange:Z

    .line 562
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 563
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 568
    :cond_0
    :goto_1
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onStart()V

    .line 569
    return-void

    .line 561
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 565
    :cond_2
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryFragment;->getSQLData()V

    goto :goto_1
.end method

.method public quitEditState()V
    .locals 1

    .prologue
    .line 734
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->isEdit:Z

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryFragment;->titleEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 737
    :cond_0
    return-void
.end method

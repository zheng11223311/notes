.class public Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "ClassifyAllChannelFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ClassifyAllChannelFragment"

.field private static mHeaderAdapter:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;


# instance fields
.field private isShow:Z

.field private load_complete:Landroid/view/View;

.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mBack:Landroid/view/View;

.field private mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

.field private mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

.field private mClassify:Lcom/tudou/service/classify/Classify;

.field private mContext:Landroid/app/Activity;

.field private mFilteateIcon:Landroid/widget/ImageView;

.field private mFilteateText:Landroid/widget/TextView;

.field private mFiltrate:Landroid/view/View;

.field private mFiltrateState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/youku/vo/ClassifyAllFiltrateStateBean;",
            ">;"
        }
    .end annotation
.end field

.field private mFloatListView:Landroid/widget/ListView;

.field private mFloatView:Landroid/widget/LinearLayout;

.field private mFootHintView:Lcom/youku/widget/HintView;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderLayout:Landroid/widget/LinearLayout;

.field private mHeaderListView:Landroid/widget/ListView;

.field private mHintView:Lcom/youku/widget/HintView;

.field private mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mPageNum:I

.field private mSkipInfo:Lcom/youku/vo/SkipInfo;

.field private mStatusBarView:Landroid/view/View;

.field private mTagType:Ljava/lang/String;

.field private mTitle:Landroid/view/View;

.field public mTitleName:Ljava/lang/String;

.field private mTitleText:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mPageNum:I

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->isShow:Z

    .line 86
    new-instance v0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$1;-><init>(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHandler:Landroid/os/Handler;

    .line 375
    new-instance v0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$4;-><init>(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/ChannelFliterBean;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;Lcom/youku/vo/ChannelFliterBean;)Lcom/youku/vo/ChannelFliterBean;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;
    .param p1, "x1"    # Lcom/youku/vo/ChannelFliterBean;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->setSelectState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFootHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/SkipInfo;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mTagType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    iget v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mPageNum:I

    return v0
.end method

.method static synthetic access$1502(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mPageNum:I

    return p1
.end method

.method static synthetic access$1508(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    iget v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mPageNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mPageNum:I

    return v0
.end method

.method static synthetic access$1510(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    iget v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mPageNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mPageNum:I

    return v0
.end method

.method static synthetic access$1600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->isShow:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->isShow:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFloatView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->initHeader()V

    return-void
.end method

.method static synthetic access$2000(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFiltrate:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFilteateIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFilteateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/tudou/service/classify/Classify;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->sendFiltrateData()V

    return-void
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/youku/vo/ChannelFilterVideos;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    return-object v0
.end method

.method static synthetic access$502(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;Lcom/youku/vo/ChannelFilterVideos;)Lcom/youku/vo/ChannelFilterVideos;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;
    .param p1, "x1"    # Lcom/youku/vo/ChannelFilterVideos;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    return-object p1
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->removeFooterView()V

    return-void
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->load_complete:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;
    .param p1, "x1"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mAdapter:Landroid/widget/BaseAdapter;

    return-object p1
.end method

.method private eventView()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mStatusBarView:Landroid/view/View;

    .line 315
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mStatusBarView:Landroid/view/View;

    invoke-static {v0}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 316
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, p0}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mBack:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFiltrate:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    invoke-static {}, Lcom/tudou/service/classify/ClassifyManager;->getInstance()Lcom/tudou/service/classify/Classify;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    .line 321
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/tudou/service/classify/Classify;->setHandler(Landroid/os/Handler;)V

    .line 322
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 323
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 324
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 327
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$2;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$2;-><init>(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 358
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFootHintView:Lcom/youku/widget/HintView;

    new-instance v1, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$3;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment$3;-><init>(Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setButOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    return-void
.end method

.method private initHeader()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 237
    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mContext:Landroid/app/Activity;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030089

    invoke-virtual {v6, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 238
    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderLayout:Landroid/widget/LinearLayout;

    const v7, 0x7f0c02d0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderListView:Landroid/widget/ListView;

    .line 239
    new-instance v6, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    iget-object v7, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mContext:Landroid/app/Activity;

    iget-object v8, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v9, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, v7, v8, v9}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;-><init>(Landroid/content/Context;Lcom/youku/vo/ChannelFliterBean;Landroid/os/Handler;)V

    sput-object v6, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderAdapter:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    .line 240
    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderListView:Landroid/widget/ListView;

    sget-object v7, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderAdapter:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    sget-object v6, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderAdapter:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    invoke-virtual {v6}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->notifyDataSetChanged()V

    .line 243
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFiltrateState:Ljava/util/HashMap;

    .line 246
    const/4 v5, 0x0

    .line 247
    .local v5, "totalHeight":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v6, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderAdapter:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    invoke-virtual {v6}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->getCount()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 248
    sget-object v6, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderAdapter:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    iget-object v7, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderListView:Landroid/widget/ListView;

    invoke-virtual {v6, v0, v11, v7}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 249
    .local v3, "mView":Landroid/view/View;
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V

    .line 250
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 252
    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFiltrateState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/youku/vo/ClassifyAllFiltrateStateBean;

    invoke-direct {v8}, Lcom/youku/vo/ClassifyAllFiltrateStateBean;-><init>()V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    .end local v3    # "mView":Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 255
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v6

    iget-object v7, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v7

    add-int v2, v6, v7

    .line 256
    .local v2, "mHeaderPaddingHei":I
    add-int v6, v5, v2

    iget-object v7, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v7

    sget-object v8, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderAdapter:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    invoke-virtual {v8}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 258
    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderListView:Landroid/widget/ListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->requestLayout()V

    .line 262
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 263
    .local v1, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 265
    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFootHintView:Lcom/youku/widget/HintView;

    new-instance v7, Landroid/widget/AbsListView$LayoutParams;

    const/4 v8, -0x1

    iget v9, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v10, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mTitle:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v2

    invoke-direct {v7, v8, v9}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Lcom/youku/widget/HintView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v7, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 270
    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFloatListView:Landroid/widget/ListView;

    sget-object v7, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderAdapter:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 271
    sget-object v6, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderAdapter:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    iget-object v7, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFiltrateState:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->setState(Ljava/util/HashMap;)V

    .line 272
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 293
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c0094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 294
    .local v0, "statusBarView":Landroid/view/View;
    invoke-static {v0}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 296
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04b2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mTitle:Landroid/view/View;

    .line 297
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mBack:Landroid/view/View;

    .line 298
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mTitleText:Landroid/widget/TextView;

    .line 299
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFiltrate:Landroid/view/View;

    .line 300
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c00dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/HintView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHintView:Lcom/youku/widget/HintView;

    .line 301
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 302
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04b6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFilteateIcon:Landroid/widget/ImageView;

    .line 303
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFilteateText:Landroid/widget/TextView;

    .line 305
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030214

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->load_complete:Landroid/view/View;

    .line 307
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04b9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFloatView:Landroid/widget/LinearLayout;

    .line 308
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFloatListView:Landroid/widget/ListView;

    .line 309
    new-instance v1, Lcom/youku/widget/HintView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/youku/widget/HintView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFootHintView:Lcom/youku/widget/HintView;

    .line 310
    return-void
.end method

.method public static notifyAdapter()V
    .locals 1

    .prologue
    .line 530
    sget-object v0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderAdapter:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->notifyDataSetChanged()V

    .line 531
    return-void
.end method

.method private removeFooterView()V
    .locals 2

    .prologue
    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->load_complete:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 539
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFootHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 541
    :goto_1
    return-void

    .line 540
    :catch_0
    move-exception v0

    goto :goto_1

    .line 537
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private sendFiltrateData()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "sort":Ljava/lang/String;
    const-string v1, ""

    .line 464
    .local v1, "tagsStr":Ljava/lang/String;
    const-string v2, ""

    .line 466
    .local v2, "titleStr":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_0
    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterBean;->sort:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 467
    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterBean;->sort:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ChannelFliterSortItemTudouBean;

    iget-boolean v5, v5, Lcom/youku/vo/ChannelFliterSortItemTudouBean;->isSelected:Z

    if-eqz v5, :cond_0

    .line 468
    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterBean;->sort:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ChannelFliterSortItemTudouBean;

    iget-object v0, v5, Lcom/youku/vo/ChannelFliterSortItemTudouBean;->value:Ljava/lang/String;

    .line 469
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterBean;->sort:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ChannelFliterSortItemTudouBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterSortItemTudouBean;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 466
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 473
    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterBean;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 474
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_2
    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterBean;->items:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ChannelFliterTypeTudouBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterTypeTudouBean;->secondTags:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 475
    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterBean;->items:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ChannelFliterTypeTudouBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterTypeTudouBean;->secondTags:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ChannelFliterTypeItemTudouBean;

    iget-boolean v5, v5, Lcom/youku/vo/ChannelFliterTypeItemTudouBean;->isSelected:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterBean;->items:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ChannelFliterTypeTudouBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterTypeTudouBean;->secondTags:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ChannelFliterTypeItemTudouBean;

    iget v5, v5, Lcom/youku/vo/ChannelFliterTypeItemTudouBean;->id:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 476
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterBean;->items:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ChannelFliterTypeTudouBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterTypeTudouBean;->secondTags:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ChannelFliterTypeItemTudouBean;

    iget v5, v5, Lcom/youku/vo/ChannelFliterTypeItemTudouBean;->id:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterBean;->items:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ChannelFliterTypeTudouBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterTypeTudouBean;->secondTags:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/ChannelFliterTypeItemTudouBean;

    iget-object v5, v5, Lcom/youku/vo/ChannelFliterTypeItemTudouBean;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 474
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 473
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 482
    .end local v4    # "y":I
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 483
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 486
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 487
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 490
    :cond_6
    const-string v5, "\u6700\u5177\u4eba\u6c14"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 491
    const-string v2, "\u5168\u90e8"

    .line 500
    :cond_7
    :goto_3
    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iput-object v0, v5, Lcom/youku/vo/SkipInfo;->brief_sort_by:Ljava/lang/String;

    .line 501
    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iput-object v1, v5, Lcom/youku/vo/SkipInfo;->brief_filter:Ljava/lang/String;

    .line 502
    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    const-string v6, "filter_tag"

    iput-object v6, v5, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    .line 505
    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mTitleName:Ljava/lang/String;

    .line 506
    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setSelection(I)V

    .line 512
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->removeFooterView()V

    .line 513
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 516
    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v5, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 518
    const/4 v5, 0x1

    iput v5, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mPageNum:I

    .line 519
    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    iget-object v6, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iget v7, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mPageNum:I

    iget-object v8, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHandler:Landroid/os/Handler;

    invoke-interface {v5, v6, v7, v8}, Lcom/tudou/service/classify/Classify;->getSelectVideoList(Lcom/youku/vo/SkipInfo;ILandroid/os/Handler;)V

    .line 520
    return-void

    .line 492
    :cond_8
    const-string v5, "\u6700\u65b0\u53d1\u5e03"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 493
    const-string v2, "\u6700\u65b0"

    goto :goto_3

    .line 494
    :cond_9
    const-string v5, "\u6700\u5177\u4eba\u6c14"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 495
    const-string v5, "\u6700\u5177\u4eba\u6c14"

    const-string v6, "\u6700\u70ed"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 496
    :cond_a
    const-string v5, "\u6700\u65b0\u53d1\u5e03"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 497
    const-string v5, "\u6700\u65b0\u53d1\u5e03"

    const-string v6, "\u6700\u65b0"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method private setSelectState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 453
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v1, v1, Lcom/youku/vo/ChannelFliterBean;->sort:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelFliterSortItemTudouBean;

    iput-boolean v3, v1, Lcom/youku/vo/ChannelFliterSortItemTudouBean;->isSelected:Z

    .line 454
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v1, v1, Lcom/youku/vo/ChannelFliterBean;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mChannelFliterBean:Lcom/youku/vo/ChannelFliterBean;

    iget-object v1, v1, Lcom/youku/vo/ChannelFliterBean;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelFliterTypeTudouBean;

    iget-object v1, v1, Lcom/youku/vo/ChannelFliterTypeTudouBean;->secondTags:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelFliterTypeItemTudouBean;

    iput-boolean v3, v1, Lcom/youku/vo/ChannelFliterTypeItemTudouBean;->isSelected:Z

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v3, 0x7f090022

    const v2, 0x7f0200ea

    const/16 v1, 0x8

    .line 413
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 415
    :sswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 418
    :sswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFloatView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 421
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFilteateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 422
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFilteateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFloatView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 425
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFloatView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFilteateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 427
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFilteateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFloatView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFilteateIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 431
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mFilteateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 436
    :sswitch_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->getHintType()Lcom/youku/widget/HintView$Type;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    if-ne v0, v1, :cond_0

    .line 439
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 440
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 443
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 444
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto/16 :goto_0

    .line 413
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c00dd -> :sswitch_2
        0x7f0c04b3 -> :sswitch_0
        0x7f0c04b5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 276
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 277
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mContext:Landroid/app/Activity;

    .line 278
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 279
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "skip_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SkipInfo;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    .line 280
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v1, v1, Lcom/youku/vo/SkipInfo;->tag_type:Ljava/lang/String;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mTagType:Ljava/lang/String;

    .line 281
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
    .line 285
    const v0, 0x7f030106

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mView:Landroid/view/View;

    .line 286
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->initView()V

    .line 287
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->eventView()V

    .line 288
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 524
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 525
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 526
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyAllChannelFragment;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/tudou/service/classify/Classify;->deleteHandler(Landroid/os/Handler;)V

    .line 527
    return-void
.end method

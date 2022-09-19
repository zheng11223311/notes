.class public Lcom/tudou/ui/fragment/SearchResultFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "SearchResultFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;,
        Lcom/tudou/ui/fragment/SearchResultFragment$IUgcSortCallBack;
    }
.end annotation


# static fields
.field public static BOTH_NOT_EMPTY:I = 0x0

.field public static BOTH_RESULT_EMPTY:I = 0x0

.field public static BOTH_SHOW_EMPTY:I = 0x0

.field public static BOTH_UGC_EMPTY:I = 0x0

.field public static CUR_DATA:I = 0x0

.field public static final FILTER_POP_SHOW:I = 0x309

.field public static final GET_BOKE_RESULT:I = 0x3e7

.field public static final GET_DATA_RESULT:I = 0x378

.field public static final HIDE_FILTERBAR:I = 0x22b

.field public static final SHOW_FILTERBAR:I = 0x29a

.field public static isSort:Z

.field public static isfilter:Z

.field private static tag:Ljava/lang/String;

.field public static ufilter:Ljava/lang/String;

.field public static usort:Ljava/lang/String;


# instance fields
.field private PART_DIRECT_SHOW:I

.field private adapter:Lcom/youku/adapter/SearchResultAdapter;

.field private badapter:Lcom/youku/adapter/SearchChannelAdapter;

.field private bokeResult:Lcom/youku/vo/SokuPodcast;

.field private callback:Lcom/tudou/ui/fragment/SearchResultFragment$IUgcSortCallBack;

.field private callback1:Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;

.field private data:Landroid/os/Bundle;

.field private errorTips:Landroid/widget/RelativeLayout;

.field private errorTipsTxt:Landroid/widget/TextView;

.field private fail_reason:Ljava/lang/String;

.field fo:Lcom/youku/vo/SearchFilterAndOrder;

.field private goresume:Z

.field private imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private intentKey:Ljava/lang/String;

.field isAgainBronAaid:Z

.field private isnoqc:Z

.field private listView:Lcom/youku/widget/SearchListView;

.field private load_complete:Landroid/view/View;

.field public mhandler:Landroid/os/Handler;

.field private onScrollListener:Lcom/youku/widget/SearchListViewOnScroll;

.field onTabClick:Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabClick;

.field private page:I

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

.field private result:Lcom/youku/vo/SearchDirectResultTudou;

.field scroll:Landroid/widget/AbsListView$OnScrollListener;

.field searchCorrectWord:Landroid/view/View$OnClickListener;

.field private searchHisTab:I

.field private searchManager:Lcom/tudou/ui/fragment/SearchManager;

.field private searchNoResult:Lcom/youku/widget/HintView;

.field shala_more:Z

.field public showerrorTips:Z

.field private trackAaid:Ljava/lang/String;

.field private trackKey:Ljava/lang/String;

.field private trackPage:I

.field private ugcHeader:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

.field private ugcHeaderTop:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

.field private ugcTotal:Ljava/lang/String;

.field private users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SokuPodcast$User;",
            ">;"
        }
    .end annotation
.end field

.field xiala_refresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    const-string v0, "SearchResultFragment"

    sput-object v0, Lcom/tudou/ui/fragment/SearchResultFragment;->tag:Ljava/lang/String;

    .line 71
    const-string v0, ""

    sput-object v0, Lcom/tudou/ui/fragment/SearchResultFragment;->usort:Ljava/lang/String;

    .line 72
    const-string v0, ""

    sput-object v0, Lcom/tudou/ui/fragment/SearchResultFragment;->ufilter:Ljava/lang/String;

    .line 94
    sput-boolean v1, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    .line 95
    sput-boolean v1, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    .line 102
    const/4 v0, 0x1

    sput v0, Lcom/tudou/ui/fragment/SearchResultFragment;->BOTH_RESULT_EMPTY:I

    .line 103
    const/4 v0, 0x2

    sput v0, Lcom/tudou/ui/fragment/SearchResultFragment;->BOTH_UGC_EMPTY:I

    .line 104
    const/4 v0, 0x3

    sput v0, Lcom/tudou/ui/fragment/SearchResultFragment;->BOTH_NOT_EMPTY:I

    .line 105
    const/4 v0, 0x4

    sput v0, Lcom/tudou/ui/fragment/SearchResultFragment;->BOTH_SHOW_EMPTY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 85
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->isnoqc:Z

    .line 87
    iput v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->page:I

    .line 92
    invoke-static {}, Lcom/youku/vo/SearchFilterAndOrder;->getInstance()Lcom/youku/vo/SearchFilterAndOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    .line 108
    const/4 v0, 0x5

    iput v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->PART_DIRECT_SHOW:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->users:Ljava/util/ArrayList;

    .line 115
    const-string v0, "\u83b7\u53d6\u6570\u636e\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->fail_reason:Ljava/lang/String;

    .line 118
    iput-boolean v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->goresume:Z

    .line 121
    new-instance v0, Lcom/tudou/ui/fragment/SearchResultFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SearchResultFragment$1;-><init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->mhandler:Landroid/os/Handler;

    .line 238
    iput-boolean v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->isAgainBronAaid:Z

    .line 416
    new-instance v0, Lcom/tudou/ui/fragment/SearchResultFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SearchResultFragment$3;-><init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchCorrectWord:Landroid/view/View$OnClickListener;

    .line 477
    new-instance v0, Lcom/tudou/ui/fragment/SearchResultFragment$4;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SearchResultFragment$4;-><init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->scroll:Landroid/widget/AbsListView$OnScrollListener;

    .line 501
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->shala_more:Z

    .line 502
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->xiala_refresh:Z

    .line 504
    new-instance v0, Lcom/tudou/ui/fragment/SearchResultFragment$5;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SearchResultFragment$5;-><init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 770
    new-instance v0, Lcom/tudou/ui/fragment/SearchResultFragment$8;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SearchResultFragment$8;-><init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->callback:Lcom/tudou/ui/fragment/SearchResultFragment$IUgcSortCallBack;

    .line 807
    new-instance v0, Lcom/tudou/ui/fragment/SearchResultFragment$9;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SearchResultFragment$9;-><init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->callback1:Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;

    .line 907
    new-instance v0, Lcom/tudou/ui/fragment/SearchResultFragment$12;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SearchResultFragment$12;-><init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->onTabClick:Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabClick;

    .line 937
    iput-boolean v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->showerrorTips:Z

    .line 953
    iput v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->trackPage:I

    .line 954
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->trackAaid:Ljava/lang/String;

    .line 955
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->trackKey:Ljava/lang/String;

    .line 1059
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchManager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/SearchResultFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/SearchResultFragment;->addFoot(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/SearchResultFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->intentKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/SearchResultFragment;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/ui/fragment/SearchResultFragment;->track(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchResultUGCHeader;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeader:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchResultUGCHeader;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeaderTop:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tudou/ui/fragment/SearchResultFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/SearchResultFragment;->setUgcHeaerTopVis(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/tudou/ui/fragment/SearchResultFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;

    .prologue
    .line 67
    iget v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->page:I

    return v0
.end method

.method static synthetic access$1602(Lcom/tudou/ui/fragment/SearchResultFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->page:I

    return p1
.end method

.method static synthetic access$1700(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/adapter/SearchResultAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/tudou/ui/fragment/SearchResultFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SearchResultFragment;->removeFoot()V

    return-void
.end method

.method static synthetic access$1900(Lcom/tudou/ui/fragment/SearchResultFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SearchResultFragment;->initData()V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/SearchResultFragment;Lcom/youku/vo/SearchCorrection;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;
    .param p1, "x1"    # Lcom/youku/vo/SearchCorrection;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/SearchResultFragment;->setErrTipsView(Lcom/youku/vo/SearchCorrection;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchNoResult:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/tudou/ui/fragment/SearchResultFragment;Lcom/youku/vo/SokuPodcast;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;
    .param p1, "x1"    # Lcom/youku/vo/SokuPodcast;
    .param p2, "x2"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/SearchResultFragment;->checkPodcastAttention(Lcom/youku/vo/SokuPodcast;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/tudou/ui/fragment/SearchResultFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->fail_reason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/tudou/ui/fragment/SearchResultFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SearchResultFragment;->autoRefresh()V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/widget/SearchListViewOnScroll;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->onScrollListener:Lcom/youku/widget/SearchListViewOnScroll;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/SearchResultFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->errorTips:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/SearchResultFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;

    .prologue
    .line 67
    iget v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchHisTab:I

    return v0
.end method

.method static synthetic access$502(Lcom/tudou/ui/fragment/SearchResultFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchHisTab:I

    return p1
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/SearchResultFragment;Landroid/os/Handler;II)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/ui/fragment/SearchResultFragment;->localSendMessage(Landroid/os/Handler;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/SearchResultFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SearchResultFragment;->sendMiddleTime()V

    return-void
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/youku/vo/SokuPodcast;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->bokeResult:Lcom/youku/vo/SokuPodcast;

    return-object v0
.end method

.method static synthetic access$802(Lcom/tudou/ui/fragment/SearchResultFragment;Lcom/youku/vo/SokuPodcast;)Lcom/youku/vo/SokuPodcast;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;
    .param p1, "x1"    # Lcom/youku/vo/SokuPodcast;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->bokeResult:Lcom/youku/vo/SokuPodcast;

    return-object p1
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/SearchResultFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->users:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addFoot(Z)V
    .locals 2
    .param p1, "isadd"    # Z

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->load_complete:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1037
    if-eqz p1, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->load_complete:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchListView;->removeFooterView(Landroid/view/View;)Z

    .line 1039
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->load_complete:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchListView;->addFooterView(Landroid/view/View;)V

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 1043
    :cond_1
    return-void
.end method

.method private autoRefresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->errorTips:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 245
    iput-boolean v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->showerrorTips:Z

    .line 246
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->onScrollListener:Lcom/youku/widget/SearchListViewOnScroll;

    invoke-virtual {v0, v2}, Lcom/youku/widget/SearchListViewOnScroll;->setIsnoqc(Z)V

    .line 247
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->errorTips:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 249
    :cond_0
    iput-boolean v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->isAgainBronAaid:Z

    .line 250
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    invoke-virtual {v0}, Lcom/youku/widget/SearchListView;->showProgress()V

    .line 251
    return-void
.end method

.method private checkPodcastAttention(Lcom/youku/vo/SokuPodcast;Z)V
    .locals 2
    .param p1, "result"    # Lcom/youku/vo/SokuPodcast;
    .param p2, "resume"    # Z

    .prologue
    .line 887
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    new-instance v1, Lcom/tudou/ui/fragment/SearchResultFragment$11;

    invoke-direct {v1, p0, p2}, Lcom/tudou/ui/fragment/SearchResultFragment$11;-><init>(Lcom/tudou/ui/fragment/SearchResultFragment;Z)V

    invoke-virtual {v0, p1, v1}, Lcom/tudou/ui/fragment/SearchManager;->checkAttentions(Lcom/youku/vo/SokuPodcast;Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;)V

    .line 905
    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 257
    iput v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->page:I

    .line 258
    iget v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchHisTab:I

    if-ne v0, v3, :cond_3

    .line 259
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->intentKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 260
    sput-boolean v1, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    .line 261
    sput-boolean v1, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    .line 262
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->fo:Lcom/youku/vo/SearchFilterAndOrder;

    invoke-virtual {v0}, Lcom/youku/vo/SearchFilterAndOrder;->clearFilter()V

    .line 263
    const-string v0, ""

    sput-object v0, Lcom/tudou/ui/fragment/SearchResultFragment;->usort:Ljava/lang/String;

    .line 264
    const-string v0, ""

    sput-object v0, Lcom/tudou/ui/fragment/SearchResultFragment;->ufilter:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeader:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeader:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->clearFilters()V

    .line 267
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeader:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->dissFilter()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeaderTop:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeaderTop:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->clearFilters()V

    .line 271
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeaderTop:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->dissFilter()V

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchResultFragment;->initSearchManager()V

    .line 285
    :cond_2
    :goto_0
    return-void

    .line 275
    :cond_3
    iget v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchHisTab:I

    if-ne v0, v2, :cond_2

    .line 276
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->users:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 277
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 278
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->intentKey:Ljava/lang/String;

    iget v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->page:I

    invoke-virtual {p0, v0, v1}, Lcom/tudou/ui/fragment/SearchResultFragment;->getBokeList(Ljava/lang/String;I)V

    .line 279
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    invoke-virtual {v0}, Lcom/youku/widget/SearchListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    invoke-virtual {v0}, Lcom/youku/widget/SearchListView;->getType()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 281
    :cond_5
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    invoke-virtual {v0, v2}, Lcom/youku/widget/SearchListView;->setType(I)V

    .line 282
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->badapter:Lcom/youku/adapter/SearchChannelAdapter;

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private initErrTipsView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 406
    const v0, 0x7f0c05c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->errorTips:Landroid/widget/RelativeLayout;

    .line 407
    const v0, 0x7f0c05c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->errorTipsTxt:Landroid/widget/TextView;

    .line 408
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->errorTipsTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchCorrectWord:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    return-void
.end method

.method private initScrollOneTwoChange()V
    .locals 2

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeader:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->areascroll:Lcom/youku/widget/PageHorizontalScrollView;

    new-instance v1, Lcom/tudou/ui/fragment/SearchResultFragment$13;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/SearchResultFragment$13;-><init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setScrollViewListener(Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;)V

    .line 1087
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeader:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->typescroll:Lcom/youku/widget/PageHorizontalScrollView;

    new-instance v1, Lcom/tudou/ui/fragment/SearchResultFragment$14;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/SearchResultFragment$14;-><init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setScrollViewListener(Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;)V

    .line 1100
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeader:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->yearscroll:Lcom/youku/widget/PageHorizontalScrollView;

    new-instance v1, Lcom/tudou/ui/fragment/SearchResultFragment$15;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/SearchResultFragment$15;-><init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setScrollViewListener(Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;)V

    .line 1113
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeaderTop:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->areascroll:Lcom/youku/widget/PageHorizontalScrollView;

    new-instance v1, Lcom/tudou/ui/fragment/SearchResultFragment$16;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/SearchResultFragment$16;-><init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setScrollViewListener(Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;)V

    .line 1126
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeaderTop:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->typescroll:Lcom/youku/widget/PageHorizontalScrollView;

    new-instance v1, Lcom/tudou/ui/fragment/SearchResultFragment$17;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/SearchResultFragment$17;-><init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setScrollViewListener(Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;)V

    .line 1139
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeaderTop:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->yearscroll:Lcom/youku/widget/PageHorizontalScrollView;

    new-instance v1, Lcom/tudou/ui/fragment/SearchResultFragment$18;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/SearchResultFragment$18;-><init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->setScrollViewListener(Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;)V

    .line 1152
    return-void
.end method

.method private initView(Landroid/view/View;Landroid/view/LayoutInflater;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "in"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 367
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030214

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->load_complete:Landroid/view/View;

    .line 370
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchResultFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->data:Landroid/os/Bundle;

    .line 371
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->data:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->data:Landroid/os/Bundle;

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->intentKey:Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->data:Landroid/os/Bundle;

    const-string v1, "searchtab"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchHisTab:I

    .line 374
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->data:Landroid/os/Bundle;

    const-string v1, "isnoqc"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->isnoqc:Z

    .line 376
    :cond_0
    new-instance v0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->callback:Lcom/tudou/ui/fragment/SearchResultFragment$IUgcSortCallBack;

    invoke-direct {v0, v1, v2, v3}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;-><init>(Landroid/content/Context;Lcom/tudou/ui/fragment/SearchResultFragment$IUgcSortCallBack;I)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeader:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    .line 377
    const v0, 0x7f0c05c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeaderTop:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    .line 379
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeaderTop:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    invoke-virtual {v0, v4}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeaderTop:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->callback:Lcom/tudou/ui/fragment/SearchResultFragment$IUgcSortCallBack;

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->setIUgcSortCallback(Lcom/tudou/ui/fragment/SearchResultFragment$IUgcSortCallBack;)V

    .line 381
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SearchResultFragment;->initScrollOneTwoChange()V

    .line 382
    const v0, 0x7f0c05c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/SearchListView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    .line 384
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/SearchResultFragment;->initErrTipsView(Landroid/view/View;)V

    .line 386
    new-instance v1, Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchResultFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeader:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    invoke-direct {v1, v0, v2, p0}, Lcom/youku/adapter/SearchResultAdapter;-><init>(Lcom/tudou/ui/fragment/SearchTudouFragment;Lcom/tudou/ui/fragment/SearchResultUGCHeader;Lcom/tudou/ui/fragment/SearchResultFragment;)V

    iput-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    .line 388
    new-instance v0, Lcom/youku/widget/SearchListViewOnScroll;

    invoke-direct {v0}, Lcom/youku/widget/SearchListViewOnScroll;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->onScrollListener:Lcom/youku/widget/SearchListViewOnScroll;

    .line 389
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->onScrollListener:Lcom/youku/widget/SearchListViewOnScroll;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->mhandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/youku/widget/SearchListViewOnScroll;->setAdapter(Lcom/youku/adapter/SearchResultAdapter;Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/os/Handler;Landroid/content/Context;)V

    .line 390
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    invoke-virtual {v0, v5}, Lcom/youku/widget/SearchListView;->setType(I)V

    .line 391
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 392
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 393
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->onScrollListener:Lcom/youku/widget/SearchListViewOnScroll;

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 394
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 395
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/youku/adapter/SearchResultAdapter;->setHandler(Landroid/os/Handler;)V

    .line 396
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v0, v1}, Lcom/youku/adapter/SearchResultAdapter;->setSManager(Lcom/tudou/ui/fragment/SearchManager;)V

    .line 398
    new-instance v0, Lcom/youku/adapter/SearchChannelAdapter;

    invoke-direct {v0}, Lcom/youku/adapter/SearchChannelAdapter;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->badapter:Lcom/youku/adapter/SearchChannelAdapter;

    .line 399
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->badapter:Lcom/youku/adapter/SearchChannelAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v0, v1}, Lcom/youku/adapter/SearchChannelAdapter;->setSManager(Lcom/tudou/ui/fragment/SearchManager;)V

    .line 400
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->badapter:Lcom/youku/adapter/SearchChannelAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0, v1}, Lcom/youku/adapter/SearchChannelAdapter;->setImagework(Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    .line 401
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->badapter:Lcom/youku/adapter/SearchChannelAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/adapter/SearchChannelAdapter;->setActivity(Landroid/app/Activity;)V

    .line 402
    const v0, 0x7f0c05c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/HintView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchNoResult:Lcom/youku/widget/HintView;

    .line 403
    return-void
.end method

.method private localSendMessage(Landroid/os/Handler;II)V
    .locals 9
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "state"    # I
    .param p3, "mPage"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 611
    if-nez p1, :cond_0

    .line 612
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 752
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    if-eqz v3, :cond_1

    .line 616
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v3, v1}, Lcom/youku/adapter/SearchResultAdapter;->setFiltering(Z)V

    .line 617
    :cond_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeader:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    if-eqz v3, :cond_2

    .line 618
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeader:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v4, v4, Lcom/tudou/ui/fragment/SearchManager;->ugcFilters:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->callback1:Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;

    invoke-virtual {v3, v4, v5}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->setFilterData(Ljava/util/ArrayList;Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;)V

    .line 621
    :cond_2
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeaderTop:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    if-eqz v3, :cond_3

    .line 622
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeaderTop:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v4, v4, Lcom/tudou/ui/fragment/SearchManager;->ugcFilters:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->callback1:Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;

    invoke-virtual {v3, v4, v5}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->setFilterData(Ljava/util/ArrayList;Lcom/tudou/ui/fragment/SearchResultFragment$IUgcFilterCallBack;)V

    .line 625
    :cond_3
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchNoResult:Lcom/youku/widget/HintView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 626
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    invoke-virtual {v3, v1}, Lcom/youku/widget/SearchListView;->setVisibility(I)V

    .line 627
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/SearchManager;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/SearchManager;->getDirectDao()Lcom/youku/vo/SearchDirectDao;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/SearchManager;->getDirectDao()Lcom/youku/vo/SearchDirectDao;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDao;->results:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_12

    .line 630
    :cond_4
    if-eq p2, v6, :cond_5

    if-ne p3, v2, :cond_6

    const/4 v3, 0x2

    if-ne p2, v3, :cond_6

    .line 631
    :cond_5
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    sget-object v4, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v3, v4}, Lcom/youku/widget/SearchListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 632
    :cond_6
    if-ne p3, v2, :cond_7

    sget-boolean v3, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    if-nez v3, :cond_7

    sget-boolean v3, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    if-nez v3, :cond_7

    .line 633
    sget v3, Lcom/tudou/ui/fragment/SearchResultFragment;->BOTH_RESULT_EMPTY:I

    sput v3, Lcom/tudou/ui/fragment/SearchResultFragment;->CUR_DATA:I

    .line 635
    :cond_7
    if-ne p3, v2, :cond_d

    sget-object v3, Lcom/tudou/ui/fragment/SearchResultFragment;->ufilter:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Lcom/tudou/ui/fragment/SearchResultFragment;->usort:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 637
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchNoResult:Lcom/youku/widget/HintView;

    invoke-virtual {v3, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 638
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchNoResult:Lcom/youku/widget/HintView;

    invoke-virtual {v3, v7}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/youku/widget/SearchListView;->setVisibility(I)V

    .line 641
    if-ne p2, v6, :cond_c

    .line 642
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchNoResult:Lcom/youku/widget/HintView;

    invoke-virtual {v3, v7}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    const-string v0, "\u5f88\u62b1\u6b49\uff0c\u672a\u627e\u5230\u76f8\u5173\u89c6\u9891"

    .line 644
    .local v0, "tipTxt":Ljava/lang/String;
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchNoResult:Lcom/youku/widget/HintView;

    sget-object v4, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v3, v4, v0}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    .line 660
    .end local v0    # "tipTxt":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v4}, Lcom/tudou/ui/fragment/SearchManager;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v4

    sget-boolean v5, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    if-nez v5, :cond_8

    sget-boolean v5, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    if-eqz v5, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    invoke-virtual {v3, v4, p3, v1}, Lcom/youku/adapter/SearchResultAdapter;->setUgcItems(Ljava/util/ArrayList;IZ)V

    .line 661
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v1, v7, v7}, Lcom/youku/adapter/SearchResultAdapter;->setDirectShowItem(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 745
    :cond_a
    :goto_2
    if-ne p2, v6, :cond_b

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchManager;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchManager;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v1}, Lcom/youku/adapter/SearchResultAdapter;->getUgcSize()I

    move-result v1

    if-lez v1, :cond_b

    .line 748
    invoke-direct {p0, v2}, Lcom/tudou/ui/fragment/SearchResultFragment;->addFoot(Z)V

    .line 750
    :cond_b
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->intentKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/SearchManager;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v2, v1, v3}, Lcom/tudou/ui/fragment/SearchResultFragment;->track(ILjava/lang/String;I)V

    .line 751
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto/16 :goto_0

    .line 646
    :cond_c
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchNoResult:Lcom/youku/widget/HintView;

    new-instance v4, Lcom/tudou/ui/fragment/SearchResultFragment$7;

    invoke-direct {v4, p0}, Lcom/tudou/ui/fragment/SearchResultFragment$7;-><init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    invoke-virtual {v3, v4}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchNoResult:Lcom/youku/widget/HintView;

    sget-object v4, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v3, v4}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    goto :goto_1

    .line 663
    :cond_d
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeader:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget v4, v4, Lcom/tudou/ui/fragment/SearchManager;->ugcTotal:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v5, v5, Lcom/tudou/ui/fragment/SearchManager;->ugcSort:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->setUgcHeader(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 665
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeaderTop:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget v4, v4, Lcom/tudou/ui/fragment/SearchManager;->ugcTotal:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v5, v5, Lcom/tudou/ui/fragment/SearchManager;->ugcSort:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->setUgcHeader(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 668
    if-ne p3, v2, :cond_e

    sget-boolean v3, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    if-nez v3, :cond_e

    sget-boolean v3, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    if-nez v3, :cond_e

    .line 669
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v4, v4, Lcom/tudou/ui/fragment/SearchManager;->AllDirectItem:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v5, v5, Lcom/tudou/ui/fragment/SearchManager;->cateIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/youku/adapter/SearchResultAdapter;->setDirectShowItem(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 672
    :cond_e
    if-eq p2, v6, :cond_f

    if-le p3, v2, :cond_f

    .line 673
    iget v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->page:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->page:I

    .line 674
    :cond_f
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v3, p2}, Lcom/youku/adapter/SearchResultAdapter;->setState(I)V

    .line 675
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v4}, Lcom/tudou/ui/fragment/SearchManager;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v4

    sget-boolean v5, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    if-nez v5, :cond_10

    sget-boolean v5, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    if-eqz v5, :cond_11

    :cond_10
    move v1, v2

    :cond_11
    invoke-virtual {v3, v4, p3, v1}, Lcom/youku/adapter/SearchResultAdapter;->setUgcItems(Ljava/util/ArrayList;IZ)V

    .line 676
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v1}, Lcom/youku/adapter/SearchResultAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 678
    :cond_12
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/SearchManager;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/SearchManager;->getDirectDao()Lcom/youku/vo/SearchDirectDao;

    move-result-object v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/SearchManager;->getDirectDao()Lcom/youku/vo/SearchDirectDao;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDao;->results:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1a

    .line 681
    if-ne p3, v2, :cond_13

    sget-boolean v3, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    if-nez v3, :cond_13

    sget-boolean v3, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    if-nez v3, :cond_13

    .line 682
    sget v3, Lcom/tudou/ui/fragment/SearchResultFragment;->BOTH_UGC_EMPTY:I

    sput v3, Lcom/tudou/ui/fragment/SearchResultFragment;->CUR_DATA:I

    .line 683
    :cond_13
    if-eq p2, v6, :cond_14

    if-le p3, v2, :cond_14

    .line 684
    iget v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->page:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->page:I

    .line 685
    :cond_14
    if-eq p2, v6, :cond_15

    if-ne p3, v2, :cond_16

    const/4 v3, 0x2

    if-ne p2, v3, :cond_16

    .line 686
    :cond_15
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    sget-object v4, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v3, v4}, Lcom/youku/widget/SearchListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 687
    :cond_16
    if-ne p3, v2, :cond_17

    sget-boolean v3, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    if-nez v3, :cond_17

    sget-boolean v3, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    if-nez v3, :cond_17

    .line 688
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v4, v4, Lcom/tudou/ui/fragment/SearchManager;->AllDirectItem:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v5, v5, Lcom/tudou/ui/fragment/SearchManager;->cateIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/youku/adapter/SearchResultAdapter;->setDirectShowItem(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 691
    :cond_17
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v3, p2}, Lcom/youku/adapter/SearchResultAdapter;->setState(I)V

    .line 692
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v4}, Lcom/tudou/ui/fragment/SearchManager;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v4

    sget-boolean v5, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    if-nez v5, :cond_18

    sget-boolean v5, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    if-eqz v5, :cond_19

    :cond_18
    move v1, v2

    :cond_19
    invoke-virtual {v3, v4, p3, v1}, Lcom/youku/adapter/SearchResultAdapter;->setUgcItems(Ljava/util/ArrayList;IZ)V

    .line 693
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeader:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget v3, v3, Lcom/tudou/ui/fragment/SearchManager;->ugcTotal:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v4, v4, Lcom/tudou/ui/fragment/SearchManager;->ugcSort:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->setUgcHeader(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 695
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeaderTop:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget v3, v3, Lcom/tudou/ui/fragment/SearchManager;->ugcTotal:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v4, v4, Lcom/tudou/ui/fragment/SearchManager;->ugcSort:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->setUgcHeader(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 697
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v1}, Lcom/youku/adapter/SearchResultAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 698
    :cond_1a
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/SearchManager;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/SearchManager;->getDirectDao()Lcom/youku/vo/SearchDirectDao;

    move-result-object v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/SearchManager;->getDirectDao()Lcom/youku/vo/SearchDirectDao;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDao;->results:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_21

    .line 701
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    sget-object v4, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v3, v4}, Lcom/youku/widget/SearchListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 702
    if-ne p3, v2, :cond_1b

    sget-boolean v3, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    if-nez v3, :cond_1b

    sget-boolean v3, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    if-nez v3, :cond_1b

    .line 703
    sget v3, Lcom/tudou/ui/fragment/SearchResultFragment;->BOTH_NOT_EMPTY:I

    sput v3, Lcom/tudou/ui/fragment/SearchResultFragment;->CUR_DATA:I

    .line 704
    :cond_1b
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeader:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget v4, v4, Lcom/tudou/ui/fragment/SearchManager;->ugcTotal:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v5, v5, Lcom/tudou/ui/fragment/SearchManager;->ugcSort:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->setUgcHeader(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 706
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeaderTop:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget v4, v4, Lcom/tudou/ui/fragment/SearchManager;->ugcTotal:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v5, v5, Lcom/tudou/ui/fragment/SearchManager;->ugcSort:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->setUgcHeader(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 708
    if-ne p3, v2, :cond_1c

    sget-boolean v3, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    if-nez v3, :cond_1c

    sget-boolean v3, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    if-nez v3, :cond_1c

    .line 709
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v4, v4, Lcom/tudou/ui/fragment/SearchManager;->AllDirectItem:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v5, v5, Lcom/tudou/ui/fragment/SearchManager;->cateIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/youku/adapter/SearchResultAdapter;->setDirectShowItem(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 712
    :cond_1c
    if-eq p2, v6, :cond_1d

    if-le p3, v2, :cond_1d

    .line 713
    iget v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->page:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->page:I

    .line 714
    :cond_1d
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v3, p2}, Lcom/youku/adapter/SearchResultAdapter;->setState(I)V

    .line 715
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v4}, Lcom/tudou/ui/fragment/SearchManager;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v4

    sget-boolean v5, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    if-nez v5, :cond_1e

    sget-boolean v5, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    if-eqz v5, :cond_1f

    :cond_1e
    move v1, v2

    :cond_1f
    invoke-virtual {v3, v4, p3, v1}, Lcom/youku/adapter/SearchResultAdapter;->setUgcItems(Ljava/util/ArrayList;IZ)V

    .line 716
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v1}, Lcom/youku/adapter/SearchResultAdapter;->notifyDataSetChanged()V

    .line 717
    if-ne p3, v2, :cond_a

    sget-boolean v1, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    if-nez v1, :cond_20

    sget-boolean v1, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    if-eqz v1, :cond_a

    :cond_20
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeaderTop:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->onScrollListener:Lcom/youku/widget/SearchListViewOnScroll;

    iget v1, v1, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentSection:I

    if-eq v1, v8, :cond_a

    .line 719
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->onScrollListener:Lcom/youku/widget/SearchListViewOnScroll;

    iget v3, v3, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentSection:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/youku/widget/SearchListView;->setSelection(I)V

    goto/16 :goto_2

    .line 721
    :cond_21
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/SearchManager;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/SearchManager;->getDirectDao()Lcom/youku/vo/SearchDirectDao;

    move-result-object v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/SearchManager;->getDirectDao()Lcom/youku/vo/SearchDirectDao;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDao;->results:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_a

    .line 724
    :cond_22
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    sget-object v4, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v3, v4}, Lcom/youku/widget/SearchListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 725
    if-ne p3, v2, :cond_23

    sget-boolean v3, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    if-nez v3, :cond_23

    sget-boolean v3, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    if-nez v3, :cond_23

    .line 726
    sget v3, Lcom/tudou/ui/fragment/SearchResultFragment;->BOTH_SHOW_EMPTY:I

    sput v3, Lcom/tudou/ui/fragment/SearchResultFragment;->CUR_DATA:I

    .line 727
    :cond_23
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeader:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget v4, v4, Lcom/tudou/ui/fragment/SearchManager;->ugcTotal:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v5, v5, Lcom/tudou/ui/fragment/SearchManager;->ugcSort:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->setUgcHeader(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 729
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeaderTop:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget v4, v4, Lcom/tudou/ui/fragment/SearchManager;->ugcTotal:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v5, v5, Lcom/tudou/ui/fragment/SearchManager;->ugcSort:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->setUgcHeader(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 731
    if-ne p3, v2, :cond_24

    sget-boolean v3, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    if-nez v3, :cond_24

    sget-boolean v3, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    if-nez v3, :cond_24

    .line 732
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v4, v4, Lcom/tudou/ui/fragment/SearchManager;->AllDirectItem:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v5, v5, Lcom/tudou/ui/fragment/SearchManager;->cateIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/youku/adapter/SearchResultAdapter;->setDirectShowItem(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 735
    :cond_24
    if-eq p2, v6, :cond_25

    if-le p3, v2, :cond_25

    .line 736
    iget v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->page:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->page:I

    .line 737
    :cond_25
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v3, p2}, Lcom/youku/adapter/SearchResultAdapter;->setState(I)V

    .line 738
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v4}, Lcom/tudou/ui/fragment/SearchManager;->getUgcItems()Ljava/util/ArrayList;

    move-result-object v4

    sget-boolean v5, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    if-nez v5, :cond_26

    sget-boolean v5, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    if-eqz v5, :cond_27

    :cond_26
    move v1, v2

    :cond_27
    invoke-virtual {v3, v4, p3, v1}, Lcom/youku/adapter/SearchResultAdapter;->setUgcItems(Ljava/util/ArrayList;IZ)V

    .line 739
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v1}, Lcom/youku/adapter/SearchResultAdapter;->notifyDataSetChanged()V

    .line 740
    if-ne p3, v2, :cond_a

    sget-boolean v1, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    if-nez v1, :cond_28

    sget-boolean v1, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    if-eqz v1, :cond_a

    :cond_28
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeaderTop:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->onScrollListener:Lcom/youku/widget/SearchListViewOnScroll;

    iget v1, v1, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentSection:I

    if-eq v1, v8, :cond_a

    .line 742
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->onScrollListener:Lcom/youku/widget/SearchListViewOnScroll;

    iget v3, v3, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentSection:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/youku/widget/SearchListView;->setSelection(I)V

    goto/16 :goto_2
.end method

.method private removeFoot()V
    .locals 3

    .prologue
    .line 1025
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->load_complete:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1027
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->load_complete:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/youku/widget/SearchListView;->removeFooterView(Landroid/view/View;)Z

    .line 1028
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lcom/youku/widget/SearchListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    :cond_0
    :goto_0
    return-void

    .line 1029
    :catch_0
    move-exception v0

    .line 1030
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendMiddleTime()V
    .locals 8

    .prologue
    .line 758
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 759
    .local v6, "endTime":J
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 760
    .local v5, "extenalHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 761
    const-string v0, "pltype"

    const-string v1, "searchResultLoad"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    const-string v0, "st"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->startTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    const-string v0, "et"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    const-string v0, "s"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->startTime:J

    sub-long v2, v6, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const-string v1, "\u641c\u7d22\u7ed3\u679c\u9875\u52a0\u8f7d"

    const-class v2, Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u641c\u7d22\u7ed3\u679c\u9875\u52a0\u8f7d"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 768
    return-void
.end method

.method private setErrTipsView(Lcom/youku/vo/SearchCorrection;)V
    .locals 6
    .param p1, "correction"    # Lcom/youku/vo/SearchCorrection;

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 435
    if-eqz p1, :cond_3

    .line 436
    iget-object v2, p1, Lcom/youku/vo/SearchCorrection;->corr_type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 437
    const-string v1, ""

    .line 438
    .local v1, "tips":Ljava/lang/String;
    const-string v2, "replace"

    iget-object v3, p1, Lcom/youku/vo/SearchCorrection;->corr_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 439
    const-string v0, ""

    .line 444
    .local v0, "corrString":Ljava/lang/String;
    iget-object v0, p1, Lcom/youku/vo/SearchCorrection;->corr_word:Ljava/lang/String;

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u663e\u793a\u201c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u201d\u7684\u641c\u7d22\u7ed3\u679c\uff0c\u4ecd\u7136\u641c\u7d22: <font color=\"#ff6600\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/vo/SearchCorrection;->key_word:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->errorTipsTxt:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->errorTipsTxt:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/youku/vo/SearchCorrection;->key_word:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 461
    .end local v0    # "corrString":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->errorTips:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 462
    iput-boolean v5, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->showerrorTips:Z

    .line 463
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->onScrollListener:Lcom/youku/widget/SearchListViewOnScroll;

    invoke-virtual {v2, v5}, Lcom/youku/widget/SearchListViewOnScroll;->setIsnoqc(Z)V

    .line 474
    .end local v1    # "tips":Ljava/lang/String;
    :goto_1
    return-void

    .line 451
    .restart local v1    # "tips":Ljava/lang/String;
    :cond_1
    const-string v2, "prompt"

    iget-object v3, p1, Lcom/youku/vo/SearchCorrection;->corr_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f60\u662f\u4e0d\u662f\u8981\u627e: <font color=\"#ff6600\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/vo/SearchCorrection;->corr_word:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 454
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->errorTipsTxt:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->errorTipsTxt:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/youku/vo/SearchCorrection;->corr_word:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 465
    .end local v1    # "tips":Ljava/lang/String;
    :cond_2
    iput-boolean v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->showerrorTips:Z

    .line 466
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->onScrollListener:Lcom/youku/widget/SearchListViewOnScroll;

    invoke-virtual {v2, v4}, Lcom/youku/widget/SearchListViewOnScroll;->setIsnoqc(Z)V

    .line 467
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->errorTips:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 470
    :cond_3
    iput-boolean v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->showerrorTips:Z

    .line 471
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->onScrollListener:Lcom/youku/widget/SearchListViewOnScroll;

    invoke-virtual {v2, v4}, Lcom/youku/widget/SearchListViewOnScroll;->setIsnoqc(Z)V

    .line 472
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->errorTips:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private setUgcHeaerTopVis(I)V
    .locals 2
    .param p1, "vis"    # I

    .prologue
    .line 940
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeaderTop:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->ugcHeaderTop:Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    invoke-virtual {v0, p1}, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->setVisibility(I)V

    .line 943
    :cond_0
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->showerrorTips:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    invoke-virtual {v0}, Lcom/youku/widget/SearchListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_1

    .line 945
    if-nez p1, :cond_2

    .line 946
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->errorTips:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 951
    :cond_1
    :goto_0
    return-void

    .line 948
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->errorTips:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private track(ILjava/lang/String;I)V
    .locals 5
    .param p1, "SearchType"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "pz"    # I

    .prologue
    const/4 v4, 0x0

    .line 958
    const-string v2, "track"

    invoke-static {v2}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 960
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 962
    iget v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->trackPage:I

    iget v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->page:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->trackKey:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->trackKey:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->trackAaid:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->trackAaid:Ljava/lang/String;

    sget-object v3, Lcom/tudou/ui/fragment/SearchManager;->aaid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 967
    :cond_2
    new-instance v0, Lcom/youku/vo/SokuAccess;

    invoke-direct {v0}, Lcom/youku/vo/SokuAccess;-><init>()V

    .line 968
    .local v0, "access":Lcom/youku/vo/SokuAccess;
    sget-object v2, Lcom/tudou/ui/fragment/SearchManager;->aaid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 969
    invoke-static {}, Lcom/tudou/ui/fragment/SearchManager;->getAaid()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tudou/ui/fragment/SearchManager;->aaid:Ljava/lang/String;

    .line 970
    :cond_3
    sget-object v2, Lcom/tudou/ui/fragment/SearchManager;->aaid:Ljava/lang/String;

    iput-object v2, v0, Lcom/youku/vo/SokuAccess;->aaid:Ljava/lang/String;

    .line 971
    sget-object v2, Lcom/tudou/ui/fragment/SearchManager;->aaid:Ljava/lang/String;

    iput-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->trackAaid:Ljava/lang/String;

    .line 972
    packed-switch p1, :pswitch_data_0

    .line 975
    const-string v2, "11"

    iput-object v2, v0, Lcom/youku/vo/SokuAccess;->log:Ljava/lang/String;

    .line 976
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    if-eqz v2, :cond_5

    .line 977
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v2}, Lcom/youku/adapter/SearchResultAdapter;->getCurPageTotal()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/youku/vo/SokuAccess;->pz:Ljava/lang/String;

    .line 989
    :goto_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SearchManager;->getDirectDao()Lcom/youku/vo/SearchDirectDao;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SearchManager;->getDirectDao()Lcom/youku/vo/SearchDirectDao;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDao;->results:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 991
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/SearchManager;->getDirectDao()Lcom/youku/vo/SearchDirectDao;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDao;->results:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/youku/vo/SokuAccess;->ds:Ljava/lang/String;

    .line 995
    :goto_2
    iput-object p2, v0, Lcom/youku/vo/SokuAccess;->k:Ljava/lang/String;

    .line 996
    iput-object p2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->trackKey:Ljava/lang/String;

    .line 997
    sget-object v2, Lcom/tudou/ui/fragment/SearchManager;->kref:Ljava/lang/String;

    iput-object v2, v0, Lcom/youku/vo/SokuAccess;->kref:Ljava/lang/String;

    .line 998
    iget v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->page:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/youku/vo/SokuAccess;->pg:Ljava/lang/String;

    .line 999
    iget v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->page:I

    iput v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->trackPage:I

    .line 1000
    sget-boolean v2, Lcom/tudou/ui/fragment/SearchResultFragment;->isSort:Z

    if-eqz v2, :cond_a

    .line 1001
    sget-object v2, Lcom/tudou/ui/fragment/SearchResultFragment;->usort:Ljava/lang/String;

    const-string v3, ""

    if-ne v2, v3, :cond_8

    .line 1002
    const-string v2, "0"

    iput-object v2, v0, Lcom/youku/vo/SokuAccess;->seq:Ljava/lang/String;

    .line 1011
    :cond_4
    :goto_3
    sget-boolean v2, Lcom/tudou/ui/fragment/SearchResultFragment;->isfilter:Z

    if-eqz v2, :cond_b

    .line 1012
    sget-object v2, Lcom/tudou/ui/fragment/SearchResultFragment;->ufilter:Ljava/lang/String;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchManager;->getFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/youku/vo/SokuAccess;->filter:Ljava/lang/String;

    .line 1016
    :goto_4
    const-string v2, "0"

    iput-object v2, v0, Lcom/youku/vo/SokuAccess;->sh:Ljava/lang/String;

    .line 1017
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget v2, v2, Lcom/tudou/ui/fragment/SearchManager;->ugcTotal:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/youku/vo/SokuAccess;->vs:Ljava/lang/String;

    .line 1018
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1019
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "\u641c\u7d22\u9875\u7ed3\u679c\u9875\u5c55\u793a"

    const-class v3, Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u641c\u7d22\u9875\u7ed3\u679c\u9875\u5c55\u793a"

    invoke-static {v2, v3, v4, v1, v0}, Lcom/youku/util/Util;->trackExtendSokuAccessEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/youku/vo/SokuAccess;)V

    goto/16 :goto_0

    .line 979
    .end local v1    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    iget v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->page:I

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x1e

    add-int/2addr v2, p3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/youku/vo/SokuAccess;->pz:Ljava/lang/String;

    goto/16 :goto_1

    .line 982
    :pswitch_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    if-eqz v2, :cond_6

    .line 983
    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v2}, Lcom/youku/adapter/SearchResultAdapter;->getCurPageTotal()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/youku/vo/SokuAccess;->pz:Ljava/lang/String;

    .line 986
    :goto_5
    const-string v2, "12"

    iput-object v2, v0, Lcom/youku/vo/SokuAccess;->log:Ljava/lang/String;

    goto/16 :goto_1

    .line 985
    :cond_6
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/youku/vo/SokuAccess;->pz:Ljava/lang/String;

    goto :goto_5

    .line 993
    :cond_7
    const-string v2, "0"

    iput-object v2, v0, Lcom/youku/vo/SokuAccess;->ds:Ljava/lang/String;

    goto :goto_2

    .line 1003
    :cond_8
    const-string v2, "total_pv"

    sget-object v3, Lcom/tudou/ui/fragment/SearchResultFragment;->usort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1004
    const-string v2, "1"

    iput-object v2, v0, Lcom/youku/vo/SokuAccess;->seq:Ljava/lang/String;

    goto :goto_3

    .line 1005
    :cond_9
    const-string v2, "createtime"

    sget-object v3, Lcom/tudou/ui/fragment/SearchResultFragment;->usort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1006
    const-string v2, "2"

    iput-object v2, v0, Lcom/youku/vo/SokuAccess;->seq:Ljava/lang/String;

    goto :goto_3

    .line 1009
    :cond_a
    iput-object v4, v0, Lcom/youku/vo/SokuAccess;->seq:Ljava/lang/String;

    goto :goto_3

    .line 1014
    :cond_b
    iput-object v4, v0, Lcom/youku/vo/SokuAccess;->filter:Ljava/lang/String;

    goto :goto_4

    .line 972
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected bokeSendMessage(Landroid/os/Handler;Z)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "onresume"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 579
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchNoResult:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v3}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchListView;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchNoResult:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->bokeResult:Lcom/youku/vo/SokuPodcast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->bokeResult:Lcom/youku/vo/SokuPodcast;

    iget v0, v0, Lcom/youku/vo/SokuPodcast;->total:I

    if-nez v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchNoResult:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    const-string v2, "\u5f88\u62b1\u6b49\uff0c\u672a\u627e\u5230\u76f8\u5173\u81ea\u9891\u9053"

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchNoResult:Lcom/youku/widget/HintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    invoke-virtual {v0, v3}, Lcom/youku/widget/SearchListView;->setVisibility(I)V

    .line 608
    :goto_1
    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchNoResult:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 589
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchNoResult:Lcom/youku/widget/HintView;

    new-instance v1, Lcom/tudou/ui/fragment/SearchResultFragment$6;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/SearchResultFragment$6;-><init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->badapter:Lcom/youku/adapter/SearchChannelAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->users:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->page:I

    invoke-virtual {v0, v1, v2, p2}, Lcom/youku/adapter/SearchChannelAdapter;->setUsers(Ljava/util/ArrayList;IZ)V

    .line 607
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->badapter:Lcom/youku/adapter/SearchChannelAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/SearchChannelAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public getBokeList(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "pg"    # I

    .prologue
    .line 840
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 841
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 884
    :goto_0
    return-void

    .line 844
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 845
    :cond_1
    const-string v2, "\u641c\u7d22\u5173\u952e\u5b57\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 849
    :cond_2
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 851
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    sget-object v2, Lcom/tudou/ui/fragment/SearchResultFragment;->tag:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/youku/http/TudouURLContainer;->searchBokeUrlTudou(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {p1, p2}, Lcom/youku/http/TudouURLContainer;->searchBokeUrlTudou(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 854
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/ui/fragment/SearchResultFragment$10;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/SearchResultFragment$10;-><init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method public initSearchManager()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 351
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/SearchManager;->setHandler(Landroid/os/Handler;)V

    .line 352
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->intentKey:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->isnoqc:Z

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchResultFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->keyType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/tudou/ui/fragment/SearchManager;->setKey(Ljava/lang/String;ZLjava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    iput v6, v0, Lcom/youku/adapter/SearchResultAdapter;->curDirectPos:I

    .line 355
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v0, v5, v5}, Lcom/youku/adapter/SearchResultAdapter;->setDirectShowItem(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 356
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v0, v5, v4, v6}, Lcom/youku/adapter/SearchResultAdapter;->setUgcItems(Ljava/util/ArrayList;IZ)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    invoke-virtual {v0}, Lcom/youku/widget/SearchListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    invoke-virtual {v0}, Lcom/youku/widget/SearchListView;->getType()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 364
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    invoke-virtual {v0, v4}, Lcom/youku/widget/SearchListView;->setType(I)V

    .line 362
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->listView:Lcom/youku/widget/SearchListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->adapter:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 221
    iput-boolean v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->goresume:Z

    .line 223
    const v1, 0x7f03013d

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 225
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchResultFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->onTabClick:Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabClick;

    iput-object v2, v1, Lcom/tudou/ui/fragment/SearchTudouFragment;->onTabClick:Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabClick;

    .line 226
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchResultFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/widget/SearchHeadLayout;->hideSoftInput(Landroid/app/Activity;)V

    .line 227
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->imagework:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 228
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchResultFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/SearchTudouActivity;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchManager;->getInstance(Landroid/app/Activity;)Lcom/tudou/ui/fragment/SearchManager;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    .line 230
    invoke-direct {p0, v0, p1}, Lcom/tudou/ui/fragment/SearchResultFragment;->initView(Landroid/view/View;Landroid/view/LayoutInflater;)V

    .line 231
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SearchResultFragment;->autoRefresh()V

    .line 232
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 835
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 836
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->mhandler:Landroid/os/Handler;

    .line 837
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 289
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPause()V

    .line 290
    const-string v0, "onpause"

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 296
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 297
    const-string v1, "onpause"

    const-wide/16 v2, 0x12c

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-boolean v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->goresume:Z

    if-nez v1, :cond_2

    .line 300
    iput-boolean v4, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->goresume:Z

    goto :goto_0

    .line 304
    :cond_2
    iget v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchHisTab:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->bokeResult:Lcom/youku/vo/SokuPodcast;

    if-eqz v1, :cond_3

    .line 305
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->badapter:Lcom/youku/adapter/SearchChannelAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->badapter:Lcom/youku/adapter/SearchChannelAdapter;

    invoke-virtual {v1}, Lcom/youku/adapter/SearchChannelAdapter;->getUsers()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 306
    new-instance v0, Lcom/youku/vo/SokuPodcast;

    invoke-direct {v0}, Lcom/youku/vo/SokuPodcast;-><init>()V

    .line 307
    .local v0, "p":Lcom/youku/vo/SokuPodcast;
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->bokeResult:Lcom/youku/vo/SokuPodcast;

    iget v1, v1, Lcom/youku/vo/SokuPodcast;->total:I

    iput v1, v0, Lcom/youku/vo/SokuPodcast;->total:I

    .line 308
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->badapter:Lcom/youku/adapter/SearchChannelAdapter;

    invoke-virtual {v1}, Lcom/youku/adapter/SearchChannelAdapter;->getUsers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/youku/vo/SokuPodcast;->items:Ljava/util/ArrayList;

    .line 309
    invoke-direct {p0, v0, v4}, Lcom/tudou/ui/fragment/SearchResultFragment;->checkPodcastAttention(Lcom/youku/vo/SokuPodcast;Z)V

    goto :goto_0

    .line 311
    .end local v0    # "p":Lcom/youku/vo/SokuPodcast;
    :cond_3
    iget v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchHisTab:I

    if-ne v1, v4, :cond_0

    .line 312
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchManager;->AllDirectItem:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 315
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v2, v2, Lcom/tudou/ui/fragment/SearchManager;->AllDirectItem:Ljava/util/ArrayList;

    new-instance v3, Lcom/tudou/ui/fragment/SearchResultFragment$2;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/SearchResultFragment$2;-><init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/tudou/ui/fragment/SearchManager;->checkAttentions(Ljava/util/ArrayList;Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;)V

    goto :goto_0
.end method

.method public refreshUgc()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 1068
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 1069
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->intentKey:Ljava/lang/String;

    sget-object v3, Lcom/tudou/ui/fragment/SearchResultFragment;->usort:Ljava/lang/String;

    sget-object v4, Lcom/tudou/ui/fragment/SearchResultFragment;->ufilter:Ljava/lang/String;

    iget-object v5, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->searchManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-boolean v6, v5, Lcom/tudou/ui/fragment/SearchManager;->ugc1noqc:Z

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchResultFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v7, v5, Lcom/tudou/ui/fragment/SearchTudouFragment;->keyType:Ljava/lang/String;

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Lcom/tudou/ui/fragment/SearchManager;->excueGetUgc(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 1071
    return-void
.end method

.method protected setBokeData(Z)V
    .locals 2
    .param p1, "onresume"    # Z

    .prologue
    .line 567
    if-eqz p1, :cond_0

    .line 568
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->bokeResult:Lcom/youku/vo/SokuPodcast;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->bokeResult:Lcom/youku/vo/SokuPodcast;

    iget-object v0, v0, Lcom/youku/vo/SokuPodcast;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 570
    iget v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->page:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 571
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->users:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultFragment;->bokeResult:Lcom/youku/vo/SokuPodcast;

    iget-object v1, v1, Lcom/youku/vo/SokuPodcast;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 574
    :cond_2
    return-void
.end method

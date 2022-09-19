.class public Lcom/tudou/ui/fragment/MyTicketsFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "MyTicketsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final GET_MYTICKETS_FAILED:I = 0x30d42

.field private static final GET_MYTICKETS_SUCCESS:I = 0x30d41

.field private static final PAGE_SIZE:I = 0xa

.field public static mRefreshKey:Z


# instance fields
.field listItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mAdapter:Lcom/tudou/adapter/MyTicketsListAdapter;

.field private mBack:Landroid/widget/RelativeLayout;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderView:Landroid/view/View;

.field private mHintView:Lcom/youku/widget/HintView;

.field private mLayoutAdd:Landroid/view/View;

.field private mLoadComplete:Landroid/view/View;

.field private mLviMyTickets:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mPageNum:I

.field private mResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/MyTicketsListResult$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipInfo:Lcom/youku/vo/SkipInfo;

.field private mTxtGoUse:Landroid/widget/TextView;

.field private mTxtMyTicketsCount:Landroid/widget/TextView;

.field private mTxtTitle:Landroid/widget/TextView;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mRefreshKey:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mPageNum:I

    .line 68
    new-instance v0, Lcom/tudou/ui/fragment/MyTicketsFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MyTicketsFragment$1;-><init>(Lcom/tudou/ui/fragment/MyTicketsFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mHandler:Landroid/os/Handler;

    .line 181
    new-instance v0, Lcom/tudou/ui/fragment/MyTicketsFragment$2;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MyTicketsFragment$2;-><init>(Lcom/tudou/ui/fragment/MyTicketsFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 194
    new-instance v0, Lcom/tudou/ui/fragment/MyTicketsFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MyTicketsFragment$3;-><init>(Lcom/tudou/ui/fragment/MyTicketsFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->listItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 277
    new-instance v0, Lcom/tudou/ui/fragment/MyTicketsFragment$5;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MyTicketsFragment$5;-><init>(Lcom/tudou/ui/fragment/MyTicketsFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTicketsFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mLviMyTickets:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/MyTicketsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTicketsFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mPageNum:I

    return v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTicketsFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tudou/ui/fragment/MyTicketsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTicketsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mPageNum:I

    return p1
.end method

.method static synthetic access$108(Lcom/tudou/ui/fragment/MyTicketsFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTicketsFragment;

    .prologue
    .line 48
    iget v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mPageNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mPageNum:I

    return v0
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/MyTicketsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTicketsFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/MyTicketsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTicketsFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tudou/ui/fragment/MyTicketsFragment;->getMyTicketsList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/MyTicketsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTicketsFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/MyTicketsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTicketsFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/MyTicketsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTicketsFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mLoadComplete:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTicketsFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/youku/vo/SkipInfo;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTicketsFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    return-object v0
.end method

.method static synthetic access$602(Lcom/tudou/ui/fragment/MyTicketsFragment;Lcom/youku/vo/SkipInfo;)Lcom/youku/vo/SkipInfo;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTicketsFragment;
    .param p1, "x1"    # Lcom/youku/vo/SkipInfo;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    return-object p1
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/MyTicketsFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTicketsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->setMyTicketsText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/tudou/adapter/MyTicketsListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTicketsFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mAdapter:Lcom/tudou/adapter/MyTicketsListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MyTicketsFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method private getMyTicketsList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "type_ticket"    # Ljava/lang/String;
    .param p3, "psize"    # Ljava/lang/String;
    .param p4, "pnumber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 235
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mHandler:Landroid/os/Handler;

    const v3, 0x30d42

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 264
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mLviMyTickets:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mLoadComplete:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z

    .line 241
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 242
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {p1, v5, p3, p4}, Lcom/youku/http/TudouURLContainer;->getMyTicketsListUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 245
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/ui/fragment/MyTicketsFragment$4;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/MyTicketsFragment$4;-><init>(Lcom/tudou/ui/fragment/MyTicketsFragment;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 155
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c00df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mTxtTitle:Landroid/widget/TextView;

    .line 156
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mTxtTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v3, 0x7f0d02a0

    invoke-virtual {v2, v3}, Lcom/tudou/ui/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c00a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mBack:Landroid/widget/RelativeLayout;

    .line 158
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mBack:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c0566

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mLviMyTickets:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 160
    new-instance v1, Lcom/tudou/adapter/MyTicketsListAdapter;

    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v3, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mResult:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/tudou/adapter/MyTicketsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mAdapter:Lcom/tudou/adapter/MyTicketsListAdapter;

    .line 161
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mLviMyTickets:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mAdapter:Lcom/tudou/adapter/MyTicketsListAdapter;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mLviMyTickets:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 163
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/tudou/ui/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 164
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0301b4

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mHeaderView:Landroid/view/View;

    .line 165
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTicketsFragment;->setListHeader()V

    .line 166
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mLviMyTickets:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 167
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mLviMyTickets:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 168
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mLviMyTickets:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->listItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 170
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mHeaderView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mHeaderView:Landroid/view/View;

    const v2, 0x7f0c044b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mLayoutAdd:Landroid/view/View;

    .line 172
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mLayoutAdd:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mHeaderView:Landroid/view/View;

    const v2, 0x7f0c07ea

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mTxtGoUse:Landroid/widget/TextView;

    .line 174
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mTxtGoUse:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c00dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/HintView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mHintView:Lcom/youku/widget/HintView;

    .line 176
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v1, p0}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MyTicketsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030214

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mLoadComplete:Landroid/view/View;

    .line 179
    return-void
.end method

.method private setListHeader()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0c07e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mTxtMyTicketsCount:Landroid/widget/TextView;

    .line 275
    return-void
.end method

.method private setMyTicketsText(Ljava/lang/String;)V
    .locals 6
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89c2\u5f71\u5238"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5f20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 269
    .local v1, "sp":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const/16 v3, 0xff

    const/16 v4, 0x61

    const/16 v5, 0x2a

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x22

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 270
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mTxtMyTicketsCount:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 210
    :sswitch_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    goto :goto_0

    .line 213
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const-class v3, Lcom/tudou/ui/activity/MyTicketsBindActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v2, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 217
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    .line 218
    .local v1, "skipInfo":Lcom/youku/vo/SkipInfo;
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v1, v2}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    goto :goto_0

    .line 221
    .end local v1    # "skipInfo":Lcom/youku/vo/SkipInfo;
    :sswitch_3
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 222
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mHintView:Lcom/youku/widget/HintView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 227
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mLviMyTickets:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mLviMyTickets:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto :goto_0

    .line 208
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c00a7 -> :sswitch_0
        0x7f0c00dd -> :sswitch_3
        0x7f0c044b -> :sswitch_1
        0x7f0c07ea -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mResult:Ljava/util/ArrayList;

    .line 131
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
    .line 135
    const v0, 0x7f03012a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mView:Landroid/view/View;

    .line 136
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MyTicketsFragment;->initView()V

    .line 137
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mLviMyTickets:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mLviMyTickets:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 146
    sget-boolean v0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mRefreshKey:Z

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mLviMyTickets:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mLviMyTickets:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 150
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/MyTicketsFragment;->mRefreshKey:Z

    .line 152
    :cond_1
    return-void
.end method

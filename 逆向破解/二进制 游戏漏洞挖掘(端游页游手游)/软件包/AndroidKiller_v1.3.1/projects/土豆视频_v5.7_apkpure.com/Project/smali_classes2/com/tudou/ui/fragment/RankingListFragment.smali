.class public Lcom/tudou/ui/fragment/RankingListFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "RankingListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final GET_RANKINGDATA_FAILED:I = 0x186a2

.field public static final GET_RANKINGDATA_SUCCESS:I = 0x186a1


# instance fields
.field private listview:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mAdapter:Lcom/tudou/adapter/RankingListAdapter;

.field public mHandler:Landroid/os/Handler;

.field private mHintView:Lcom/youku/widget/HintView;

.field private mView:Landroid/view/View;

.field private rankinglist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/RankingList$Ranking;",
            ">;"
        }
    .end annotation
.end field

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
    .line 35
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 119
    new-instance v0, Lcom/tudou/ui/fragment/RankingListFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/RankingListFragment$3;-><init>(Lcom/tudou/ui/fragment/RankingListFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/RankingListFragment;->mHandler:Landroid/os/Handler;

    .line 203
    new-instance v0, Lcom/tudou/ui/fragment/RankingListFragment$5;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/RankingListFragment$5;-><init>(Lcom/tudou/ui/fragment/RankingListFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/RankingListFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/RankingListFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RankingListFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/RankingListFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RankingListFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/RankingListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RankingListFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListFragment;->rankinglist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/RankingListFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RankingListFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListFragment;->mHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/RankingListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RankingListFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListFragment;->listview:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/RankingListFragment;)Lcom/tudou/adapter/RankingListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RankingListFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListFragment;->mAdapter:Lcom/tudou/adapter/RankingListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/RankingListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RankingListFragment;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/tudou/ui/fragment/RankingListFragment;->getRankingList()V

    return-void
.end method

.method private getRankingList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 160
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getRankingListUrl()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, v2, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 164
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 166
    .local v1, "mHttpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v3, Lcom/tudou/ui/fragment/RankingListFragment$4;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/RankingListFragment$4;-><init>(Lcom/tudou/ui/fragment/RankingListFragment;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 195
    return-void
.end method

.method private initTitle()V
    .locals 4

    .prologue
    .line 93
    iget-object v2, p0, Lcom/tudou/ui/fragment/RankingListFragment;->mView:Landroid/view/View;

    const v3, 0x7f0c00a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 95
    .local v0, "back_img":Landroid/widget/RelativeLayout;
    new-instance v2, Lcom/tudou/ui/fragment/RankingListFragment$1;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/RankingListFragment$1;-><init>(Lcom/tudou/ui/fragment/RankingListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v2, p0, Lcom/tudou/ui/fragment/RankingListFragment;->mView:Landroid/view/View;

    const v3, 0x7f0c00df

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 105
    .local v1, "txt_title":Landroid/widget/TextView;
    const-string v2, "\u6392\u884c\u699c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v2, Lcom/tudou/ui/fragment/RankingListFragment$2;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/RankingListFragment$2;-><init>(Lcom/tudou/ui/fragment/RankingListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/tudou/ui/fragment/RankingListFragment;->initTitle()V

    .line 80
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04ad

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment;->listview:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 81
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment;->listview:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/RankingListFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment;->rankinglist:Ljava/util/ArrayList;

    .line 83
    new-instance v1, Lcom/tudou/adapter/RankingListAdapter;

    iget-object v2, p0, Lcom/tudou/ui/fragment/RankingListFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v3, p0, Lcom/tudou/ui/fragment/RankingListFragment;->rankinglist:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/tudou/adapter/RankingListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment;->mAdapter:Lcom/tudou/adapter/RankingListAdapter;

    .line 84
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment;->listview:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/RankingListFragment;->mAdapter:Lcom/tudou/adapter/RankingListAdapter;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c00dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/HintView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment;->mHintView:Lcom/youku/widget/HintView;

    .line 86
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v1, p0}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c0094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "statusBarView":Landroid/view/View;
    invoke-static {v0}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 89
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 64
    :pswitch_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 69
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListFragment;->mHintView:Lcom/youku/widget/HintView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 70
    invoke-direct {p0}, Lcom/tudou/ui/fragment/RankingListFragment;->getRankingList()V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c00dd
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/RankingListFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/RankingListFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 58
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
    .line 48
    const v0, 0x7f030132

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/RankingListFragment;->mView:Landroid/view/View;

    .line 49
    invoke-direct {p0}, Lcom/tudou/ui/fragment/RankingListFragment;->initView()V

    .line 50
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListFragment;->listview:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 51
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/ui/fragment/RankingListFragment;->mHandler:Landroid/os/Handler;

    .line 200
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 201
    return-void
.end method

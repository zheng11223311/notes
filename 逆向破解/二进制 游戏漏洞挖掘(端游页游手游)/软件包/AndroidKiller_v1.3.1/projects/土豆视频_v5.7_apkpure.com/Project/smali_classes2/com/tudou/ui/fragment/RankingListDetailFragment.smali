.class public Lcom/tudou/ui/fragment/RankingListDetailFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "RankingListDetailFragment.java"


# static fields
.field public static final GET_RANKINGDATA_FAILED:I = 0x186a2

.field public static final GET_RANKINGDATA_SUCCESS:I = 0x186a1


# instance fields
.field private cid:Ljava/lang/String;

.field private cname:Ljava/lang/String;

.field private header:Landroid/view/View;

.field private listview:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mAdapter:Lcom/tudou/adapter/RankingListDetailAdapter;

.field public mHandler:Landroid/os/Handler;

.field private mHintView:Lcom/youku/widget/HintView;

.field private mView:Landroid/view/View;

.field private rankingDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/RankingDetailList$Results$RankingDetail;",
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
    .line 41
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 139
    new-instance v0, Lcom/tudou/ui/fragment/RankingListDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/RankingListDetailFragment$3;-><init>(Lcom/tudou/ui/fragment/RankingListDetailFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mHandler:Landroid/os/Handler;

    .line 306
    new-instance v0, Lcom/tudou/ui/fragment/RankingListDetailFragment$8;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/RankingListDetailFragment$8;-><init>(Lcom/tudou/ui/fragment/RankingListDetailFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RankingListDetailFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->rankingDetails:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RankingListDetailFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->cname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RankingListDetailFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RankingListDetailFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RankingListDetailFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RankingListDetailFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RankingListDetailFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RankingListDetailFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RankingListDetailFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RankingListDetailFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/RankingListDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RankingListDetailFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->getRankingList()V

    return-void
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RankingListDetailFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->listview:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/tudou/adapter/RankingListDetailAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RankingListDetailFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mAdapter:Lcom/tudou/adapter/RankingListDetailAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/tudou/ui/fragment/RankingListDetailFragment;Lcom/tudou/adapter/RankingListDetailAdapter;)Lcom/tudou/adapter/RankingListDetailAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RankingListDetailFragment;
    .param p1, "x1"    # Lcom/tudou/adapter/RankingListDetailAdapter;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mAdapter:Lcom/tudou/adapter/RankingListDetailAdapter;

    return-object p1
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RankingListDetailFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method private getRankingList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 261
    iget-object v3, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/youku/http/TudouURLContainer;->getRankingUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, v2, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 265
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 267
    .local v1, "mHttpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v3, Lcom/tudou/ui/fragment/RankingListDetailFragment$7;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/RankingListDetailFragment$7;-><init>(Lcom/tudou/ui/fragment/RankingListDetailFragment;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 298
    return-void
.end method

.method private initTitle()V
    .locals 4

    .prologue
    .line 176
    iget-object v2, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mView:Landroid/view/View;

    const v3, 0x7f0c00a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 178
    .local v0, "back_img":Landroid/widget/RelativeLayout;
    new-instance v2, Lcom/tudou/ui/fragment/RankingListDetailFragment$4;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/RankingListDetailFragment$4;-><init>(Lcom/tudou/ui/fragment/RankingListDetailFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v2, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mView:Landroid/view/View;

    const v3, 0x7f0c00df

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 188
    .local v1, "txt_title":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->cname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6392\u884c\u699c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    new-instance v2, Lcom/tudou/ui/fragment/RankingListDetailFragment$5;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/RankingListDetailFragment$5;-><init>(Lcom/tudou/ui/fragment/RankingListDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 72
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->cid:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cname"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->cname:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->initTitle()V

    .line 75
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04ad

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->listview:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 76
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->listview:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 77
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->listview:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/tudou/ui/fragment/RankingListDetailFragment$1;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/RankingListDetailFragment$1;-><init>(Lcom/tudou/ui/fragment/RankingListDetailFragment;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->rankingDetails:Ljava/util/ArrayList;

    .line 121
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c00dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/HintView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mHintView:Lcom/youku/widget/HintView;

    .line 122
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mHintView:Lcom/youku/widget/HintView;

    new-instance v2, Lcom/tudou/ui/fragment/RankingListDetailFragment$2;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/RankingListDetailFragment$2;-><init>(Lcom/tudou/ui/fragment/RankingListDetailFragment;)V

    invoke-virtual {v1, v2}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c0094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 136
    .local v0, "statusBarView":Landroid/view/View;
    invoke-static {v0}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 137
    return-void
.end method


# virtual methods
.method protected initHearder(Lcom/youku/vo/RankingDetailList$Results$RankingDetail;)V
    .locals 8
    .param p1, "rankingDetail"    # Lcom/youku/vo/RankingDetailList$Results$RankingDetail;

    .prologue
    .line 203
    iget-object v5, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->header:Landroid/view/View;

    if-nez v5, :cond_0

    .line 204
    iget-object v5, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0301be

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->header:Landroid/view/View;

    .line 206
    iget-object v5, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->listview:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v6, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->header:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 209
    :cond_0
    iget-object v5, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->header:Landroid/view/View;

    const v6, 0x7f0c0819

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 211
    .local v0, "image":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    iget-object v6, p1, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->img_link:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 212
    invoke-static {v0}, Lcom/youku/util/Util;->addPressState(Landroid/view/View;)V

    .line 213
    new-instance v5, Lcom/tudou/ui/fragment/RankingListDetailFragment$6;

    invoke-direct {v5, p0, p1}, Lcom/tudou/ui/fragment/RankingListDetailFragment$6;-><init>(Lcom/tudou/ui/fragment/RankingListDetailFragment;Lcom/youku/vo/RankingDetailList$Results$RankingDetail;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v5, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->header:Landroid/view/View;

    const v6, 0x7f0c081b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 246
    .local v3, "title":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->header:Landroid/view/View;

    const v6, 0x7f0c081c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 248
    .local v1, "notice":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->header:Landroid/view/View;

    const v6, 0x7f0c081d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 250
    .local v4, "update":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->header:Landroid/view/View;

    const v6, 0x7f0c081e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 253
    .local v2, "playtimes":Landroid/widget/TextView;
    iget-object v5, p1, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->title:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v5, p1, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->notice:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v5, p1, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->update:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u64ad\u653e : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/youku/vo/RankingDetailList$Results$RankingDetail;->playtimes:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 60
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
    .line 64
    const v0, 0x7f030133

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mView:Landroid/view/View;

    .line 65
    invoke-direct {p0}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->initView()V

    .line 66
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->listview:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 67
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment;->mHandler:Landroid/os/Handler;

    .line 303
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 304
    return-void
.end method

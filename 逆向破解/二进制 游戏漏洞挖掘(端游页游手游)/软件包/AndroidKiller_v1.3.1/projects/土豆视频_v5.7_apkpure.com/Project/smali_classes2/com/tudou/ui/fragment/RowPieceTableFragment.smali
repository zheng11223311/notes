.class public Lcom/tudou/ui/fragment/RowPieceTableFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "RowPieceTableFragment.java"


# static fields
.field private static final GET_CACHA_SUCCESS:I = 0x2718

.field private static final GET_CACHE_FAILED:I = 0x2719

.field private static final GET_DATA_FAILED:I = 0x271b

.field private static final GET_DATA_SUCCESS:I = 0x271a

.field public static final SET_TRACK_EXTEND_CUSTOM_EVENT:I = 0x271c


# instance fields
.field private cacheData:Lcom/youku/vo/ClassifyScheduleItems;

.field private cid:Ljava/lang/String;

.field private hintView:Lcom/youku/widget/HintView;

.field private leftLine:Landroid/view/View;

.field private mAdapter:Lcom/tudou/adapter/RowPieceTableAdapter;

.field private mChannelName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mListListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2",
            "<",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mTitleBack:Landroid/view/View;

.field private mTitleText:Landroid/widget/TextView;

.field private requestData:Lcom/youku/vo/ClassifyScheduleItems;

.field private title:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 58
    const-string v0, "0"

    iput-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->cid:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/tudou/ui/fragment/RowPieceTableFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/RowPieceTableFragment$1;-><init>(Lcom/tudou/ui/fragment/RowPieceTableFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mHandler:Landroid/os/Handler;

    .line 258
    new-instance v0, Lcom/tudou/ui/fragment/RowPieceTableFragment$5;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/RowPieceTableFragment$5;-><init>(Lcom/tudou/ui/fragment/RowPieceTableFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mListListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RowPieceTableFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->leftLine:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Lcom/tudou/adapter/RowPieceTableAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RowPieceTableFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mAdapter:Lcom/tudou/adapter/RowPieceTableAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/RowPieceTableFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RowPieceTableFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->getData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/tudou/ui/fragment/RowPieceTableFragment;Lcom/tudou/adapter/RowPieceTableAdapter;)Lcom/tudou/adapter/RowPieceTableAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RowPieceTableFragment;
    .param p1, "x1"    # Lcom/tudou/adapter/RowPieceTableAdapter;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mAdapter:Lcom/tudou/adapter/RowPieceTableAdapter;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RowPieceTableFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RowPieceTableFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RowPieceTableFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Lcom/youku/vo/ClassifyScheduleItems;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RowPieceTableFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->requestData:Lcom/youku/vo/ClassifyScheduleItems;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tudou/ui/fragment/RowPieceTableFragment;Lcom/youku/vo/ClassifyScheduleItems;)Lcom/youku/vo/ClassifyScheduleItems;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RowPieceTableFragment;
    .param p1, "x1"    # Lcom/youku/vo/ClassifyScheduleItems;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->requestData:Lcom/youku/vo/ClassifyScheduleItems;

    return-object p1
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RowPieceTableFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mChannelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RowPieceTableFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RowPieceTableFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->hintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/RowPieceTableFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RowPieceTableFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->closeLoading()V

    return-void
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RowPieceTableFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->cid:Ljava/lang/String;

    return-object v0
.end method

.method private closeLoading()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 251
    :cond_0
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 253
    :cond_1
    return-void
.end method

.method private eventView()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mTitleBack:Landroid/view/View;

    new-instance v1, Lcom/tudou/ui/fragment/RowPieceTableFragment$2;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/RowPieceTableFragment$2;-><init>(Lcom/tudou/ui/fragment/RowPieceTableFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->hintView:Lcom/youku/widget/HintView;

    new-instance v1, Lcom/tudou/ui/fragment/RowPieceTableFragment$3;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/RowPieceTableFragment$3;-><init>(Lcom/tudou/ui/fragment/RowPieceTableFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 173
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mListListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 176
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->hintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 178
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto :goto_0
.end method

.method private getData(Ljava/lang/String;)V
    .locals 5
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 192
    const v3, 0x7f0d02c3

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(I)V

    .line 193
    invoke-direct {p0}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->closeLoading()V

    .line 220
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->hintView:Lcom/youku/widget/HintView;

    invoke-virtual {v3}, Lcom/youku/widget/HintView;->dismiss()V

    .line 199
    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getRowPieceTableUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "channelUrl":Ljava/lang/String;
    const-class v3, Lcom/youku/network/IHttpRequest;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/network/IHttpRequest;

    .line 201
    .local v2, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v1, Lcom/youku/network/HttpIntent;

    invoke-direct {v1, v0}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v1, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/ui/fragment/RowPieceTableFragment$4;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/RowPieceTableFragment$4;-><init>(Lcom/tudou/ui/fragment/RowPieceTableFragment;)V

    invoke-interface {v2, v1, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method private getLcalCache(I)V
    .locals 6
    .param p1, "cid"    # I

    .prologue
    .line 227
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/http/TudouURLContainer;->getRowPieceTableUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "channelUrl":Ljava/lang/String;
    invoke-static {v1}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "formatUri":Ljava/lang/String;
    invoke-static {v1}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 233
    :try_start_0
    invoke-static {v3}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "cacheDataStr":Ljava/lang/String;
    const-class v4, Lcom/youku/vo/ClassifyScheduleItems;

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/ClassifyScheduleItems;

    iput-object v4, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->cacheData:Lcom/youku/vo/ClassifyScheduleItems;

    .line 235
    iget-object v4, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x2718

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v0    # "cacheDataStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v2

    .line 237
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->view:Landroid/view/View;

    const v2, 0x7f0c0094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, "statusBarView":Landroid/view/View;
    invoke-static {v0}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 134
    iget-object v1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->view:Landroid/view/View;

    const v2, 0x7f0c00a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mTitleBack:Landroid/view/View;

    .line 135
    iget-object v1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->view:Landroid/view/View;

    const v2, 0x7f0c00df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mTitleText:Landroid/widget/TextView;

    .line 136
    iget-object v1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->view:Landroid/view/View;

    const v2, 0x7f0c05af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->leftLine:Landroid/view/View;

    .line 137
    iget-object v1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->view:Landroid/view/View;

    const v2, 0x7f0c00dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/HintView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->hintView:Lcom/youku/widget/HintView;

    .line 138
    iget-object v1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->view:Landroid/view/View;

    const v2, 0x7f0c05b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 139
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 110
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "cid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "cid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->cid:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->cid:Ljava/lang/String;

    invoke-static {v1}, Lcom/tudou/service/classify/ClassifyManager;->getChannelName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->mChannelName:Ljava/lang/String;

    .line 114
    :cond_0
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 115
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->title:Ljava/lang/String;

    .line 117
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    const v0, 0x7f030138

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->view:Landroid/view/View;

    .line 122
    invoke-direct {p0}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->initView()V

    .line 123
    invoke-direct {p0}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->eventView()V

    .line 124
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment;->view:Landroid/view/View;

    return-object v0
.end method

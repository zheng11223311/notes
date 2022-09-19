.class public Lcom/tudou/ui/fragment/DanmuPreviewFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "DanmuPreviewFragment.java"


# static fields
.field private static final GET_DANMULIST_FAILED:I = 0x186a2

.field private static final GET_DANMULIST_SUCCESS:I = 0x186a1

.field private static final GET_LOCAL_DANMULIST_FAILED:I = 0x186a4

.field private static final GET_LOCAL_DANMULIST_SUCCESS:I = 0x186a3


# instance fields
.field backOnClickListener:Landroid/view/View$OnClickListener;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/tudou/adapter/DanmuPreviewAdapter;

.field private mBack:Landroid/widget/RelativeLayout;

.field private mDanmuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/DanmuListResult$DanmuResult;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHintView:Lcom/youku/widget/HintView;

.field private mIsGetDanmuList:Z

.field private mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mLocalDanmuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/DanmuListResult$DanmuResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchView:Landroid/widget/ImageView;

.field private mShowLocalData:Z

.field private mTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field noDateClickListener:Landroid/view/View$OnClickListener;

.field private onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

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
    const/4 v0, 0x1

    .line 41
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mShowLocalData:Z

    .line 54
    iput-boolean v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mIsGetDanmuList:Z

    .line 61
    new-instance v0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment$1;-><init>(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mHandler:Landroid/os/Handler;

    .line 165
    new-instance v0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$2;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment$2;-><init>(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->backOnClickListener:Landroid/view/View$OnClickListener;

    .line 230
    new-instance v0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$4;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment$4;-><init>(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->noDateClickListener:Landroid/view/View$OnClickListener;

    .line 250
    new-instance v0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$5;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment$5;-><init>(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 301
    new-instance v0, Lcom/tudou/ui/fragment/DanmuPreviewFragment$6;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment$6;-><init>(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mDanmuList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mLocalDanmuList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Lcom/tudou/adapter/DanmuPreviewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mAdapter:Lcom/tudou/adapter/DanmuPreviewAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DanmuPreviewFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->getDanmuList()V

    return-void
.end method

.method private getDanmuList()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 174
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getDanmuListUrl()Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "mDanmuURL":Ljava/lang/String;
    invoke-static {v4, v9}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "mFormatUri":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mShowLocalData:Z

    if-eqz v7, :cond_0

    .line 179
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mShowLocalData:Z

    .line 180
    invoke-static {v5}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 182
    :try_start_0
    invoke-static {v5}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "mCacheDataStr":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 184
    new-instance v7, Lcom/youku/vo/DanmuListResult;

    invoke-direct {v7}, Lcom/youku/vo/DanmuListResult;-><init>()V

    invoke-static {v3, v7}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/DanmuListResult;

    .line 186
    .local v6, "mLocalList":Lcom/youku/vo/DanmuListResult;
    iget-object v7, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mLocalDanmuList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 187
    iget-object v7, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mLocalDanmuList:Ljava/util/ArrayList;

    iget-object v8, v6, Lcom/youku/vo/DanmuListResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 188
    iget-object v7, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mHandler:Landroid/os/Handler;

    const v8, 0x186a3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v3    # "mCacheDataStr":Ljava/lang/String;
    .end local v6    # "mLocalList":Lcom/youku/vo/DanmuListResult;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v7

    if-nez v7, :cond_2

    .line 197
    const v7, 0x7f0d02c3

    invoke-static {v7}, Lcom/youku/util/Util;->showTips(I)V

    .line 198
    iget-object v7, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 199
    iget-object v7, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 201
    :cond_1
    iget-object v7, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mHandler:Landroid/os/Handler;

    const v8, 0x186a2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 228
    :goto_1
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mHandler:Landroid/os/Handler;

    const v8, 0x186a4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v1, Lcom/youku/network/HttpIntent;

    invoke-direct {v1, v4, v9}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 205
    .local v1, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v7, Lcom/youku/network/IHttpRequest;

    invoke-static {v7, v9}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/network/IHttpRequest;

    .line 207
    .local v2, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v7, Lcom/tudou/ui/fragment/DanmuPreviewFragment$3;

    invoke-direct {v7, p0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment$3;-><init>(Lcom/tudou/ui/fragment/DanmuPreviewFragment;)V

    invoke-interface {v2, v1, v7}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_1
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 147
    new-instance v1, Lcom/tudou/adapter/DanmuPreviewAdapter;

    iget-object v2, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mDanmuList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/tudou/adapter/DanmuPreviewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mAdapter:Lcom/tudou/adapter/DanmuPreviewAdapter;

    .line 148
    iget-object v1, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c04db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 150
    iget-object v1, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 151
    iget-object v1, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 152
    iget-object v1, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mAdapter:Lcom/tudou/adapter/DanmuPreviewAdapter;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    iget-object v1, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c00df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mTitle:Landroid/widget/TextView;

    .line 154
    iget-object v1, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u5f39\u5e55\u69fd\u573a"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v1, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c00a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mBack:Landroid/widget/RelativeLayout;

    .line 156
    iget-object v1, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mBack:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->backOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v1, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c00dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/HintView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mHintView:Lcom/youku/widget/HintView;

    .line 158
    iget-object v1, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mHintView:Lcom/youku/widget/HintView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->noDateClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v1, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c0094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 160
    .local v0, "statusBarView":Landroid/view/View;
    invoke-static {v0}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 163
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mActivity:Landroid/app/Activity;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mDanmuList:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mLocalDanmuList:Ljava/util/ArrayList;

    .line 128
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
    .line 132
    const v0, 0x7f03010f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mView:Landroid/view/View;

    .line 133
    invoke-direct {p0}, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->initView()V

    .line 134
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mIsGetDanmuList:Z

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mIsGetDanmuList:Z

    .line 141
    iget-object v0, p0, Lcom/tudou/ui/fragment/DanmuPreviewFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 143
    :cond_0
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 144
    return-void
.end method

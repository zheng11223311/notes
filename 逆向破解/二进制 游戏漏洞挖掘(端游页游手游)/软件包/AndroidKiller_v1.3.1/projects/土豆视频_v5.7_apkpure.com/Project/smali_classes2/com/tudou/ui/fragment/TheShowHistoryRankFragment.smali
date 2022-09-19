.class public Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "TheShowHistoryRankFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FAILED:I = 0x2

.field private static final LOCAL_FAILED:I = 0x4

.field private static final LOCAL_SUCCESS:I = 0x3

.field private static final PAGE_SIZE:I = 0xa

.field private static final SUCCESS:I = 0x1


# instance fields
.field private mAdapter:Lcom/tudou/adapter/TheShowRankHistoryAdapter;

.field private mBack:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHintView:Lcom/youku/widget/HintView;

.field private mIsLocalData:Z

.field private mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mLoadComplete:Landroid/view/View;

.field private mLocalResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;",
            ">;"
        }
    .end annotation
.end field

.field private mPageNum:I

.field private mResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Landroid/widget/TextView;

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
    const/4 v0, 0x1

    .line 40
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mIsLocalData:Z

    .line 55
    iput v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mPageNum:I

    .line 58
    new-instance v0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$1;-><init>(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mHandler:Landroid/os/Handler;

    .line 246
    new-instance v0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$3;-><init>(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    .prologue
    .line 40
    iget v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mPageNum:I

    return v0
.end method

.method static synthetic access$102(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mPageNum:I

    return p1
.end method

.method static synthetic access$108(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    .prologue
    .line 40
    iget v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mPageNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mPageNum:I

    return v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mLoadComplete:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Lcom/tudou/adapter/TheShowRankHistoryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mAdapter:Lcom/tudou/adapter/TheShowRankHistoryAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mLocalResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->getHistoryListData()V

    return-void
.end method

.method private getHistoryListData()V
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x1

    .line 190
    iget v6, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mPageNum:I

    invoke-static {v6, v9}, Lcom/youku/http/TudouURLContainer;->getTheShowPastUrl(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "mFormatUri":Ljava/lang/String;
    iget-object v6, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v7, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mLoadComplete:Landroid/view/View;

    invoke-virtual {v6, v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z

    .line 194
    iget-boolean v6, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mIsLocalData:Z

    if-eqz v6, :cond_0

    .line 195
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mIsLocalData:Z

    .line 196
    invoke-static {v4}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 198
    :try_start_0
    invoke-static {v4}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "mCacheDataStr":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 200
    new-instance v6, Lcom/youku/vo/TheShowRankHistoryResults;

    invoke-direct {v6}, Lcom/youku/vo/TheShowRankHistoryResults;-><init>()V

    invoke-static {v3, v6}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/TheShowRankHistoryResults;

    .line 202
    .local v5, "mLocalList":Lcom/youku/vo/TheShowRankHistoryResults;
    iget-object v6, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mLocalResult:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 203
    iget-object v6, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mLocalResult:Ljava/util/ArrayList;

    iget-object v7, v5, Lcom/youku/vo/TheShowRankHistoryResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 204
    iget-object v6, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v3    # "mCacheDataStr":Ljava/lang/String;
    .end local v5    # "mLocalList":Lcom/youku/vo/TheShowRankHistoryResults;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v6

    if-nez v6, :cond_1

    .line 213
    const v6, 0x7f0d02c3

    invoke-static {v6}, Lcom/youku/util/Util;->showTips(I)V

    .line 217
    iget-object v6, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 244
    :goto_1
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lcom/youku/network/HttpIntent;

    iget v6, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mPageNum:I

    invoke-static {v6, v9}, Lcom/youku/http/TudouURLContainer;->getTheShowPastUrl(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v8}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 222
    .local v1, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v6, Lcom/youku/network/IHttpRequest;

    invoke-static {v6, v8}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/network/IHttpRequest;

    .line 224
    .local v2, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v6, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$2;

    invoke-direct {v6, p0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment$2;-><init>(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)V

    invoke-interface {v2, v1, v6}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_1
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c00df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mTitle:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u5f80\u671f\u699c\u5355"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c00a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mBack:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mBack:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/HintView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mHintView:Lcom/youku/widget/HintView;

    .line 154
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0638

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 155
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 156
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 157
    new-instance v0, Lcom/tudou/adapter/TheShowRankHistoryAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mResult:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/tudou/adapter/TheShowRankHistoryAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mAdapter:Lcom/tudou/adapter/TheShowRankHistoryAdapter;

    .line 158
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mAdapter:Lcom/tudou/adapter/TheShowRankHistoryAdapter;

    invoke-virtual {v0, p0}, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->setFragment(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)V

    .line 159
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030214

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mLoadComplete:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mAdapter:Lcom/tudou/adapter/TheShowRankHistoryAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 171
    :sswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    goto :goto_0

    .line 174
    :sswitch_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mHintView:Lcom/youku/widget/HintView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto :goto_0

    .line 169
    :sswitch_data_0
    .sparse-switch
        0x7f0c00a7 -> :sswitch_0
        0x7f0c00dd -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mResult:Ljava/util/ArrayList;

    .line 133
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
    .line 137
    const v0, 0x7f030149

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mView:Landroid/view/View;

    .line 138
    invoke-direct {p0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->initView()V

    .line 139
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/TheShowRankFragment;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mNeedRefresh:Z

    .line 145
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 146
    return-void
.end method

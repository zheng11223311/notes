.class public Lcom/tudou/ui/fragment/HistoryWholeFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "HistoryWholeFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HistoryWholeFragment"

.field public static mCurrentFragment:Lcom/tudou/ui/fragment/HistoryWholeFragment;


# instance fields
.field private hintCount:I

.field private isLoading:Z

.field private mContentView:Landroid/view/View;

.field public mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mPageNo:I

.field private mPageSize:I

.field private mPlayHistoryNone:Landroid/widget/ImageView;

.field private mPlayHistoryNone_tips:Landroid/widget/TextView;

.field private mPlayedVideosList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;"
        }
    .end annotation
.end field

.field private mTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;"
        }
    .end annotation
.end field

.field private mTempLocalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;"
        }
    .end annotation
.end field

.field public mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 42
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 59
    iput v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->hintCount:I

    .line 60
    iput v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mPageNo:I

    .line 61
    const/16 v0, 0xa

    iput v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mPageSize:I

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->isLoading:Z

    .line 67
    new-instance v0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;-><init>(Lcom/tudou/ui/fragment/HistoryWholeFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mHandler:Landroid/os/Handler;

    .line 317
    new-instance v0, Lcom/tudou/ui/fragment/HistoryWholeFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/HistoryWholeFragment$3;-><init>(Lcom/tudou/ui/fragment/HistoryWholeFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 357
    new-instance v0, Lcom/tudou/ui/fragment/HistoryWholeFragment$4;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/HistoryWholeFragment$4;-><init>(Lcom/tudou/ui/fragment/HistoryWholeFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryWholeFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mTempList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tudou/ui/fragment/HistoryWholeFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryWholeFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mTempList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryWholeFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mPlayedVideosList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/HistoryWholeFragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryWholeFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->loadFromServer(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryWholeFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mTempLocalList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/HistoryWholeFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryWholeFragment;

    .prologue
    .line 42
    iget v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mPageNo:I

    return v0
.end method

.method static synthetic access$302(Lcom/tudou/ui/fragment/HistoryWholeFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryWholeFragment;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mPageNo:I

    return p1
.end method

.method static synthetic access$310(Lcom/tudou/ui/fragment/HistoryWholeFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryWholeFragment;

    .prologue
    .line 42
    iget v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mPageNo:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mPageNo:I

    return v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryWholeFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mPlayHistoryNone:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryWholeFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mPlayHistoryNone_tips:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryWholeFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryWholeFragment;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->isLoading:Z

    return v0
.end method

.method static synthetic access$702(Lcom/tudou/ui/fragment/HistoryWholeFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryWholeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->isLoading:Z

    return p1
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/HistoryWholeFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryWholeFragment;

    .prologue
    .line 42
    iget v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->totalCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/tudou/ui/fragment/HistoryWholeFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryWholeFragment;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->totalCount:I

    return p1
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/HistoryWholeFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryWholeFragment;

    .prologue
    .line 42
    iget v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mPageSize:I

    return v0
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mContentView:Landroid/view/View;

    const v1, 0x7f0c0712

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mPlayHistoryNone:Landroid/widget/ImageView;

    .line 224
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mContentView:Landroid/view/View;

    const v1, 0x7f0c0713

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mPlayHistoryNone_tips:Landroid/widget/TextView;

    .line 226
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mContentView:Landroid/view/View;

    const v1, 0x7f0c0710

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mListView:Landroid/widget/ListView;

    .line 227
    new-instance v0, Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mPlayedVideosList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/tudou/adapter/HistoryAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    .line 228
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 229
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 232
    return-void
.end method

.method private loadFromServer(II)V
    .locals 11
    .param p1, "pageNo"    # I
    .param p2, "pageSize"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 248
    iget-object v7, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 249
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 250
    invoke-static {p1, p2, v10}, Lcom/youku/http/TudouURLContainer;->getPlayHistoryUrl(III)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "historyURL":Ljava/lang/String;
    invoke-static {v3, v9}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "formatUri":Ljava/lang/String;
    if-ne p1, v9, :cond_0

    .line 255
    invoke-static {v2}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 257
    :try_start_0
    invoke-static {v2}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "cacheDataStr":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 259
    new-instance v7, Lcom/youku/vo/HistoryVideoResult;

    invoke-direct {v7}, Lcom/youku/vo/HistoryVideoResult;-><init>()V

    invoke-static {v0, v7}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/HistoryVideoResult;

    .line 261
    .local v4, "historyVedio":Lcom/youku/vo/HistoryVideoResult;
    iget-object v7, v4, Lcom/youku/vo/HistoryVideoResult;->multiPageResult:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;

    iget-object v7, v7, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;->page:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult$HVPage;

    iget v7, v7, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult$HVPage;->totalCount:I

    iput v7, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->totalCount:I

    .line 262
    iget-object v7, v4, Lcom/youku/vo/HistoryVideoResult;->multiPageResult:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;

    iget-object v7, v7, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;->results:Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mTempLocalList:Ljava/util/ArrayList;

    .line 263
    iget-object v7, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x7d7

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v0    # "cacheDataStr":Ljava/lang/String;
    .end local v4    # "historyVedio":Lcom/youku/vo/HistoryVideoResult;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 272
    sput-boolean v9, Lcom/tudou/ui/fragment/HistoryManagerFragment;->isNeedCache:Z

    .line 273
    new-instance v5, Lcom/youku/network/HttpIntent;

    invoke-direct {v5, v3, v9}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 274
    .local v5, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "URL==========="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1, p2, v10}, Lcom/youku/http/TudouURLContainer;->getPlayHistoryUrl(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;)V

    .line 278
    const-class v7, Lcom/youku/network/IHttpRequest;

    invoke-static {v7, v9}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/network/IHttpRequest;

    .line 280
    .local v6, "mHttpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v7, Lcom/tudou/ui/fragment/HistoryWholeFragment$2;

    invoke-direct {v7, p0}, Lcom/tudou/ui/fragment/HistoryWholeFragment$2;-><init>(Lcom/tudou/ui/fragment/HistoryWholeFragment;)V

    invoke-interface {v6, v5, v7}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 314
    .end local v5    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v6    # "mHttpRequest":Lcom/youku/network/IHttpRequest;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 315
    return-void

    .line 264
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 302
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget v7, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->totalCount:I

    if-nez v7, :cond_1

    .line 303
    const v7, 0x7f0d02c3

    invoke-static {v7}, Lcom/youku/util/Util;->showTips(I)V

    .line 305
    iget-object v7, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mPlayHistoryNone:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget-object v7, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mPlayHistoryNone_tips:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    invoke-static {}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->unHideTabLayout()V

    .line 309
    iget-object v7, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mListView:Landroid/widget/ListView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getEditable()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryAdapter;->getEditable()Z

    move-result v0

    .line 418
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mPageNo:I

    iget v1, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mPageSize:I

    invoke-direct {p0, v0, v1}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->loadFromServer(II)V

    .line 245
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 240
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getLocalPlayHistory()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/vo/HistoryVideo;->parseLocalPlayHistory(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mTempList:Ljava/util/ArrayList;

    .line 241
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->totalCount:I

    .line 242
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 162
    const-string v0, "HistoryWholeFragment"

    const-string v1, "onCreate------"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 165
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 211
    const-string v0, "HistoryWholeFragment"

    const-string v1, "onCreateView------"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const v0, 0x7f03016e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mContentView:Landroid/view/View;

    .line 213
    sput-object p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mPlayedVideosList:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mTempList:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mTempLocalList:Ljava/util/ArrayList;

    .line 217
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->initView()V

    .line 219
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 169
    const-string v0, "HistoryWholeFragment"

    const-string v1, "onPause------"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPause()V

    .line 171
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 175
    const-string v0, "HistoryWholeFragment"

    const-string v1, "onResume------"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 184
    :goto_0
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 185
    return-void

    .line 179
    :pswitch_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->isNeedCache:Z

    .line 180
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->reLoad()V

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 198
    const-string v0, "HistoryWholeFragment"

    const-string v1, "onStart------"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onStart()V

    .line 200
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 204
    const-string v0, "HistoryWholeFragment"

    const-string v1, "onStop------"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onStop()V

    .line 207
    return-void
.end method

.method public reLoad()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 188
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mPlayedVideosList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 189
    const-string v0, "HistoryWholeFragment"

    const-string v1, "testchanged-1"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryAdapter;->notifyDataSetChanged()V

    .line 191
    iput v2, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mPageNo:I

    .line 192
    iput v2, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->hintCount:I

    .line 193
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->initData()V

    .line 194
    return-void
.end method

.method public setEditable(Z)V
    .locals 1
    .param p1, "editable"    # Z

    .prologue
    .line 409
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0, p1}, Lcom/tudou/adapter/HistoryAdapter;->setEditable(Z)V

    .line 412
    :cond_0
    return-void
.end method

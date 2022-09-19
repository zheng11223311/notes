.class public Lcom/tudou/ui/fragment/HistoryEpisodeFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "HistoryEpisodeFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HistoryEpisodeFragment"

.field public static mCurrentFragment:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;


# instance fields
.field private hintCount:I

.field private isLoading:Z

.field private mContentView:Landroid/view/View;

.field public mEpisodeAdapter:Lcom/tudou/adapter/HistoryAdapter;

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

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 57
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->isLoading:Z

    .line 59
    iput v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->hintCount:I

    .line 60
    iput v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mPageNo:I

    .line 61
    const/16 v0, 0xa

    iput v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mPageSize:I

    .line 62
    iput v1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->totalCount:I

    .line 64
    new-instance v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$1;-><init>(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mHandler:Landroid/os/Handler;

    .line 383
    new-instance v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$4;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$4;-><init>(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 431
    new-instance v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$5;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$5;-><init>(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mTempList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryEpisodeFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mTempList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mPlayedVideosList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    .prologue
    .line 42
    iget v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mPageNo:I

    return v0
.end method

.method static synthetic access$1002(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryEpisodeFragment;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mPageNo:I

    return p1
.end method

.method static synthetic access$1010(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    .prologue
    .line 42
    iget v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mPageNo:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mPageNo:I

    return v0
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    .prologue
    .line 42
    iget v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->totalCount:I

    return v0
.end method

.method static synthetic access$1102(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryEpisodeFragment;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->totalCount:I

    return p1
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryEpisodeFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->loadFromServer(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mTempLocalList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    .prologue
    .line 42
    iget v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mPageSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryEpisodeFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->loadAllFromServer(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->loadAllFromLocal()V

    return-void
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mPlayHistoryNone:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mPlayHistoryNone_tips:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->isLoading:Z

    return v0
.end method

.method static synthetic access$902(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/HistoryEpisodeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->isLoading:Z

    return p1
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mContentView:Landroid/view/View;

    const v1, 0x7f0c0712

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mPlayHistoryNone:Landroid/widget/ImageView;

    .line 234
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mContentView:Landroid/view/View;

    const v1, 0x7f0c0713

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mPlayHistoryNone_tips:Landroid/widget/TextView;

    .line 236
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mContentView:Landroid/view/View;

    const v1, 0x7f0c0710

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mListView:Landroid/widget/ListView;

    .line 237
    new-instance v0, Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mPlayedVideosList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/tudou/adapter/HistoryAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mEpisodeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    .line 239
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mEpisodeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 240
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 243
    return-void
.end method

.method private loadAllFromLocal()V
    .locals 3

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 278
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getLocalPlayHistory()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/vo/HistoryVideo;->parseLocalPlayHistory(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 281
    .local v0, "localData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private loadAllFromServer(II)V
    .locals 4
    .param p1, "pageNo"    # I
    .param p2, "pageSize"    # I

    .prologue
    const/4 v3, 0x1

    .line 349
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 351
    new-instance v0, Lcom/youku/network/HttpIntent;

    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Lcom/youku/http/TudouURLContainer;->getPlayHistoryUrl(III)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 354
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 356
    .local v1, "mHttpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v2, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$3;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$3;-><init>(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 381
    return-void
.end method

.method private loadFromLocal()V
    .locals 5

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 258
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getLocalPlayHistory()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/vo/HistoryVideo;->parseLocalPlayHistory(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 261
    .local v1, "localData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideo;>;"
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mTempList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 262
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mTempList:Ljava/util/ArrayList;

    .line 267
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/HistoryVideo;

    .line 268
    .local v2, "tempVideo":Lcom/youku/vo/HistoryVideo;
    iget v3, v2, Lcom/youku/vo/HistoryVideo;->aid:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 269
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 264
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "tempVideo":Lcom/youku/vo/HistoryVideo;
    :cond_1
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 273
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x7d0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 274
    return-void
.end method

.method private loadFromServer(II)V
    .locals 11
    .param p1, "pageNo"    # I
    .param p2, "pageSize"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 289
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 290
    invoke-static {p1, p2, v9}, Lcom/youku/http/TudouURLContainer;->getPlayHistoryUrl(III)Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "historyURL":Ljava/lang/String;
    invoke-static {v3, v9}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "formatUri":Ljava/lang/String;
    if-ne p1, v9, :cond_0

    .line 296
    invoke-static {v2}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 298
    :try_start_0
    invoke-static {v2}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "cacheDataStr":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 300
    new-instance v7, Lcom/youku/vo/HistoryVideoResult;

    invoke-direct {v7}, Lcom/youku/vo/HistoryVideoResult;-><init>()V

    invoke-static {v0, v7}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/HistoryVideoResult;

    .line 302
    .local v4, "historyVedio":Lcom/youku/vo/HistoryVideoResult;
    iget-object v7, v4, Lcom/youku/vo/HistoryVideoResult;->multiPageResult:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;

    iget-object v7, v7, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;->page:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult$HVPage;

    iget v7, v7, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult$HVPage;->totalCount:I

    iput v7, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->totalCount:I

    .line 303
    iget-object v7, v4, Lcom/youku/vo/HistoryVideoResult;->multiPageResult:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;

    iget-object v7, v7, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;->results:Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mTempLocalList:Ljava/util/ArrayList;

    .line 304
    iget-object v7, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x7d7

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v0    # "cacheDataStr":Ljava/lang/String;
    .end local v4    # "historyVedio":Lcom/youku/vo/HistoryVideoResult;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 312
    sput-boolean v9, Lcom/tudou/ui/fragment/HistoryManagerFragment;->isNeedCache:Z

    .line 313
    new-instance v5, Lcom/youku/network/HttpIntent;

    invoke-direct {v5, v3, v9}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 314
    .local v5, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v7, Lcom/youku/network/IHttpRequest;

    invoke-static {v7, v9}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/network/IHttpRequest;

    .line 316
    .local v6, "mHttpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v7, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$2;

    invoke-direct {v7, p0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$2;-><init>(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)V

    invoke-interface {v6, v5, v7}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 345
    .end local v5    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v6    # "mHttpRequest":Lcom/youku/network/IHttpRequest;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 346
    return-void

    .line 305
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 338
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget v7, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->totalCount:I

    if-nez v7, :cond_1

    .line 339
    invoke-static {}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->unHideTabLayout()V

    .line 340
    iget-object v7, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mPlayHistoryNone:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    iget-object v7, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mPlayHistoryNone_tips:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    const v7, 0x7f0d02c3

    invoke-static {v7}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_1
.end method


# virtual methods
.method public getEditable()Z
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mEpisodeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mEpisodeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryAdapter;->getEditable()Z

    move-result v0

    .line 489
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 247
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mPageNo:I

    iget v1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mPageSize:I

    invoke-direct {p0, v0, v1}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->loadFromServer(II)V

    .line 253
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->loadFromLocal()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 168
    const-string v0, "HistoryEpisodeFragment"

    const-string v1, "onCreate------"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 171
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 219
    const-string v0, "HistoryEpisodeFragment"

    const-string v1, "onCreateView------"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const v0, 0x7f03016e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mContentView:Landroid/view/View;

    .line 222
    sput-object p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mPlayedVideosList:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mTempList:Ljava/util/ArrayList;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mTempLocalList:Ljava/util/ArrayList;

    .line 226
    invoke-direct {p0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->initView()V

    .line 228
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 175
    const-string v0, "HistoryEpisodeFragment"

    const-string v1, "onPause------"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPause()V

    .line 177
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 181
    const-string v0, "HistoryEpisodeFragment"

    const-string v1, "onResume------"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 191
    :goto_0
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 192
    return-void

    .line 186
    :pswitch_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->isNeedCache:Z

    .line 187
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->reLoad()V

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 205
    const-string v0, "HistoryEpisodeFragment"

    const-string v1, "onStart------"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onStart()V

    .line 207
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 211
    const-string v0, "HistoryEpisodeFragment"

    const-string v1, "onStop------"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mPlayedVideosList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 213
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onStop()V

    .line 214
    return-void
.end method

.method public reLoad()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 195
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mPlayedVideosList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 196
    const-string v0, "HistoryEpisodeFragment"

    const-string v1, "testchanged2"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mEpisodeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryAdapter;->notifyDataSetChanged()V

    .line 198
    iput v2, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mPageNo:I

    .line 199
    iput v2, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->hintCount:I

    .line 200
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->initData()V

    .line 201
    return-void
.end method

.method public setEditable(Z)V
    .locals 1
    .param p1, "editable"    # Z

    .prologue
    .line 480
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mEpisodeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mEpisodeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0, p1}, Lcom/tudou/adapter/HistoryAdapter;->setEditable(Z)V

    .line 483
    :cond_0
    return-void
.end method

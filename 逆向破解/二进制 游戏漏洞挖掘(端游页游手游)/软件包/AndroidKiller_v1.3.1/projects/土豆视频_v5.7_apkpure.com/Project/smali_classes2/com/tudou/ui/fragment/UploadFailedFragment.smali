.class public Lcom/tudou/ui/fragment/UploadFailedFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "UploadFailedFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UploadedFragment"

.field public static final UPLOADED_TIME:Ljava/lang/String; = "uploaded_time"

.field public static mIsGoDetail:Z

.field public static mNeedToRefresh:Z


# instance fields
.field private isAdd:Z

.field private load_complete:Landroid/view/View;

.field private mCheckAdapter:Lcom/tudou/adapter/CheckedAdapter;

.field private mCheckedInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tudou/upload/UploadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckingListHandler:Landroid/os/Handler;

.field private mCheckingPage:Lcom/youku/vo/Page;

.field private mHintView:Lcom/youku/widget/HintView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsGetingFistPage:Z

.field private mIsPulling:Z

.field private mUploadedList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mUploadedView:Landroid/view/View;

.field private refreshListener22:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;
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
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mIsGoDetail:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 60
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mIsPulling:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckedInfo:Ljava/util/List;

    .line 65
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mIsGetingFistPage:Z

    .line 227
    new-instance v0, Lcom/tudou/ui/fragment/UploadFailedFragment$5;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/UploadFailedFragment$5;-><init>(Lcom/tudou/ui/fragment/UploadFailedFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckingListHandler:Landroid/os/Handler;

    .line 299
    new-instance v0, Lcom/tudou/ui/fragment/UploadFailedFragment$6;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/UploadFailedFragment$6;-><init>(Lcom/tudou/ui/fragment/UploadFailedFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->refreshListener22:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 381
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->isAdd:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/UploadFailedFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFailedFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/UploadFailedFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFailedFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mUploadedList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/UploadFailedFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFailedFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFailedFragment;->getFistChecking()V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/UploadFailedFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFailedFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$302(Lcom/tudou/ui/fragment/UploadFailedFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFailedFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mIsGetingFistPage:Z

    return p1
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/UploadFailedFragment;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFailedFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/UploadFailedFragment;->parseCheckingList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/UploadFailedFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFailedFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFailedFragment;->ajustData()V

    return-void
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/UploadFailedFragment;)Lcom/youku/vo/Page;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFailedFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckingPage:Lcom/youku/vo/Page;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/UploadFailedFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFailedFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/UploadFailedFragment;->setImageShow(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/UploadFailedFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFailedFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFailedFragment;->pullToAddData()V

    return-void
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/UploadFailedFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/UploadFailedFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckingListHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addFootView()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckAdapter:Lcom/tudou/adapter/CheckedAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/CheckedAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckingPage:Lcom/youku/vo/Page;

    invoke-virtual {v1}, Lcom/youku/vo/Page;->getTotalCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 328
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/UploadFailedFragment;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 330
    :cond_0
    return-void
.end method

.method private ajustData()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckAdapter:Lcom/tudou/adapter/CheckedAdapter;

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lcom/tudou/adapter/CheckedAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckedInfo:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/tudou/adapter/CheckedAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckAdapter:Lcom/tudou/adapter/CheckedAdapter;

    .line 373
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFailedFragment;->addFootView()V

    .line 374
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mUploadedList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckAdapter:Lcom/tudou/adapter/CheckedAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 379
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFailedFragment;->addFootView()V

    .line 377
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckAdapter:Lcom/tudou/adapter/CheckedAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckedInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/CheckedAdapter;->setData(Ljava/util/List;)V

    goto :goto_0
.end method

.method private getCheckingList()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckingPage:Lcom/youku/vo/Page;

    invoke-static {v0}, Lcom/youku/http/TudouURLContainer;->getCheckingUrl(Lcom/youku/vo/Page;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckingListHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/tudou/android/TudouApi;->connectHttpRequest(Ljava/lang/String;Landroid/os/Handler;)V

    .line 225
    return-void
.end method

.method private getFistChecking()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 213
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mIsGetingFistPage:Z

    .line 214
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/UploadFailedFragment;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 215
    new-instance v0, Lcom/youku/vo/Page;

    invoke-direct {v0}, Lcom/youku/vo/Page;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckingPage:Lcom/youku/vo/Page;

    .line 217
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckingPage:Lcom/youku/vo/Page;

    invoke-virtual {v0, v1}, Lcom/youku/vo/Page;->setPageNo(I)V

    .line 218
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckingPage:Lcom/youku/vo/Page;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/youku/vo/Page;->setPageSize(I)V

    .line 219
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFailedFragment;->getCheckingList()V

    .line 220
    return-void
.end method

.method private initTitle()V
    .locals 5

    .prologue
    .line 114
    iget-object v3, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mUploadedView:Landroid/view/View;

    const v4, 0x7f0c0094

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, "statusBarView":Landroid/view/View;
    invoke-static {v1}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 117
    iget-object v3, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mUploadedView:Landroid/view/View;

    const v4, 0x7f0c06b1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 118
    .local v2, "txt_title":Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    const-string v3, "\u53d1\u5e03\u5931\u8d25"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v3, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mUploadedView:Landroid/view/View;

    const v4, 0x7f0c024f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 122
    .local v0, "img_back":Landroid/widget/ImageView;
    new-instance v3, Lcom/tudou/ui/fragment/UploadFailedFragment$1;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/UploadFailedFragment$1;-><init>(Lcom/tudou/ui/fragment/UploadFailedFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/UploadFailedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030214

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->load_complete:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mUploadedView:Landroid/view/View;

    const v1, 0x7f0c0d87

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mUploadedList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mUploadedView:Landroid/view/View;

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/HintView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mHintView:Lcom/youku/widget/HintView;

    .line 95
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mUploadedList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->refreshListener22:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 98
    return-void
.end method

.method private parseCheckingList(Ljava/lang/String;)Z
    .locals 9
    .param p1, "sObj"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 272
    invoke-static {p1}, Lcom/youku/util/JsonUtils;->loadJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 273
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v7, "msg"

    invoke-static {v3, v7}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "msg":Ljava/lang/String;
    const-string v7, "success"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 275
    const/4 v6, 0x0

    .line 290
    :cond_0
    return v6

    .line 277
    :cond_1
    const-string v7, "data"

    invoke-static {v3, v7}, Lcom/youku/util/JsonUtils;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 278
    .local v1, "data":Lorg/json/JSONObject;
    const-string v7, "count"

    invoke-static {v1, v7}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 279
    .local v0, "count":I
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/youku/vo/UserBean;->setCheckedCount(I)V

    .line 280
    iget-object v7, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckingPage:Lcom/youku/vo/Page;

    invoke-virtual {v7, v0}, Lcom/youku/vo/Page;->setTotalCount(I)V

    .line 281
    const-string v7, "result"

    invoke-static {v1, v7}, Lcom/youku/util/JsonUtils;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 282
    .local v5, "result":Lorg/json/JSONArray;
    iget-object v7, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckingPage:Lcom/youku/vo/Page;

    invoke-virtual {v7}, Lcom/youku/vo/Page;->getPageNo()I

    move-result v7

    if-eq v7, v6, :cond_2

    iget-object v7, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckedInfo:Ljava/util/List;

    if-nez v7, :cond_3

    .line 283
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckedInfo:Ljava/util/List;

    .line 285
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 286
    iget-object v7, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckedInfo:Ljava/util/List;

    invoke-static {v5, v2}, Lcom/youku/util/JsonUtils;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/tudou/upload/UploadInfo;->getCheckingItem(Lorg/json/JSONObject;)Lcom/tudou/upload/UploadInfo;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private pullToAdd1()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckingPage:Lcom/youku/vo/Page;

    invoke-virtual {v0}, Lcom/youku/vo/Page;->enPageNo()V

    .line 367
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFailedFragment;->getCheckingList()V

    .line 368
    return-void
.end method

.method private pullToAddData()V
    .locals 2

    .prologue
    .line 334
    const-string v0, "\u53d1\u5e03\u5931\u8d25\u5217\u8868\u52a0\u8f7d\u66f4\u591a"

    const-string v1, "\u81ea\u52a8\u52a0\u8f7d\u66f4\u591a"

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/CheckedActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mUploadedList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 348
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 362
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mIsGetingFistPage:Z

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mUploadedList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    goto :goto_0

    .line 355
    :cond_1
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mIsPulling:Z

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mUploadedList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    goto :goto_0

    .line 360
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mIsPulling:Z

    .line 361
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFailedFragment;->pullToAdd1()V

    goto :goto_0
.end method

.method private setImageShow(Z)V
    .locals 3
    .param p1, "loadFailed"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckedInfo:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mCheckedInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mUploadedList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v2}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 208
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mUploadedList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 179
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    if-eqz p1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mHintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 187
    :goto_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mHintView:Lcom/youku/widget/HintView;

    new-instance v1, Lcom/tudou/ui/fragment/UploadFailedFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/tudou/ui/fragment/UploadFailedFragment$3;-><init>(Lcom/tudou/ui/fragment/UploadFailedFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mHintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->UPLOAD_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    goto :goto_1

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mHintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->UPLOAD_LOGIN_HINT:Lcom/youku/widget/HintView$Type;

    new-instance v2, Lcom/tudou/ui/fragment/UploadFailedFragment$4;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/UploadFailedFragment$4;-><init>(Lcom/tudou/ui/fragment/UploadFailedFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 3
    .param p1, "aMode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 384
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mUploadedList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 385
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne p1, v1, :cond_2

    .line 387
    :try_start_0
    iget-boolean v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->isAdd:Z

    if-nez v1, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mUploadedList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->load_complete:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z

    .line 391
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->isAdd:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 396
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne p1, v1, :cond_0

    .line 397
    iget-boolean v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->isAdd:Z

    if-nez v1, :cond_0

    .line 402
    :try_start_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mUploadedList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->load_complete:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 403
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->isAdd:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 404
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/UploadFailedFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 73
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 74
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03031f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mUploadedView:Landroid/view/View;

    .line 75
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFailedFragment;->initView()V

    .line 76
    invoke-direct {p0}, Lcom/tudou/ui/fragment/UploadFailedFragment;->initTitle()V

    .line 77
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mUploadedView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 83
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPause()V

    .line 165
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    const-string v0, "TAG_TUDOU"

    const-string v1, "UploadedFragment=====onResume"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sput-boolean v2, Lcom/tudou/ui/fragment/UploadFailedFragment;->mIsGoDetail:Z

    .line 142
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mUploadedList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, v2}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mHintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->UPLOAD_LOGIN_HINT:Lcom/youku/widget/HintView$Type;

    new-instance v2, Lcom/tudou/ui/fragment/UploadFailedFragment$2;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/UploadFailedFragment$2;-><init>(Lcom/tudou/ui/fragment/UploadFailedFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;Landroid/view/View$OnClickListener;)V

    .line 158
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 159
    return-void

    .line 153
    :cond_1
    sget-boolean v0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mNeedToRefresh:Z

    if-eqz v0, :cond_0

    .line 154
    sput-boolean v2, Lcom/tudou/ui/fragment/UploadFailedFragment;->mNeedToRefresh:Z

    .line 155
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment;->mUploadedList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto :goto_0
.end method

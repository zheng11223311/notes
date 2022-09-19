.class public Lcom/tudou/ui/fragment/SearchTudouHotFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "SearchTudouHotFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak",
        "NewApi"
    }
.end annotation


# static fields
.field public static final GET_HOT_HIS_WORD:I = 0x71

.field private static final GET_HOT_SEARCH_AGGIN_SUCCESS:I = 0x6f

.field private static tag:Ljava/lang/String;


# instance fields
.field private hadapter:Lcom/tudou/adapter/HotHistoryAdapter;

.field public handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field public hotListView:Landroid/widget/ListView;

.field public hotRoot:Landroid/widget/RelativeLayout;

.field onClearListener:Lcom/tudou/adapter/HotHistoryAdapter$OnClearListener;

.field onHistoryClick:Lcom/tudou/adapter/HotHistoryAdapter$OnHistoryClickListener;

.field onPodClick:Lcom/tudou/adapter/HotHistoryAdapter$OnPodCastClickListener;

.field onTabSelect:Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabSelect;

.field onVideoClick:Lcom/tudou/adapter/HotHistoryAdapter$OnVideoClickListener;

.field refresh:Landroid/view/View$OnClickListener;

.field private searchHotNoResult:Lcom/youku/widget/HintView;

.field private videoCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "SearchTudouHotFragment"

    sput-object v0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->videoCount:I

    .line 60
    new-instance v0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;-><init>(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->handler:Landroid/os/Handler;

    .line 174
    new-instance v0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$2;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment$2;-><init>(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->onVideoClick:Lcom/tudou/adapter/HotHistoryAdapter$OnVideoClickListener;

    .line 206
    new-instance v0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment$3;-><init>(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->onPodClick:Lcom/tudou/adapter/HotHistoryAdapter$OnPodCastClickListener;

    .line 238
    new-instance v0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$4;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment$4;-><init>(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->onHistoryClick:Lcom/tudou/adapter/HotHistoryAdapter$OnHistoryClickListener;

    .line 258
    new-instance v0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$5;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment$5;-><init>(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->onClearListener:Lcom/tudou/adapter/HotHistoryAdapter$OnClearListener;

    .line 318
    new-instance v0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$6;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment$6;-><init>(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->onTabSelect:Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabSelect;

    .line 378
    new-instance v0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$7;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment$7;-><init>(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->refresh:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/SearchTudouHotFragment;I)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouHotFragment;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getHistoryList(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    .prologue
    .line 42
    iget v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->videoCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tudou/ui/fragment/SearchTudouHotFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouHotFragment;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->videoCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/SearchTudouHotFragment;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouHotFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->goPlayHistory(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->showListView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getHotWords()V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->setEmptyView()V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)Lcom/tudou/adapter/HotHistoryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->hadapter:Lcom/tudou/adapter/HotHistoryAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->searchHotNoResult:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->setLoadedFailed()V

    return-void
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getHotHisWordAgain()V

    return-void
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/SearchTudouHotFragment;ZLjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouHotFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->trackEvent(ZLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method private getHistoryList(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "scrollX"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchOfHistory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v0, "hislist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchOfHistory;>;"
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getAllSearchHistory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getSearchHistory()Ljava/util/ArrayList;

    move-result-object v0

    .line 315
    :cond_0
    return-object v0
.end method

.method private getHotHisWordAgain()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->handler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 131
    return-void
.end method

.method private getHotWords()V
    .locals 3

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 299
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 301
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->handler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 302
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchManager;->getInstance(Landroid/app/Activity;)Lcom/tudou/ui/fragment/SearchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tudou/ui/fragment/SearchManager;->getRecommend(Landroid/os/Handler;Z)V

    .line 305
    return-void
.end method

.method private goPlayHistory(ILjava/lang/String;I)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    const/4 v1, 0x2

    .line 275
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 276
    .local v6, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 277
    const-string v0, "refercode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "search|hisVideosearch|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_0
    :goto_0
    invoke-static {}, Lcom/tudou/ui/fragment/SearchManager;->getAaid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/ui/fragment/SearchManager;->aaid:Ljava/lang/String;

    .line 284
    const-string v0, "\u641c\u7d22\u9875\u641c\u7d22\u5386\u53f2\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u641c\u7d22\u9875-\u641c\u7d22\u5386\u53f2\u5217\u8868"

    invoke-static {v0, v2, v3, v6}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 287
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SearchTudouFragment;

    const-string v2, "\u5386\u53f2\u8bcd"

    iput-object v2, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->keyType:Ljava/lang/String;

    .line 289
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SearchTudouFragment;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/tudou/ui/fragment/SearchTudouFragment;

    const/4 v5, 0x0

    move-object v2, p2

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tudou/ui/fragment/SearchTudouFragment;->sManageFragment(ILjava/lang/String;Lcom/tudou/ui/fragment/SearchTudouFragment;IZ)V

    .line 292
    :cond_1
    return-void

    .line 279
    :cond_2
    if-ne p1, v1, :cond_0

    .line 280
    const-string v0, "refercode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "search|hisChannelsearch|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 158
    const v0, 0x7f0c05ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/HintView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->searchHotNoResult:Lcom/youku/widget/HintView;

    .line 160
    const v0, 0x7f0c05e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->hotRoot:Landroid/widget/RelativeLayout;

    .line 161
    const v0, 0x7f0c05e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->hotListView:Landroid/widget/ListView;

    .line 162
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->hotListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 163
    new-instance v0, Lcom/tudou/adapter/HotHistoryAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tudou/adapter/HotHistoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->hadapter:Lcom/tudou/adapter/HotHistoryAdapter;

    .line 164
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->hadapter:Lcom/tudou/adapter/HotHistoryAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->onVideoClick:Lcom/tudou/adapter/HotHistoryAdapter$OnVideoClickListener;

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/HotHistoryAdapter;->setOnVideoClickListener(Lcom/tudou/adapter/HotHistoryAdapter$OnVideoClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->hadapter:Lcom/tudou/adapter/HotHistoryAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->onPodClick:Lcom/tudou/adapter/HotHistoryAdapter$OnPodCastClickListener;

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/HotHistoryAdapter;->setOnPodCastClickListener(Lcom/tudou/adapter/HotHistoryAdapter$OnPodCastClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->hadapter:Lcom/tudou/adapter/HotHistoryAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->onHistoryClick:Lcom/tudou/adapter/HotHistoryAdapter$OnHistoryClickListener;

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/HotHistoryAdapter;->setOnHistoryClickListener(Lcom/tudou/adapter/HotHistoryAdapter$OnHistoryClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->hadapter:Lcom/tudou/adapter/HotHistoryAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->onClearListener:Lcom/tudou/adapter/HotHistoryAdapter$OnClearListener;

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/HotHistoryAdapter;->setOnClearListener(Lcom/tudou/adapter/HotHistoryAdapter$OnClearListener;)V

    .line 168
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->hotListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->hadapter:Lcom/tudou/adapter/HotHistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    return-void
.end method

.method private setEmptyView()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->hotListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->searchHotNoResult:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 370
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->searchHotNoResult:Lcom/youku/widget/HintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    return-void
.end method

.method private setLoadedFailed()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->hotListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->searchHotNoResult:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 364
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->searchHotNoResult:Lcom/youku/widget/HintView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->refresh:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    return-void
.end method

.method private showListView()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->hotListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->searchHotNoResult:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 376
    return-void
.end method

.method private trackEvent(ZLjava/lang/String;I)V
    .locals 4
    .param p1, "isVideo"    # Z
    .param p2, "temp"    # Ljava/lang/String;
    .param p3, "pos"    # I

    .prologue
    .line 330
    if-eqz p1, :cond_0

    .line 331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 332
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "refercode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "search|hotVideosearch|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v1, "\u641c\u7d22\u9875\u89c6\u9891\u70ed\u8bcd\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u641c\u7d22\u9875-\u89c6\u9891\u70ed\u8bcd"

    invoke-static {v1, v2, v3, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 343
    :goto_0
    return-void

    .line 337
    .end local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 338
    .restart local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "refercode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "search|hotChannelsearch|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v1, "\u641c\u7d22\u9875\u9891\u9053\u70ed\u8bcd\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u641c\u7d22\u9875-\u9891\u9053\u70ed\u8bcd"

    invoke-static {v1, v2, v3, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    const v1, 0x7f030141

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 138
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->onTabSelect:Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabSelect;

    iput-object v2, v1, Lcom/tudou/ui/fragment/SearchTudouFragment;->onTabSelect:Lcom/tudou/ui/fragment/SearchTudouFragment$OnTabSelect;

    .line 139
    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->initView(Landroid/view/View;)V

    .line 140
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getHotWords()V

    .line 141
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 147
    sget-boolean v0, Lcom/youku/widget/SearchHeadLayout;->IMShow:Z

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchHeadLayout;->showSoftInput(Landroid/app/Activity;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchHeadLayout;->hideSoftInput(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 347
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "state"    # I

    .prologue
    .line 351
    packed-switch p2, :pswitch_data_0

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 353
    :pswitch_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/youku/widget/SearchHeadLayout;->IMShow:Z

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchHeadLayout;->hideSoftInput(Landroid/app/Activity;)V

    goto :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

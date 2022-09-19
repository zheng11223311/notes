.class public Lcom/tudou/ui/fragment/MessageCheckedFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "MessageCheckedFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public adapter:Lcom/tudou/adapter/MessageAdapter;

.field private hintView:Lcom/youku/widget/HintView;

.field public listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private load_complete:Landroid/view/View;

.field private mCurrentPage:I

.field private mMyHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field public msgManager:Lcom/youku/util/MessageManager;

.field onFinish:Lcom/youku/util/IMessageFinish;

.field refresh:Landroid/view/View$OnClickListener;

.field public refreshList:Z

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
    .line 39
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->mCurrentPage:I

    .line 87
    new-instance v0, Lcom/tudou/ui/fragment/MessageCheckedFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MessageCheckedFragment$1;-><init>(Lcom/tudou/ui/fragment/MessageCheckedFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->refreshList:Z

    .line 141
    new-instance v0, Lcom/tudou/ui/fragment/MessageCheckedFragment$2;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MessageCheckedFragment$2;-><init>(Lcom/tudou/ui/fragment/MessageCheckedFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->mMyHandler:Landroid/os/Handler;

    .line 178
    new-instance v0, Lcom/tudou/ui/fragment/MessageCheckedFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MessageCheckedFragment$3;-><init>(Lcom/tudou/ui/fragment/MessageCheckedFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->onFinish:Lcom/youku/util/IMessageFinish;

    .line 264
    new-instance v0, Lcom/tudou/ui/fragment/MessageCheckedFragment$6;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MessageCheckedFragment$6;-><init>(Lcom/tudou/ui/fragment/MessageCheckedFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->refresh:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/MessageCheckedFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageCheckedFragment;

    .prologue
    .line 39
    iget v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$002(Lcom/tudou/ui/fragment/MessageCheckedFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageCheckedFragment;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->mCurrentPage:I

    return p1
.end method

.method static synthetic access$010(Lcom/tudou/ui/fragment/MessageCheckedFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageCheckedFragment;

    .prologue
    .line 39
    iget v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->mCurrentPage:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$012(Lcom/tudou/ui/fragment/MessageCheckedFragment;I)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageCheckedFragment;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iget v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->mCurrentPage:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/MessageCheckedFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageCheckedFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->removeFoot()V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/MessageCheckedFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageCheckedFragment;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->initData(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/MessageCheckedFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageCheckedFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->setEmptyView()V

    return-void
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/MessageCheckedFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageCheckedFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->showListView()V

    return-void
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/MessageCheckedFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageCheckedFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->addFoot(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/MessageCheckedFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageCheckedFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->setLoadedFailed()V

    return-void
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/MessageCheckedFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageCheckedFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->mMyHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/MessageCheckedFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageCheckedFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->hintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method private addFoot(Z)V
    .locals 2
    .param p1, "isadd"    # Z

    .prologue
    .line 204
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->load_complete:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 205
    if-eqz p1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->load_complete:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 209
    :cond_1
    return-void
.end method

.method private buildView()V
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030214

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->load_complete:Landroid/view/View;

    .line 76
    new-instance v0, Lcom/tudou/adapter/MessageAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tudou/adapter/MessageAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    .line 77
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0527

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 79
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 80
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tudou/adapter/MessageAdapter;->setImagework(Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    .line 81
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/HintView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->hintView:Lcom/youku/widget/HintView;

    .line 85
    return-void
.end method

.method private initData(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->onFinish:Lcom/youku/util/IMessageFinish;

    invoke-virtual {v0, p1, v1}, Lcom/youku/util/MessageManager;->getCheckedMessage(ILcom/youku/util/IMessageFinish;)V

    .line 139
    return-void
.end method

.method private removeFoot()V
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->load_complete:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->load_complete:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z

    .line 196
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setEmptyView()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->hintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->MESSAGE_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 250
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->hintView:Lcom/youku/widget/HintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    return-void
.end method

.method private setLoadedFailed()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->hintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 256
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->hintView:Lcom/youku/widget/HintView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->refresh:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    return-void
.end method

.method private setNoLoginView()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->hintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->MESSAGE_LOGIN_HINT:Lcom/youku/widget/HintView$Type;

    new-instance v2, Lcom/tudou/ui/fragment/MessageCheckedFragment$5;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/MessageCheckedFragment$5;-><init>(Lcom/tudou/ui/fragment/MessageCheckedFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->hintView:Lcom/youku/widget/HintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    return-void
.end method

.method private showListView()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->hintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 262
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const-string v0, "MessageFragmentViewPagerAdapter"

    const-string v1, "checked onCreate"

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    const v0, 0x7f030126

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->mView:Landroid/view/View;

    .line 61
    invoke-static {}, Lcom/youku/util/MessageManager;->getInstance()Lcom/youku/util/MessageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->msgManager:Lcom/youku/util/MessageManager;

    .line 62
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->buildView()V

    .line 63
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->mView:Landroid/view/View;

    return-object v0

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->setNoLoginView()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 214
    const-string v2, "\u6d88\u606f\u4e2d\u5fc3\u901a\u77e5\u5185\u5bb9\u70b9\u51fb"

    const-string v3, "\u901a\u77e5\u5185\u5bb9\u70b9\u51fb"

    const-string v4, "MyChannle|Message|ReviewContent"

    invoke-static {v2, v3, v4}, Lcom/youku/util/MessageManager;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v2, v2, Lcom/youku/util/MessageManager;->checks:Ljava/util/ArrayList;

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/MessageChecked;

    .line 217
    .local v0, "check":Lcom/youku/vo/MessageChecked;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/youku/vo/MessageChecked;->msgId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 218
    iput-boolean v5, v0, Lcom/youku/vo/MessageChecked;->isReaded:Z

    .line 219
    new-instance v1, Lcom/youku/widget/MessageCheckDialog;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/tudou/ui/activity/MessageActivity;

    invoke-direct {v1, v2, v0}, Lcom/youku/widget/MessageCheckDialog;-><init>(Lcom/tudou/ui/activity/MessageActivity;Lcom/youku/vo/MessageChecked;)V

    .line 221
    .local v1, "dialog":Lcom/youku/widget/MessageCheckDialog;
    new-instance v2, Lcom/tudou/ui/fragment/MessageCheckedFragment$4;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/MessageCheckedFragment$4;-><init>(Lcom/tudou/ui/fragment/MessageCheckedFragment;)V

    invoke-virtual {v1, v2}, Lcom/youku/widget/MessageCheckDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 229
    invoke-virtual {v1}, Lcom/youku/widget/MessageCheckDialog;->show()V

    .line 231
    return-void
.end method

.method public onPageSelected()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPageSelected()V

    .line 128
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MessageCheckedFragment;->setNoLoginView()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 117
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/MessageAdapter;->notifyDataSetChanged()V

    .line 119
    :cond_0
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->refreshList:Z

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->refreshList:Z

    .line 123
    :cond_1
    return-void
.end method

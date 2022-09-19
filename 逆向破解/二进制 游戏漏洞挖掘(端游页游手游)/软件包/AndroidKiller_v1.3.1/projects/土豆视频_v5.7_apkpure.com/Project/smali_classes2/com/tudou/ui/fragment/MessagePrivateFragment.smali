.class public Lcom/tudou/ui/fragment/MessagePrivateFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "MessagePrivateFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static refreshList:Z


# instance fields
.field private adapter:Lcom/tudou/adapter/MessageAdapter;

.field private currpage:I

.field private editMsg:Landroid/widget/TextView;

.field private hintView:Lcom/youku/widget/HintView;

.field private isEdit:Z

.field public listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private load_complete:Landroid/view/View;

.field private mMyHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field private msgManager:Lcom/youku/util/MessageManager;

.field onFinish:Lcom/youku/util/IMessageFinish;

.field refresh:Landroid/view/View$OnClickListener;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->refreshList:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->currpage:I

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->isEdit:Z

    .line 50
    new-instance v0, Lcom/tudou/ui/fragment/MessagePrivateFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MessagePrivateFragment$1;-><init>(Lcom/tudou/ui/fragment/MessagePrivateFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->mMyHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Lcom/tudou/ui/fragment/MessagePrivateFragment$2;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MessagePrivateFragment$2;-><init>(Lcom/tudou/ui/fragment/MessagePrivateFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 171
    new-instance v0, Lcom/tudou/ui/fragment/MessagePrivateFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MessagePrivateFragment$3;-><init>(Lcom/tudou/ui/fragment/MessagePrivateFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->onFinish:Lcom/youku/util/IMessageFinish;

    .line 278
    new-instance v0, Lcom/tudou/ui/fragment/MessagePrivateFragment$5;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MessagePrivateFragment$5;-><init>(Lcom/tudou/ui/fragment/MessagePrivateFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->refresh:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/MessagePrivateFragment;)Lcom/tudou/adapter/MessageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessagePrivateFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/MessagePrivateFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessagePrivateFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->setEmptyView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/MessagePrivateFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessagePrivateFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->hintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/MessagePrivateFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessagePrivateFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->showListView()V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/MessagePrivateFragment;)Lcom/youku/util/MessageManager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessagePrivateFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->msgManager:Lcom/youku/util/MessageManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/MessagePrivateFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessagePrivateFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->addFoot(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/MessagePrivateFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessagePrivateFragment;

    .prologue
    .line 36
    iget v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->currpage:I

    return v0
.end method

.method static synthetic access$502(Lcom/tudou/ui/fragment/MessagePrivateFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessagePrivateFragment;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->currpage:I

    return p1
.end method

.method static synthetic access$510(Lcom/tudou/ui/fragment/MessagePrivateFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessagePrivateFragment;

    .prologue
    .line 36
    iget v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->currpage:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->currpage:I

    return v0
.end method

.method static synthetic access$512(Lcom/tudou/ui/fragment/MessagePrivateFragment;I)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessagePrivateFragment;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iget v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->currpage:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->currpage:I

    return v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/MessagePrivateFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessagePrivateFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->setLoadedFailed()V

    return-void
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/MessagePrivateFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessagePrivateFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->removeFoot()V

    return-void
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/MessagePrivateFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessagePrivateFragment;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->initData(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/MessagePrivateFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessagePrivateFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->mMyHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addFoot(Z)V
    .locals 2
    .param p1, "isadd"    # Z

    .prologue
    .line 229
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->load_complete:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 230
    if-eqz p1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->load_complete:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 234
    :cond_1
    return-void
.end method

.method private buildView()V
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/MessageFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MessageFragment;->editMsg:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->editMsg:Landroid/widget/TextView;

    .line 116
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030214

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->load_complete:Landroid/view/View;

    .line 118
    new-instance v0, Lcom/tudou/adapter/MessageAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tudou/adapter/MessageAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    .line 119
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->mMyHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/MessageAdapter;->setHandler(Landroid/os/Handler;)V

    .line 120
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0527

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 122
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tudou/adapter/MessageAdapter;->setImagework(Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    .line 123
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 125
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/HintView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->hintView:Lcom/youku/widget/HintView;

    .line 127
    return-void
.end method

.method private initData(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->onFinish:Lcom/youku/util/IMessageFinish;

    invoke-virtual {v0, p1, v1}, Lcom/youku/util/MessageManager;->getMessageList(ILcom/youku/util/IMessageFinish;)V

    .line 169
    return-void
.end method

.method private removeFoot()V
    .locals 3

    .prologue
    .line 218
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->load_complete:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->load_complete:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z

    .line 221
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setEmptyView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 252
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->editMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->isEdit:Z

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/MessageFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/MessageFragment;->setEdit(Z)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->hintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->MESSAGE_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 257
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->hintView:Lcom/youku/widget/HintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    return-void
.end method

.method private setLoadedFailed()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->hintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 263
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->hintView:Lcom/youku/widget/HintView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->refresh:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    return-void
.end method

.method private setNoLoginView()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->hintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->MESSAGE_LOGIN_HINT:Lcom/youku/widget/HintView$Type;

    new-instance v2, Lcom/tudou/ui/fragment/MessagePrivateFragment$4;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/MessagePrivateFragment$4;-><init>(Lcom/tudou/ui/fragment/MessagePrivateFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->hintView:Lcom/youku/widget/HintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    return-void
.end method

.method private showListView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/MessageFragment;

    iget v0, v0, Lcom/tudou/ui/fragment/MessageFragment;->position:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->editMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->isEdit:Z

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->editMsg:Landroid/widget/TextView;

    const-string v1, "\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->hintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 276
    :cond_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->editMsg:Landroid/widget/TextView;

    const-string v1, "\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public isEdit()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->isEdit:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const-string v0, "MessageFragmentViewPagerAdapter"

    const-string v1, "private onCreate"

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    const v0, 0x7f030126

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->mView:Landroid/view/View;

    .line 97
    invoke-static {}, Lcom/youku/util/MessageManager;->getInstance()Lcom/youku/util/MessageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->msgManager:Lcom/youku/util/MessageManager;

    .line 98
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->buildView()V

    .line 99
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->mView:Landroid/view/View;

    return-object v0
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

    .line 188
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 189
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-boolean v2, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->isEdit:Z

    if-nez v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v2, v2, Lcom/youku/util/MessageManager;->messages:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    add-int/lit8 v2, p3, -0x1

    iget-object v3, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v3, v3, Lcom/youku/util/MessageManager;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 197
    const-string v2, "\u6d88\u606f\u4e2d\u5fc3\u79c1\u4fe1\u5185\u5bb9\u70b9\u51fb"

    const-string v3, "\u79c1\u4fe1\u5185\u5bb9\u70b9\u51fb"

    const-string v4, "MyChannle|Message|PrivatelyContent"

    invoke-static {v2, v3, v4}, Lcom/youku/util/MessageManager;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v2, v2, Lcom/youku/util/MessageManager;->messages:Ljava/util/ArrayList;

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/Message;

    .line 200
    .local v1, "msg":Lcom/youku/vo/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "private"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/vo/Message;->privatemsgid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 201
    iput-boolean v5, v1, Lcom/youku/vo/Message;->isReaded:Z

    .line 202
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v2, v2, Lcom/youku/util/MessageManager;->messages:Ljava/util/ArrayList;

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/MessageDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "lastTimeMsg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPageSelected()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPageSelected()V

    .line 105
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->setNoLoginView()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 159
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/MessageAdapter;->notifyDataSetChanged()V

    .line 161
    :cond_0
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->refreshList:Z

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 163
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->refreshList:Z

    .line 165
    :cond_1
    return-void
.end method

.method public setEdit(Z)V
    .locals 1
    .param p1, "isEdit"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->isEdit:Z

    .line 214
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessagePrivateFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    invoke-virtual {v0, p1}, Lcom/tudou/adapter/MessageAdapter;->setEdit(Z)V

    .line 215
    return-void
.end method

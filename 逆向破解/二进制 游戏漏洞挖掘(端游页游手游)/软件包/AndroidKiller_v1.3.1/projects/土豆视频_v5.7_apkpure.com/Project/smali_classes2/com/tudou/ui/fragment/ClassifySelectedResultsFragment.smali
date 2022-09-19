.class public Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "ClassifySelectedResultsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private image_state:Ljava/lang/String;

.field private isShowTitle:Z

.field private isVip:Z

.field private load_complete:Landroid/view/View;

.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mBack:Landroid/view/View;

.field private mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

.field private mClassify:Lcom/tudou/service/classify/Classify;

.field private mContext:Landroid/app/Activity;

.field public mHandler:Landroid/os/Handler;

.field private mHintView:Lcom/youku/widget/HintView;

.field private mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mSkipInfo:Lcom/youku/vo/SkipInfo;

.field private mSkipType:Ljava/lang/String;

.field private mTagType:Ljava/lang/String;

.field private mTitle:Landroid/view/View;

.field private mTitleName:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;

.field private pageNum:I

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

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 47
    const-string v0, "filter_tag"

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mSkipType:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->isShowTitle:Z

    .line 63
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->isVip:Z

    .line 72
    new-instance v0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$1;-><init>(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mHandler:Landroid/os/Handler;

    .line 273
    new-instance v0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$3;-><init>(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/vo/ChannelFilterVideos;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;Lcom/youku/vo/ChannelFilterVideos;)Lcom/youku/vo/ChannelFilterVideos;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;
    .param p1, "x1"    # Lcom/youku/vo/ChannelFilterVideos;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->isVip:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->isVip:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/vo/SkipInfo;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;Lcom/youku/vo/SkipInfo;)Lcom/youku/vo/SkipInfo;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;
    .param p1, "x1"    # Lcom/youku/vo/SkipInfo;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/tudou/service/classify/Classify;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mSkipType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->load_complete:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    .prologue
    .line 37
    iget v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->pageNum:I

    return v0
.end method

.method static synthetic access$302(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->pageNum:I

    return p1
.end method

.method static synthetic access$308(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    .prologue
    .line 37
    iget v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->pageNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->pageNum:I

    return v0
.end method

.method static synthetic access$310(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    .prologue
    .line 37
    iget v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->pageNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->pageNum:I

    return v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;
    .param p1, "x1"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mAdapter:Landroid/widget/BaseAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->image_state:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->image_state:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mTagType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mTitleName:Ljava/lang/String;

    return-object v0
.end method

.method private eventView()V
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mContext:Landroid/app/Activity;

    .line 219
    invoke-static {}, Lcom/tudou/service/classify/ClassifyManager;->getInstance()Lcom/tudou/service/classify/Classify;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    .line 220
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/tudou/service/classify/Classify;->setHandler(Landroid/os/Handler;)V

    .line 222
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, p0}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 226
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->isShowTitle:Z

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mTitle:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mTitleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mBack:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$2;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment$2;-><init>(Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 249
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 250
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 202
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->view:Landroid/view/View;

    const v2, 0x7f0c0094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 203
    .local v0, "statusBarView":Landroid/view/View;
    invoke-static {v0}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 205
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->view:Landroid/view/View;

    const v2, 0x7f0c00dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/HintView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mHintView:Lcom/youku/widget/HintView;

    .line 207
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->view:Landroid/view/View;

    const v2, 0x7f0c04b2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mTitle:Landroid/view/View;

    .line 208
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->view:Landroid/view/View;

    const v2, 0x7f0c04b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mBack:Landroid/view/View;

    .line 209
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->view:Landroid/view/View;

    const v2, 0x7f0c04b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mTitleView:Landroid/widget/TextView;

    .line 211
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->view:Landroid/view/View;

    const v2, 0x7f0c04d7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 213
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030214

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->load_complete:Landroid/view/View;

    .line 214
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 256
    :sswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->getHintType()Lcom/youku/widget/HintView$Type;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    if-eq v0, v1, :cond_0

    .line 258
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 264
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto :goto_0

    .line 267
    :sswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 254
    :sswitch_data_0
    .sparse-switch
        0x7f0c00dd -> :sswitch_0
        0x7f0c04b3 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 169
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 171
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 173
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "show_title"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->isShowTitle:Z

    .line 174
    const-string v2, "skip_info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SkipInfo;

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    .line 181
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v2, v2, Lcom/youku/vo/SkipInfo;->image_state:Ljava/lang/String;

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->image_state:Ljava/lang/String;

    .line 183
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v2, v2, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mSkipType:Ljava/lang/String;

    .line 184
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v2, v2, Lcom/youku/vo/SkipInfo;->tag_type:Ljava/lang/String;

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mTagType:Ljava/lang/String;

    .line 185
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v2, v2, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mTitleName:Ljava/lang/String;

    .line 186
    const-string v2, "5"

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v3, v3, Lcom/youku/vo/SkipInfo;->first_tag_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1686"

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v3, v3, Lcom/youku/vo/SkipInfo;->brief_filter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->isVip:Z

    .line 190
    :cond_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 177
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "show_title"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->isShowTitle:Z

    .line 178
    const-string v2, "skip_info"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SkipInfo;

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 194
    const v0, 0x7f03010d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->view:Landroid/view/View;

    .line 195
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->initView()V

    .line 196
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->eventView()V

    .line 197
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 321
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 322
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/tudou/service/classify/Classify;->deleteHandler(Landroid/os/Handler;)V

    .line 323
    return-void
.end method

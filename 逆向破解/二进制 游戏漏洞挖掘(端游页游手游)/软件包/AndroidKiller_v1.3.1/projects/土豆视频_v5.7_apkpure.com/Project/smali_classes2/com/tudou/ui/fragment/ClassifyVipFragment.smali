.class public Lcom/tudou/ui/fragment/ClassifyVipFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "ClassifyVipFragment.java"


# instance fields
.field private mAdapter:Lcom/tudou/adapter/ClassifyVipAdapter;

.field private mBack:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mPubTime:Landroid/widget/TextView;

.field private mQuality:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/ClassifyVipFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyVipFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/ClassifyVipFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyVipFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/ClassifyVipFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyVipFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mQuality:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/ClassifyVipFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifyVipFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mPubTime:Landroid/widget/TextView;

    return-object v0
.end method

.method private eventView()V
    .locals 4

    .prologue
    .line 63
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mBack:Landroid/view/View;

    new-instance v2, Lcom/tudou/ui/fragment/ClassifyVipFragment$1;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/ClassifyVipFragment$1;-><init>(Lcom/tudou/ui/fragment/ClassifyVipFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mQuality:Landroid/widget/TextView;

    new-instance v2, Lcom/tudou/ui/fragment/ClassifyVipFragment$2;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/ClassifyVipFragment$2;-><init>(Lcom/tudou/ui/fragment/ClassifyVipFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mPubTime:Landroid/widget/TextView;

    new-instance v2, Lcom/tudou/ui/fragment/ClassifyVipFragment$3;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/ClassifyVipFragment$3;-><init>(Lcom/tudou/ui/fragment/ClassifyVipFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifyVipFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "skip_info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SkipInfo;

    .line 100
    .local v0, "mSkipInfo":Lcom/youku/vo/SkipInfo;
    new-instance v1, Lcom/tudou/adapter/ClassifyVipAdapter;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifyVipFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/tudou/adapter/ClassifyVipAdapter;-><init>(Landroid/content/Context;Lcom/youku/vo/SkipInfo;Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mAdapter:Lcom/tudou/adapter/ClassifyVipAdapter;

    .line 101
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mAdapter:Lcom/tudou/adapter/ClassifyVipAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 103
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/tudou/ui/fragment/ClassifyVipFragment$4;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/ClassifyVipFragment$4;-><init>(Lcom/tudou/ui/fragment/ClassifyVipFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 124
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifyVipFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c00a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mBack:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0238

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mQuality:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0239

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mPubTime:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c04d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 59
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    const v0, 0x7f03010e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mView:Landroid/view/View;

    .line 43
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyVipFragment;->initView()V

    .line 44
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifyVipFragment;->eventView()V

    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyVipFragment;->mView:Landroid/view/View;

    return-object v0
.end method

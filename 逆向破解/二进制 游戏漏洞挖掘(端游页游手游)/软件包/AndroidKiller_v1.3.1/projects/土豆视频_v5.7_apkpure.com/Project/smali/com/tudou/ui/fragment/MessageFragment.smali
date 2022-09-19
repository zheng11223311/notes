.class public Lcom/tudou/ui/fragment/MessageFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "MessageFragment.java"


# instance fields
.field private checkedMsg:Landroid/widget/TextView;

.field private checkedMsgIcon:Landroid/widget/ImageView;

.field private checkedMsgRel:Landroid/widget/RelativeLayout;

.field public editMsg:Landroid/widget/TextView;

.field public isEdit:Z

.field private mManager:Lcom/youku/util/MessageManager;

.field private messaegLayout:Landroid/widget/LinearLayout;

.field private pagerAdapter:Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;

.field public position:I

.field private privateMsg:Landroid/widget/TextView;

.field private privateMsgIcon:Landroid/widget/ImageView;

.field private privateMsgRel:Landroid/widget/RelativeLayout;

.field private systemMsg:Landroid/widget/TextView;

.field private systemMsgIcon:Landroid/widget/ImageView;

.field private systemMsgRel:Landroid/widget/RelativeLayout;

.field private userId:Ljava/lang/String;

.field public viewPager:Lcom/youku/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 35
    iput v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->position:I

    .line 36
    iput-boolean v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->isEdit:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/MessageFragment;)Lcom/youku/util/MessageManager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->mManager:Lcom/youku/util/MessageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/MessageFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->systemMsgIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/MessageFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->systemMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/MessageFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->checkedMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/MessageFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->privateMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/MessageFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->checkedMsgIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/MessageFragment;)Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->pagerAdapter:Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/MessageFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->privateMsgIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method private initTitle(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 54
    const v3, 0x7f0c0094

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, "statusBarView":Landroid/view/View;
    invoke-static {v1}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 56
    const v3, 0x7f0c01ba

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tudou/ui/fragment/MessageFragment;->editMsg:Landroid/widget/TextView;

    .line 57
    const v3, 0x7f0c00a7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 58
    .local v0, "back_img":Landroid/widget/ImageView;
    new-instance v3, Lcom/tudou/ui/fragment/MessageFragment$1;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/MessageFragment$1;-><init>(Lcom/tudou/ui/fragment/MessageFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v3, 0x7f0c00df

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 70
    .local v2, "txt_title":Landroid/widget/TextView;
    const v3, 0x7f0d021c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 71
    iget-object v3, p0, Lcom/tudou/ui/fragment/MessageFragment;->editMsg:Landroid/widget/TextView;

    new-instance v4, Lcom/tudou/ui/fragment/MessageFragment$2;

    invoke-direct {v4, p0}, Lcom/tudou/ui/fragment/MessageFragment$2;-><init>(Lcom/tudou/ui/fragment/MessageFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 112
    const v0, 0x7f0c0450

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->systemMsg:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0c0453

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->checkedMsg:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0c0456

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->privateMsg:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0c0451

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->systemMsgIcon:Landroid/widget/ImageView;

    .line 116
    const v0, 0x7f0c0454

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->checkedMsgIcon:Landroid/widget/ImageView;

    .line 117
    const v0, 0x7f0c0457

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->privateMsgIcon:Landroid/widget/ImageView;

    .line 118
    const v0, 0x7f0c044f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->systemMsgRel:Landroid/widget/RelativeLayout;

    .line 119
    const v0, 0x7f0c0452

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->checkedMsgRel:Landroid/widget/RelativeLayout;

    .line 120
    const v0, 0x7f0c0455

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->privateMsgRel:Landroid/widget/RelativeLayout;

    .line 121
    const v0, 0x7f0c045c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/ViewPager;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->viewPager:Lcom/youku/widget/ViewPager;

    .line 123
    const v0, 0x7f0c044e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->messaegLayout:Landroid/widget/LinearLayout;

    .line 124
    new-instance v0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessageFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->pagerAdapter:Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;

    .line 125
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->viewPager:Lcom/youku/widget/ViewPager;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageFragment;->pagerAdapter:Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/youku/widget/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 126
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->viewPager:Lcom/youku/widget/ViewPager;

    new-instance v1, Lcom/tudou/ui/fragment/MessageFragment$3;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/MessageFragment$3;-><init>(Lcom/tudou/ui/fragment/MessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 195
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->systemMsgRel:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/tudou/ui/fragment/MessageFragment$4;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/MessageFragment$4;-><init>(Lcom/tudou/ui/fragment/MessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->checkedMsgRel:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/tudou/ui/fragment/MessageFragment$5;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/MessageFragment$5;-><init>(Lcom/tudou/ui/fragment/MessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->privateMsgRel:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/tudou/ui/fragment/MessageFragment$6;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/MessageFragment$6;-><init>(Lcom/tudou/ui/fragment/MessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->mManager:Lcom/youku/util/MessageManager;

    iget v0, v0, Lcom/youku/util/MessageManager;->sysMessage:I

    if-lez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->systemMsgIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->mManager:Lcom/youku/util/MessageManager;

    iget v0, v0, Lcom/youku/util/MessageManager;->cheMessage:I

    if-lez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->checkedMsgIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    :goto_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->mManager:Lcom/youku/util/MessageManager;

    iget v0, v0, Lcom/youku/util/MessageManager;->priMessage:I

    if-lez v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->privateMsgIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    :goto_2
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->systemMsgIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->checkedMsgIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->privateMsgIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private setEditView(Z)V
    .locals 3
    .param p1, "isEdit"    # Z

    .prologue
    const/4 v2, 0x0

    .line 100
    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->viewPager:Lcom/youku/widget/ViewPager;

    invoke-virtual {v0, v2}, Lcom/youku/widget/ViewPager;->setPagingEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->messaegLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->editMsg:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->viewPager:Lcom/youku/widget/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/widget/ViewPager;->setPagingEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->messaegLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->editMsg:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {}, Lcom/youku/util/MessageManager;->getInstance()Lcom/youku/util/MessageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->mManager:Lcom/youku/util/MessageManager;

    .line 42
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->userId:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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
    .line 47
    const v1, 0x7f0300f8

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/MessageFragment;->initTitle(Landroid/view/View;)V

    .line 49
    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/MessageFragment;->initView(Landroid/view/View;)V

    .line 50
    return-object v0
.end method

.method public setEdit(Z)V
    .locals 1
    .param p1, "isEdit"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/MessageFragment;->isEdit:Z

    .line 94
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->pagerAdapter:Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageFragment;->pagerAdapter:Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->setEdit(Z)V

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/MessageFragment;->setEditView(Z)V

    .line 97
    return-void
.end method

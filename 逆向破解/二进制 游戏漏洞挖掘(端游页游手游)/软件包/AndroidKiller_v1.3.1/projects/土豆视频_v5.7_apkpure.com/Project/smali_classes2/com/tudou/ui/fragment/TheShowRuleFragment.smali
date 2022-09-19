.class public Lcom/tudou/ui/fragment/TheShowRuleFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "TheShowRuleFragment.java"


# instance fields
.field private mBack:Landroid/widget/RelativeLayout;

.field private mTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/TheShowRuleFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/TheShowRuleFragment;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRuleFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/TheShowRuleFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/TheShowRankFragment;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/TheShowRankFragment;->mNeedRefresh:Z

    .line 41
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRuleFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c00df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/TheShowRuleFragment;->mTitle:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRuleFragment;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u6253\u699c\u89c4\u5219"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRuleFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c00a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/TheShowRuleFragment;->mBack:Landroid/widget/RelativeLayout;

    .line 44
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRuleFragment;->mBack:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/tudou/ui/fragment/TheShowRuleFragment$1;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/TheShowRuleFragment$1;-><init>(Lcom/tudou/ui/fragment/TheShowRuleFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
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
    .line 29
    const v0, 0x7f03014a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/TheShowRuleFragment;->mView:Landroid/view/View;

    .line 30
    invoke-direct {p0}, Lcom/tudou/ui/fragment/TheShowRuleFragment;->initView()V

    .line 31
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRuleFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 37
    return-void
.end method

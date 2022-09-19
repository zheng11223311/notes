.class public Lcom/tudou/ui/fragment/SearchResultManDetailFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "SearchResultManDetailFragment.java"


# static fields
.field private static tag:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/youku/adapter/ASideManGridViewAdapter;

.field private detailGridView:Landroid/widget/GridView;

.field private horizontal:Lcom/youku/widget/SearchFilterHorizontalSlide;

.field private lastPagePostion:I

.field private showItem:Lcom/youku/vo/SearchDirectDaoShowItem;

.field private tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TABS;",
            ">;"
        }
    .end annotation
.end field

.field private titleString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "SearchResultManDetail"

    sput-object v0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/SearchResultManDetailFragment;)Lcom/youku/adapter/ASideManGridViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultManDetailFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->adapter:Lcom/youku/adapter/ASideManGridViewAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tudou/ui/fragment/SearchResultManDetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SearchResultManDetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->lastPagePostion:I

    return p1
.end method

.method private getData()V
    .locals 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    .local v0, "i":Landroid/os/Bundle;
    const-string/jumbo v1, "showitem"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowItem;

    iput-object v1, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->showItem:Lcom/youku/vo/SearchDirectDaoShowItem;

    .line 60
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->showItem:Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoShowItem;->tabs:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->tabs:Ljava/util/ArrayList;

    .line 61
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->titleString:Ljava/lang/String;

    .line 62
    const-string v1, "currentPage"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->lastPagePostion:I

    .line 63
    return-void
.end method

.method private initTitle(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 85
    const v2, 0x7f0c0094

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 86
    .local v1, "statusBarView":Landroid/view/View;
    invoke-static {v1}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 87
    const v2, 0x7f0c00df

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->titleString:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "\u4eba\u7269"

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const v2, 0x7f0c00a7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 90
    .local v0, "leftBack":Landroid/widget/ImageView;
    new-instance v2, Lcom/tudou/ui/fragment/SearchResultManDetailFragment$1;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/SearchResultManDetailFragment$1;-><init>(Lcom/tudou/ui/fragment/SearchResultManDetailFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void

    .line 87
    .end local v0    # "leftBack":Landroid/widget/ImageView;
    :cond_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->titleString:Ljava/lang/String;

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->initTitle(Landroid/view/View;)V

    .line 102
    const v0, 0x7f0c0c86

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/SearchFilterHorizontalSlide;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->horizontal:Lcom/youku/widget/SearchFilterHorizontalSlide;

    .line 104
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->horizontal:Lcom/youku/widget/SearchFilterHorizontalSlide;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->showItem:Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoShowItem;->manPageFilter:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/SearchFilterHorizontalSlide;->setStrings(Ljava/util/ArrayList;I)V

    .line 105
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->horizontal:Lcom/youku/widget/SearchFilterHorizontalSlide;

    new-instance v1, Lcom/tudou/ui/fragment/SearchResultManDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/SearchResultManDetailFragment$2;-><init>(Lcom/tudou/ui/fragment/SearchResultManDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchFilterHorizontalSlide;->setOnSearchDirectFilterSelect(Lcom/youku/widget/SearchFilterHorizontalSlide$OnSearchDirectFilterSelect;)V

    .line 117
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->horizontal:Lcom/youku/widget/SearchFilterHorizontalSlide;

    iget v1, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->lastPagePostion:I

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchFilterHorizontalSlide;->setCurrPage(I)V

    .line 118
    const v0, 0x7f0c0c91

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->detailGridView:Landroid/widget/GridView;

    .line 120
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->detailGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->adapter:Lcom/youku/adapter/ASideManGridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
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
    const/4 v3, 0x0

    .line 48
    const v1, 0x7f0302bf

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->getData()V

    .line 50
    new-instance v1, Lcom/youku/adapter/ASideManGridViewAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/youku/adapter/ASideManGridViewAdapter;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->adapter:Lcom/youku/adapter/ASideManGridViewAdapter;

    .line 51
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->adapter:Lcom/youku/adapter/ASideManGridViewAdapter;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/youku/adapter/ASideManGridViewAdapter;->setASideGridViewTabs(Ljava/util/ArrayList;)V

    .line 52
    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->initView(Landroid/view/View;)V

    .line 53
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 126
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 72
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onStart()V

    .line 78
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->adapter:Lcom/youku/adapter/ASideManGridViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->horizontal:Lcom/youku/widget/SearchFilterHorizontalSlide;

    if-eqz v0, :cond_0

    .line 82
    :cond_0
    return-void
.end method

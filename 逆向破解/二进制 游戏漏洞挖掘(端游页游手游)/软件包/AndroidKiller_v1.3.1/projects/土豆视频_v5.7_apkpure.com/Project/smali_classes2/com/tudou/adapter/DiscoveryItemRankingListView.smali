.class public Lcom/tudou/adapter/DiscoveryItemRankingListView;
.super Landroid/widget/RelativeLayout;
.source "DiscoveryItemRankingListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;
    }
.end annotation


# instance fields
.field public cellHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;",
            ">;"
        }
    .end annotation
.end field

.field public channelMore:Landroid/view/View;

.field public channelTitle:Landroid/widget/TextView;

.field public channelView:Landroid/view/View;

.field public iconLeft:Landroid/widget/ImageView;

.field private mBottomLayout:Landroid/view/View;

.field public mImgTitleTag:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field public subTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0}, Lcom/tudou/adapter/DiscoveryItemRankingListView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-virtual {p0}, Lcom/tudou/adapter/DiscoveryItemRankingListView;->init()V

    .line 39
    return-void
.end method

.method private initCellView(Landroid/view/View;)Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;
    .locals 2
    .param p1, "cellView"    # Landroid/view/View;

    .prologue
    .line 77
    new-instance v0, Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;-><init>(Lcom/tudou/adapter/DiscoveryItemRankingListView;)V

    .line 78
    .local v0, "holder":Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;
    iput-object p1, v0, Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;->contener:Landroid/view/View;

    .line 79
    const v1, 0x7f0c0748

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;->icon:Landroid/widget/ImageView;

    .line 80
    const v1, 0x7f0c0926

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;->cell_title:Landroid/widget/TextView;

    .line 81
    return-object v0
.end method


# virtual methods
.method init()V
    .locals 4

    .prologue
    .line 42
    const-string v0, "layout_inflater"

    .line 43
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/adapter/DiscoveryItemRankingListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemRankingListView;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    iget-object v1, p0, Lcom/tudou/adapter/DiscoveryItemRankingListView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300ee

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    const v1, 0x7f0c026e

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoveryItemRankingListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemRankingListView;->channelTitle:Landroid/widget/TextView;

    .line 47
    const v1, 0x7f0c0433

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoveryItemRankingListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemRankingListView;->channelView:Landroid/view/View;

    .line 48
    const v1, 0x7f0c0435

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoveryItemRankingListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemRankingListView;->channelMore:Landroid/view/View;

    .line 49
    const v1, 0x7f0c0434

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoveryItemRankingListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemRankingListView;->iconLeft:Landroid/widget/ImageView;

    .line 50
    const v1, 0x7f0c028b

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoveryItemRankingListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemRankingListView;->subTitle:Landroid/widget/TextView;

    .line 51
    const v1, 0x7f0c043a

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoveryItemRankingListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemRankingListView;->mBottomLayout:Landroid/view/View;

    .line 52
    const v1, 0x7f0c0438

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoveryItemRankingListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemRankingListView;->mImgTitleTag:Landroid/widget/ImageView;

    .line 53
    iget-object v1, p0, Lcom/tudou/adapter/DiscoveryItemRankingListView;->mBottomLayout:Landroid/view/View;

    new-instance v2, Lcom/tudou/adapter/DiscoveryItemRankingListView$1;

    invoke-direct {v2, p0}, Lcom/tudou/adapter/DiscoveryItemRankingListView$1;-><init>(Lcom/tudou/adapter/DiscoveryItemRankingListView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemRankingListView;->cellHolders:Ljava/util/List;

    .line 64
    iget-object v1, p0, Lcom/tudou/adapter/DiscoveryItemRankingListView;->cellHolders:Ljava/util/List;

    const v2, 0x7f0c0416

    invoke-virtual {p0, v2}, Lcom/tudou/adapter/DiscoveryItemRankingListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tudou/adapter/DiscoveryItemRankingListView;->initCellView(Landroid/view/View;)Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v1, p0, Lcom/tudou/adapter/DiscoveryItemRankingListView;->cellHolders:Ljava/util/List;

    const v2, 0x7f0c0418

    invoke-virtual {p0, v2}, Lcom/tudou/adapter/DiscoveryItemRankingListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tudou/adapter/DiscoveryItemRankingListView;->initCellView(Landroid/view/View;)Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, p0, Lcom/tudou/adapter/DiscoveryItemRankingListView;->cellHolders:Ljava/util/List;

    const v2, 0x7f0c041d

    invoke-virtual {p0, v2}, Lcom/tudou/adapter/DiscoveryItemRankingListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tudou/adapter/DiscoveryItemRankingListView;->initCellView(Landroid/view/View;)Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v1, p0, Lcom/tudou/adapter/DiscoveryItemRankingListView;->cellHolders:Ljava/util/List;

    const v2, 0x7f0c043b

    invoke-virtual {p0, v2}, Lcom/tudou/adapter/DiscoveryItemRankingListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tudou/adapter/DiscoveryItemRankingListView;->initCellView(Landroid/view/View;)Lcom/tudou/adapter/DiscoveryItemRankingListView$CellHolder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

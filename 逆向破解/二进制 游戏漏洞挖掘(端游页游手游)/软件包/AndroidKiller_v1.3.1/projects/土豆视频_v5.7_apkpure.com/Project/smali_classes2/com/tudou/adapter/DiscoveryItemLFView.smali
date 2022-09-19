.class public Lcom/tudou/adapter/DiscoveryItemLFView;
.super Landroid/widget/RelativeLayout;
.source "DiscoveryItemLFView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;
    }
.end annotation


# instance fields
.field public cellHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;",
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

.field private seprate_line:Landroid/view/View;

.field public subTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p0}, Lcom/tudou/adapter/DiscoveryItemLFView;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-virtual {p0}, Lcom/tudou/adapter/DiscoveryItemLFView;->init()V

    .line 40
    return-void
.end method

.method private initCellView(Landroid/view/View;)Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;
    .locals 2
    .param p1, "cellView"    # Landroid/view/View;

    .prologue
    .line 88
    new-instance v0, Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;-><init>(Lcom/tudou/adapter/DiscoveryItemLFView;)V

    .line 89
    .local v0, "holder":Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;
    iput-object p1, v0, Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;->contener:Landroid/view/View;

    .line 90
    const v1, 0x7f0c0748

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;->icon:Landroid/widget/ImageView;

    .line 91
    const v1, 0x7f0c0926

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;->cell_title:Landroid/widget/TextView;

    .line 92
    const v1, 0x7f0c0925

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;->view_count:Landroid/widget/TextView;

    .line 93
    return-object v0
.end method


# virtual methods
.method public hideBottomLayout()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 72
    iget-object v0, p0, Lcom/tudou/adapter/DiscoveryItemLFView;->seprate_line:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/tudou/adapter/DiscoveryItemLFView;->seprate_line:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/DiscoveryItemLFView;->mBottomLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/tudou/adapter/DiscoveryItemLFView;->mBottomLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :cond_1
    return-void
.end method

.method init()V
    .locals 4

    .prologue
    .line 43
    const-string v0, "layout_inflater"

    .line 44
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/adapter/DiscoveryItemLFView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemLFView;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    iget-object v1, p0, Lcom/tudou/adapter/DiscoveryItemLFView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 47
    const v1, 0x7f0c026e

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoveryItemLFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemLFView;->channelTitle:Landroid/widget/TextView;

    .line 48
    const v1, 0x7f0c0433

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoveryItemLFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemLFView;->channelView:Landroid/view/View;

    .line 49
    const v1, 0x7f0c0435

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoveryItemLFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemLFView;->channelMore:Landroid/view/View;

    .line 50
    const v1, 0x7f0c0434

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoveryItemLFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemLFView;->iconLeft:Landroid/widget/ImageView;

    .line 51
    const v1, 0x7f0c028b

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoveryItemLFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemLFView;->subTitle:Landroid/widget/TextView;

    .line 52
    const v1, 0x7f0c043a

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoveryItemLFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemLFView;->mBottomLayout:Landroid/view/View;

    .line 53
    const v1, 0x7f0c0439

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoveryItemLFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemLFView;->seprate_line:Landroid/view/View;

    .line 54
    const v1, 0x7f0c0438

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoveryItemLFView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemLFView;->mImgTitleTag:Landroid/widget/ImageView;

    .line 55
    iget-object v1, p0, Lcom/tudou/adapter/DiscoveryItemLFView;->mBottomLayout:Landroid/view/View;

    new-instance v2, Lcom/tudou/adapter/DiscoveryItemLFView$1;

    invoke-direct {v2, p0}, Lcom/tudou/adapter/DiscoveryItemLFView$1;-><init>(Lcom/tudou/adapter/DiscoveryItemLFView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemLFView;->cellHolders:Ljava/util/List;

    .line 66
    iget-object v1, p0, Lcom/tudou/adapter/DiscoveryItemLFView;->cellHolders:Ljava/util/List;

    const v2, 0x7f0c0416

    invoke-virtual {p0, v2}, Lcom/tudou/adapter/DiscoveryItemLFView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tudou/adapter/DiscoveryItemLFView;->initCellView(Landroid/view/View;)Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v1, p0, Lcom/tudou/adapter/DiscoveryItemLFView;->cellHolders:Ljava/util/List;

    const v2, 0x7f0c0418

    invoke-virtual {p0, v2}, Lcom/tudou/adapter/DiscoveryItemLFView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tudou/adapter/DiscoveryItemLFView;->initCellView(Landroid/view/View;)Lcom/tudou/adapter/DiscoveryItemLFView$LFCellHolder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

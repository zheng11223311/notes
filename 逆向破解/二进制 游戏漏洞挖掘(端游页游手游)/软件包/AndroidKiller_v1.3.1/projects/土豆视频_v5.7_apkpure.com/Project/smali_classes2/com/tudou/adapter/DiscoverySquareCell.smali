.class public Lcom/tudou/adapter/DiscoverySquareCell;
.super Landroid/widget/RelativeLayout;
.source "DiscoverySquareCell.java"


# instance fields
.field public mImgMain:Landroid/widget/ImageView;

.field public mImgV:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field public mTxtTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0}, Lcom/tudou/adapter/DiscoverySquareCell;->init()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Lcom/tudou/adapter/DiscoverySquareCell;->init()V

    .line 24
    return-void
.end method


# virtual methods
.method init()V
    .locals 4

    .prologue
    .line 32
    const-string v0, "layout_inflater"

    .line 33
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/adapter/DiscoverySquareCell;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoverySquareCell;->mInflater:Landroid/view/LayoutInflater;

    .line 34
    iget-object v1, p0, Lcom/tudou/adapter/DiscoverySquareCell;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300ef

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 35
    const v1, 0x7f0c043d

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoverySquareCell;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoverySquareCell;->mImgMain:Landroid/widget/ImageView;

    .line 36
    const v1, 0x7f0c043e

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoverySquareCell;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoverySquareCell;->mTxtTitle:Landroid/widget/TextView;

    .line 37
    const v1, 0x7f0c043f

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoverySquareCell;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoverySquareCell;->mImgV:Landroid/widget/ImageView;

    .line 40
    return-void
.end method

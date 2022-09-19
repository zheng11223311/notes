.class public Lcom/tudou/adapter/DiscoverySquareItem;
.super Landroid/widget/LinearLayout;
.source "DiscoverySquareItem.java"


# instance fields
.field public mDiscoverySquareCell1:Lcom/tudou/adapter/DiscoverySquareCell;

.field public mDiscoverySquareCell2:Lcom/tudou/adapter/DiscoverySquareCell;

.field public mDiscoverySquareCell3:Lcom/tudou/adapter/DiscoverySquareCell;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p0}, Lcom/tudou/adapter/DiscoverySquareItem;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-virtual {p0}, Lcom/tudou/adapter/DiscoverySquareItem;->init()V

    .line 28
    return-void
.end method


# virtual methods
.method init()V
    .locals 4

    .prologue
    .line 33
    const-string v0, "layout_inflater"

    .line 34
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/adapter/DiscoverySquareItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoverySquareItem;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    iget-object v1, p0, Lcom/tudou/adapter/DiscoverySquareItem;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300f0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 36
    const v1, 0x7f0c043c

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoverySquareItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tudou/adapter/DiscoverySquareCell;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoverySquareItem;->mDiscoverySquareCell1:Lcom/tudou/adapter/DiscoverySquareCell;

    .line 37
    const v1, 0x7f0c0440

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoverySquareItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tudou/adapter/DiscoverySquareCell;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoverySquareItem;->mDiscoverySquareCell2:Lcom/tudou/adapter/DiscoverySquareCell;

    .line 38
    const v1, 0x7f0c0441

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoverySquareItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tudou/adapter/DiscoverySquareCell;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoverySquareItem;->mDiscoverySquareCell3:Lcom/tudou/adapter/DiscoverySquareCell;

    .line 40
    return-void
.end method

.class public Lcom/tudou/adapter/DiscoveryItemView;
.super Landroid/widget/RelativeLayout;
.source "DiscoveryItemView.java"


# instance fields
.field public channelMore:Landroid/view/View;

.field public channelTitle:Landroid/widget/TextView;

.field public channelView:Landroid/view/View;

.field public iconLeft:Landroid/widget/ImageView;

.field public mImgTitleTag:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field public subTitle:Landroid/widget/TextView;

.field public user_pic:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0}, Lcom/tudou/adapter/DiscoveryItemView;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-virtual {p0}, Lcom/tudou/adapter/DiscoveryItemView;->init()V

    .line 34
    return-void
.end method


# virtual methods
.method init()V
    .locals 4

    .prologue
    .line 39
    const-string v0, "layout_inflater"

    .line 40
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/adapter/DiscoveryItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    iget-object v1, p0, Lcom/tudou/adapter/DiscoveryItemView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300ea

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    const v1, 0x7f0c026e

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoveryItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemView;->channelTitle:Landroid/widget/TextView;

    .line 43
    const v1, 0x7f0c0433

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoveryItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemView;->channelView:Landroid/view/View;

    .line 44
    const v1, 0x7f0c0435

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoveryItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemView;->channelMore:Landroid/view/View;

    .line 45
    const v1, 0x7f0c0434

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoveryItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemView;->iconLeft:Landroid/widget/ImageView;

    .line 46
    const v1, 0x7f0c028b

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoveryItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemView;->subTitle:Landroid/widget/TextView;

    .line 47
    const v1, 0x7f0c0436

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoveryItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemView;->user_pic:Landroid/widget/ImageView;

    .line 48
    const v1, 0x7f0c0438

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoveryItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoveryItemView;->mImgTitleTag:Landroid/widget/ImageView;

    .line 49
    return-void
.end method

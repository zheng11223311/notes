.class public Lcom/tudou/adapter/DiscoverySquareTitle;
.super Landroid/widget/LinearLayout;
.source "DiscoverySquareTitle.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field public mTxtTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0}, Lcom/tudou/adapter/DiscoverySquareTitle;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0}, Lcom/tudou/adapter/DiscoverySquareTitle;->init()V

    .line 27
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
    invoke-virtual {p0}, Lcom/tudou/adapter/DiscoverySquareTitle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoverySquareTitle;->mInflater:Landroid/view/LayoutInflater;

    .line 34
    iget-object v1, p0, Lcom/tudou/adapter/DiscoverySquareTitle;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300f1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 35
    const v1, 0x7f0c0442

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/DiscoverySquareTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/adapter/DiscoverySquareTitle;->mTxtTitle:Landroid/widget/TextView;

    .line 36
    return-void
.end method

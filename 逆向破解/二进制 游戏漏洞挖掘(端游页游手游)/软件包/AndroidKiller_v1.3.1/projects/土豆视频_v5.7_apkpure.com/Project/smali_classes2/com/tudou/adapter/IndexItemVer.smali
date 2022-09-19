.class public Lcom/tudou/adapter/IndexItemVer;
.super Lcom/tudou/adapter/IndexItemType;
.source "IndexItemVer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexItemVer;->init()V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexItemVer;->init()V

    .line 21
    return-void
.end method


# virtual methods
.method init()V
    .locals 4

    .prologue
    .line 24
    const-string v0, "layout_inflater"

    .line 25
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexItemVer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemVer;->mInflater:Landroid/view/LayoutInflater;

    .line 26
    iget-object v1, p0, Lcom/tudou/adapter/IndexItemVer;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030188

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    const v1, 0x7f0c0415

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemVer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemVer;->bgLayout:Landroid/view/View;

    .line 31
    new-instance v1, Lcom/tudou/adapter/IndexItemViewCache;

    const v2, 0x7f0c0416

    invoke-virtual {p0, v2}, Lcom/tudou/adapter/IndexItemVer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tudou/adapter/IndexItemViewCache;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemVer;->viewCache1:Lcom/tudou/adapter/IndexItemViewCache;

    .line 35
    new-instance v1, Lcom/tudou/adapter/IndexItemViewCache;

    const v2, 0x7f0c0418

    invoke-virtual {p0, v2}, Lcom/tudou/adapter/IndexItemVer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tudou/adapter/IndexItemViewCache;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemVer;->viewCache2:Lcom/tudou/adapter/IndexItemViewCache;

    .line 38
    new-instance v1, Lcom/tudou/adapter/IndexItemViewCache;

    const v2, 0x7f0c041d

    invoke-virtual {p0, v2}, Lcom/tudou/adapter/IndexItemVer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tudou/adapter/IndexItemViewCache;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemVer;->viewCache3:Lcom/tudou/adapter/IndexItemViewCache;

    .line 40
    return-void
.end method

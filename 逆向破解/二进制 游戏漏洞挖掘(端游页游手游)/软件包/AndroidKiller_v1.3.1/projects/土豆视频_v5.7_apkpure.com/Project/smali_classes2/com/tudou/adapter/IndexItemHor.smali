.class public Lcom/tudou/adapter/IndexItemHor;
.super Lcom/tudou/adapter/IndexItemType;
.source "IndexItemHor.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexItemHor;->init()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexItemHor;->init()V

    .line 22
    return-void
.end method


# virtual methods
.method init()V
    .locals 4

    .prologue
    .line 26
    const-string v0, "layout_inflater"

    .line 27
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexItemHor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemHor;->mInflater:Landroid/view/LayoutInflater;

    .line 29
    iget-object v1, p0, Lcom/tudou/adapter/IndexItemHor;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030181

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 30
    const v1, 0x7f0c0415

    invoke-virtual {p0, v1}, Lcom/tudou/adapter/IndexItemHor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemHor;->bgLayout:Landroid/view/View;

    .line 32
    new-instance v1, Lcom/tudou/adapter/IndexItemViewCache;

    const v2, 0x7f0c0416

    invoke-virtual {p0, v2}, Lcom/tudou/adapter/IndexItemHor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tudou/adapter/IndexItemViewCache;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemHor;->viewCache1:Lcom/tudou/adapter/IndexItemViewCache;

    .line 35
    new-instance v1, Lcom/tudou/adapter/IndexItemViewCache;

    const v2, 0x7f0c0418

    invoke-virtual {p0, v2}, Lcom/tudou/adapter/IndexItemHor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tudou/adapter/IndexItemViewCache;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/tudou/adapter/IndexItemHor;->viewCache2:Lcom/tudou/adapter/IndexItemViewCache;

    .line 38
    return-void
.end method

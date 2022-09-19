.class public Lcom/tudou/adapter/IndexSelectNess;
.super Lcom/tudou/adapter/IndexItemType;
.source "IndexSelectNess.java"


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;

.field public mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field public mRootView:Landroid/view/View;

.field public mRootViewTitle:Landroid/view/View;

.field public mTxtSubTitle:Landroid/widget/TextView;

.field public mTxtTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexSelectNess;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexSelectNess;->init()V

    .line 39
    return-void
.end method


# virtual methods
.method init()V
    .locals 7

    .prologue
    const v6, 0x7f0c02b9

    .line 42
    const-string v0, "layout_inflater"

    .line 43
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexSelectNess;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/tudou/adapter/IndexSelectNess;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    iget-object v3, p0, Lcom/tudou/adapter/IndexSelectNess;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030192

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    invoke-virtual {p0, v6}, Lcom/tudou/adapter/IndexSelectNess;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/adapter/IndexSelectNess;->mRootViewTitle:Landroid/view/View;

    .line 46
    const v3, 0x7f0c0739

    invoke-virtual {p0, v3}, Lcom/tudou/adapter/IndexSelectNess;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/tudou/adapter/IndexSelectNess;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 47
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/tudou/adapter/IndexSelectNess;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 48
    .local v1, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 49
    iget-object v3, p0, Lcom/tudou/adapter/IndexSelectNess;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 51
    const v3, 0x7f0c026e

    invoke-virtual {p0, v3}, Lcom/tudou/adapter/IndexSelectNess;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tudou/adapter/IndexSelectNess;->mTxtTitle:Landroid/widget/TextView;

    .line 52
    invoke-virtual {p0, v6}, Lcom/tudou/adapter/IndexSelectNess;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/adapter/IndexSelectNess;->mRootView:Landroid/view/View;

    .line 53
    const v3, 0x7f0c028b

    invoke-virtual {p0, v3}, Lcom/tudou/adapter/IndexSelectNess;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tudou/adapter/IndexSelectNess;->mTxtSubTitle:Landroid/widget/TextView;

    .line 55
    new-instance v2, Lcom/tudou/adapter/IndexSelectNess$1;

    invoke-direct {v2, p0}, Lcom/tudou/adapter/IndexSelectNess$1;-><init>(Lcom/tudou/adapter/IndexSelectNess;)V

    .line 71
    .local v2, "tDecoration":Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    iget-object v3, p0, Lcom/tudou/adapter/IndexSelectNess;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 80
    return-void
.end method

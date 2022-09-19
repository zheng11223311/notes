.class public Lcom/tudou/adapter/IndexWeek;
.super Lcom/tudou/adapter/IndexItemType;
.source "IndexWeek.java"


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;

.field public mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexWeek;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/tudou/adapter/IndexItemType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexWeek;->init()V

    .line 31
    return-void
.end method


# virtual methods
.method init()V
    .locals 6

    .prologue
    .line 34
    const-string v0, "layout_inflater"

    .line 35
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/adapter/IndexWeek;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/tudou/adapter/IndexWeek;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    iget-object v3, p0, Lcom/tudou/adapter/IndexWeek;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03019b

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    const v3, 0x7f0c0739

    invoke-virtual {p0, v3}, Lcom/tudou/adapter/IndexWeek;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/tudou/adapter/IndexWeek;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 38
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/tudou/adapter/IndexWeek;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 39
    .local v1, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 40
    iget-object v3, p0, Lcom/tudou/adapter/IndexWeek;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 41
    new-instance v2, Lcom/tudou/adapter/IndexWeek$1;

    invoke-direct {v2, p0}, Lcom/tudou/adapter/IndexWeek$1;-><init>(Lcom/tudou/adapter/IndexWeek;)V

    .line 56
    .local v2, "tDecoration":Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    iget-object v3, p0, Lcom/tudou/adapter/IndexWeek;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 58
    return-void
.end method

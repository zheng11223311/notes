.class public Lcom/tudou/detail/widget/VideoGoodsBar;
.super Landroid/widget/FrameLayout;
.source "VideoGoodsBar.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mGoodsAdapter:Lcom/tudou/detail/adapter/VideoGoodsAdapter;

.field private mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

.field private mGoodsList:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/tudou/detail/widget/VideoGoodsBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/widget/VideoGoodsBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/widget/VideoGoodsBar;)Lcom/tudou/detail/vo/GoodsInfo;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoGoodsBar;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoGoodsBar;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 36
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 38
    const v2, 0x7f0c031f

    invoke-virtual {p0, v2}, Lcom/tudou/detail/widget/VideoGoodsBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/tudou/detail/widget/VideoGoodsBar;->mGoodsList:Landroid/support/v7/widget/RecyclerView;

    .line 40
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoGoodsBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 41
    .local v1, "tLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 42
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoGoodsBar;->mGoodsList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 44
    new-instance v0, Lcom/tudou/detail/widget/VideoGoodsBar$1;

    invoke-direct {v0, p0}, Lcom/tudou/detail/widget/VideoGoodsBar$1;-><init>(Lcom/tudou/detail/widget/VideoGoodsBar;)V

    .line 55
    .local v0, "tDecoration":Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoGoodsBar;->mGoodsList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 56
    return-void
.end method

.method public setGoodsInfo(Lcom/tudou/detail/vo/GoodsInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/tudou/detail/vo/GoodsInfo;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoGoodsBar;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    .line 30
    new-instance v0, Lcom/tudou/detail/adapter/VideoGoodsAdapter;

    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoGoodsBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/tudou/detail/adapter/VideoGoodsAdapter;-><init>(Landroid/content/Context;Lcom/tudou/detail/vo/GoodsInfo;)V

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoGoodsBar;->mGoodsAdapter:Lcom/tudou/detail/adapter/VideoGoodsAdapter;

    .line 31
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoGoodsBar;->mGoodsList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/tudou/detail/widget/VideoGoodsBar;->mGoodsAdapter:Lcom/tudou/detail/adapter/VideoGoodsAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 32
    return-void
.end method

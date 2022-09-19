.class Lcom/tudou/detail/widget/VideoGoodsBar$1;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "VideoGoodsBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoGoodsBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoGoodsBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoGoodsBar;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoGoodsBar$1;->this$0:Lcom/tudou/detail/widget/VideoGoodsBar;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "itemPosition"    # I
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/high16 v2, 0x41200000    # 10.0f

    .line 48
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 49
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoGoodsBar$1;->this$0:Lcom/tudou/detail/widget/VideoGoodsBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoGoodsBar;->access$000(Lcom/tudou/detail/widget/VideoGoodsBar;)Lcom/tudou/detail/vo/GoodsInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/widget/VideoGoodsBar$1;->this$0:Lcom/tudou/detail/widget/VideoGoodsBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoGoodsBar;->access$000(Lcom/tudou/detail/widget/VideoGoodsBar;)Lcom/tudou/detail/vo/GoodsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/detail/vo/GoodsInfo;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    .line 50
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 52
    :cond_0
    return-void
.end method

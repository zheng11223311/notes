.class Lcom/tudou/detail/fragment/VideoActorFragment$9;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "VideoActorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoActorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoActorFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoActorFragment;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$9;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "itemPosition"    # I
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    .line 316
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 317
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$9;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$300(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 318
    .local v0, "tAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p2, :cond_0

    .line 320
    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 323
    :cond_0
    return-void
.end method

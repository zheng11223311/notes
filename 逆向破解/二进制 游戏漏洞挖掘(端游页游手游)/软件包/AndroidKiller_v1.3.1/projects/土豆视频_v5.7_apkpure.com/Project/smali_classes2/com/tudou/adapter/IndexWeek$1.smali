.class Lcom/tudou/adapter/IndexWeek$1;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "IndexWeek.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/IndexWeek;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/IndexWeek;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexWeek;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tudou/adapter/IndexWeek$1;->this$0:Lcom/tudou/adapter/IndexWeek;

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

    const/high16 v2, 0x40b00000    # 5.5f

    .line 44
    if-nez p2, :cond_0

    .line 45
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 46
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 54
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-ne v0, v1, :cond_1

    .line 48
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 49
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 51
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 52
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

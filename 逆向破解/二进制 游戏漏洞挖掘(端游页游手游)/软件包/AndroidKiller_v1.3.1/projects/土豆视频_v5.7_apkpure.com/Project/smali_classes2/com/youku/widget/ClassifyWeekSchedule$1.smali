.class Lcom/youku/widget/ClassifyWeekSchedule$1;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ClassifyWeekSchedule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/ClassifyWeekSchedule;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/ClassifyWeekSchedule;


# direct methods
.method constructor <init>(Lcom/youku/widget/ClassifyWeekSchedule;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/youku/widget/ClassifyWeekSchedule$1;->this$0:Lcom/youku/widget/ClassifyWeekSchedule;

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

    .line 66
    if-nez p2, :cond_0

    .line 67
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 68
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 76
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-ne v0, v1, :cond_1

    .line 70
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 71
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 73
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 74
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

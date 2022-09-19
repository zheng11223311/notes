.class Lcom/youku/widget/SelectnessTabView$1;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SelectnessTabView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/SelectnessTabView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/SelectnessTabView;


# direct methods
.method constructor <init>(Lcom/youku/widget/SelectnessTabView;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/youku/widget/SelectnessTabView$1;->this$0:Lcom/youku/widget/SelectnessTabView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "itemPosition"    # I
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 82
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-ne v0, v1, :cond_0

    .line 83
    iget v0, p1, Landroid/graphics/Rect;->right:I

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 84
    :cond_0
    return-void
.end method

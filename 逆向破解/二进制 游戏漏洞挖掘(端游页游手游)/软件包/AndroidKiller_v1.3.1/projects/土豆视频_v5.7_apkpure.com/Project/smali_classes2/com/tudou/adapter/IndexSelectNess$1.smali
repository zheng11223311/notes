.class Lcom/tudou/adapter/IndexSelectNess$1;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "IndexSelectNess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/IndexSelectNess;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/IndexSelectNess;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexSelectNess;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/tudou/adapter/IndexSelectNess$1;->this$0:Lcom/tudou/adapter/IndexSelectNess;

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
    .line 58
    if-nez p2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-ne v0, v1, :cond_0

    .line 63
    iget v0, p1, Landroid/graphics/Rect;->right:I

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

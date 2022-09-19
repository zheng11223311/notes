.class Lcom/tudou/detail/widget/VideoSelectnessBar$2;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "VideoSelectnessBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoSelectnessBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoSelectnessBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoSelectnessBar;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoSelectnessBar$2;->this$0:Lcom/tudou/detail/widget/VideoSelectnessBar;

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

    .line 77
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSelectnessBar$2;->this$0:Lcom/tudou/detail/widget/VideoSelectnessBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoSelectnessBar;->access$100(Lcom/tudou/detail/widget/VideoSelectnessBar;)Lcom/tudou/detail/adapter/VideoSelectnessAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    if-nez p2, :cond_2

    .line 79
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 84
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSelectnessBar$2;->this$0:Lcom/tudou/detail/widget/VideoSelectnessBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoSelectnessBar;->access$100(Lcom/tudou/detail/widget/VideoSelectnessBar;)Lcom/tudou/detail/adapter/VideoSelectnessAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSelectnessBar$2;->this$0:Lcom/tudou/detail/widget/VideoSelectnessBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoSelectnessBar;->access$100(Lcom/tudou/detail/widget/VideoSelectnessBar;)Lcom/tudou/detail/adapter/VideoSelectnessAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/detail/adapter/VideoSelectnessAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    .line 85
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 87
    :cond_1
    return-void

    .line 81
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->left:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.class public Lcom/youku/widget/DetailHorizontalListView;
.super Lcom/youku/widget/HorizontalListView;
.source "DetailHorizontalListView.java"


# instance fields
.field private mHeight:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/youku/widget/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/widget/DetailHorizontalListView;->mHeight:I

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/widget/DetailHorizontalListView;->width:I

    .line 23
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 32
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 33
    .local v0, "w":I
    invoke-static {}, Lcom/youku/util/Util;->isLandscape()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    :goto_0
    iget v1, p0, Lcom/youku/widget/DetailHorizontalListView;->width:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 39
    iget v0, p0, Lcom/youku/widget/DetailHorizontalListView;->width:I

    .line 41
    :cond_0
    const-string v1, "test1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "w = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/youku/widget/DetailHorizontalListView;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Lcom/youku/widget/DetailHorizontalListView;->mHeight:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/youku/widget/DetailHorizontalListView;->setMeasuredDimension(II)V

    .line 45
    return-void

    .line 36
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, p0, Lcom/youku/widget/DetailHorizontalListView;->width:I

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;I)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "height"    # I

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/youku/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 27
    iput p2, p0, Lcom/youku/widget/DetailHorizontalListView;->mHeight:I

    .line 28
    return-void
.end method

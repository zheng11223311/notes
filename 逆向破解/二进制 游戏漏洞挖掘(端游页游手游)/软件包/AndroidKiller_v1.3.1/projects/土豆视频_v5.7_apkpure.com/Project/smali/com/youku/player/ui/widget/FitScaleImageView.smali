.class public Lcom/youku/player/ui/widget/FitScaleImageView;
.super Landroid/widget/ImageView;
.source "FitScaleImageView.java"


# instance fields
.field public isFullscreen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/ui/widget/FitScaleImageView;->isFullscreen:Z

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/ui/widget/FitScaleImageView;->isFullscreen:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/ui/widget/FitScaleImageView;->isFullscreen:Z

    .line 18
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/youku/player/ui/widget/FitScaleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 27
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 30
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 31
    .local v3, "width":I
    int-to-float v4, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 34
    .local v1, "height":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 35
    .local v2, "height2":I
    iget-boolean v4, p0, Lcom/youku/player/ui/widget/FitScaleImageView;->isFullscreen:Z

    if-eqz v4, :cond_0

    .end local v2    # "height2":I
    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/youku/player/ui/widget/FitScaleImageView;->setMeasuredDimension(II)V

    .line 39
    .end local v1    # "height":I
    .end local v3    # "width":I
    :goto_1
    return-void

    .restart local v1    # "height":I
    .restart local v2    # "height2":I
    .restart local v3    # "width":I
    :cond_0
    move v2, v1

    .line 35
    goto :goto_0

    .line 37
    .end local v1    # "height":I
    .end local v2    # "height2":I
    .end local v3    # "width":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_1
.end method

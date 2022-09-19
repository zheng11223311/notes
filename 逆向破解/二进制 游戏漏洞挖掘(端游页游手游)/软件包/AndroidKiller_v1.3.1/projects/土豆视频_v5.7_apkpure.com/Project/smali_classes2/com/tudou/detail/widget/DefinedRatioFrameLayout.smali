.class public Lcom/tudou/detail/widget/DefinedRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "DefinedRatioFrameLayout.java"


# instance fields
.field private mByWidth:Z

.field private mHeightRation:I

.field private mWidthRation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tudou/detail/widget/DefinedRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tudou/detail/widget/DefinedRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    iput-boolean v2, p0, Lcom/tudou/detail/widget/DefinedRatioFrameLayout;->mByWidth:Z

    .line 14
    iput v3, p0, Lcom/tudou/detail/widget/DefinedRatioFrameLayout;->mWidthRation:I

    .line 15
    iput v3, p0, Lcom/tudou/detail/widget/DefinedRatioFrameLayout;->mHeightRation:I

    .line 28
    sget-object v1, Lcom/tudou/android/R$styleable;->DefinedRatioFrameLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 29
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tudou/detail/widget/DefinedRatioFrameLayout;->mByWidth:Z

    .line 30
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/tudou/detail/widget/DefinedRatioFrameLayout;->mWidthRation:I

    .line 31
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/tudou/detail/widget/DefinedRatioFrameLayout;->mHeightRation:I

    .line 32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 38
    iget-boolean v2, p0, Lcom/tudou/detail/widget/DefinedRatioFrameLayout;->mByWidth:Z

    if-eqz v2, :cond_0

    .line 39
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 40
    .local v1, "w":I
    iget v2, p0, Lcom/tudou/detail/widget/DefinedRatioFrameLayout;->mHeightRation:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/tudou/detail/widget/DefinedRatioFrameLayout;->mWidthRation:I

    div-int v0, v2, v3

    .line 41
    .local v0, "h":I
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 47
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 48
    return-void

    .line 43
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 44
    .restart local v0    # "h":I
    iget v2, p0, Lcom/tudou/detail/widget/DefinedRatioFrameLayout;->mWidthRation:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/tudou/detail/widget/DefinedRatioFrameLayout;->mHeightRation:I

    div-int v1, v2, v3

    .line 45
    .restart local v1    # "w":I
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method

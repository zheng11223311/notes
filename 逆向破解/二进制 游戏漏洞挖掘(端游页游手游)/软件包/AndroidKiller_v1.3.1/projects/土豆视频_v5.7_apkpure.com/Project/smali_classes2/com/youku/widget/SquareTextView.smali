.class public Lcom/youku/widget/SquareTextView;
.super Landroid/widget/TextView;
.source "SquareTextView.java"


# instance fields
.field end:I

.field isGone:Z

.field public mode:I

.field num:I

.field paint:Landroid/graphics/Paint;

.field start:I

.field unit:F

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/youku/widget/SquareTextView;->paint:Landroid/graphics/Paint;

    .line 33
    iget-object v0, p0, Lcom/youku/widget/SquareTextView;->paint:Landroid/graphics/Paint;

    const v1, -0x2f2f30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    invoke-virtual {p0}, Lcom/youku/widget/SquareTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/youku/widget/SquareTextView;->unit:F

    .line 35
    return-void
.end method

.method private drawline(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/youku/widget/SquareTextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 70
    .local v6, "str":Ljava/lang/String;
    iget v0, p0, Lcom/youku/widget/SquareTextView;->width:I

    int-to-float v0, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/youku/widget/SquareTextView;->unit:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/youku/widget/SquareTextView;->start:I

    .line 71
    iget v0, p0, Lcom/youku/widget/SquareTextView;->start:I

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/youku/widget/SquareTextView;->unit:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/youku/widget/SquareTextView;->end:I

    .line 72
    iget v0, p0, Lcom/youku/widget/SquareTextView;->mode:I

    if-nez v0, :cond_1

    .line 73
    iget v0, p0, Lcom/youku/widget/SquareTextView;->start:I

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/youku/widget/SquareTextView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, p0, Lcom/youku/widget/SquareTextView;->end:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/youku/widget/SquareTextView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/youku/widget/SquareTextView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget v0, p0, Lcom/youku/widget/SquareTextView;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 75
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/youku/widget/SquareTextView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, p0, Lcom/youku/widget/SquareTextView;->end:I

    iget v3, p0, Lcom/youku/widget/SquareTextView;->start:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/youku/widget/SquareTextView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/youku/widget/SquareTextView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 41
    iget-boolean v0, p0, Lcom/youku/widget/SquareTextView;->isGone:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-direct {p0, p1}, Lcom/youku/widget/SquareTextView;->drawline(Landroid/graphics/Canvas;)V

    .line 44
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 64
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/youku/widget/SquareTextView;->width:I

    .line 66
    return-void
.end method

.method public setGone(ZI)V
    .locals 0
    .param p1, "isgone"    # Z
    .param p2, "len"    # I

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/youku/widget/SquareTextView;->isGone:Z

    .line 48
    invoke-virtual {p0}, Lcom/youku/widget/SquareTextView;->invalidate()V

    .line 49
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 58
    return-void
.end method

.method public setmode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/youku/widget/SquareTextView;->mode:I

    .line 52
    return-void
.end method

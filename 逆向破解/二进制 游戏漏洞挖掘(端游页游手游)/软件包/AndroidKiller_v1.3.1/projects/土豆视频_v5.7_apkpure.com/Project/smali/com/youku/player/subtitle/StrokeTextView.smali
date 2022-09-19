.class public Lcom/youku/player/subtitle/StrokeTextView;
.super Landroid/widget/TextView;
.source "StrokeTextView.java"


# instance fields
.field private borderText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/subtitle/StrokeTextView;->borderText:Landroid/widget/TextView;

    .line 23
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youku/player/subtitle/StrokeTextView;->borderText:Landroid/widget/TextView;

    .line 24
    invoke-virtual {p0}, Lcom/youku/player/subtitle/StrokeTextView;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/subtitle/StrokeTextView;->borderText:Landroid/widget/TextView;

    .line 29
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/youku/player/subtitle/StrokeTextView;->borderText:Landroid/widget/TextView;

    .line 30
    invoke-virtual {p0}, Lcom/youku/player/subtitle/StrokeTextView;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/subtitle/StrokeTextView;->borderText:Landroid/widget/TextView;

    .line 36
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/youku/player/subtitle/StrokeTextView;->borderText:Landroid/widget/TextView;

    .line 37
    invoke-virtual {p0}, Lcom/youku/player/subtitle/StrokeTextView;->init()V

    .line 38
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 41
    iget-object v1, p0, Lcom/youku/player/subtitle/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 42
    .local v0, "tp1":Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/youku/player/subtitle/StrokeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/android/player/R$dimen;->subtitle_stroke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 43
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object v1, p0, Lcom/youku/player/subtitle/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/player/subtitle/StrokeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/youku/android/player/R$color;->border_text:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    iget-object v1, p0, Lcom/youku/player/subtitle/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/player/subtitle/StrokeTextView;->getGravity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 46
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/youku/player/subtitle/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 85
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 86
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 78
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 79
    iget-object v0, p0, Lcom/youku/player/subtitle/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 80
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 66
    iget-object v1, p0, Lcom/youku/player/subtitle/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 69
    .local v0, "tt":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/youku/player/subtitle/StrokeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/youku/player/subtitle/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/player/subtitle/StrokeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0}, Lcom/youku/player/subtitle/StrokeTextView;->postInvalidate()V

    .line 73
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 74
    iget-object v1, p0, Lcom/youku/player/subtitle/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->measure(II)V

    .line 75
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v0, p0, Lcom/youku/player/subtitle/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    return-void
.end method

.method public setStroke(FI)V
    .locals 3
    .param p1, "width"    # F
    .param p2, "color"    # I

    .prologue
    .line 49
    iget-object v1, p0, Lcom/youku/player/subtitle/StrokeTextView;->borderText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/youku/player/subtitle/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 51
    .local v0, "tp1":Landroid/text/TextPaint;
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 52
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v1, p0, Lcom/youku/player/subtitle/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    iget-object v1, p0, Lcom/youku/player/subtitle/StrokeTextView;->borderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/player/subtitle/StrokeTextView;->getGravity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 56
    .end local v0    # "tp1":Landroid/text/TextPaint;
    :cond_0
    return-void
.end method
